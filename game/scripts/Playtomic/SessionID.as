package Playtomic
{
   import flash.system.Capabilities;
   
   internal final class SessionID
   {
      private static var counter:Number = 0;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(!_loc2_)
      {
         counter = 0;
         if(_loc2_)
         {
         }
         §§goto(addr23);
      }
      
      private static const Characters:String = "0123456789abcdef";
      
      addr23:
      
      public function SessionID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function Create() : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc1_:Date = new Date();
         var _loc2_:Number = Number(_loc1_.getTime());
         §§push(Math.random() * Number.MAX_VALUE);
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:String = Capabilities.serverString;
         var _loc5_:String = _loc2_ + _loc4_ + _loc3_ + counter++;
         return binb2hex(core_sha1(str2binb(_loc5_),_loc5_.length * 8));
      }
      
      private static function core_sha1(param1:Array, param2:Number) : Array
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = 0;
         var _loc16_:Number = NaN;
         if(_loc18_ || Boolean(param2))
         {
            §§push(param1);
            if(!(_loc17_ && SessionID))
            {
               §§push(param2);
               if(_loc18_ || _loc3_)
               {
                  §§push(5);
                  if(!(_loc17_ && Boolean(param1)))
                  {
                     addr114:
                     §§push(§§pop() >> §§pop());
                     if(!(_loc17_ && SessionID))
                     {
                        addr119:
                        §§push(param1[param2 >> 5] | 128 << 24 - param2 % 32);
                        if(!_loc17_)
                        {
                           §§pop()[§§pop()] = §§pop();
                           if(_loc18_)
                           {
                              §§push(param1);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(4);
                     if(_loc18_)
                     {
                        addr118:
                        §§push(§§pop() << §§pop());
                        §§push(15);
                     }
                     §§goto(addr119);
                  }
                  addr97:
                  §§push(§§pop() + §§pop());
                  if(_loc18_ || Boolean(param2))
                  {
                     addr106:
                     §§push(§§pop() >> 9);
                     if(_loc18_ || _loc3_)
                     {
                        §§goto(addr114);
                     }
                     §§goto(addr118);
                  }
               }
               addr120:
               §§pop()[§§pop()] = param2;
            }
            §§push(param2);
            if(!(_loc17_ && _loc3_))
            {
               §§push(64);
               if(_loc18_)
               {
                  §§goto(addr97);
               }
               §§goto(addr106);
            }
            §§goto(addr120);
         }
         var _loc3_:Array = new Array(80);
         var _loc4_:* = 1732584193;
         var _loc5_:* = -271733879;
         var _loc6_:* = -1732584194;
         var _loc7_:* = 271733878;
         var _loc8_:* = -1009589776;
         var _loc9_:* = 0;
         while(true)
         {
            §§push(_loc9_);
            loop1:
            while(true)
            {
               if(§§pop() < param1.length)
               {
                  _loc10_ = _loc4_;
                  §§push(_loc5_);
                  if(_loc18_ || Boolean(_loc3_))
                  {
                     §§push(§§pop());
                     if(!(_loc17_ && Boolean(param1)))
                     {
                        _loc11_ = §§pop();
                        §§push(_loc6_);
                        if(_loc18_ || SessionID)
                        {
                           §§push(§§pop());
                           if(_loc18_ || Boolean(param2))
                           {
                           }
                           loop2:
                           while(true)
                           {
                              _loc5_ = §§pop();
                              §§push(_loc16_);
                              if(_loc18_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc18_)
                                 {
                                    _loc15_++;
                                    while(true)
                                    {
                                       §§push(_loc15_);
                                       if(!_loc17_)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(80);
                                             if(!_loc17_)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      addr405:
                                                      if(!_loc17_)
                                                      {
                                                         §§push(safe_add(_loc4_,_loc10_));
                                                         if(!(_loc17_ && SessionID))
                                                         {
                                                            addr353:
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      §§push(safe_add(_loc8_,_loc14_));
                                                      if(!_loc17_)
                                                      {
                                                         addr404:
                                                         §§push(§§pop());
                                                      }
                                                      _loc8_ = §§pop();
                                                      if(_loc17_ && SessionID)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc15_);
                                                      if(!_loc18_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(16);
                                                      if(!_loc18_)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() < §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            _loc3_[_loc15_] = param1[_loc9_ + _loc15_];
                                                         }
                                                         addr232:
                                                      }
                                                      else
                                                      {
                                                         _loc3_[_loc15_] = rol(_loc3_[_loc15_ - 3] ^ _loc3_[_loc15_ - 8] ^ _loc3_[_loc15_ - 14] ^ _loc3_[_loc15_ - 16],1);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(safe_add(safe_add(rol(_loc4_,5),sha1_ft(_loc15_,_loc5_,_loc6_,_loc7_)),safe_add(safe_add(_loc8_,_loc3_[_loc15_]),sha1_kt(_loc15_))));
                                                         if(_loc18_)
                                                         {
                                                            _loc16_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc18_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  §§push(_loc6_);
                                                                  if(_loc17_ && Boolean(param1))
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  _loc6_ = rol(_loc5_,30);
                                                                  if(!_loc17_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr405);
                                                            addr299:
                                                         }
                                                         break loop4;
                                                      }
                                                   }
                                                }
                                                addr387:
                                                §§push(§§pop());
                                                if(_loc18_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc17_ && SessionID))
                                                   {
                                                      §§goto(addr405);
                                                   }
                                                }
                                                §§goto(addr404);
                                             }
                                             break;
                                          }
                                          addr417:
                                          §§push(int(§§pop() + §§pop()));
                                          if(_loc18_)
                                          {
                                             break loop1;
                                          }
                                          addr336:
                                       }
                                       break;
                                    }
                                    continue loop1;
                                    addr333:
                                 }
                                 §§push(_loc9_);
                                 if(_loc17_)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr417);
                                 §§push(16);
                              }
                              break;
                           }
                           addr367:
                           _loc5_ = §§pop();
                           §§push(safe_add(_loc6_,_loc12_));
                           if(!(_loc17_ && Boolean(_loc3_)))
                           {
                              _loc6_ = §§pop();
                              §§push(safe_add(_loc7_,_loc13_));
                              if(_loc18_)
                              {
                                 §§goto(addr387);
                              }
                           }
                           §§goto(addr405);
                        }
                        _loc4_ = §§pop();
                        §§push(safe_add(_loc5_,_loc11_));
                        if(_loc18_ || SessionID)
                        {
                           §§goto(addr367);
                           §§push(§§pop());
                        }
                        §§goto(addr367);
                     }
                     _loc12_ = §§pop();
                     if(!(_loc17_ && Boolean(_loc3_)))
                     {
                        _loc13_ = _loc7_;
                        if(!(_loc17_ && SessionID))
                        {
                           §§push(_loc8_);
                           if(!_loc17_)
                           {
                              §§push(§§pop());
                              if(_loc18_ || SessionID)
                              {
                              }
                              §§goto(addr353);
                           }
                           §§goto(addr367);
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr299);
                  }
                  _loc14_ = §§pop();
                  §§push(0);
                  if(_loc18_)
                  {
                     _loc15_ = §§pop();
                     §§goto(addr333);
                  }
                  §§goto(addr336);
               }
               return new Array(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
            }
            _loc9_ = §§pop();
         }
      }
      
      private static function sha1_ft(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         §§push(20);
         if(_loc5_)
         {
            if(§§pop() < §§pop())
            {
               §§push(param2);
               if(!(_loc6_ && Boolean(param2)))
               {
                  §§goto(addr154);
               }
               §§goto(addr99);
            }
            else
            {
               §§push(param1);
               if(!(_loc6_ && SessionID))
               {
                  §§push(40);
                  if(_loc5_)
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(param2);
                        §§push(param3);
                        if(_loc5_ || Boolean(param1))
                        {
                           §§goto(addr85);
                           §§push(§§pop() ^ §§pop());
                        }
                        else
                        {
                           addr99:
                           §§push(§§pop() & §§pop());
                           if(!(_loc6_ && SessionID))
                           {
                              §§push(param2);
                              if(!_loc6_)
                              {
                                 §§goto(addr133);
                              }
                           }
                           else
                           {
                              addr153:
                              §§push(param4);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr154);
                     }
                     else
                     {
                        addr138:
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(60);
                        }
                        §§push(§§pop() ^ param3);
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr154);
                  }
               }
            }
            §§goto(addr96);
         }
         if(§§pop() < §§pop())
         {
            addr96:
            §§push(param3);
            if(_loc5_)
            {
               §§goto(addr99);
            }
            else
            {
               §§goto(addr138);
            }
            return §§pop() ^ §§pop();
            §§push(param2);
         }
         else
         {
            §§goto(addr138);
            §§push(param2);
         }
         §§goto(addr138);
      }
      
      private static function sha1_kt(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(20);
               if(_loc2_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc3_)
                     {
                        addr62:
                        §§push(1859775393);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_ && SessionID)
                           {
                              addr95:
                           }
                        }
                     }
                     addr97:
                     §§push(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr98);
               }
               addr76:
               if(§§pop() < §§pop())
               {
                  §§goto(addr77);
               }
               else
               {
                  §§push(-899497514);
               }
               §§goto(addr97);
            }
            §§push(40);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() < §§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr97);
               }
               else
               {
                  addr75:
                  §§push(param1);
                  §§push(60);
               }
               addr77:
               §§push(-1894007588);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§goto(addr95);
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr76);
         }
         §§push(1518500249);
         if(!_loc3_)
         {
            §§push(§§pop());
            if(_loc3_)
            {
               §§goto(addr75);
            }
            addr98:
            return §§pop();
         }
         §§goto(addr97);
      }
      
      private static function safe_add(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push((§§pop() & 0xFFFF) + (param2 & 0xFFFF));
            if(_loc6_ || Boolean(param1))
            {
            }
            addr31:
            var _loc3_:* = §§pop();
            §§push(param1);
            if(_loc6_ || _loc3_)
            {
               §§push(16);
               if(!_loc5_)
               {
                  §§push((§§pop() >> §§pop()) + (param2 >> 16));
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr84);
                  }
               }
               §§push(§§pop() + §§pop());
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§push(§§pop());
               }
            }
            addr84:
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() >> 16);
            }
            var _loc4_:* = §§pop();
            §§push(§§pop() << 16);
            if(!_loc5_)
            {
               §§push(§§pop() | _loc3_ & 0xFFFF);
            }
            return §§pop();
            §§push(§§pop());
         }
         §§goto(addr31);
         §§push(§§pop());
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
      
      private static function str2binb(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = new Array();
         §§push(1);
         if(_loc6_)
         {
            §§push(§§pop() << 8);
         }
         §§push(§§pop() - 1);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < param1.length * 8)
            {
               _loc2_[_loc4_ >> 5] |= (param1.charCodeAt(_loc4_ / 8) & _loc3_) << 24 - _loc4_ % 32;
               if(!_loc6_)
               {
                  break;
               }
               §§push(_loc4_);
               if(!(_loc5_ && SessionID))
               {
                  §§push(int(§§pop() + 8));
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     _loc4_ = §§pop();
                     if(_loc5_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
            return _loc2_;
         }
      }
      
      private static function binb2hex(param1:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length * 4)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(Characters);
               §§push(param1);
               §§push(_loc3_);
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§push(§§pop() >> 2);
               }
               §§push(§§pop()[§§pop()] >> (3 - _loc3_ % 4) * 8 + 4);
               if(_loc4_ || Boolean(param1))
               {
                  §§push(§§pop() & 0x0F);
               }
               §§push(§§pop() + (§§pop().charAt(§§pop()) + Characters.charAt(param1[_loc3_ >> 2] >> (3 - _loc3_ % 4) * 8 & 0x0F)));
               if(_loc4_ || Boolean(param1))
               {
               }
               §§goto(addr114);
            }
            _loc2_ = §§pop();
            if(_loc5_)
            {
               break;
            }
            _loc3_++;
            if(_loc5_ && Boolean(_loc3_))
            {
               break;
            }
         }
         addr114:
         _loc2_;
         return §§pop();
      }
   }
}

