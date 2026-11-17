package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import wingGame.screens.BuildScreen;
   
   public class DipItem
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var targetX:Number = 0;
      
      public var targetY:Number = 0;
      
      public var binX:Number = 0;
      
      public var binY:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isOnPlate:Boolean = false;
      
      public var isBumpingOtherDip:Boolean = false;
      
      public var lastBumpedAt:Number = 0;
      
      public var tweenSpeed:Number = 2;
      
      public var plateCenterX:Number = 133;
      
      public var plateCenterY:Number = 133;
      
      public var plateRadius:Number = 133;
      
      public var lettuceRadius:Number = 60;
      
      public var centerPaddingX:Number = 23.25;
      
      public var centerPaddingY:Number = 33;
      
      public var mouseOffsetX:Number = 0;
      
      public var mouseOffsetY:Number = 0;
      
      public var collisionLevels:Number = 10;
      
      public var radius:Number = 24;
      
      public function DipItem(param1:§_-BY§, param2:String, param3:Number, param4:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
         }
         var _loc5_:DipItem = this;
         _loc5_.gameObj = param1;
         _loc5_.type = param2;
         if(_loc6_ || Boolean(param1))
         {
            _loc5_.targetX = param3;
            if(_loc6_ || Boolean(param3))
            {
               _loc5_.targetY = param4;
            }
            §§push(_loc5_);
            §§push(param3);
            if(_loc6_)
            {
               §§push(§§pop() + this.centerPaddingX);
            }
            §§pop().binX = §§pop();
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(_loc5_);
               §§push(param4);
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§push(§§pop() + this.centerPaddingY);
               }
               §§pop().binY = §§pop();
               _loc5_.setupItem();
               _loc5_.clickItem(null);
            }
         }
      }
      
      public function setupItem() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:DipItem = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.§_-7q§;
         var _loc3_:String = "build_side_" + _loc1_.type;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            _loc1_.clip = §_-CI§.§_-2l§(_loc3_,true,true);
            _loc1_.clip.x = _loc1_.gameObj.mouseX - _loc2_.currentPlate.clip.x;
            _loc1_.clip.y = _loc1_.gameObj.mouseY - _loc2_.currentPlate.clip.y;
            if(_loc4_)
            {
               _loc1_.clip.mouseEnabled = true;
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc1_.clip.buttonMode = true;
                  if(_loc5_)
                  {
                  }
                  _loc1_.gameObj.§_-7q§.currentPlate.clip.dipholder.addChild(_loc1_.clip);
                  _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
                  addr97:
               }
               return;
            }
            _loc1_.clip.useHandCursor = true;
         }
         _loc1_.clip.gotoAndStop(3);
         §§goto(addr97);
      }
      
      public function clickItem(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DipItem = this;
         §§push(_loc2_.gameObj);
         if(_loc3_)
         {
            §§push(§§pop().§_-7q§.currentPlate.isFinished);
            if(_loc3_)
            {
               §§goto(addr173);
            }
            if(§§pop())
            {
               if(_loc3_ || Boolean(param1))
               {
                  _loc2_.isDragging = true;
                  _loc2_.isReturning = false;
                  _loc2_.isBumpingOtherDip = false;
                  §§goto(addr77);
               }
               §§goto(addr121);
            }
            §§goto(addr173);
         }
         §§pop().stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
         addr173:
         if(!§§pop())
         {
            addr77:
            if(_loc3_)
            {
               §§push(_loc2_.isDragging);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(!§§pop());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           §§push(_loc2_.isReturning);
                           if(_loc4_ && Boolean(this))
                           {
                           }
                        }
                     }
                  }
               }
               §§push(!§§pop());
            }
            §§push(_loc2_.gameObj);
            if(!_loc4_)
            {
               §§pop().soundManager.playSound("grabtopping.wav");
               if(param1 != null)
               {
                  _loc2_.mouseOffsetX = 0 - _loc2_.clip.mouseX;
                  if(_loc3_ || _loc3_)
                  {
                     _loc2_.mouseOffsetY = 0 - _loc2_.clip.mouseY;
                     addr124:
                     if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
                     {
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                     }
                     addr144:
                     §§push(_loc2_.gameObj);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
                     }
                  }
                  _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateItem);
                  §§goto(addr144);
               }
               else
               {
                  _loc2_.mouseOffsetX = 0;
                  if(_loc3_)
                  {
                     addr121:
                     _loc2_.mouseOffsetY = 0;
                     §§goto(addr124);
                  }
               }
               §§push(_loc2_.gameObj);
            }
         }
      }
      
      public function releaseItem(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DipItem = this;
         if(_loc3_ || Boolean(param1))
         {
            §§push(_loc2_.gameObj);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
            }
            §§pop().§_-7q§.currentPlate.resetLettuce();
            §§goto(addr71);
         }
         §§push(_loc2_.gameObj);
         if(!(_loc4_ && _loc3_))
         {
            §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
            _loc2_.isDragging = false;
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(_loc2_.gameObj);
            }
            §§goto(addr86);
         }
         addr71:
         if(_loc2_.isWithinPlateBounds())
         {
            _loc2_.addToPlate();
            addr86:
         }
         else
         {
            _loc2_.startReturning();
         }
      }
      
      public function updateItem(param1:Event) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:DipItem = this;
         var _loc3_:FoodPlate = _loc2_.gameObj.§_-7q§.currentPlate;
         §§push(_loc2_.isDragging);
         if(_loc13_)
         {
            if(§§pop())
            {
               §§push(_loc3_.clip.mouseX + _loc2_.mouseOffsetX);
               if(_loc13_)
               {
                  _loc4_ = §§pop();
                  §§push(_loc3_.clip.mouseY + _loc2_.mouseOffsetY);
                  if(_loc13_ || Boolean(_loc3_))
                  {
                     _loc5_ = §§pop();
                     if(_loc13_)
                     {
                        _loc2_.moveDip(_loc4_,_loc5_,0);
                        _loc3_.sortDips();
                        if(!_loc14_)
                        {
                           _loc6_ = _loc2_.clip.x - _loc3_.clip.mouseX;
                           §§goto(addr267);
                        }
                        addr154:
                        _loc2_.mouseOffsetX = Math.cos(_loc9_) * _loc2_.radius;
                        if(_loc13_)
                        {
                           _loc2_.mouseOffsetY = Math.sin(_loc9_) * _loc2_.radius;
                           addr172:
                        }
                        §§goto(addr267);
                     }
                     addr137:
                     _loc2_.mouseOffsetY = _loc7_;
                     §§goto(addr172);
                  }
                  addr267:
                  if(_loc13_)
                  {
                     §§push(_loc2_.clip.y - _loc3_.clip.mouseY);
                  }
                  return;
                  §§push(§§pop());
                  §§push(!_loc14_ ? (_loc7_ = §§pop(), Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_)) : (addr181:, _loc10_ = §§pop(), _loc2_.targetY - _loc2_.clip.y));
               }
               §§push(§§pop());
               if(!_loc14_)
               {
                  _loc8_ = §§pop();
                  §§push(_loc2_.radius);
               }
               if(§§pop() < §§pop())
               {
                  _loc2_.mouseOffsetX = _loc6_;
                  if(_loc13_ || Boolean(_loc3_))
                  {
                     §§goto(addr137);
                  }
                  else
                  {
                     addr232:
                     if(Math.abs(_loc11_) <= 1)
                     {
                        §§push(_loc2_.gameObj);
                        if(!(_loc14_ && Boolean(param1)))
                        {
                           addr264:
                           §§push(§§pop().§_-7q§);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop().getMovingDipIndex(_loc2_)));
                           }
                           §§pop().removeFromMovingDips(_loc12_,true);
                        }
                        addr263:
                        §§goto(addr264);
                        §§push(§§pop().§_-7q§);
                     }
                  }
               }
               else
               {
                  §§push(Math.atan2(_loc7_,_loc6_));
                  if(_loc13_ || Boolean(_loc2_))
                  {
                     _loc9_ = §§pop();
                     §§goto(addr154);
                  }
               }
               §§goto(addr267);
               §§push(_loc2_.gameObj);
            }
            else
            {
               §§push(_loc2_.targetX - _loc2_.clip.x);
               if(!_loc14_)
               {
                  §§goto(addr181);
               }
            }
            _loc11_ = §§pop();
            _loc2_.clip.x += _loc10_ / _loc2_.tweenSpeed;
            _loc2_.clip.y += _loc11_ / _loc2_.tweenSpeed;
            if(!_loc14_)
            {
               §§push(Math.abs(_loc10_) <= 1);
               if(_loc13_)
               {
               }
               addr231:
               §§pop();
               §§goto(addr232);
            }
            §§goto(addr267);
         }
         if(§§pop())
         {
            if(!(_loc14_ && Boolean(param1)))
            {
               §§goto(addr231);
            }
         }
         §§goto(addr232);
      }
      
      public function moveDip(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc6_:* = false;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc4_:DipItem = this;
         var _loc5_:FoodPlate = _loc4_.gameObj.§_-7q§.currentPlate;
         §§push(param3);
         if(_loc20_ || Boolean(param1))
         {
            §§push(_loc4_.collisionLevels);
            if(!(_loc21_ && Boolean(param1)))
            {
               if(§§pop() < §§pop())
               {
                  if(!(_loc21_ && Boolean(param3)))
                  {
                     §§push(false);
                     if(!_loc21_)
                     {
                        _loc6_ = §§pop();
                        addr124:
                        if(_loc20_ || Boolean(this))
                        {
                           §§push(_loc4_.isDragging);
                           if(_loc21_ && Boolean(param1))
                           {
                           }
                           addr272:
                           _loc6_ = §§pop();
                           addr273:
                           _loc7_ = 0;
                           while(true)
                           {
                              if(_loc7_ >= _loc5_.dipItems.length)
                              {
                                 addr566:
                                 if(_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 if(_loc5_.dipItems[_loc7_] == _loc4_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc20_ || Boolean(param3)))
                                 {
                                    continue;
                                 }
                                 §§push(param1);
                                 if(!_loc21_)
                                 {
                                    §§push(§§pop() - _loc5_.dipItems[_loc7_].getCenterX());
                                    if(!_loc21_)
                                    {
                                       addr389:
                                       §§push(§§pop());
                                       if(!(_loc21_ && Boolean(this)))
                                       {
                                          _loc14_ = §§pop();
                                          §§push(param2 - _loc5_.dipItems[_loc7_].getCenterY());
                                          if(_loc21_)
                                          {
                                          }
                                          addr583:
                                          §§push(§§pop() - _loc4_.lastBumpedAt);
                                          break;
                                       }
                                       _loc17_ = §§pop();
                                       if(_loc20_)
                                       {
                                          §§push(param1);
                                          if(!_loc21_)
                                          {
                                             §§push(Math.cos(_loc17_) * (this.radius * 2 + 0));
                                             if(_loc20_ || Boolean(param1))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc21_)
                                                {
                                                }
                                                addr468:
                                                param1 = §§pop();
                                                if(!(_loc21_ && Boolean(param2)))
                                                {
                                                   param2 = _loc4_.clip.y;
                                                   if(_loc20_ || Boolean(param3))
                                                   {
                                                      §§push(true);
                                                      if(_loc20_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(!_loc21_)
                                                         {
                                                            §§push(_loc4_.isBumpingOtherDip);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc21_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc20_ || Boolean(param1))
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr530:
                                                            if(!§§pop())
                                                            {
                                                            }
                                                            _loc4_.lastBumpedAt = _loc4_.gameObj.§_-6v§.gameplayTimer;
                                                            if(!(_loc21_ && Boolean(param3)))
                                                            {
                                                               _loc4_.isBumpingOtherDip = true;
                                                               continue;
                                                            }
                                                         }
                                                         addr597:
                                                         _loc4_.isBumpingOtherDip = false;
                                                      }
                                                      §§pop();
                                                      §§push(param3);
                                                      if(!(_loc21_ && Boolean(this)))
                                                      {
                                                         addr519:
                                                         §§push(0);
                                                         if(_loc20_ || Boolean(param3))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc20_)
                                                            {
                                                               §§goto(addr530);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr566);
                                                            }
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               §§goto(addr597);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr583);
                                                   }
                                                   addr579:
                                                   §§push(_loc4_.gameObj.§_-6v§.gameplayTimer);
                                                   if(!_loc21_)
                                                   {
                                                      §§goto(addr583);
                                                   }
                                                   break;
                                                }
                                                §§push(_loc4_.gameObj);
                                                if(_loc20_ || Boolean(this))
                                                {
                                                   §§pop().soundManager.playSound("dip_hit.wav");
                                                   §§goto(addr530);
                                                }
                                                else
                                                {
                                                   §§goto(addr579);
                                                }
                                             }
                                             addr430:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc21_ && Boolean(param3)))
                                             {
                                                §§push(§§pop());
                                                if(_loc20_ || Boolean(param3))
                                                {
                                                   _loc19_ = §§pop();
                                                   if(_loc20_ || Boolean(this))
                                                   {
                                                      addr454:
                                                      _loc5_.dipItems[_loc7_].moveDip(_loc18_,_loc19_,param3 + 1);
                                                      §§goto(addr468);
                                                      §§push(_loc4_.clip.x);
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          _loc18_ = §§pop();
                                       }
                                       §§push(param2);
                                       if(_loc20_)
                                       {
                                          §§goto(addr430);
                                          §§push(Math.sin(_loc17_) * (this.radius * 2 + 0));
                                       }
                                       §§goto(addr468);
                                    }
                                    break;
                                 }
                                 _loc15_ = §§pop();
                                 _loc16_ = Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
                                 §§push(_loc16_);
                                 if(_loc20_)
                                 {
                                    if(§§pop() >= this.radius * 2)
                                    {
                                       continue;
                                    }
                                    if(_loc21_ && Boolean(this))
                                    {
                                       continue;
                                    }
                                    _loc4_.clip.x = param1;
                                    _loc4_.clip.y = param2;
                                    if(_loc20_ || Boolean(param3))
                                    {
                                       §§push(Math.atan2(_loc15_,_loc14_));
                                    }
                                    §§goto(addr454);
                                 }
                                 §§push(§§pop());
                                 if(_loc20_)
                                 {
                                    _loc17_ = §§pop();
                                    if(_loc20_ || Boolean(param2))
                                    {
                                       §§goto(addr389);
                                       §§push(§§pop() + Math.PI);
                                    }
                                    §§goto(addr519);
                                 }
                                 §§goto(addr430);
                              }
                              _loc4_.clip.x = param1;
                              _loc4_.clip.y = param2;
                              if(!_loc21_)
                              {
                                 §§goto(addr579);
                              }
                              _loc7_++;
                           }
                           §§goto(addr519);
                           §§push(20);
                        }
                        §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_));
                        if(_loc20_)
                        {
                           _loc10_ = §§pop();
                           §§push(_loc10_);
                           §§push(_loc4_.lettuceRadius - _loc4_.radius);
                           if(_loc20_ || Boolean(this))
                           {
                           }
                           addr206:
                           §§push(§§pop() + §§pop());
                           if(!(_loc21_ && Boolean(this)))
                           {
                              §§push(§§pop());
                              if(_loc20_ || Boolean(this))
                              {
                                 _loc12_ = §§pop();
                                 if(_loc20_)
                                 {
                                 }
                                 addr248:
                                 _loc4_.clip.x = _loc12_;
                                 if(!_loc21_)
                                 {
                                    addr254:
                                    _loc4_.clip.y = _loc13_;
                                    §§push(_loc12_);
                                    if(!(_loc21_ && Boolean(this)))
                                    {
                                       param1 = §§pop();
                                    }
                                 }
                                 §§push(_loc13_);
                              }
                           }
                           _loc13_ = §§pop();
                           §§goto(addr248);
                        }
                        §§push(§§pop());
                     }
                     if(!§§pop())
                     {
                        §§push(_loc4_.plateCenterX);
                        if(!_loc21_)
                        {
                           _loc8_ = §§pop() - param1;
                           §§push(_loc4_.plateCenterY);
                           if(_loc21_ && Boolean(param2))
                           {
                           }
                           addr174:
                           §§push(§§pop() + Math.PI);
                           if(_loc20_)
                           {
                              _loc11_ = §§pop();
                              if(_loc20_ || Boolean(param3))
                              {
                                 §§push(_loc4_.plateCenterX);
                                 if(!(_loc21_ && Boolean(param2)))
                                 {
                                    §§goto(addr206);
                                    §§push(Math.cos(_loc11_) * (_loc4_.lettuceRadius - _loc4_.radius));
                                 }
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr254);
                        }
                        §§push(§§pop() - param2);
                        if(!(_loc21_ && Boolean(param3)))
                        {
                           _loc9_ = §§pop();
                           §§goto(addr124);
                        }
                        addr246:
                        §§goto(addr206);
                        §§push(§§pop());
                     }
                     §§goto(addr273);
                  }
                  §§push(_loc4_.plateCenterY);
                  if(!_loc21_)
                  {
                     addr238:
                     §§push(§§pop() + Math.sin(_loc11_) * (_loc4_.lettuceRadius - _loc4_.radius));
                     if(_loc20_ || Boolean(param3))
                     {
                        §§goto(addr246);
                     }
                     §§goto(addr124);
                  }
               }
               return;
            }
            if(§§pop() > §§pop())
            {
               if(_loc20_)
               {
                  §§push(Math.atan2(_loc9_,_loc8_));
                  if(!(_loc21_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(_loc20_ || Boolean(this))
                     {
                        _loc11_ = §§pop();
                     }
                     §§goto(addr238);
                  }
                  §§goto(addr174);
               }
               §§goto(addr248);
            }
            §§goto(addr273);
         }
         param2 = §§pop();
         §§goto(addr272);
         §§push(true);
      }
      
      public function getCenterX() : Number
      {
         var _loc1_:DipItem = this;
         return _loc1_.clip.x;
      }
      
      public function getCenterY() : Number
      {
         var _loc1_:DipItem = this;
         return _loc1_.clip.y;
      }
      
      public function startReturning() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:DipItem = this;
         §_-5i§.§_-CE§("Return to bin.");
         §§push(_loc1_.gameObj);
         if(!_loc3_)
         {
            §§goto(addr51);
         }
         §§push(§§pop().§_-7q§);
         if(_loc2_)
         {
            §§pop().currentPlate.removeDipFromPlate(_loc1_);
            §§goto(addr50);
            §§push(_loc1_.gameObj);
         }
         addr51:
         §§push(§§pop().§_-7q§);
         if(_loc2_ || _loc2_)
         {
            §§pop().addToMovingDips(_loc1_);
            §§push(_loc1_.gameObj);
            if(_loc3_ && _loc3_)
            {
            }
            addr50:
            §§push(§§pop().§_-7q§);
         }
         §§pop().clip.topholder.addChild(_loc1_.clip);
         _loc1_.clip.x += _loc1_.gameObj.§_-7q§.currentPlate.clip.x;
         _loc1_.clip.y += _loc1_.gameObj.§_-7q§.currentPlate.clip.y;
         if(_loc2_ || Boolean(this))
         {
            _loc1_.targetX = _loc1_.binX;
            _loc1_.targetY = _loc1_.binY;
            _loc1_.isReturning = true;
            _loc1_.isDragging = false;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.isOnPlate = false;
            }
         }
      }
      
      public function addToPlate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:DipItem = this;
         _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
         if(_loc3_ || Boolean(_loc1_))
         {
            addr118:
            §§push(_loc1_.gameObj);
            if(!_loc2_)
            {
               §§pop().soundManager.playSound("droptopping.wav");
               if(!_loc2_)
               {
                  §§push(_loc1_.gameObj);
                  if(!_loc2_)
                  {
                     §§push(§§pop().§_-3f§);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ && _loc2_)
                                 {
                                 }
                                 §§goto(addr115);
                              }
                              addr88:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_ && _loc3_)
                              {
                              }
                           }
                           §§goto(addr115);
                        }
                        addr97:
                        §§pop();
                     }
                     §§pop();
                  }
                  addr78:
                  §§push(§§pop().§_-DZ§ == 24);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr88);
                  }
                  §§goto(addr97);
               }
               §§push(_loc1_.gameObj);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr78);
               }
               addr102:
               addr115:
               if(§§pop())
               {
                  §§push(_loc1_.gameObj);
               }
               return;
               §§push(§§pop().§_-7q§.currentPlate.dipItems.length >= 2);
            }
            §§pop().§_-8o§();
            §§goto(addr115);
         }
         §§push(_loc1_.gameObj);
         if(_loc3_)
         {
            §§goto(addr102);
         }
         §§goto(addr118);
      }
      
      public function isWithinPlateBounds() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:DipItem = this;
         var _loc2_:* = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc1_.getDistToCenter());
            §§push(_loc1_.lettuceRadius);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() - _loc1_.radius);
            }
            if(§§pop() <= §§pop())
            {
               if(!_loc3_)
               {
                  §§push(true);
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                  }
                  §§goto(addr62);
               }
            }
         }
         addr62:
         _loc2_;
         return §§pop();
      }
      
      public function getDistToCenter() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:DipItem = this;
         §§push(_loc1_.plateCenterX);
         if(_loc5_)
         {
            §§push(§§pop() - _loc1_.clip.x);
            if(_loc5_)
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.plateCenterY);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - _loc1_.clip.y);
            if(!_loc4_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:DipItem = this;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
         }
         try
         {
            §§push(_loc1_.gameObj);
            if(!_loc3_)
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseItem);
               addr120:
               if(!_loc3_)
               {
                  §§push(_loc1_.gameObj);
               }
               _loc1_.clip = null;
            }
            §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc1_.releaseItem);
            if(_loc4_ || Boolean(this))
            {
               addr76:
               if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  if(_loc4_)
                  {
                     _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
                     if(_loc4_)
                     {
                     }
                  }
               }
               try
               {
                  _loc1_.clip.parent.removeChild(_loc1_.clip);
                  if(_loc3_)
                  {
                  }
               }
               catch(err:Error)
               {
                  §§goto(addr120);
               }
            }
            §§goto(addr120);
         }
         catch(err:Error)
         {
            §§goto(addr76);
         }
      }
   }
}

