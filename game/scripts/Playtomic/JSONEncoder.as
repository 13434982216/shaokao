package Playtomic
{
   import flash.utils.describeType;
   
   public class JSONEncoder
   {
      private var jsonString:String;
      
      public function JSONEncoder(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc3_)
            {
            }
            §§goto(addr31);
         }
         this.jsonString = this.convertToString(param1);
         addr31:
      }
      
      public function getString() : String
      {
         return this.jsonString;
      }
      
      private function convertToString(param1:*) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            if(param1 is String)
            {
               if(_loc2_ || param1)
               {
                  §§push(this.escapeString(param1 as String));
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
                  §§goto(addr118);
               }
            }
            else
            {
               §§push(param1 is Number);
               if(_loc2_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(isFinite(param1 as Number))
                     {
                        §§push(param1.toString());
                        if(_loc3_ && param1)
                        {
                        }
                     }
                     else
                     {
                        §§push("null");
                        if(_loc3_)
                        {
                           §§goto(addr156);
                        }
                     }
                     return §§pop();
                  }
                  if(!(param1 is Boolean))
                  {
                     §§push(param1 is Array);
                     if(_loc2_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           §§push(this.arrayToString(param1 as Array));
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr118:
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§push(param1 is Object);
                           if(param1 is Object)
                           {
                           }
                           addr150:
                           if(!§§pop())
                           {
                              addr156:
                              return §§pop();
                              §§push("null");
                           }
                        }
                     }
                  }
                  §§goto(addr154);
               }
               §§pop();
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr150);
                  §§push(param1 != null);
               }
            }
            return !!param1 ? "true" : "false";
         }
         addr154:
         this.objectToString(param1);
         return §§pop();
      }
      
      private function escapeString(param1:String) : String
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               if(§§pop() < _loc4_)
               {
                  §§push(param1);
                  if(_loc10_ || Boolean(param1))
                  {
                     §§push(_loc5_);
                     if(!(_loc9_ && Boolean(this)))
                     {
                        §§push(§§pop().charAt(§§pop()));
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           _loc3_ = §§pop();
                           §§push(_loc3_);
                           loop2:
                           while(true)
                           {
                              var _loc8_:* = §§pop();
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 addr270:
                                 if("\"" === _loc8_)
                                 {
                                    §§push(0);
                                 }
                                 else if("\\" === _loc8_)
                                 {
                                    §§push(1);
                                 }
                                 else if("\b" !== _loc8_)
                                 {
                                    §§push("\f" === _loc8_ ? 3 : ("\n" === _loc8_ ? 4 : ("\r" === _loc8_ ? 5 : ("\t" === _loc8_ ? 6 : 7))));
                                 }
                                 if(!(_loc9_ && Boolean(param1)))
                                 {
                                    loop8:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc2_ += "\\\"";
                                          break loop2;
                                       case 1:
                                          _loc2_ += "\\\\";
                                          if(_loc10_)
                                          {
                                             break loop2;
                                          }
                                          continue loop0;
                                       case 2:
                                          _loc2_ += "\\b";
                                          if(_loc10_)
                                          {
                                             break loop2;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             break loop8;
                                          }
                                          addr188:
                                          break;
                                       case 3:
                                          §§push(_loc2_ + "\\f");
                                          if(_loc10_)
                                          {
                                             _loc2_ = §§pop();
                                             break loop2;
                                          }
                                          addr116:
                                          _loc2_ = §§pop();
                                          break loop2;
                                       case 4:
                                          §§push(_loc2_);
                                          if(_loc10_ || Boolean(_loc3_))
                                          {
                                             _loc2_ = §§pop() + "\\n";
                                             if(!(_loc9_ && Boolean(_loc3_)))
                                             {
                                                break loop2;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                §§goto(addr188);
                                             }
                                             addr187:
                                          }
                                          break;
                                       case 5:
                                          §§push(_loc2_);
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          §§goto(addr116);
                                          §§push(§§pop() + "\\r");
                                          break;
                                       case 6:
                                          §§push(_loc2_);
                                          break loop1;
                                       default:
                                          §§push(_loc3_);
                                    }
                                    continue loop7;
                                 }
                                 continue loop1;
                              }
                              §§push(2);
                              if(_loc10_)
                              {
                              }
                              §§goto(addr270);
                           }
                           addr279:
                           _loc5_++;
                           continue loop0;
                           addr221:
                        }
                        while(true)
                        {
                           if(§§pop() >= " ")
                           {
                              §§push(_loc2_);
                              if(_loc10_ || Boolean(_loc2_))
                              {
                              }
                              break;
                           }
                           addr215:
                           if(!_loc9_)
                           {
                              §§push(_loc3_);
                              §§push(0);
                           }
                           continue loop0;
                        }
                        _loc2_ = §§pop();
                        addr219:
                        §§goto(addr279);
                     }
                     while(true)
                     {
                        §§push(§§pop().charCodeAt(§§pop()).toString(16));
                        if(_loc10_ || Boolean(this))
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              _loc6_ = §§pop();
                              if(_loc10_ || Boolean(this))
                              {
                                 if(§§pop().length == 2)
                                 {
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       §§push("00");
                                    }
                                    §§goto(addr279);
                                 }
                                 else
                                 {
                                    §§push("000");
                                 }
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                    §§goto(addr187);
                                 }
                              }
                           }
                           §§goto(addr215);
                        }
                        while(true)
                        {
                           §§push("\\u" + _loc7_);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc9_ && Boolean(this)))
                           {
                              _loc2_ = §§pop();
                              break;
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr219);
                     }
                  }
                  break;
               }
               §§push("\"" + _loc2_);
               if(!(_loc9_ && Boolean(param1)))
               {
                  §§push(§§pop() + "\"");
               }
               break loop0;
            }
            §§push(§§pop() + "\\t");
            if(_loc9_ && Boolean(param1))
            {
               break;
            }
            _loc2_ = §§pop();
            if(!_loc10_)
            {
               continue;
            }
            §§goto(addr279);
         }
         return §§pop();
      }
      
      private function arrayToString(param1:Array) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = "";
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         do
         {
            if(_loc4_ < _loc3_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  if(§§pop().length > 0)
                  {
                     if(_loc5_ && Boolean(param1))
                     {
                        continue;
                     }
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        §§push(§§pop() + ",");
                        if(_loc6_)
                        {
                           _loc2_ = §§pop();
                           if(_loc5_ && Boolean(param1))
                           {
                           }
                           break;
                        }
                        §§goto(addr97);
                     }
                  }
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                  }
                  addr69:
                  _loc2_ = §§pop();
                  if(!(_loc6_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr69);
               §§push(§§pop() + this.convertToString(param1[_loc4_]));
            }
            break;
         }
         while(_loc4_++, !_loc5_);
         
         §§push("[" + _loc2_);
         if(!_loc5_)
         {
            §§push(§§pop() + "]");
         }
         addr97:
         return §§pop();
      }
      
      private function objectToString(param1:Object) : String
      {
         var o:Object;
         var s:String;
         var classInfo:XML;
         var value:Object;
         var key:String;
         var v:XML;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(!(_loc10_ && Boolean(param1)))
         {
            §§pop().§§slot[4] = §§pop();
            §§push(§§newactivation());
            §§push(null);
            if(!_loc10_)
            {
               §§pop().§§slot[5] = §§pop();
               if(_loc11_ || Boolean(param1))
               {
                  §§goto(addr78);
               }
               addr58:
               s = "";
               if(!(_loc10_ && _loc2_))
               {
                  classInfo = describeType(o);
                  if(_loc11_)
                  {
                  }
                  §§goto(addr83);
               }
               addr78:
               §§push(§§newactivation());
               if(_loc11_)
               {
                  §§push(null);
               }
               if(§§pop().§§slot[3].@name.toString() == "Object")
               {
                  addr83:
                  var _loc3_:int = 0;
                  var _loc4_:* = o;
                  while(true)
                  {
                     §§push(§§hasnext(_loc4_,_loc3_));
                     if(!_loc10_)
                     {
                        if(!§§pop())
                        {
                           if(_loc11_ || Boolean(param1))
                           {
                              if(_loc11_ || Boolean(param1))
                              {
                                 if(_loc10_ && Boolean(param1))
                                 {
                                 }
                              }
                              §§goto(addr531);
                           }
                        }
                        else
                        {
                           §§push(§§newactivation());
                           if(!_loc10_)
                           {
                              §§push(§§nextname(_loc3_,_loc4_));
                              if(_loc11_ || Boolean(param1))
                              {
                                 §§pop().§§slot[5] = §§pop();
                                 if(_loc10_)
                                 {
                                    continue;
                                 }
                                 §§push(§§newactivation());
                                 if(_loc11_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc11_ || Boolean(param1))
                                    {
                                       §§pop().§§slot[4] = §§pop().§§slot[1][key];
                                       if(_loc10_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                       §§push(§§newactivation());
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                       }
                                       addr155:
                                       if(§§pop().§§slot[2].length > 0)
                                       {
                                          if(!(_loc11_ || Boolean(_loc3_)))
                                          {
                                             continue;
                                          }
                                          §§push(§§newactivation());
                                          if(_loc11_ || Boolean(this))
                                          {
                                          }
                                          addr193:
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr193);
                                       §§push(§§newactivation());
                                    }
                                    addr194:
                                    §§push(§§pop().§§slot[2]);
                                    if(_loc11_)
                                    {
                                    }
                                    addr217:
                                    §§pop().§§slot[2] = §§pop();
                                    continue;
                                 }
                                 if(§§pop().§§slot[4] is Function)
                                 {
                                    if(_loc11_ || Boolean(this))
                                    {
                                    }
                                    continue;
                                 }
                                 §§push(§§newactivation());
                                 if(_loc11_)
                                 {
                                    §§goto(addr155);
                                 }
                                 §§goto(addr193);
                              }
                              addr216:
                              §§push(this.escapeString(key) + ":");
                              if(_loc11_ || _loc2_)
                              {
                                 §§push(§§pop() + this.convertToString(value));
                              }
                              §§goto(addr217);
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§newactivation());
                           if(_loc11_)
                           {
                              §§push(§§pop().§§slot[2]);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() + ",");
                                 if(_loc11_)
                                 {
                                    §§pop().§§slot[2] = §§pop();
                                    if(_loc10_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr194);
                        }
                     }
                     else
                     {
                        loop13:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(§§newactivation());
                              if(_loc11_)
                              {
                                 §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                 addr520:
                                 if(!(_loc10_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc10_)
                                    {
                                    }
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc11_)
                                       {
                                          §§push(§§pop().§§slot[2]);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() + ",");
                                             if(!_loc10_)
                                             {
                                                §§pop().§§slot[2] = §§pop();
                                                if(_loc11_)
                                                {
                                                   addr493:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr494:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                      }
                                                   }
                                                   addr493:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                addr519:
                                                while(true)
                                                {
                                                   §§pop().§§slot[2] = §§pop();
                                                }
                                             }
                                             addr518:
                                          }
                                          while(true)
                                          {
                                             §§push(this.escapeString(v.@name.toString()) + ":");
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + this.convertToString(o[v.@name]));
                                             }
                                             §§goto(addr518);
                                          }
                                          addr498:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop().§§slot[2]);
                                          if(_loc11_)
                                          {
                                             §§goto(addr498);
                                          }
                                          §§goto(addr519);
                                       }
                                    }
                                    addr480:
                                 }
                                 while(true)
                                 {
                                    continue loop13;
                                 }
                                 addr520:
                              }
                              §§push(Boolean(§§pop().§§slot[6].metadata));
                              if(_loc11_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       §§pop();
                                       if(!_loc10_)
                                       {
                                          while(true)
                                          {
                                             var _loc6_:int = 0;
                                             var _loc7_:* = §§checkfilter(v.metadata);
                                             var _loc5_:* = new XMLList("");
                                             if(_loc11_ || Boolean(param1))
                                             {
                                             }
                                             v.metadata.(!_loc10_);
                                             §§push(_loc5_.length() > 0);
                                          }
                                          addr396:
                                       }
                                       §§goto(addr493);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc11_ || Boolean(param1)))
                                    {
                                       addr477:
                                       §§push(§§newactivation());
                                       if(_loc11_)
                                       {
                                       }
                                       §§goto(addr494);
                                    }
                                    §§goto(addr520);
                                 }
                                 else
                                 {
                                    §§push(§§newactivation());
                                    if(_loc11_ || Boolean(this))
                                    {
                                       if(§§pop().§§slot[2].length > 0)
                                       {
                                          if(!(_loc10_ && Boolean(this)))
                                          {
                                             §§goto(addr477);
                                          }
                                          §§goto(addr520);
                                       }
                                       §§goto(addr493);
                                    }
                                 }
                                 §§goto(addr480);
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc3_ = 0;
                  if(!(_loc10_ && _loc2_))
                  {
                     _loc6_ = 0;
                     _loc7_ = §§checkfilter(classInfo..*);
                     _loc5_ = new XMLList("");
                     if(_loc11_)
                     {
                     }
                     classInfo..*.(if(_loc11_)
                     {
                        §§push(name() == "variable");
                        if(_loc11_)
                        {
                           §§push(§§pop());
                           if(!_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc11_ || Boolean(_loc3_))
                                 {
                                    §§pop();
                                    if(_loc10_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           addr315:
                           if(§§pop())
                           {
                              if(!(_loc10_ && _loc2_))
                              {
                                 §§pop();
                                 addr342:
                                 if(_loc11_)
                                 {
                                    §§push(attribute("access").toString().charAt(0) == "r");
                                 }
                                 _loc5_[_loc6_] = _loc8_;
                                 continue loop0;
                              }
                           }
                        }
                        addr334:
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        if(_loc10_ && _loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr342);
                     }, §§push(name() == "accessor"), if(_loc11_)
                     {
                        §§goto(addr315);
                        §§push(§§pop());
                     }, §§goto(addr334), false);
                     _loc4_ = _loc5_;
                     if(!_loc10_)
                     {
                        §§goto(addr520);
                     }
                     §§goto(addr396);
                  }
               }
               addr531:
               §§push("{" + s);
               if(!_loc10_)
               {
                  §§push(§§pop() + "}");
               }
               return §§pop();
               §§push(§§newactivation());
            }
         }
         §§pop().§§slot[6] = §§pop();
         if(!(_loc10_ && Boolean(_loc3_)))
         {
            o = param1;
         }
         §§goto(addr58);
      }
   }
}

