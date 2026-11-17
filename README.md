# Papa's Wingeria 逆向源码（学习研究用）

对 7k7k 上的《老爹鸡翅店 / Papa's Wingeria》(Flipline Studios, 2012) 进行的
MochiCrypt 解壳 + JPEXS FFDec 反编译产出。

> ⚠️ 版权声明：本仓库内容为商业游戏反编译产物，著作权归 **Flipline Studios** 所有。
> 仅作个人学习研究用途，请勿二次分发或商用。建议本仓库保持 Private。

## 解壳过程

原始文件为 7k7k 的 `2.swf`（7.3MB，MochiCrypt 3.2c 加密壳）：

1. SWF 内 `DefineBinaryData`(charId=7) 藏有 7.2MB 加密 payload
   （注意 tag 头是 u16 charId + u32 reserved = **6 字节**，不是 8 字节）
2. 密钥 = payload 末尾 32 字节
3. RC4 变体（KSA 与标准 RC4 相同，`key[i & 0x1F]`）只加密**前 128KB**
4. 整个 payload 为 zlib 流（尾部明文），解压得 9.16MB 的 FWS 游戏本体
5. FFDec 22.0.2 反编译导出 2,287 个 AS3 文件

## 目录结构

```
game/scripts/    游戏本体反编译源码（2,287 个 .as）
├─ wingGame/     ★ 核心玩法包（screens/models/managers/data，命名清晰）
│   ├─ screens/  GrillScreen、SauceScreen、PayDayScreen、7 个小游戏等
│   ├─ models/   WingOrder、FryerBasket、Ticket、Customer 等
│   ├─ managers/ CustomerManager、TicketManager、SoundManager
│   └─ data/     GameData（商店/升级数值）、74 个顾客类
├─ *_fla/        FLA 帧脚本（音效触发等自动生成代码，价值低）
└─ §_-xx§.as     21 个混淆类（§_-BY§ 为主引擎类，逻辑完整但名字乱码）

loader/scripts/  MochiCrypt 加密壳源码（12 个文件，含解密算法 Preloader.as）
tools/           mochicrypt_config.bin（壳的配置数据）+ 解壳脚本
```

## 已知限制

- 局部变量名为 `param1/_loc2_`（release 字节码不保存局部名）
- 21 个混淆类需人工重命名（FFDec 支持）
- 美术/音频资源不在本仓库，可用 FFDec 打开解壳后的 SWF 导出

解壳脚本：`tools/unpack_mochicrypt.py`（输入 2.swf 输出游戏本体）
