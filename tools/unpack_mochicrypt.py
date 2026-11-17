"""
MochiCrypt 3.2c unpacker — 从加密壳 SWF 中解出游戏本体
用法: python unpack_mochicrypt.py <壳swf> <输出swf>
"""
import zlib, struct, sys


def unpack(shell_path, out_path):
    data = open(shell_path, 'rb').read()
    body = zlib.decompress(data[8:]) if data[:3] == b'CWS' else data[8:]

    # 跳过 RECT + framerate + framecount
    def bits_at(buf, pos, n):
        val = 0
        for _ in range(n):
            byte_i, bit_i = divmod(pos, 8)
            val = (val << 1) | ((buf[byte_i] >> (7 - bit_i)) & 1)
            pos += 1
        return val

    nbits = bits_at(body, 0, 5)
    pos = (5 + nbits * 4 + 7) // 8 + 4

    # 遍历标签找 DefineBinaryData(87) charId=7
    i = pos
    while i < len(body) - 2:
        cl = struct.unpack('<H', body[i:i + 2])[0]
        code, lt = cl >> 6, cl & 0x3F
        i += 2
        if lt == 0x3F:
            lt = struct.unpack('<I', body[i:i + 4])[0]
            i += 4
        if code == 0:
            break
        if code == 87:
            # 头部 = u16 charId + u32 reserved，共 6 字节（不是 8！）
            cid = struct.unpack('<H', body[i:i + 2])[0]
            payload = body[i + 6:i + lt]
            if cid == 7:
                return decrypt(payload, out_path)
        i += lt
    raise RuntimeError('charId=7 的 DefineBinaryData 未找到')


def decrypt(payload, out_path):
    payload = bytearray(payload)
    L = len(payload)
    key = payload[L - 32:]          # 密钥 = 末尾 32 字节
    S = list(range(256))            # RC4 KSA
    j = 0
    for k in range(256):
        j = (j + S[k] + key[k & 0x1F]) & 0xFF
        S[k], S[j] = S[j], S[k]
    n = min(L - 32, 131072)         # 只加密前 128KB
    a = b = 0
    for k in range(n):              # PRGA
        a = (a + 1) & 0xFF
        u = S[a]
        b = (b + u) & 0xFF
        v = S[b]
        S[a], S[b] = v, u
        payload[k] ^= S[(u + v) & 0xFF]
    swf = zlib.decompress(bytes(payload[:L - 32]))   # 尾部本就是明文
    assert swf[:3] == b'FWS'
    open(out_path, 'wb').write(swf)
    return len(swf)


if __name__ == '__main__':
    size = unpack(sys.argv[1], sys.argv[2])
    print(f'OK: {size} bytes -> {sys.argv[2]}')
