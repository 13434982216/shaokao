package Playtomic
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   internal final class Encode
   {
      private static const BASE64_CHARS:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      private static const decodeChars:Array;
      
      private static var crcTable:Array;
      
      private static var hex_chr:String = "0123456789abcdef";
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      if(_loc2_)
      {
         BASE64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         if(_loc2_)
         {
            decodeChars = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1];
            if(_loc1_)
            {
            }
            §§goto(addr176);
         }
         §§goto(addr173);
      }
      
      private static var crcTableComputed:Boolean = false;
      
      if(_loc2_)
      {
         addr173:
         hex_chr = "0123456789abcdef";
         §§goto(addr176);
      }
      addr176:
      
      public function Encode()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      internal static function Base64(param1:ByteArray) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:uint = 0;
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc8_ || Encode)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop());
               if(_loc8_)
               {
                  _loc5_ = §§pop();
                  if(_loc8_ || Boolean(param1))
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        _loc5_ = §§pop();
                     }
                  }
                  loop2:
                  while(true)
                  {
                     §§push(_loc7_);
                     addr244:
                     while(§§pop() < _loc4_.length)
                     {
                        §§push(_loc2_);
                        if(_loc8_)
                        {
                           §§push(§§pop() + BASE64_CHARS.charAt(_loc4_[_loc7_]));
                        }
                        _loc2_ = §§pop();
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc7_);
                        if(_loc9_)
                        {
                           continue;
                        }
                        §§push(§§pop() + 1);
                        while(true)
                        {
                           _loc7_ = §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
               loop4:
               while(true)
               {
                  §§push(3);
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              §§pop();
                              §§push(param1.bytesAvailable > 0);
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        _loc4_[0] = (_loc3_[0] & 0xFC) >> 2;
                        _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                        _loc4_[2] = (_loc3_[1] & 0x0F) << 2 | _loc3_[2] >> 6;
                        _loc4_[3] = _loc3_[2] & 0x3F;
                        _loc6_ = _loc3_.length;
                        if(_loc9_ && Encode)
                        {
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                        }
                        addr207:
                     }
                     else
                     {
                        _loc3_[_loc5_] = param1.readUnsignedByte();
                        §§push(_loc5_);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc9_ && Encode))
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 _loc5_ = §§pop();
                                 continue;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc8_)
                                 {
                                    _loc6_ = §§pop();
                                    §§goto(addr207);
                                 }
                                 break;
                              }
                              addr203:
                           }
                        }
                     }
                     §§goto(addr244);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     _loc4_[_loc6_ + 1] = 64;
                     if(!_loc9_)
                     {
                        §§push(_loc6_ + 1);
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           §§goto(addr203);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§push(0);
                  §§goto(addr244);
               }
               §§goto(addr234);
            }
            _loc7_ = §§pop();
            §§goto(addr234);
         }
         return _loc2_;
      }
      
      internal static function Base64Decode(param1:String) : ByteArray
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:ByteArray = null;
         if(!_loc10_)
         {
            §§push(param1.length);
            if(!_loc10_)
            {
               _loc7_ = §§pop();
               if(_loc10_ && Encode)
               {
               }
               addr45:
               _loc8_ = new ByteArray();
               loop0:
               while(true)
               {
                  if(_loc6_ < _loc7_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(decodeChars);
                        if(!_loc10_)
                        {
                           §§push(param1);
                           if(!_loc10_)
                           {
                              §§push(_loc6_);
                              if(!_loc10_)
                              {
                                 §§push(§§pop());
                                 if(_loc9_)
                                 {
                                    addr136:
                                    §§push(§§pop() + 1);
                                    if(!_loc10_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc9_ || Boolean(_loc3_))
                                       {
                                          §§push(§§pop().charCodeAt(§§pop()) & 0xFF);
                                          if(!_loc10_)
                                          {
                                             _loc2_ = int(§§pop()[§§pop()]);
                                             if(_loc9_)
                                             {
                                                §§push(_loc6_ < _loc7_);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc10_ && Boolean(_loc2_)))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                      }
                                                      addr106:
                                                      if(§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         if(_loc2_ != -1)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(decodeChars);
                                                               if(_loc9_ || Boolean(param1))
                                                               {
                                                                  break loop1;
                                                               }
                                                               break;
                                                            }
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc10_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = int(§§pop()[§§pop()]);
                                                                     if(_loc9_ || Boolean(_loc3_))
                                                                     {
                                                                        §§push(_loc6_ < _loc7_);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc10_ && Boolean(param1)))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(_loc4_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-1);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                       }
                                                                                       addr295:
                                                                                    }
                                                                                    addr338:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(§§pop() == 61)
                                                                                       {
                                                                                          return _loc8_;
                                                                                       }
                                                                                       addr389:
                                                                                       addr344:
                                                                                       §§push(decodeChars);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          break loop21;
                                                                                       }
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(_loc9_ || Boolean(param1))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc8_.writeByte((_loc4_ & 3) << 6 | _loc5_);
                                                                                          if(_loc9_ || Encode)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr292:
                                                                              }
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr298:
                                                                                    §§push(_loc4_);
                                                                                    §§push(-1);
                                                                                    if(!(_loc10_ && Encode))
                                                                                    {
                                                                                       addr306:
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr379:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                addr380:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-1);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr388:
                                                                                                               §§push(_loc5_);
                                                                                                               §§push(-1);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr384:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr379:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc8_.writeByte((_loc3_ & 0x0F) << 4 | (_loc4_ & 0x3C) >> 2);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          addr326:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   break loop20;
                                                                                                }
                                                                                                addr333:
                                                                                             }
                                                                                             break loop20;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(!(_loc10_ && Encode))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr333);
                                                                                             }
                                                                                             _loc6_ = §§pop();
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop().charCodeAt(§§pop()) & 0xFF);
                                                                                                §§push(§§pop().charCodeAt(§§pop()) & 0xFF);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   §§push(61);
                                                                                                   if(_loc9_ || Encode)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            return _loc8_;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(decodeChars);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr295);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   break loop18;
                                                                                                }
                                                                                                addr368:
                                                                                             }
                                                                                          }
                                                                                          break loop20;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                    addr215:
                                                                                 }
                                                                                 §§goto(addr344);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr338);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr281:
                                                                     }
                                                                  }
                                                                  addr268:
                                                               }
                                                               break;
                                                            }
                                                            addr115:
                                                            addr265:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc3_ == -1);
                                                         addr179:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc9_)
                                                               {
                                                                  addr183:
                                                                  §§push(-1);
                                                                  if(!(_loc10_ && Boolean(_loc3_)))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc8_.writeByte(_loc2_ << 2 | (_loc3_ & 0x30) >> 4);
                                                                        §§goto(addr215);
                                                                     }
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr115);
                                                            }
                                                         }
                                                      }
                                                      addr176:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc10_ && Encode))
                                                         {
                                                            §§pop();
                                                            §§goto(addr379);
                                                         }
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                   addr370:
                                                }
                                                §§pop();
                                                §§push(_loc2_);
                                                §§push(-1);
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr106);
                                                   §§push(§§pop() == §§pop());
                                                }
                                                §§goto(addr389);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()[§§pop()]));
                                             if(_loc9_ || Boolean(param1))
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc9_ || Boolean(param1))
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr388);
                                                }
                                                §§goto(addr379);
                                             }
                                             §§goto(addr380);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                    }
                                    addr136:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr136);
                                 }
                                 addr135:
                              }
                              while(true)
                              {
                                 §§push(§§pop().charCodeAt(§§pop()) & 0xFF);
                                 if(_loc9_ || Boolean(_loc3_))
                                 {
                                    §§push(int(§§pop()[§§pop()]));
                                    if(_loc9_)
                                    {
                                       _loc3_ = §§pop();
                                       §§push(_loc6_);
                                       if(!(_loc10_ && Encode))
                                       {
                                          §§push(_loc7_);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() < §§pop());
                                             §§push(§§pop() < §§pop());
                                             if(!(_loc10_ && Encode))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§pop();
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr370);
                                          }
                                          §§goto(addr306);
                                       }
                                       §§goto(addr298);
                                    }
                                    §§goto(addr183);
                                 }
                                 break;
                              }
                              §§goto(addr268);
                              addr137:
                           }
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!(_loc10_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop());
                                 if(!_loc10_)
                                 {
                                    §§goto(addr135);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr137);
                           }
                           addr124:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr124);
                     }
                  }
                  return _loc8_;
               }
            }
            addr44:
            _loc6_ = §§pop();
            §§goto(addr45);
         }
         §§goto(addr44);
         §§push(0);
      }
      
      internal static function PNG(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(_loc9_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc8_ && _loc3_))
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(_loc9_)
         {
            _loc3_.writeInt(param1.width);
            if(_loc9_)
            {
               _loc3_.writeInt(param1.height);
               if(_loc9_)
               {
                  _loc3_.writeUnsignedInt(134610944);
                  if(_loc8_)
                  {
                  }
                  addr71:
                  writeChunk(_loc2_,1229472850,_loc3_);
               }
            }
            _loc3_.writeByte(0);
            if(_loc9_ || Boolean(_loc3_))
            {
               §§goto(addr71);
            }
         }
         var _loc4_:ByteArray = new ByteArray();
         var _loc7_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc7_);
            loop1:
            while(§§pop() < param1.height)
            {
               _loc4_.writeByte(0);
               if(!param1.transparent)
               {
                  §§push(0);
                  if(_loc9_ || Boolean(param1))
                  {
                     _loc6_ = §§pop();
                     if(_loc8_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!(_loc9_ || Encode))
                        {
                           continue loop1;
                        }
                        if(§§pop() >= param1.width)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        addr167:
                        §§push(param1.getPixel(_loc6_,_loc7_));
                        if(_loc9_)
                        {
                           _loc5_ = §§pop();
                           _loc4_.writeUnsignedInt(uint((_loc5_ & 0xFFFFFF) << 8 | 0xFF));
                           _loc6_++;
                           if(_loc9_ || Encode)
                           {
                              continue;
                           }
                           loop5:
                           while(true)
                           {
                              _loc4_.writeUnsignedInt(uint((_loc5_ & 0xFFFFFF) << 8 | _loc5_ >>> 24));
                              _loc6_++;
                              addr182:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc9_ || Boolean(_loc2_)))
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop1;
                           }
                           addr168:
                        }
                        while(true)
                        {
                           _loc5_ = §§pop();
                           §§goto(addr168);
                        }
                     }
                     continue loop0;
                  }
               }
               else
               {
                  §§push(0);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     _loc6_ = §§pop();
                     §§goto(addr182);
                  }
               }
               while(true)
               {
                  if(§§pop() >= param1.width)
                  {
                     continue loop0;
                  }
                  §§goto(addr167);
                  §§push(param1.getPixel32(_loc6_,_loc7_));
               }
            }
            _loc4_.compress();
            writeChunk(_loc2_,1229209940,_loc4_);
            if(!_loc8_)
            {
               writeChunk(_loc2_,1229278788,null);
            }
            return _loc2_;
            _loc7_++;
         }
      }
      
      private static function writeChunk(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = 0;
         var _loc9_:uint = 0;
         var _loc10_:* = 0;
         if(!_loc11_)
         {
            if(!crcTableComputed)
            {
               if(_loc12_)
               {
                  crcTableComputed = true;
                  if(_loc11_)
                  {
                  }
               }
               addr44:
               _loc9_ = 0;
               loop0:
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc12_)
                  {
                     §§push(256);
                     loop1:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc9_);
                           if(!_loc11_)
                           {
                              §§push(§§pop());
                              if(_loc12_ || Boolean(param3))
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc11_)
                                 {
                                    §§push(0);
                                    if(!(_loc11_ && Boolean(param1)))
                                    {
                                       _loc10_ = §§pop();
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(uint(uint(3988292384) ^ uint(_loc8_ >>> 1)));
                                          if(_loc12_)
                                          {
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             addr143:
                                             while(true)
                                             {
                                                §§push(_loc10_);
                                                §§push(8);
                                                if(_loc11_ && Boolean(param3))
                                                {
                                                   break loop3;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         crcTable[_loc9_] = _loc8_;
                                                         break loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§push(_loc8_);
                                                   if(_loc12_ || Boolean(param3))
                                                   {
                                                      §§push(1);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc11_ && Boolean(param1))
                                                         {
                                                            addr176:
                                                            §§push(§§pop());
                                                            break;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
                                          addr142:
                                       }
                                       else
                                       {
                                          §§push(uint(_loc8_ >>> 1));
                                       }
                                       addr125:
                                       while(true)
                                       {
                                          §§push(_loc10_ + 1);
                                          if(!(_loc11_ && Boolean(param1)))
                                          {
                                             §§push(§§pop());
                                             if(_loc12_ || Boolean(param2))
                                             {
                                                §§goto(addr142);
                                             }
                                          }
                                          addr168:
                                          _loc9_ = §§pop();
                                          continue loop0;
                                       }
                                    }
                                    addr166:
                                    §§goto(addr168);
                                    §§push(_loc9_ + 1);
                                 }
                                 §§goto(addr143);
                              }
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc12_ || Boolean(param2))
                                 {
                                    §§goto(addr125);
                                 }
                                 §§goto(addr166);
                              }
                           }
                           while(true)
                           {
                              _loc8_ = §§pop();
                              §§goto(addr125);
                           }
                        }
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc11_)
                  {
                     if(param3 != null)
                     {
                        if(_loc12_ || Encode)
                        {
                           §§push(param3.length);
                           if(!_loc11_)
                           {
                              _loc4_ = §§pop();
                              if(_loc11_ && Encode)
                              {
                              }
                           }
                           §§goto(addr209);
                        }
                     }
                     param1.writeUnsignedInt(_loc4_);
                  }
                  addr209:
                  var _loc5_:* = §§pop();
                  if(!_loc11_)
                  {
                     param1.writeUnsignedInt(param2);
                     if(_loc12_)
                     {
                     }
                     §§goto(addr227);
                  }
                  if(param3 != null)
                  {
                     if(!(_loc11_ && Boolean(param3)))
                     {
                        addr227:
                        param1.writeBytes(param3);
                        §§goto(addr230);
                     }
                  }
                  addr230:
                  var _loc6_:uint = param1.position;
                  if(_loc12_)
                  {
                     param1.position = _loc5_;
                     if(_loc12_ || Boolean(param3))
                     {
                        _loc8_ = 4294967295;
                     }
                  }
                  var _loc7_:int = 0;
                  while(true)
                  {
                     if(_loc7_ >= _loc6_ - _loc5_)
                     {
                        §§push(uint(_loc8_ ^ uint(4294967295)));
                        break;
                     }
                     §§push(uint(crcTable[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8)));
                     if(_loc12_ || Boolean(param3))
                     {
                        _loc8_ = §§pop();
                        if(!(_loc11_ && Encode))
                        {
                           _loc7_++;
                           if(_loc12_)
                           {
                              continue;
                           }
                           addr323:
                           param1.writeUnsignedInt(_loc8_);
                        }
                        else
                        {
                           addr318:
                           param1.position = _loc6_;
                           if(!_loc11_)
                           {
                              §§goto(addr323);
                           }
                        }
                        §§goto(addr326);
                     }
                     break;
                  }
                  _loc8_ = §§pop();
                  if(_loc12_ || Boolean(param2))
                  {
                     §§goto(addr318);
                  }
                  addr326:
                  return;
               }
            }
            §§goto(addr176);
            §§push(0);
         }
         crcTable = [];
         if(_loc11_ && Encode)
         {
         }
         §§goto(addr44);
      }
      
      private static function bitOR(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || Boolean(param1))
         {
            §§push(§§pop() & 1);
            if(_loc6_)
            {
               §§push(§§pop() | param2 & 1);
            }
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(§§pop() >>> 1 | param2 >>> 1);
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_ << 1);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() | _loc3_);
         }
         return §§pop();
      }
      
      private static function bitXOR(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!(_loc6_ && Encode))
         {
            §§push(§§pop() & 1);
            if(!_loc6_)
            {
               §§push(§§pop() ^ param2 & 1);
            }
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop() >>> 1 ^ param2 >>> 1);
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_ << 1);
         if(_loc5_)
         {
            §§push(§§pop() | _loc3_);
         }
         return §§pop();
      }
      
      private static function bitAND(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() & 1);
            if(_loc6_)
            {
               §§push(§§pop() & (param2 & 1));
            }
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() >>> 1 & param2 >>> 1);
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_ << 1);
         if(!_loc5_)
         {
            §§push(§§pop() | _loc3_);
         }
         return §§pop();
      }
      
      private static function addme(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!(_loc6_ && _loc3_))
         {
            §§push((§§pop() & 0xFFFF) + (param2 & 0xFFFF));
            if(_loc6_)
            {
            }
            addr30:
            var _loc3_:* = §§pop();
            §§push(param1);
            if(_loc5_ || Boolean(param2))
            {
               §§push(16);
               if(!_loc6_)
               {
                  §§push((§§pop() >> §§pop()) + (param2 >> 16));
                  if(_loc6_ && Boolean(param2))
                  {
                  }
                  §§goto(addr74);
               }
               §§goto(addr71);
            }
            §§push(_loc3_);
            if(_loc5_ || Encode)
            {
               addr71:
               §§push(§§pop() + §§pop());
               if(_loc5_)
               {
                  §§goto(addr74);
               }
               addr74:
               var _loc4_:Number = §§pop();
               §§push(_loc4_ << 16);
               if(_loc5_)
               {
                  §§push(§§pop() | _loc3_ & 0xFFFF);
               }
               return §§pop();
               §§push(§§pop() >> 16);
            }
            §§goto(addr74);
         }
         §§goto(addr30);
         §§push(§§pop());
      }
      
      private static function rhex(param1:Number) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         if(!_loc4_)
         {
            _loc3_ = 0;
         }
         do
         {
            if(_loc3_ <= 3)
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(hex_chr);
                  §§push(param1);
                  §§push(_loc3_ * 8);
                  if(_loc5_ || Encode)
                  {
                     §§push(§§pop() + 4);
                  }
                  §§push(§§pop() >> §§pop());
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop() & 0x0F);
                  }
                  §§push(§§pop() + (§§pop().charAt(§§pop()) + hex_chr.charAt(param1 >> _loc3_ * 8 & 0x0F)));
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
               }
               §§goto(addr105);
            }
            break;
         }
         while(_loc3_++, _loc5_ || Boolean(param1));
         
         addr105:
         _loc2_;
         return §§pop();
      }
      
      private static function str2blks_MD5(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         §§push((param1.length + 8 >> 6) + 1);
         if(_loc7_ || Encode)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Array = new Array(_loc2_ * 16);
         if(_loc7_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(§§pop() * 16);
               }
               if(§§pop() >= §§pop())
               {
                  if(_loc7_ || _loc2_)
                  {
                     §§push(0);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                           }
                           break loop0;
                        }
                        addr113:
                     }
                     while(§§pop() >= param1.length)
                     {
                        if(_loc7_)
                        {
                        }
                     }
                     break;
                  }
                  _loc3_[_loc4_ >> 2] |= 128 << (param1.length * 8 + _loc4_) % 4 * 8;
                  §§goto(addr151);
               }
               else
               {
                  _loc3_[_loc4_] = 0;
                  _loc4_++;
                  if(_loc7_ || Encode)
                  {
                     continue;
                  }
               }
               while(true)
               {
                  _loc4_++;
                  if(_loc7_)
                  {
                     §§goto(addr113);
                  }
                  break;
                  _loc3_[_loc4_ >> 2] |= param1.charCodeAt(_loc4_) << (param1.length * 8 + _loc4_) % 4 * 8;
               }
               §§goto(addr151);
            }
            break;
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            _loc3_[_loc2_ * 16 - 2] = _loc5_ & 0xFF;
            if(_loc7_)
            {
            }
            §§goto(addr195);
         }
         _loc3_[_loc2_ * 16 - 2] |= (_loc5_ >>> 8 & 0xFF) << 8;
         if(_loc7_)
         {
            addr195:
            _loc3_[_loc2_ * 16 - 2] |= (_loc5_ >>> 16 & 0xFF) << 16;
            if(!(_loc6_ && _loc2_))
            {
               _loc3_[_loc2_ * 16 - 2] |= (_loc5_ >>> 24 & 0xFF) << 24;
               addr224:
            }
            return _loc3_;
         }
         §§goto(addr224);
      }
      
      private static function rol(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 << param2);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() | param1 >>> 32 - param2);
         }
         return §§pop();
      }
      
      private static function cmn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Number
      {
         return addme(rol(addme(addme(param2,param1),addme(param4,param6)),param5),param3);
      }
      
      private static function ff(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitOR(bitAND(param2,param3),bitAND(~param2,param4)),param1,param2,param5,param6,param7);
      }
      
      private static function gg(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitOR(bitAND(param2,param4),bitAND(param3,~param4)),param1,param2,param5,param6,param7);
      }
      
      private static function hh(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitXOR(bitXOR(param2,param3),param4),param1,param2,param5,param6,param7);
      }
      
      private static function ii(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return cmn(bitXOR(param3,bitOR(param2,~param4)),param1,param2,param5,param6,param7);
      }
      
      internal static function MD5(param1:String) : String
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc2_:Array = str2blks_MD5(param1);
         var _loc3_:* = 1732584193;
         var _loc4_:* = -271733879;
         var _loc5_:* = -1732584194;
         var _loc6_:* = 271733878;
         if(_loc12_)
         {
            _loc7_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc7_);
            while(true)
            {
               if(§§pop() >= _loc2_.length)
               {
                  return rhex(_loc3_) + rhex(_loc4_) + rhex(_loc5_) + rhex(_loc6_);
               }
               §§push(_loc3_);
               if(_loc12_)
               {
                  §§push(§§pop());
                  if(_loc12_)
                  {
                     _loc8_ = §§pop();
                     if(!(_loc13_ && Boolean(_loc2_)))
                     {
                        _loc9_ = _loc4_;
                        §§push(_loc5_);
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           §§push(§§pop());
                           if(!(_loc13_ && Boolean(param1)))
                           {
                              _loc10_ = §§pop();
                              if(_loc12_)
                              {
                                 §§push(_loc6_);
                                 if(_loc12_ || Encode)
                                 {
                                    _loc11_ = §§pop();
                                    §§push(ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 0],7,-680876936));
                                    if(_loc12_)
                                    {
                                       _loc3_ = §§pop();
                                       _loc6_ = ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 1],12,-389564586);
                                       if(!(_loc12_ || Encode))
                                       {
                                          continue loop0;
                                       }
                                       _loc5_ = ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 2],17,606105819);
                                       if(!_loc13_)
                                       {
                                          §§push(ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 3],22,-1044525330));
                                          if(_loc12_ || Boolean(param1))
                                          {
                                             _loc4_ = §§pop();
                                             if(!(_loc13_ && Boolean(_loc2_)))
                                             {
                                                _loc3_ = ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 4],7,-176418897);
                                                _loc6_ = ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 5],12,1200080426);
                                                §§push(ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 6],17,-1473231341));
                                                if(_loc12_ || Boolean(param1))
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc12_ || Boolean(_loc3_))
                                                   {
                                                      §§push(ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 7],22,-45705983));
                                                      if(_loc13_ && Boolean(param1))
                                                      {
                                                      }
                                                      addr906:
                                                      _loc5_ = §§pop();
                                                      if(_loc12_ || Boolean(param1))
                                                      {
                                                         addr914:
                                                         _loc4_ = hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 10],23,-1094730640);
                                                         addr942:
                                                         addr929:
                                                         §§push(hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 13],4,681279174));
                                                         if(_loc12_)
                                                         {
                                                            _loc3_ = §§pop();
                                                         }
                                                         addr1227:
                                                         _loc5_ = §§pop();
                                                         if(!_loc13_)
                                                         {
                                                            addr1230:
                                                            §§push(ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 1],21,-2054922799));
                                                            if(_loc12_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(_loc12_ || Boolean(_loc3_))
                                                               {
                                                                  addr1268:
                                                                  _loc3_ = ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 8],6,1873313359);
                                                                  if(_loc13_)
                                                                  {
                                                                  }
                                                                  addr1410:
                                                                  _loc4_ = ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 9],21,-343485551);
                                                                  addr1463:
                                                                  if(_loc12_ || Encode)
                                                                  {
                                                                     §§push(addme(_loc3_,_loc8_));
                                                                  }
                                                                  §§push(_loc7_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr1468:
                                                                     §§push(int(§§pop() + 16));
                                                                     if(_loc12_ || Boolean(_loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               addr1341:
                                                               §§push(ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 4],6,-145523070));
                                                               if(_loc12_)
                                                               {
                                                                  addr1357:
                                                                  _loc3_ = §§pop();
                                                                  §§push(ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 11],10,-1120210379));
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr1375:
                                                                     §§push(ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 2],15,718787259));
                                                                     if(_loc13_ && Encode)
                                                                     {
                                                                     }
                                                                     addr1432:
                                                                     _loc4_ = §§pop();
                                                                     addr1433:
                                                                     §§push(addme(_loc5_,_loc10_));
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr1440:
                                                                        _loc5_ = §§pop();
                                                                        §§push(addme(_loc6_,_loc11_));
                                                                        if(_loc13_ && Boolean(_loc3_))
                                                                        {
                                                                        }
                                                                        addr1460:
                                                                        _loc6_ = §§pop();
                                                                        if(!_loc12_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr1463);
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(_loc12_ || Boolean(_loc3_))
                                                                     {
                                                                        §§goto(addr1460);
                                                                     }
                                                                     §§goto(addr1468);
                                                                  }
                                                               }
                                                            }
                                                            addr1313:
                                                            §§push(§§pop());
                                                         }
                                                         _loc6_ = ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 15],10,-30611744);
                                                         if(_loc13_ && Boolean(_loc2_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr1293:
                                                         §§push(ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 6],15,-1560198380));
                                                         if(_loc12_ || Boolean(param1))
                                                         {
                                                            §§goto(addr1313);
                                                         }
                                                         §§goto(addr1357);
                                                      }
                                                      addr1101:
                                                      §§push(ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 0],6,-198630844));
                                                      if(!(_loc13_ && Boolean(_loc3_)))
                                                      {
                                                         addr1122:
                                                         _loc3_ = §§pop();
                                                         if(!_loc13_)
                                                         {
                                                            addr1138:
                                                            _loc6_ = ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 7],10,1126891415);
                                                            addr1125:
                                                            if(!_loc13_)
                                                            {
                                                               addr1156:
                                                               _loc5_ = ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 14],15,-1416354905);
                                                               addr1142:
                                                               §§push(ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 5],21,-57434055));
                                                               if(_loc12_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(_loc12_ || Encode)
                                                                  {
                                                                  }
                                                                  §§goto(addr1375);
                                                               }
                                                               §§goto(addr1410);
                                                            }
                                                            §§goto(addr1230);
                                                         }
                                                         addr1198:
                                                         _loc6_ = ii(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 3],10,-1894986606);
                                                         §§goto(addr1227);
                                                         §§push(ii(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 10],15,-1051523));
                                                      }
                                                      §§goto(addr1440);
                                                   }
                                                   addr946:
                                                   §§push(hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 0],11,-358537222));
                                                   if(_loc12_ || Encode)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(_loc13_ && Boolean(_loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr988:
                                                      §§push(hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 3],16,-722521979));
                                                      if(!_loc13_)
                                                      {
                                                         _loc5_ = §§pop();
                                                      }
                                                      §§goto(addr1440);
                                                   }
                                                   addr1098:
                                                   _loc4_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr1101);
                                                   }
                                                   §§goto(addr1293);
                                                }
                                                addr646:
                                                _loc5_ = §§pop();
                                                if(!(_loc13_ && Boolean(param1)))
                                                {
                                                   §§push(gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 8],20,1163531501));
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc12_ || Boolean(_loc2_))
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc12_)
                                                         {
                                                            addr681:
                                                            §§push(gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 13],5,-1444681467));
                                                            if(_loc13_)
                                                            {
                                                            }
                                                            addr1073:
                                                            _loc5_ = §§pop();
                                                            if(!(_loc13_ && Encode))
                                                            {
                                                               addr1196:
                                                               §§push(hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 2],23,-995338651));
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr1098);
                                                                  §§push(§§pop());
                                                               }
                                                               _loc3_ = §§pop();
                                                               §§goto(addr1198);
                                                            }
                                                            §§goto(addr1125);
                                                         }
                                                         §§goto(addr1433);
                                                      }
                                                      addr812:
                                                      §§push(§§pop());
                                                      if(_loc12_ || Boolean(param1))
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr835:
                                                         _loc5_ = hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 11],16,1839030562);
                                                         _loc4_ = hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 14],23,-35309556);
                                                         addr836:
                                                         if(!(_loc13_ && Boolean(_loc3_)))
                                                         {
                                                            addr871:
                                                            _loc3_ = hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 1],4,-1530992060);
                                                            §§push(hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 4],11,1272893353));
                                                            if(_loc12_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§push(hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 7],16,-155497632));
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr906);
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr988);
                                                            }
                                                            §§goto(addr1196);
                                                         }
                                                         §§goto(addr1357);
                                                         addr834:
                                                      }
                                                      addr1035:
                                                      _loc3_ = §§pop();
                                                      if(_loc12_ || Boolean(_loc2_))
                                                      {
                                                         addr1057:
                                                         _loc6_ = hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 12],11,-421815835);
                                                         addr1315:
                                                         if(!_loc13_)
                                                         {
                                                            §§goto(addr1073);
                                                            §§push(hh(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 15],16,530742520));
                                                         }
                                                         §§push(ii(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 13],21,1309151649));
                                                         if(_loc12_ || Boolean(_loc3_))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc12_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr1341);
                                                               }
                                                               §§goto(addr1375);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1142);
                                                   }
                                                   §§goto(addr1440);
                                                }
                                                §§push(hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 9],4,-640364487));
                                                if(!(_loc13_ && Boolean(_loc3_)))
                                                {
                                                   §§goto(addr1035);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr1122);
                                             }
                                             addr337:
                                             §§push(ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 12],7,1804603682));
                                             if(!_loc13_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc12_)
                                                {
                                                   _loc6_ = ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 13],12,-40341101);
                                                   if(_loc12_)
                                                   {
                                                      §§push(ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 14],17,-1502002290));
                                                      if(_loc12_ || Boolean(_loc2_))
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!(_loc13_ && Boolean(param1)))
                                                         {
                                                            §§push(ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 15],22,1236535329));
                                                         }
                                                         §§goto(addr836);
                                                      }
                                                      §§goto(addr942);
                                                   }
                                                   §§goto(addr929);
                                                }
                                                §§goto(addr906);
                                             }
                                             §§goto(addr834);
                                          }
                                          _loc5_ = §§pop();
                                          §§goto(addr1410);
                                       }
                                       §§push(ii(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 12],6,1700485571));
                                       if(_loc12_)
                                       {
                                          §§goto(addr1196);
                                       }
                                       §§goto(addr1357);
                                    }
                                    _loc5_ = §§pop();
                                    §§goto(addr1315);
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc12_)
                                 {
                                    §§push(ff(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 8],7,1770035416));
                                    if(!_loc13_)
                                    {
                                       _loc3_ = §§pop();
                                       §§push(ff(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 9],12,-1958414417));
                                       if(_loc12_)
                                       {
                                          _loc6_ = §§pop();
                                          §§push(ff(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 10],17,-42063));
                                          if(!(_loc13_ && Boolean(param1)))
                                          {
                                             addr515:
                                             §§push(§§pop());
                                             if(_loc12_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   _loc4_ = ff(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 11],22,-1990404162);
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr337);
                                                   }
                                                   §§goto(addr942);
                                                }
                                                addr521:
                                                _loc6_ = gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 10],9,38016083);
                                                §§push(gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 15],14,-660478335));
                                             }
                                             §§push(§§pop());
                                             if(!_loc13_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   §§goto(addr521);
                                                }
                                                addr582:
                                                §§push(gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 9],5,568446438));
                                                if(_loc12_ || Boolean(param1))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc12_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                _loc3_ = §§pop();
                                                §§push(gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 14],9,-1019803690));
                                             }
                                             §§goto(addr835);
                                          }
                                          _loc5_ = §§pop();
                                          if(_loc12_ || Encode)
                                          {
                                             §§push(gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 4],20,-405537848));
                                             if(!(_loc13_ && Boolean(_loc3_)))
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   §§goto(addr582);
                                                }
                                             }
                                             §§goto(addr1057);
                                          }
                                          §§goto(addr1142);
                                       }
                                       §§goto(addr1440);
                                    }
                                    _loc6_ = §§pop();
                                    addr705:
                                    if(_loc12_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr646);
                                       §§push(gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 3],14,-187363961));
                                    }
                                    §§push(gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 2],9,-51403784));
                                    if(_loc12_ || Boolean(_loc3_))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc13_)
                                       {
                                          _loc5_ = gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 7],14,1735328473);
                                          _loc4_ = gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 12],20,-1926607734);
                                          if(!_loc13_)
                                          {
                                             §§push(hh(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 5],4,-378558));
                                             if(!(_loc13_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc13_ && Boolean(_loc2_)))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr812);
                                                      §§push(hh(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 8],11,-2022574463));
                                                   }
                                                }
                                                §§goto(addr1357);
                                             }
                                             §§goto(addr871);
                                          }
                                       }
                                       §§goto(addr1410);
                                    }
                                    §§goto(addr835);
                                 }
                                 §§goto(addr946);
                              }
                              §§push(hh(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 6],23,76029189));
                              if(!(_loc13_ && Boolean(_loc2_)))
                              {
                                 _loc4_ = §§pop();
                                 §§goto(addr646);
                              }
                              §§goto(addr1357);
                           }
                           _loc4_ = §§pop();
                           §§push(gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 1],5,-165796510));
                           if(!_loc13_)
                           {
                              _loc3_ = §§pop();
                              §§push(gg(_loc6_,_loc3_,_loc4_,_loc5_,_loc2_[_loc7_ + 6],9,-1069501632));
                              if(_loc12_ || Boolean(param1))
                              {
                                 _loc6_ = §§pop();
                                 §§push(gg(_loc5_,_loc6_,_loc3_,_loc4_,_loc2_[_loc7_ + 11],14,643717713));
                                 if(_loc12_ || Encode)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc5_ = §§pop();
                              }
                              §§goto(addr1268);
                           }
                           §§goto(addr1156);
                        }
                        _loc3_ = §§pop();
                        if(_loc12_)
                        {
                           §§push(addme(_loc4_,_loc9_));
                        }
                        §§goto(addr1268);
                     }
                     _loc4_ = gg(_loc4_,_loc5_,_loc6_,_loc3_,_loc2_[_loc7_ + 0],20,-373897302);
                     if(_loc12_)
                     {
                        §§push(gg(_loc3_,_loc4_,_loc5_,_loc6_,_loc2_[_loc7_ + 5],5,-701558691));
                        if(_loc12_ || Boolean(param1))
                        {
                           §§goto(addr515);
                        }
                        §§goto(addr1138);
                     }
                     §§goto(addr681);
                  }
                  _loc3_ = §§pop();
                  if(_loc12_ || Boolean(param1))
                  {
                     §§goto(addr705);
                  }
                  §§goto(addr914);
               }
               §§goto(addr1432);
               §§push(§§pop());
            }
            _loc7_ = §§pop();
         }
      }
   }
}

