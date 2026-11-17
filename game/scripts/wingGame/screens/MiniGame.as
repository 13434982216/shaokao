package wingGame.screens
{
   import §_-C2§.§_-5i§;
   import flash.display.*;
   import wingGame.data.ClothingItem;
   import wingGame.data.FurniData;
   import wingGame.data.UserData;
   
   public class MiniGame
   {
      public static const TYPE_BURGERZILLA:String = "burgerzilla";
      
      public static const TYPE_HOTSHOT:String = "hotshot";
      
      public static const TYPE_PUTT:String = "putt";
      
      public static const TYPE_PACHINKO:String = "pachinko";
      
      public static const TYPE_CRAVINGS:String = "cravings";
      
      public static const TYPE_HALLWAY:String = "hallway";
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(_loc1_ || _loc1_)
      {
         TYPE_BURGERZILLA = "burgerzilla";
         TYPE_HOTSHOT = "hotshot";
         TYPE_PUTT = "putt";
         if(_loc1_ || _loc2_)
         {
            TYPE_PACHINKO = "pachinko";
            if(_loc1_ || _loc2_)
            {
               TYPE_CRAVINGS = "cravings";
               TYPE_HALLWAY = "hallway";
            }
         }
      }
      
      public static const TYPE_BLAST:String = "blast";
      
      public var screen:MiniGameScreen;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public function MiniGame(param1:MiniGameScreen, param2:MovieClip)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
         }
         var _loc3_:MiniGame = this;
         if(_loc4_ || Boolean(param2))
         {
            _loc3_.screen = param1;
            if(_loc4_ || Boolean(param2))
            {
               _loc3_.container = param2;
               if(_loc5_ && Boolean(param2))
               {
               }
            }
            §§goto(addr63);
         }
         _loc3_.setupScreen();
         addr63:
      }
      
      public function setupScreen() : void
      {
      }
      
      public function updateScreen() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function getStartingLevel(param1:Array, param2:Array, param3:Array) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:* = null;
         var _loc4_:MiniGame = this;
         var _loc5_:UserData = _loc4_.screen.gameObj.userData;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         do
         {
            if(_loc7_ < param1.length)
            {
               §§push(param2);
               if(_loc10_)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && Boolean(param3)))
                  {
                     if(§§pop()[§§pop()] == false)
                     {
                        if(!_loc9_)
                        {
                           §§push(_loc5_.alreadyOwnsFurniture(param1[_loc7_]));
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(_loc10_)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 addr162:
                              }
                           }
                           addr213:
                           if(!§§pop())
                           {
                              break;
                           }
                           §§push(_loc6_);
                           if(!(_loc9_ && Boolean(param2)))
                           {
                              §§push(§§pop() + 1);
                              if(_loc10_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc6_ = §§pop();
                        }
                        addr227:
                        continue;
                     }
                     §§push(param1);
                     if(_loc10_ || Boolean(this))
                     {
                        §§push(_loc7_);
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           _loc8_ = §§pop()[§§pop()];
                           §§push(param3);
                           if(!_loc9_)
                           {
                              §§push(_loc7_);
                              if(_loc9_ && Boolean(param1))
                              {
                              }
                              addr165:
                              if(§§pop()[§§pop()] == "hat")
                              {
                                 if(_loc5_.whichCharacter == "marty")
                                 {
                                    §§push(_loc8_ + "_premale");
                                    if(_loc10_)
                                    {
                                       _loc8_ = §§pop();
                                    }
                                 }
                                 else if(_loc5_.whichCharacter == "rita")
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(_loc8_ + "_prefemale");
                                       if(!_loc9_)
                                       {
                                          _loc8_ = §§pop();
                                          if(_loc9_ && Boolean(param3))
                                          {
                                          }
                                          §§goto(addr227);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr207:
                                    §§push(_loc8_ + ("_" + _loc4_.screen.gameObj.workerData.gender));
                                 }
                                 addr209:
                                 _loc8_ = §§pop();
                              }
                           }
                        }
                     }
                     addr210:
                     §§goto(addr213);
                     §§push(_loc5_.alreadyOwnsClothing(_loc8_));
                  }
                  if(§§pop()[§§pop()] == "gender")
                  {
                     §§push(_loc8_);
                     §§push("_");
                     if(!_loc9_)
                     {
                        §§push(_loc4_.screen);
                        if(!_loc9_)
                        {
                           §§push(§§pop().gameObj);
                           if(_loc10_)
                           {
                              §§push(§§pop().workerData);
                              if(_loc10_ || Boolean(param1))
                              {
                                 §§push(§§pop().gender);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc9_ && Boolean(param2)))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc9_ && Boolean(this)))
                                       {
                                          §§push(§§pop());
                                          if(_loc10_ || Boolean(param2))
                                          {
                                             _loc8_ = §§pop();
                                             §§goto(addr162);
                                          }
                                       }
                                    }
                                    §§goto(addr209);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr207);
                  }
                  else
                  {
                     §§push(param3);
                  }
                  §§goto(addr210);
               }
               §§goto(addr165);
               §§push(_loc7_);
            }
            break;
         }
         while(_loc7_++, !(_loc9_ && Boolean(this)));
         
         §§push(§_-5i§);
         §§push("Start at Round ");
         §§push(_loc6_);
         if(_loc10_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().§_-CE§(§§pop() + §§pop());
         return _loc6_;
      }
      
      public function tempCheckPrizes(param1:Array, param2:Array, param3:Array) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:* = 0;
         var _loc9_:FurniData = null;
         var _loc10_:String = null;
         var _loc11_:Array = null;
         var _loc12_:ClothingItem = null;
         var _loc4_:MiniGame = this;
         var _loc5_:UserData = _loc4_.screen.gameObj.userData;
         var _loc6_:Number = 0;
         if(!(_loc14_ && Boolean(param1)))
         {
            §_-5i§.§_-CE§("____CHECK PRIZES IN STORE______");
         }
         var _loc8_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc8_);
            loop1:
            while(true)
            {
               §§push(param1);
               loop2:
               while(§§pop() < §§pop().length)
               {
                  §§push(param2);
                  if(!_loc14_)
                  {
                     §§push(_loc8_);
                     if(_loc13_ || Boolean(this))
                     {
                        if(§§pop()[§§pop()] == false)
                        {
                           if(!_loc14_)
                           {
                              §§push(0);
                              if(!(_loc14_ && Boolean(param2)))
                              {
                                 _loc7_ = §§pop();
                                 if(_loc14_ && Boolean(param2))
                                 {
                                 }
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(_loc4_.screen.gameObj.§_-Cf§.furniItems);
                                 if(!(_loc14_ && Boolean(param3)))
                                 {
                                    if(§§pop() >= §§pop().length)
                                    {
                                       if(!(_loc13_ || Boolean(param1)))
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc4_.screen.gameObj.§_-Cf§.furniItems);
                                       if(!(_loc14_ && Boolean(param1)))
                                       {
                                          §§push(_loc7_);
                                          if(_loc13_)
                                          {
                                             _loc9_ = §§pop()[§§pop()];
                                             if(_loc9_.tag == param1[_loc8_])
                                             {
                                                if(_loc13_ || Boolean(param1))
                                                {
                                                   if(_loc9_.inStore == true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr146:
                                                }
                                                §§push(§_-5i§);
                                                §§push("WARNING!!! " + _loc9_.tag);
                                                if(!(_loc14_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop() + " -- inStore = ");
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() + _loc9_.inStore);
                                                   }
                                                }
                                                §§pop().error(§§pop());
                                                if(!_loc13_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr146);
                                             }
                                             else
                                             {
                                                _loc7_++;
                                                if(_loc14_ && Boolean(param3))
                                                {
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc13_ || Boolean(this))
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr360:
                                    _loc8_++;
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              addr199:
                              _loc11_ = [];
                              §§push(param3);
                              if(_loc13_ || Boolean(param3))
                              {
                                 addr293:
                                 §§push(_loc8_);
                                 if(_loc13_)
                                 {
                                    if(§§pop()[§§pop()] == "gender")
                                    {
                                       if(!_loc14_)
                                       {
                                          _loc11_.push(_loc10_ + "_male");
                                          _loc11_.push(_loc10_ + "_female");
                                          addr276:
                                          §§push(0);
                                          if(_loc13_ || Boolean(param3))
                                          {
                                             _loc7_ = §§pop();
                                             addr345:
                                             §§push(_loc7_);
                                             addr285:
                                          }
                                          if(§§pop() < _loc4_.screen.gameObj.§_-1B§.clothing.length)
                                          {
                                             §§push(_loc4_.screen.gameObj.§_-1B§.clothing);
                                          }
                                       }
                                       §§goto(addr360);
                                    }
                                    else
                                    {
                                       §§push(param3);
                                       if(_loc13_)
                                       {
                                       }
                                    }
                                    §§push(_loc7_);
                                 }
                                 _loc12_ = §§pop()[§§pop()];
                                 if(_loc13_)
                                 {
                                    if(_loc11_.indexOf(_loc12_.tag) > -1)
                                    {
                                       if(_loc14_)
                                       {
                                       }
                                    }
                                    addr344:
                                    _loc7_++;
                                    §§goto(addr345);
                                 }
                                 if(_loc12_.inStore == true)
                                 {
                                    if(_loc13_)
                                    {
                                       §§push(§_-5i§);
                                       §§push("WARNING!!! " + _loc12_.tag);
                                       if(_loc13_ || Boolean(param3))
                                       {
                                          §§push(§§pop() + " -- inStore = ");
                                          if(_loc14_ && Boolean(param2))
                                          {
                                          }
                                          addr336:
                                          §§pop().error(§§pop());
                                          if(_loc14_ && Boolean(param3))
                                          {
                                          }
                                       }
                                       §§goto(addr336);
                                       §§push(§§pop() + _loc12_.inStore);
                                    }
                                    §§goto(addr345);
                                 }
                                 §§goto(addr344);
                              }
                              §§push(_loc8_);
                              if(!(_loc14_ && Boolean(param3)))
                              {
                                 if(§§pop()[§§pop()] == "hat")
                                 {
                                    _loc11_.push(_loc10_ + "_premale");
                                    if(!_loc14_)
                                    {
                                       _loc11_.push(_loc10_ + "_prefemale");
                                       _loc11_.push(_loc10_ + "_male");
                                       _loc11_.push(_loc10_ + "_female");
                                       §§goto(addr276);
                                    }
                                    §§goto(addr360);
                                 }
                                 else
                                 {
                                    _loc11_.push(_loc10_);
                                    if(!(_loc14_ && Boolean(param1)))
                                    {
                                       §§goto(addr276);
                                    }
                                 }
                                 §§goto(addr285);
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr155);
                        }
                        else
                        {
                           §§push(param1);
                        }
                     }
                     addr194:
                     _loc10_ = §§pop()[§§pop()];
                     if(!_loc13_)
                     {
                        break;
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr194);
                  §§push(_loc8_);
               }
               return;
            }
         }
      }
      
      public function getPrizesAlreadyWon(param1:Array, param2:Array, param3:Array) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:* = null;
         var _loc4_:MiniGame = this;
         var _loc5_:UserData = _loc4_.screen.gameObj.userData;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            §§push(param2);
            if(_loc10_ || Boolean(param3))
            {
               §§push(_loc7_);
               if(!_loc9_)
               {
                  if(§§pop()[§§pop()] == false)
                  {
                     §§push(_loc5_.alreadyOwnsFurniture(param1[_loc7_]));
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           §§push(_loc6_);
                           if(!(_loc9_ && Boolean(this)))
                           {
                              §§push(§§pop() + 1);
                              if(!_loc9_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc9_ && Boolean(param2))
                                    {
                                       addr225:
                                       §§push(_loc6_);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc10_ || Boolean(this))
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                    }
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc9_ && Boolean(param2))
                                 {
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr260);
                        }
                     }
                     addr252:
                     _loc7_++;
                     if(!_loc10_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§push(param1);
                  if(_loc10_)
                  {
                     §§push(_loc7_);
                     if(_loc10_)
                     {
                        _loc8_ = §§pop()[§§pop()];
                        §§push(param3);
                        if(_loc10_)
                        {
                        }
                     }
                  }
                  addr152:
                  §§push(_loc7_);
                  addr224:
                  if(§§pop())
                  {
                     §§goto(addr225);
                  }
                  §§goto(addr252);
               }
               addr221:
               if(§§pop()[§§pop()] == "hat")
               {
                  if(_loc5_.whichCharacter == "marty")
                  {
                     if(_loc10_ || Boolean(this))
                     {
                        §§push(_loc8_ + "_premale");
                        if(_loc10_)
                        {
                           _loc8_ = §§pop();
                        }
                        §§goto(addr225);
                     }
                  }
                  else
                  {
                     §§push(_loc5_.whichCharacter);
                     if(!(_loc9_ && Boolean(param3)))
                     {
                        if(§§pop() == "rita")
                        {
                           §§push(_loc8_);
                           if(_loc9_ && Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           §§push(_loc8_);
                           if(!_loc9_)
                           {
                              addr216:
                              §§push(§§pop() + ("_" + _loc4_.screen.gameObj.workerData.gender));
                           }
                        }
                        addr218:
                        _loc8_ = §§pop();
                        if(_loc10_)
                        {
                        }
                        §§goto(addr225);
                     }
                     §§push(§§pop() + "_prefemale");
                     if(!_loc9_)
                     {
                        addr197:
                        _loc8_ = §§pop();
                        if(_loc9_ && Boolean(param1))
                        {
                        }
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr218);
                  §§push(§§pop());
               }
               §§goto(addr224);
               §§push(_loc5_.alreadyOwnsClothing(_loc8_));
            }
            §§push(_loc7_);
            if(_loc10_)
            {
               if(§§pop()[§§pop()] == "gender")
               {
                  if(!(_loc9_ && Boolean(this)))
                  {
                     §§push(_loc8_);
                     §§push("_");
                     if(_loc10_)
                     {
                        §§push(_loc4_.screen);
                        if(_loc10_ || Boolean(this))
                        {
                           §§push(§§pop().gameObj);
                           if(_loc10_)
                           {
                              §§push(§§pop().workerData);
                              if(!_loc9_)
                              {
                                 §§push(§§pop().gender);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc10_ || Boolean(param3))
                                       {
                                          _loc8_ = §§pop();
                                       }
                                       else
                                       {
                                          §§goto(addr197);
                                       }
                                    }
                                    §§goto(addr225);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr252);
               }
               else
               {
                  §§goto(addr152);
                  §§push(param3);
               }
            }
            §§goto(addr221);
         }
         addr260:
         _loc6_;
         return §§pop();
      }
   }
}

