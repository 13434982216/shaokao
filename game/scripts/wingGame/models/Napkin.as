package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import wingGame.screens.BuildScreen;
   
   public class Napkin
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var tweenSpeed:Number = 4;
      
      public var targetEndX:Number = -400;
      
      public var targetX:Number;
      
      public var targetY:Number;
      
      public var targetRotation:Number;
      
      public var plateCenterX:Number = 244;
      
      public var plateCenterY:Number = 220;
      
      public var plateRadius:Number = 133;
      
      public var itemRadius:Number = 50;
      
      public var extraDefaultRotation:Number = 0;
      
      public var defaultScale:Number = 1;
      
      public var lastX:Number = 0;
      
      public var lastY:Number = 0;
      
      public function Napkin(param1:§_-BY§, param2:Number, param3:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(this))
         {
            super();
         }
         var _loc4_:Napkin = this;
         _loc4_.gameObj = param1;
         if(_loc5_)
         {
            _loc4_.targetX = param2;
            _loc4_.targetY = param3;
            if(!(_loc6_ && Boolean(param1)))
            {
               _loc4_.lastX = param2;
               if(!(_loc6_ && Boolean(param3)))
               {
                  _loc4_.lastY = param3;
                  if(!(_loc6_ && Boolean(this)))
                  {
                     _loc4_.targetRotation = 0;
                     if(_loc5_)
                     {
                        _loc4_.setupNapkin();
                     }
                  }
               }
               _loc4_.clickItem(null);
            }
         }
      }
      
      public function updateItem(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Napkin = this;
         _loc2_.updateRotation();
         if(_loc2_.isDragging)
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               §§push(_loc2_.plateCenterX);
               §§push(_loc2_.gameObj);
               if(!_loc8_)
               {
                  §§push(§§pop() - §§pop().mouseX);
                  if(!_loc8_)
                  {
                     addr124:
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        _loc3_ = §§pop();
                        addr247:
                        §§push(_loc2_.plateCenterY);
                        if(!(_loc8_ && Boolean(_loc2_)))
                        {
                           §§push(_loc2_.gameObj);
                        }
                        §§push(§§pop());
                     }
                     §§push(_loc2_.plateRadius);
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() + 35);
                     }
                     §§push(§§pop() < §§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           if(!§§pop())
                           {
                           }
                           addr172:
                           if(§§pop())
                           {
                              addr267:
                              if(_loc7_)
                              {
                                 §§push(_loc2_.gameObj);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    addr323:
                                    §§push(§§pop().§_-7q§);
                                    if(_loc7_)
                                    {
                                       §§pop().currentPlate.eraseSplats(_loc2_.clip.x,_loc2_.clip.y);
                                       if(!(_loc7_ || Boolean(_loc3_)))
                                       {
                                          addr239:
                                          §§push(_loc2_.targetY - _loc2_.clip.y);
                                          if(_loc7_)
                                          {
                                             §§goto(addr247);
                                          }
                                       }
                                       addr307:
                                       if(Math.abs(_loc4_) <= 1)
                                       {
                                          §§push(_loc2_.gameObj);
                                       }
                                    }
                                    §§pop().removeNapkin();
                                 }
                                 §§goto(addr323);
                                 §§push(§§pop().§_-7q§);
                              }
                              _loc2_.clip.y += _loc4_ / _loc2_.tweenSpeed;
                              if(!(_loc8_ && Boolean(_loc2_)))
                              {
                                 addr285:
                                 §§push(Math.abs(_loc3_) <= 1);
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    §§push(§§pop());
                                 }
                                 §§pop();
                                 §§goto(addr307);
                              }
                           }
                           _loc2_.lastX = _loc2_.clip.x;
                           _loc2_.lastY = _loc2_.clip.y;
                           if(_loc8_ && Boolean(this))
                           {
                              §§goto(addr285);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc7_ || Boolean(param1))
                           {
                              §§goto(addr285);
                           }
                        }
                        §§goto(addr307);
                     }
                     §§pop();
                     if(_loc7_ || Boolean(param1))
                     {
                        §§push(_loc6_);
                        if(!(_loc8_ && Boolean(this)))
                        {
                           §§goto(addr172);
                           §§push(§§pop() > 0);
                        }
                     }
                     §§goto(addr307);
                  }
                  addr248:
                  _loc4_ = §§pop();
                  _loc2_.clip.x += _loc3_ / _loc2_.tweenSpeed;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     §§goto(addr267);
                  }
                  §§goto(addr307);
               }
               _loc4_ = §§pop() - §§pop().mouseY;
               §§push(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
               if(_loc7_)
               {
                  _loc5_ = §§pop();
                  _loc2_.clip.x = _loc2_.gameObj.mouseX;
                  _loc2_.clip.y = _loc2_.gameObj.mouseY;
                  if(_loc7_)
                  {
                     _loc6_ = Math.sqrt((_loc2_.clip.x - _loc2_.lastX) * (_loc2_.clip.x - _loc2_.lastX) + (_loc2_.clip.y - _loc2_.lastY) * (_loc2_.clip.y - _loc2_.lastY));
                     §§goto(addr124);
                     §§push(_loc5_);
                  }
                  §§goto(addr172);
               }
               addr236:
               _loc3_ = §§pop();
               if(_loc7_)
               {
                  §§goto(addr239);
               }
               §§goto(addr307);
            }
            return;
         }
         §§push(_loc2_.targetX);
         if(!_loc8_)
         {
            §§push(§§pop() - _loc2_.clip.x);
         }
         §§push(§§pop());
         if(_loc7_ || Boolean(_loc3_))
         {
            §§goto(addr236);
         }
         §§goto(addr248);
      }
      
      public function updateRotation() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:Napkin = this;
         var _loc2_:* = _loc1_.clip.rotation;
         §§push(_loc2_);
         if(!_loc11_)
         {
            §§push(§§pop() % 360);
            if(!_loc11_)
            {
               _loc2_ = §§pop();
               §§push(_loc2_);
               if(_loc10_)
               {
                  §§push(0);
                  if(!(_loc11_ && Boolean(_loc1_)))
                  {
                     if(§§pop() < §§pop())
                     {
                        _loc2_ += 360;
                        if(_loc11_)
                        {
                        }
                        addr312:
                        addr314:
                        §§push(_loc2_ + 360);
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           addr323:
                           _loc2_ = §§pop();
                           addr322:
                           if(_loc10_ || Boolean(this))
                           {
                              addr331:
                              addr336:
                              §§push(_loc7_);
                              if(!_loc11_)
                              {
                                 addr334:
                                 §§push(§§pop() - _loc2_);
                              }
                              _loc8_ = §§pop();
                              addr338:
                              addr339:
                              addr341:
                              if(_loc5_ <= _loc1_.plateRadius)
                              {
                                 addr342:
                                 _loc1_.clip.rotation = _loc2_ + _loc8_ / 2;
                              }
                              else
                              {
                                 _loc1_.clip.rotation = _loc2_ + _loc8_ / 6;
                              }
                              addr359:
                           }
                           §§goto(addr359);
                        }
                        else
                        {
                           addr367:
                           _loc9_ = §§pop();
                           _loc1_.clip.rotation = _loc2_ + _loc9_ / _loc1_.tweenSpeed;
                        }
                        §§goto(addr385);
                     }
                     §§push(_loc1_.isDragging);
                     if(!(_loc11_ && Boolean(_loc1_)))
                     {
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              §§push(_loc1_.plateCenterX - _loc1_.clip.x);
                           }
                           §§goto(addr338);
                        }
                        else if(_loc1_.isReturning)
                        {
                           addr363:
                           §§goto(addr367);
                           §§push(_loc1_.targetRotation - _loc2_);
                        }
                        addr385:
                        return;
                     }
                     addr256:
                     §§pop();
                     if(!(_loc11_ && Boolean(_loc3_)))
                     {
                        §§push(_loc2_);
                     }
                     §§goto(addr331);
                  }
                  addr185:
                  if(§§pop() < §§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(_loc7_);
                        if(_loc10_)
                        {
                           §§push(§§pop() + 360);
                           if(_loc10_ || Boolean(this))
                           {
                              §§push(§§pop());
                              if(!(_loc11_ && Boolean(_loc3_)))
                              {
                                 addr215:
                                 _loc7_ = §§pop();
                                 if(_loc11_ && Boolean(_loc3_))
                                 {
                                 }
                                 §§goto(addr363);
                              }
                              §§goto(addr334);
                           }
                           addr292:
                           §§push(270);
                           if(!_loc11_)
                           {
                              addr297:
                              addr296:
                              §§push(§§pop() > §§pop());
                              if(§§pop() > §§pop())
                              {
                                 §§pop();
                                 §§push(_loc2_);
                                 if(!_loc11_)
                                 {
                                    §§push(90);
                                    if(_loc10_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop() < §§pop());
                                    }
                                 }
                                 §§goto(addr323);
                              }
                              addr311:
                              if(§§pop())
                              {
                                 §§goto(addr312);
                              }
                              §§goto(addr331);
                           }
                           §§goto(addr314);
                        }
                        §§goto(addr339);
                     }
                     §§goto(addr331);
                  }
                  _loc1_.targetRotation = _loc7_;
                  if(!(_loc11_ && Boolean(_loc3_)))
                  {
                     §§push(_loc7_);
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        §§push(§§pop() < 90);
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(!_loc11_)
                           {
                              if(§§pop())
                              {
                                 if(_loc11_ && Boolean(_loc3_))
                                 {
                                 }
                                 §§goto(addr311);
                              }
                              addr271:
                              if(§§pop())
                              {
                                 if(_loc10_ || Boolean(this))
                                 {
                                    addr279:
                                    §§push(_loc2_);
                                    if(_loc10_)
                                    {
                                    }
                                 }
                                 §§goto(addr312);
                              }
                              else
                              {
                                 §§push(_loc7_);
                                 if(_loc10_)
                                 {
                                    §§goto(addr292);
                                 }
                              }
                              §§goto(addr336);
                           }
                           §§goto(addr297);
                        }
                        §§goto(addr256);
                     }
                     addr283:
                     §§push(§§pop() - 360);
                     if(_loc10_)
                     {
                        addr287:
                        _loc2_ = §§pop();
                        §§goto(addr331);
                     }
                     else
                     {
                        §§goto(addr363);
                     }
                  }
                  §§goto(addr342);
               }
               §§push(270);
               if(!_loc11_)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc11_)
                  {
                     §§goto(addr271);
                  }
                  §§goto(addr296);
               }
               §§goto(addr312);
            }
            addr117:
            _loc5_ = §§pop();
            if(_loc10_ || Boolean(_loc1_))
            {
               _loc6_ = Math.atan2(_loc4_,_loc3_);
               §§push(_loc6_);
               if(!_loc11_)
               {
                  §§push(Math.PI / 2);
                  if(_loc10_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc10_ || Boolean(_loc3_))
                        {
                           _loc6_ = §§pop();
                           §§push(§_-Bf§.radsToDegrees(_loc6_));
                           if(_loc10_)
                           {
                              §§push(§§pop());
                              if(_loc10_)
                              {
                                 _loc7_ = §§pop();
                                 §§push(_loc7_ + _loc1_.extraDefaultRotation);
                              }
                              §§push(§§pop());
                              §§push(§§pop());
                              if(!(_loc11_ && Boolean(_loc1_)))
                              {
                                 _loc7_ = §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() % 360);
                                    §§push(§§pop() % 360);
                                 }
                                 §§goto(addr215);
                              }
                              _loc7_ = §§pop();
                              addr182:
                              §§push(0);
                              if(_loc10_)
                              {
                                 §§goto(addr185);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr367);
                        }
                        §§goto(addr322);
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr341);
               }
               §§goto(addr331);
            }
            §§goto(addr279);
         }
         _loc3_ = §§pop();
         if(!_loc11_)
         {
            §§push(_loc1_.plateCenterY);
            if(_loc10_ || Boolean(this))
            {
               §§push(§§pop() - _loc1_.clip.y);
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  _loc4_ = §§pop();
                  §§goto(addr117);
                  §§push(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
               }
               §§goto(addr287);
            }
            §§goto(addr182);
         }
         §§goto(addr331);
      }
      
      public function clickItem(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Napkin = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            §§push(_loc2_.isDragging);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc3_)
               {
               }
               §§goto(addr40);
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  addr40:
                  §§pop();
                  §§push(_loc2_.isReturning);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc4_ || Boolean(param1))
                     {
                        addr53:
                        if(§§pop())
                        {
                           addr117:
                           §§push(_loc2_.gameObj);
                           if(_loc4_)
                           {
                              §§push(§§pop().§_-7q§.currentPlate.isFinished);
                           }
                           §§pop().stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
                        }
                        §§goto(addr123);
                     }
                  }
                  if(!§§pop())
                  {
                     _loc2_.isDragging = true;
                     if(!_loc3_)
                     {
                        _loc2_.isReturning = false;
                        if(_loc4_ || _loc3_)
                        {
                        }
                        addr115:
                        §§goto(addr117);
                        §§push(_loc2_.gameObj);
                     }
                  }
                  addr123:
                  return;
               }
            }
            §§goto(addr53);
         }
         if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateItem);
            if(_loc4_)
            {
            }
            §§goto(addr115);
         }
         §§push(_loc2_.gameObj);
         if(!_loc3_)
         {
            §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
            §§goto(addr115);
         }
         §§goto(addr117);
      }
      
      public function releaseItem(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Napkin = this;
         §§push(_loc2_.gameObj);
         if(_loc4_ || Boolean(param1))
         {
            §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
            if(_loc4_)
            {
               §§push(_loc2_.gameObj);
               if(_loc4_)
               {
                  §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
                  _loc2_.clip.scaleX = _loc2_.defaultScale;
                  _loc2_.clip.scaleY = _loc2_.defaultScale;
                  if(_loc4_)
                  {
                     _loc2_.isDragging = false;
                     if(_loc3_)
                     {
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr95);
               }
            }
            §_-5i§.§_-CE§("Splats remaining: " + _loc2_.gameObj.§_-7q§.currentPlate.splatsAdded);
            §§push(_loc2_.gameObj);
         }
         §§pop().soundManager.playSound("lidslide.wav");
         if(!(_loc3_ && Boolean(this)))
         {
            addr95:
            _loc2_.startReturning();
            §§goto(addr97);
         }
         addr97:
      }
      
      public function setupNapkin() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Napkin = this;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.clip = new build_napkin();
            _loc1_.clip.x = _loc1_.gameObj.mouseX;
            _loc1_.clip.y = _loc1_.gameObj.mouseY;
            _loc1_.clip.rotation = _loc1_.targetRotation;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.clip.mouseEnabled = true;
            }
            §§goto(addr92);
         }
         _loc1_.clip.buttonMode = true;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.clip.useHandCursor = true;
         }
         _loc1_.gameObj.§_-7q§.clip.topholder.addChild(_loc1_.clip);
         addr92:
      }
      
      public function startReturning() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Napkin = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.§_-7q§;
         if(_loc4_)
         {
            _loc1_.targetX = _loc1_.targetEndX;
            if(_loc4_)
            {
               _loc1_.targetY = _loc1_.clip.y;
               if(!_loc3_)
               {
                  _loc1_.targetRotation = _loc1_.clip.rotation;
                  if(_loc4_ || Boolean(this))
                  {
                  }
               }
               §§goto(addr71);
            }
            _loc1_.isReturning = true;
            if(_loc3_)
            {
            }
            §§goto(addr71);
         }
         _loc1_.isDragging = false;
         addr71:
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Napkin = this;
         try
         {
            §§push(_loc1_.gameObj);
            if(_loc4_)
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseItem);
               addr70:
               if(_loc4_ || Boolean(this))
               {
                  §§push(_loc1_.gameObj);
               }
               _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
               if(!(_loc3_ && _loc2_))
               {
                  try
                  {
                     addr84:
                     _loc1_.clip.parent.removeChild(_loc1_.clip);
                     if(_loc3_ && _loc2_)
                     {
                     }
                  }
                  catch(err:Error)
                  {
                     addr116:
                     _loc1_.clip = null;
                  }
               }
               §§goto(addr116);
            }
            §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc1_.releaseItem);
            if(_loc4_)
            {
               addr62:
               if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  if(_loc4_)
                  {
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr84);
         }
         catch(err:Error)
         {
            var _loc2_:* = err;
            §§goto(addr62);
         }
      }
   }
}

