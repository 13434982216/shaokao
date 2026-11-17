package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.*;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import wingGame.data.*;
   
   public class FryerBasket
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var meatType:String = null;
      
      public var meatAmount:Number = 0;
      
      public var grillX:Number = 0;
      
      public var grillY:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isRollingOver:Boolean = false;
      
      public var isCooking:Boolean = false;
      
      public var isDumping:Boolean = false;
      
      public var isThrowingAway:Boolean = false;
      
      public var cookTime:Number = 0;
      
      public var spriteSheet:BitmapData;
      
      public var meatSprite:BitmapData;
      
      public var meatBitmap:Bitmap;
      
      public var meatScale:Number = 0.4;
      
      public var meatSpriteWidth:Number = 84;
      
      public var meatSpriteHeight:Number = 84;
      
      public var meatSpritePadX:Number = 3;
      
      public var meatCookLevels:Number = 9;
      
      public var currentMeatFrame:Number = 1;
      
      public var basketBoundsStartX:Number = 8;
      
      public var basketBoundsSpacingX:Number = 120;
      
      public var basketBoundsStartY:Number = 55;
      
      public var basketBoundsSpacingY:Number = 156;
      
      public var pourTargetX:Number = 469;
      
      public var pourTargetY:Number = 356;
      
      public var throwawayTargetX:Number = 44;
      
      public var throwawayTargetY:Number = 356;
      
      public var hasAlarm:Boolean = false;
      
      public var alarmIsSounding:Boolean = false;
      
      public var tweenSpeed:Number = 2;
      
      public var timerBounds:Number = 58;
      
      public var maxMeterTime:Number = 3600;
      
      public var downFrame:Number = 1;
      
      public var rolloverFrame:Number = 5;
      
      public var dragFrame:Number = 8;
      
      public var sidewaysFrame:Number = 15;
      
      public var pourFrame:Number = 16;
      
      public var timeAllowRollover:Number = 20;
      
      public function FryerBasket(param1:§_-BY§, param2:MovieClip, param3:Number, param4:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
         }
         var _loc5_:FryerBasket = this;
         _loc5_.gameObj = param1;
         if(_loc7_)
         {
            _loc5_.clip = param2;
            if(!_loc6_)
            {
               _loc5_.grillX = param3;
               if(_loc6_)
               {
               }
            }
            _loc5_.grillY = param4;
            if(!_loc6_)
            {
               _loc5_.setupBasket();
            }
         }
      }
      
      public function setupBasket() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:FryerBasket = this;
         _loc1_.clip.buttonMode = true;
         if(_loc4_)
         {
            _loc1_.clip.useHandCursor = true;
            _loc1_.clip.mouseChildren = false;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.clip.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBasket);
               if(_loc3_)
               {
               }
               §§goto(addr56);
            }
         }
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBasket);
         if(_loc4_)
         {
            addr56:
            _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBasket);
            §§goto(addr63);
         }
         addr63:
         var _loc2_:Number = 2;
         if(!_loc3_)
         {
            _loc1_.clip.handle1.gotoAndStop(_loc2_);
            _loc1_.clip.handle2.gotoAndStop(_loc2_);
            _loc1_.clip.handle_3.gotoAndStop(_loc2_);
            _loc1_.clip.handle_4.gotoAndStop(_loc2_);
            _loc1_.clip.handle_5.gotoAndStop(_loc2_);
            _loc1_.clip.handle_6.gotoAndStop(_loc2_);
            if(_loc4_)
            {
               _loc1_.clip.handle_7.gotoAndStop(_loc2_);
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc1_.clip.frymeter.greenbar.mask = _loc1_.clip.frymeter.masker;
                  _loc1_.clip.frymeter.greenbar.y = _loc1_.timerBounds;
                  _loc1_.clip.frymeter.whitebar.visible = false;
               }
               _loc1_.clip.oil.boostboil.stop();
               §§goto(addr168);
            }
            §§goto(addr146);
         }
         _loc1_.clip.counter.bells.stop();
         addr146:
         _loc1_.clip.counter.bells.visible = false;
         _loc1_.clip.counter.num_txt.text = "";
         _loc1_.clip.gotoAndStop(_loc1_.rolloverFrame);
         _loc1_.clip.oil.gotoAndStop("static");
         addr168:
         if(_loc4_)
         {
            _loc1_.clip.oil.boostboil.visible = false;
         }
      }
      
      public function enableAlarm() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:FryerBasket = this;
         if(_loc3_ || _loc3_)
         {
            _loc1_.clip.counter.bells.visible = true;
            if(_loc3_)
            {
            }
            §§goto(addr49);
         }
         _loc1_.hasAlarm = true;
         addr49:
      }
      
      public function startAlarmBells() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:FryerBasket = this;
         if(_loc3_)
         {
            _loc1_.clip.counter.bells.gotoAndPlay(2);
         }
      }
      
      public function stopAlarmBells() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FryerBasket = this;
         if(!_loc3_)
         {
            _loc1_.clip.counter.bells.gotoAndStop(1);
         }
      }
      
      public function addMeat(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:FryerBasket = this;
         if(_loc6_ || Boolean(param1))
         {
            _loc3_.meatType = param1;
            if(!_loc5_)
            {
               _loc3_.meatAmount = param2;
               if(_loc5_ && Boolean(param2))
               {
               }
               addr46:
               var _loc4_:* = 1;
               §§push(_loc3_.meatType);
               if(_loc6_)
               {
                  §§push(FoodData.MEAT_SHRIMP);
                  if(!_loc5_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 _loc4_ = §§pop();
                              }
                              else
                              {
                                 addr137:
                                 _loc4_ = §§pop();
                              }
                           }
                           else
                           {
                              addr160:
                              _loc4_ = §§pop();
                              addr159:
                              if(_loc6_)
                              {
                              }
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr180);
                     }
                     else
                     {
                        §§push(_loc3_.meatType);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§push(FoodData.MEAT_WING);
                           if(_loc6_ || Boolean(param1))
                           {
                           }
                           addr143:
                           if(§§pop() == §§pop())
                           {
                              if(_loc6_ || Boolean(param2))
                              {
                                 §§goto(addr159);
                                 §§push(4);
                              }
                              §§goto(addr305);
                           }
                        }
                     }
                     addr163:
                     _loc3_.clip.handle1.gotoAndStop(_loc4_);
                     _loc3_.clip.handle2.gotoAndStop(_loc4_);
                     if(!(_loc5_ && Boolean(param2)))
                     {
                        addr180:
                        _loc3_.clip.handle_3.gotoAndStop(_loc4_);
                        _loc3_.clip.handle_4.gotoAndStop(_loc4_);
                        §§goto(addr190);
                     }
                     §§goto(addr305);
                  }
                  if(§§pop() == §§pop())
                  {
                     §§push(2);
                     if(_loc6_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           _loc4_ = §§pop();
                           if(_loc5_)
                           {
                           }
                        }
                        §§goto(addr190);
                     }
                     else
                     {
                        §§goto(addr129);
                     }
                  }
                  else
                  {
                     §§push(_loc3_.meatType);
                     if(_loc5_ && Boolean(param2))
                     {
                     }
                     addr141:
                     §§goto(addr143);
                     §§push(FoodData.MEAT_STRIPS);
                  }
                  §§goto(addr163);
               }
               §§push(FoodData.MEAT_BONELESS);
               if(_loc6_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(3);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        addr129:
                        §§push(§§pop());
                        if(_loc6_ || Boolean(param1))
                        {
                           §§goto(addr137);
                        }
                        addr190:
                        _loc3_.clip.handle_5.gotoAndStop(_loc4_);
                        _loc3_.clip.handle_6.gotoAndStop(_loc4_);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           _loc3_.clip.handle_7.gotoAndStop(_loc4_);
                           _loc3_.clip.counter.num_txt.text = String(_loc3_.meatAmount);
                           if(_loc6_)
                           {
                              _loc3_.clip.frymeter.whitebar.visible = true;
                              _loc3_.clip.frymeter.greenbar.gotoAndStop(1);
                              _loc3_.clip.frymeter.whitebar.y = _loc3_.timerBounds - FoodData.getTargetCookTime(_loc3_.meatType) / _loc3_.maxMeterTime * _loc3_.timerBounds;
                              if(_loc5_)
                              {
                              }
                           }
                           _loc3_.isCooking = true;
                           _loc3_.clip.oil.gotoAndPlay("rise");
                           §§push(_loc3_.gameObj);
                           if(_loc6_ || Boolean(param1))
                           {
                              if(§§pop().§_-8f§.isActive)
                              {
                                 §§push(_loc3_.gameObj);
                                 if(_loc5_)
                                 {
                                 }
                                 addr310:
                                 §§pop().playSound("fryer_dropoil.wav",false,0.4);
                                 addr309:
                              }
                              else
                              {
                                 §§push(_loc3_.gameObj);
                              }
                              §§goto(addr309);
                              §§push(§§pop().soundManager);
                           }
                           §§push(§§pop().soundManager);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push("fryer_dropoil.wav");
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§pop().playSound(§§pop());
                                 if(!_loc5_)
                                 {
                                    addr305:
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr309);
                           }
                           §§goto(addr310);
                        }
                        return;
                     }
                     §§goto(addr160);
                     §§goto(addr160);
                  }
                  else
                  {
                     §§goto(addr141);
                     §§push(_loc3_.meatType);
                  }
                  §§goto(addr163);
               }
               §§goto(addr143);
            }
            addr44:
            _loc3_.createMeatGraphic();
            §§goto(addr46);
         }
         _loc3_.cookTime = 0;
         if(!_loc5_)
         {
            §§goto(addr44);
         }
         §§goto(addr46);
      }
      
      public function createMeatGraphic() : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc5_:MovieClip = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:Matrix = null;
         var _loc1_:FryerBasket = this;
         if(_loc1_.spriteSheet)
         {
            _loc1_.spriteSheet.fillRect(_loc1_.spriteSheet.rect,0);
            addr70:
            if(_loc1_.meatSprite)
            {
               _loc1_.meatSprite.fillRect(_loc1_.meatSprite.rect,0);
            }
            else
            {
               _loc1_.meatSprite = new BitmapData(_loc1_.meatSpriteWidth,_loc1_.meatSpriteHeight,true,0);
               _loc1_.meatBitmap = new Bitmap(_loc1_.meatSprite);
               _loc1_.clip.meatholder.addChild(_loc1_.meatBitmap);
            }
            addr103:
            var _loc3_:MovieClip = new MovieClip();
            var _loc4_:* = Math.floor(Math.random() * 360);
            if(!_loc14_)
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc14_)
               {
                  §§push(_loc1_.meatAmount);
                  if(!_loc14_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc15_ || Boolean(_loc1_))
                        {
                           §§push(0);
                           if(_loc15_ || Boolean(_loc3_))
                           {
                              §§push(§§pop());
                              if(_loc15_ || Boolean(this))
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    break loop0;
                                 }
                                 addr519:
                              }
                              break;
                           }
                           loop3:
                           while(§§pop() < _loc3_.numChildren)
                           {
                              MovieClip(_loc3_.getChildAt(_loc12_)).meat.gotoAndStop(_loc2_ + 1);
                              if(_loc15_)
                              {
                                 _loc12_++;
                                 while(true)
                                 {
                                    continue loop3;
                                    _loc12_++;
                                 }
                                 addr482:
                              }
                              else
                              {
                                 §§goto(addr547);
                              }
                           }
                           _loc13_ = new Matrix();
                           _loc13_.translate(_loc2_ * _loc1_.meatSpriteWidth,0);
                           if(_loc15_)
                           {
                              _loc1_.spriteSheet.draw(_loc3_,_loc13_);
                              if(!_loc14_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc14_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc15_)
                                    {
                                    }
                                    addr518:
                                    _loc2_ = §§pop();
                                 }
                                 §§goto(addr518);
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr519);
                           addr483:
                        }
                        while(true)
                        {
                           §§goto(addr482);
                        }
                        addr467:
                     }
                     else
                     {
                        _loc5_ = §_-CI§.§_-2l§("meat_" + _loc1_.meatType);
                        _loc5_.sauce.stop();
                        if(_loc15_)
                        {
                           _loc5_.sauce.visible = false;
                           _loc5_.scaleX = _loc1_.meatScale;
                           _loc5_.scaleY = _loc1_.meatScale;
                           §§push(_loc4_ + (20 + Math.random() * 20));
                           if(!(_loc14_ && Boolean(this)))
                           {
                              §§push(§§pop());
                              if(!(_loc14_ && Boolean(_loc1_)))
                              {
                                 _loc4_ = §§pop();
                                 if(_loc15_ || Boolean(_loc3_))
                                 {
                                    _loc5_.rotation = _loc4_;
                                 }
                                 §§push(_loc1_.meatSpritePadX);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() + _loc5_.width / 2);
                                    if(_loc14_)
                                    {
                                    }
                                    addr209:
                                    _loc7_ = §§pop();
                                    §§push(_loc7_);
                                    if(_loc15_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc15_ || Boolean(_loc1_))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc15_ || Boolean(_loc1_))
                                          {
                                             §§push(§§pop());
                                             §§push(§§pop());
                                             if(!_loc14_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!(_loc14_ && Boolean(this)))
                                                {
                                                   if(§§pop() < 0)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc15_ || Boolean(_loc2_)))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         addr370:
                                                         §§push(§§pop());
                                                         if(_loc14_)
                                                         {
                                                            continue;
                                                         }
                                                         addr373:
                                                         _loc11_ = §§pop();
                                                      }
                                                      addr375:
                                                      §§push(_loc2_ % 4);
                                                      if(_loc14_ && Boolean(_loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      addr384:
                                                      if(§§pop() == 0)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            addr388:
                                                            _loc5_.y = _loc9_ + Math.random() * (_loc11_ / 2);
                                                            if(_loc15_ || Boolean(_loc3_))
                                                            {
                                                               addr405:
                                                            }
                                                         }
                                                         addr423:
                                                         §§push(_loc2_ + 1);
                                                         if(_loc14_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc5_.y = _loc9_ + _loc11_ / 2 + Math.random() * (_loc11_ / 2);
                                                      }
                                                   }
                                                   addr259:
                                                   §§push(_loc2_);
                                                   if(_loc15_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop() % 2);
                                                      if(_loc15_ || Boolean(_loc2_))
                                                      {
                                                      }
                                                      addr349:
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr375);
                                                }
                                                if(§§pop() == 0)
                                                {
                                                   if(!(_loc14_ && Boolean(_loc2_)))
                                                   {
                                                      _loc5_.x = _loc6_ + Math.random() * (_loc8_ / 2);
                                                      if(!_loc14_)
                                                      {
                                                         addr304:
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr375);
                                                }
                                                else
                                                {
                                                   _loc5_.x = _loc6_ + _loc8_ / 2 + Math.random() * (_loc8_ / 2);
                                                }
                                                §§push(_loc5_.height / 2);
                                                if(_loc15_ || Boolean(this))
                                                {
                                                   _loc9_ = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      §§push(_loc1_.meatSpriteHeight);
                                                   }
                                                   §§goto(addr405);
                                                }
                                                §§goto(addr373);
                                             }
                                             addr352:
                                             §§push(§§pop() - §§pop());
                                             if(_loc15_ || Boolean(this))
                                             {
                                                §§push(§§pop());
                                                if(_loc15_)
                                                {
                                                   addr363:
                                                   _loc11_ = §§pop();
                                                   §§push(_loc11_);
                                                   if(_loc14_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr384);
                                             }
                                             if(§§pop() < 0)
                                             {
                                                §§goto(addr370);
                                                §§push(0);
                                             }
                                             §§goto(addr375);
                                          }
                                          addr336:
                                          §§push(§§pop() - _loc5_.height / 2);
                                          if(!(_loc14_ && Boolean(_loc1_)))
                                          {
                                             §§goto(addr349);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr363);
                                       }
                                       _loc10_ = §§pop();
                                       §§goto(addr352);
                                       §§push(_loc9_);
                                    }
                                    §§push(§§pop());
                                    continue;
                                 }
                                 addr201:
                                 §§push(§§pop() - _loc5_.width / 2);
                                 if(!_loc14_)
                                 {
                                    §§goto(addr209);
                                 }
                                 §§goto(addr375);
                              }
                              _loc6_ = §§pop();
                              §§push(_loc1_.meatSpriteWidth - _loc1_.meatSpritePadX);
                              if(_loc15_)
                              {
                                 §§goto(addr201);
                              }
                              §§goto(addr336);
                           }
                           _loc8_ = §§pop();
                           if(!_loc14_)
                           {
                              §§goto(addr259);
                           }
                           §§goto(addr304);
                        }
                        _loc3_.addChild(_loc5_);
                        §§goto(addr423);
                     }
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        _loc1_.meatSprite.copyPixels(_loc1_.spriteSheet,new Rectangle(0,0,_loc1_.meatSpriteWidth,_loc1_.meatSpriteHeight),new Point(0,0));
                     }
                     else
                     {
                        §§push(0);
                        if(_loc15_)
                        {
                           _loc12_ = §§pop();
                           §§goto(addr467);
                        }
                        §§goto(addr483);
                     }
                     addr547:
                     _loc1_.currentMeatFrame = 1;
                     _loc3_ = null;
                     return;
                     break loop0;
                  }
                  addr522:
               }
               break;
               _loc2_ = §§pop();
            }
            while(true)
            {
               §§goto(addr522);
            }
         }
         else
         {
            _loc1_.spriteSheet = new BitmapData(_loc1_.meatSpriteWidth * _loc1_.meatCookLevels,_loc1_.meatSpriteHeight,true,0);
            if(_loc15_ || Boolean(_loc1_))
            {
               §§goto(addr70);
            }
         }
         §§goto(addr103);
      }
      
      public function updateMeatGraphic() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:FryerBasket = this;
         §§push(_loc1_.cookTime);
         if(!_loc4_)
         {
            §§push(§§pop() / FoodData.getMaxCookTime(_loc1_.meatType));
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.min(_loc1_.meatCookLevels,Math.floor(_loc2_ * (_loc1_.meatCookLevels - 1)) + 1);
         if(_loc5_)
         {
            §§push(_loc1_.currentMeatFrame);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() != _loc3_)
               {
                  _loc1_.meatSprite.copyPixels(_loc1_.spriteSheet,new Rectangle((_loc3_ - 1) * _loc1_.meatSpriteWidth,0,_loc1_.meatSpriteWidth,_loc1_.meatSpriteHeight),new Point(0,0));
                  _loc1_.currentMeatFrame = _loc3_;
                  if(_loc4_)
                  {
                  }
                  addr177:
                  _loc1_.alarmIsSounding = true;
                  addr180:
               }
               §§push(_loc3_);
               if(_loc5_)
               {
                  addr204:
                  §§push(§§pop() == Math.ceil(_loc1_.meatCookLevels / 2));
                  §§push(§§pop() == Math.ceil(_loc1_.meatCookLevels / 2));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§pop();
                           §§push(_loc1_.hasAlarm);
                        }
                        §§push(§§pop());
                     }
                     §§push(§§pop());
                     if(_loc5_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 §§push(!_loc1_.alarmIsSounding);
                              }
                              §§goto(addr180);
                           }
                           addr212:
                           §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              addr220:
                              §§push(_loc1_.gameObj);
                              if(_loc5_)
                              {
                                 addr224:
                                 §§push(§§pop().§_-3f§);
                                 if(_loc5_)
                                 {
                                    addr227:
                                    §§push(§§pop());
                                    §§push(§§pop());
                                 }
                                 §§pop();
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    §§push(_loc1_.gameObj);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().§_-DZ§);
                                    }
                                 }
                              }
                              §§pop().§_-8o§();
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(_loc1_.gameObj);
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 §§pop().§_-8f§.soundAlarm(_loc1_.grillX,_loc1_.grillY);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    _loc1_.startAlarmBells();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§goto(addr177);
                                    }
                                 }
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr220);
                        }
                        else
                        {
                           §§push(_loc3_);
                           if(_loc4_ && Boolean(_loc1_))
                           {
                           }
                        }
                     }
                     addr229:
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§goto(addr224);
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§goto(addr220);
                           §§push(_loc1_.gameObj);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        §§goto(addr212);
                     }
                  }
                  §§goto(addr227);
               }
               §§push(§§pop() == Math.ceil(_loc1_.meatCookLevels / 2));
               §§push(§§pop() == Math.ceil(_loc1_.meatCookLevels / 2));
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr204);
               }
            }
            §§goto(addr229);
            §§push(§§pop() == 13);
         }
      }
      
      public function updateMeter() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:FryerBasket = this;
         §§push(_loc1_.cookTime);
         if(_loc4_ || Boolean(_loc1_))
         {
            §§push(§§pop() / _loc1_.maxMeterTime);
            if(_loc3_)
            {
            }
            §§goto(addr32);
         }
         addr32:
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && Boolean(this)))
            {
               if(§§pop() > 1)
               {
                  if(_loc4_)
                  {
                     §§push(1);
                  }
               }
            }
            _loc2_ = §§pop();
            if(_loc4_ || _loc2_)
            {
            }
            §§goto(addr100);
         }
         _loc1_.clip.frymeter.greenbar.y = _loc1_.timerBounds - _loc2_ * _loc1_.timerBounds;
         if(!_loc3_)
         {
            if(_loc1_.clip.frymeter.greenbar.currentFrame != 1)
            {
               if(_loc4_)
               {
                  _loc1_.clip.frymeter.greenbar.gotoAndStop(1);
               }
            }
         }
         addr100:
         §§pop();
      }
      
      public function startCooking() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FryerBasket = this;
         if(_loc2_ || _loc2_)
         {
            _loc1_.isCooking = true;
         }
      }
      
      public function isFree() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:FryerBasket = this;
         var _loc2_:* = true;
         §§push(_loc1_.meatType);
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            §§push(FoodData.MEAT_STRIPS);
            if(!_loc4_)
            {
               §§push(§§pop() == §§pop());
               §§push(§§pop() == §§pop());
               if(_loc3_ || Boolean(this))
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(_loc1_.meatType);
                        if(_loc3_)
                        {
                           §§push(FoodData.MEAT_BONELESS);
                           if(_loc4_)
                           {
                           }
                           addr108:
                           addr107:
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr159);
                           }
                           else
                           {
                              addr128:
                              §§push(_loc1_.isDragging);
                              if(!_loc4_)
                              {
                                 addr126:
                                 §§push(§§pop());
                              }
                              §§pop();
                              if(_loc4_ && Boolean(_loc1_))
                              {
                              }
                           }
                           addr156:
                           _loc2_ = false;
                           §§goto(addr158);
                        }
                        addr67:
                        §§push(FoodData.MEAT_SHRIMP);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              addr91:
                              §§push(§§pop());
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 addr99:
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       §§push(_loc1_.meatType);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr108);
                              }
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr107);
                     }
                     §§push(_loc1_.isReturning);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr153:
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr108);
                           }
                        }
                        §§goto(addr158);
                     }
                     addr159:
                     §§push(false);
                     if(_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           addr158:
                           §§push(_loc2_);
                        }
                     }
                     return §§pop();
                  }
                  addr58:
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        §§push(_loc1_.meatType);
                        if(!_loc4_)
                        {
                           §§goto(addr67);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr99);
               }
               if(!§§pop())
               {
                  §§goto(addr128);
               }
               §§goto(addr153);
            }
            §§goto(addr58);
            §§push(§§pop() == §§pop());
         }
         §§goto(addr108);
         §§push(FoodData.MEAT_WING);
      }
      
      public function getMeatType() : String
      {
         var _loc1_:FryerBasket = this;
         return _loc1_.meatType;
      }
      
      public function getMeatAmount() : Number
      {
         var _loc1_:FryerBasket = this;
         return _loc1_.meatAmount;
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:FryerBasket = this;
         if(_loc3_)
         {
            if(_loc1_.meatBitmap)
            {
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.clip.meatholder.removeChild(_loc1_.meatBitmap);
                  _loc1_.meatBitmap = null;
                  if(_loc2_ && _loc2_)
                  {
                  }
                  addr79:
                  _loc1_.clip.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBasket);
                  §§goto(addr86);
               }
               §§goto(addr64);
            }
            if(_loc1_.meatSprite)
            {
               _loc1_.meatSprite.dispose();
               _loc1_.meatSprite = null;
            }
            if(_loc1_.spriteSheet)
            {
               addr64:
               _loc1_.spriteSheet.dispose();
               if(_loc3_)
               {
               }
               addr86:
               _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBasket);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.clip = null;
               }
               return;
            }
            addr72:
            _loc1_.clip.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBasket);
            §§goto(addr79);
         }
         _loc1_.spriteSheet = null;
         §§goto(addr72);
      }
      
      public function clickBasket(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FryerBasket = this;
         §§push(_loc2_.gameObj);
         if(_loc4_ || Boolean(this))
         {
            §§push(!§§pop().§_-3f§);
            §§push(!§§pop().§_-3f§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  addr103:
                  if(!_loc3_)
                  {
                     §§pop();
                     §§push(_loc2_.gameObj.§_-DZ§);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§goto(addr245);
                     }
                     addr244:
                     addr245:
                     addr246:
                     §§push(14);
                     if(_loc4_)
                     {
                        §§push(§§pop() == §§pop());
                     }
                     if(§§pop() == §§pop())
                     {
                        addr249:
                        _loc2_.gameObj.hud.showTrainingWarning("waitmove");
                     }
                     return;
                     §§push(13);
                  }
                  §§pop();
                  §§push(_loc2_.isFree());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr113:
                     §§push(!§§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        addr128:
                        if(§§pop())
                        {
                           §§push(_loc2_.gameObj.§_-8f§);
                           if(!_loc3_)
                           {
                              §§pop().clip.topholder.addChild(_loc2_.clip);
                              §§push(_loc2_.gameObj.§_-8f§);
                              if(_loc4_ || _loc3_)
                              {
                              }
                              addr208:
                              §§pop().stopAlarm(_loc2_.grillX,_loc2_.grillY);
                              addr213:
                              _loc2_.stopAlarmBells();
                              if(_loc4_)
                              {
                                 addr217:
                                 _loc2_.gameObj.soundManager.playSound("fryer_pickup.wav");
                              }
                           }
                           §§pop().isDraggingBasket = true;
                           §§push(_loc2_.gameObj);
                           if(_loc4_)
                           {
                              §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBasket);
                              _loc2_.isDragging = true;
                              _loc2_.clip.startDrag();
                              if(_loc4_)
                              {
                                 _loc2_.isCooking = false;
                                 addr171:
                                 _loc2_.isRollingOver = false;
                                 _loc2_.isReturning = false;
                                 _loc2_.clip.oil.gotoAndStop("static");
                                 _loc2_.clip.oil.boostboil.stop();
                                 _loc2_.clip.oil.boostboil.visible = false;
                                 if(_loc4_)
                                 {
                                    §§push(_loc2_.alarmIsSounding);
                                    if(_loc3_)
                                    {
                                       addr231:
                                       §§pop();
                                       §§push(_loc2_.gameObj);
                                       if(_loc4_)
                                       {
                                          §§goto(addr244);
                                          §§push(§§pop().§_-DZ§);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr249);
                              }
                           }
                        }
                        §§goto(addr245);
                     }
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           _loc2_.alarmIsSounding = false;
                           §§push(_loc2_.gameObj);
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr217);
                  }
                  else
                  {
                     addr230:
                     §§push(§§pop());
                     if(§§pop())
                     {
                        §§goto(addr231);
                     }
                  }
                  §§goto(addr246);
               }
               if(§§pop())
               {
                  §§push(_loc2_.isDumping);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                     }
                     addr85:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           §§push(!_loc2_.isReturning);
                        }
                        §§goto(addr113);
                     }
                     §§push(§§pop());
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§goto(addr103);
                           }
                           §§goto(addr245);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr230);
                  }
                  addr69:
                  §§push(!§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr77:
                     §§push(§§pop());
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr85);
                     }
                  }
                  §§goto(addr230);
               }
               else
               {
                  §§push(_loc2_.gameObj.§_-3f§);
                  if(_loc4_)
                  {
                     §§goto(addr230);
                  }
               }
               §§goto(addr231);
            }
            if(§§pop())
            {
               §§pop();
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§goto(addr69);
                  §§push(_loc2_.isDragging);
               }
               §§goto(addr171);
            }
            §§goto(addr77);
         }
         §§goto(addr208);
         §§push(§§pop().§_-8f§);
      }
      
      public function releaseBasket(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FryerBasket = this;
         _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBasket);
         §§push(_loc2_.gameObj.§_-8f§);
         if(_loc4_ || Boolean(param1))
         {
            §§push(false);
            if(_loc4_ || _loc3_)
            {
               §§pop().isDraggingBasket = §§pop();
               _loc2_.clip.stopDrag();
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.isDragging = false;
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(_loc2_.clip.x < 124);
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 §§goto(addr256);
                              }
                              addr233:
                              §§pop();
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 addr247:
                                 §§push(_loc2_.clip.y > 236);
                                 if(_loc2_.clip.y > 236)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§pop();
                                       addr256:
                                       §§goto(addr260);
                                    }
                                 }
                                 addr260:
                                 §§goto(addr259);
                              }
                              §§goto(addr256);
                           }
                           §§push(§§pop());
                           if(_loc4_ || Boolean(this))
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc2_.meatAmount);
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() > §§pop());
                                    }
                                    addr259:
                                    §§goto(addr258);
                                 }
                                 addr258:
                                 if(!_loc3_)
                                 {
                                    §§push(_loc2_.clip.y > 236);
                                 }
                                 if(_loc2_.meatAmount > 0)
                                 {
                                    if(_loc4_)
                                    {
                                       _loc2_.isDumping = true;
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr277:
                                          _loc2_.gameObj.§_-8f§.isPouringMeat = true;
                                          addr276:
                                       }
                                       addr301:
                                       _loc2_.gameObj.soundManager.playSound("dump_wings_into_bowl.wav");
                                       addr299:
                                    }
                                    addr304:
                                 }
                                 else
                                 {
                                    _loc2_.isReturning = true;
                                 }
                                 return;
                              }
                              §§push(§§pop());
                              if(_loc4_ || Boolean(_loc2_))
                              {
                              }
                              addr213:
                              if(!§§pop())
                              {
                                 §§pop();
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    §§push(_loc2_.clip.x > 390);
                                    if(_loc4_)
                                    {
                                       addr229:
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr247);
                           }
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(_loc2_.gameObj);
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       §§push(§§pop().§_-3f§);
                                       if(_loc3_ && Boolean(param1))
                                       {
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr299);
                                 }
                              }
                              §§goto(addr229);
                           }
                           addr158:
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 _loc2_.isThrowingAway = true;
                                 §§push(_loc2_.gameObj.§_-8f§);
                                 if(_loc3_)
                                 {
                                    §§goto(addr276);
                                 }
                                 §§goto(addr277);
                              }
                              addr178:
                              _loc2_.clip.gotoAndPlay(_loc2_.pourFrame);
                              §§push(_loc2_.gameObj);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().soundManager);
                                 if(!_loc3_)
                                 {
                                    §§push("dump_wings_into_bowl.wav");
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       §§pop().playSound(§§pop());
                                    }
                                 }
                              }
                              §§goto(addr301);
                           }
                           else
                           {
                              §§push(_loc2_.clip.x > 455);
                              §§push(_loc2_.clip.x > 455);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr213);
                              }
                              §§goto(addr247);
                           }
                        }
                        if(§§pop())
                        {
                           §§goto(addr233);
                        }
                        §§goto(addr247);
                     }
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        §§goto(addr158);
                     }
                     §§goto(addr229);
                  }
                  addr302:
                  _loc2_.createWingOrder();
                  §§goto(addr304);
               }
               _loc2_.clip.gotoAndPlay(_loc2_.pourFrame);
               if(_loc4_ || Boolean(param1))
               {
                  §§goto(addr301);
               }
               §§goto(addr302);
            }
            addr177:
            §§pop().isThrowingAway = §§pop();
            §§goto(addr178);
         }
         §§push(true);
         if(_loc4_ || Boolean(this))
         {
            §§goto(addr177);
         }
         else
         {
            §§goto(addr277);
         }
      }
      
      public function createWingOrder() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:FryerBasket = this;
         var _loc2_:WingOrder = new WingOrder(_loc1_.gameObj,_loc1_.meatType,_loc1_.meatAmount,_loc1_.cookTime);
         if(!_loc3_)
         {
            addr93:
            §§push(_loc1_.gameObj);
            if(!_loc3_)
            {
               §§pop().§_-Bg§.addToWingQueue(_loc2_);
               if(_loc4_)
               {
                  §§push(_loc1_.gameObj);
                  if(_loc4_)
                  {
                     §§push(§§pop().§_-3f§);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc3_)
                              {
                              }
                           }
                           §§goto(addr88);
                        }
                     }
                     §§pop();
                     if(_loc4_ || Boolean(_loc2_))
                     {
                     }
                  }
               }
               §§push(_loc1_.gameObj);
               if(!_loc3_)
               {
                  addr88:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  return;
                  §§push(§§pop().§_-DZ§ == 14);
               }
            }
            §§pop().§_-8o§();
            §§goto(addr88);
         }
         §§goto(addr93);
         §§push(_loc1_.gameObj);
      }
      
      public function rolloverBasket(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FryerBasket = this;
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_.isCooking);
            if(_loc4_)
            {
               §§push(§§pop());
               §§push(§§pop());
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr107:
                        §§push(_loc2_.gameObj);
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(!§§pop().§_-8f§.isDraggingLidDial());
                        }
                        if(§§pop().§_-DZ§ == 13)
                        {
                           addr113:
                           _loc2_.gameObj.hud.showTrainingWarning("rolloverbasket");
                        }
                     }
                     addr77:
                     _loc2_.clip.oil.gotoAndPlay("fall");
                     addr82:
                     _loc2_.isRollingOver = true;
                     if(_loc4_)
                     {
                        §§push(_loc2_.gameObj);
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop().§_-3f§));
                        }
                        §§goto(addr107);
                     }
                  }
                  §§push(§§pop());
                  if(_loc3_)
                  {
                  }
                  addr94:
                  if(§§pop())
                  {
                     addr95:
                     §§pop();
                     §§push(_loc2_.gameObj);
                     if(_loc4_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr107);
               }
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     if(_loc4_)
                     {
                        §§push(_loc2_.cookTime);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() > _loc2_.timeAllowRollover);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr95);
               }
               if(§§pop())
               {
                  §§goto(addr77);
               }
            }
            §§goto(addr94);
            §§push(§§pop());
         }
      }
      
      public function rolloutBasket(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:FryerBasket = this;
         if(_loc3_)
         {
            if(_loc2_.isRollingOver)
            {
               if(!_loc4_)
               {
                  _loc2_.clip.oil.gotoAndPlay("rise");
                  if(_loc4_)
                  {
                  }
               }
            }
            §§goto(addr61);
         }
         _loc2_.gameObj.soundManager.playSound("fryer_dropoil.wav",false,0.8);
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.isRollingOver = false;
         }
         addr61:
      }
      
      public function resetBasket() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:FryerBasket = this;
         _loc1_.meatType = null;
         if(!_loc4_)
         {
            _loc1_.meatAmount = 0;
            _loc1_.clip.counter.num_txt.text = "";
            _loc1_.clip.frymeter.greenbar.y = _loc1_.timerBounds;
            if(!_loc4_)
            {
               _loc1_.clip.frymeter.greenbar.gotoAndStop(2);
            }
            §§goto(addr63);
         }
         if(_loc1_.meatSprite != null)
         {
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc1_.meatSprite.fillRect(_loc1_.meatSprite.rect,0);
            }
         }
         addr63:
         var _loc2_:Number = 2;
         _loc1_.clip.handle1.gotoAndStop(_loc2_);
         _loc1_.clip.handle2.gotoAndStop(_loc2_);
         _loc1_.clip.handle_3.gotoAndStop(_loc2_);
         _loc1_.clip.handle_4.gotoAndStop(_loc2_);
         _loc1_.clip.handle_5.gotoAndStop(_loc2_);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.clip.handle_6.gotoAndStop(_loc2_);
            _loc1_.clip.handle_7.gotoAndStop(_loc2_);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.clip.frymeter.whitebar.visible = false;
               _loc1_.isCooking = false;
               if(!_loc4_)
               {
                  _loc1_.isDumping = false;
                  _loc1_.isDragging = false;
               }
               §§goto(addr149);
            }
         }
         _loc1_.isThrowingAway = false;
         if(!(_loc4_ && _loc3_))
         {
            §§goto(addr149);
         }
         addr149:
         _loc1_.isRollingOver = false;
         if(_loc3_ || _loc3_)
         {
            _loc1_.isReturning = true;
         }
      }
      
      public function updateBasket() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc1_:FryerBasket = this;
         §§push(_loc1_.isRollingOver);
         if(_loc1_.isRollingOver)
         {
            if(!(_loc12_ && Boolean(_loc1_)))
            {
               §§pop();
               if(_loc13_ || Boolean(_loc1_))
               {
                  addr132:
                  §§push(_loc1_.isCooking);
                  if(_loc13_ || Boolean(_loc3_))
                  {
                     §§push(§§pop());
                  }
                  §§push(!§§pop());
                  if(!§§pop())
                  {
                     §§pop();
                     addr980:
                     §§push(_loc1_.isFree());
                     if(_loc13_ || Boolean(this))
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop());
                     if(_loc13_)
                     {
                        addr983:
                        if(§§pop())
                        {
                           if(_loc13_)
                           {
                              addr987:
                              §§pop();
                              addr1014:
                              if(!(_loc12_ && Boolean(this)))
                              {
                                 addr998:
                                 §§push(_loc1_.gameObj.§_-8f§.boostingWhich);
                                 §§push(_loc1_.grillX);
                                 if(_loc13_)
                                 {
                                    addr1003:
                                    §§push(§§pop() + 1);
                                 }
                                 §§push(§§pop() == §§pop());
                              }
                              var _loc10_:*;
                              §§push((_loc10_ = _loc1_).cookTime);
                              if(_loc13_ || Boolean(this))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc11_:* = §§pop();
                              if(_loc13_ || Boolean(this))
                              {
                                 _loc10_.cookTime = _loc11_;
                              }
                              addr1039:
                              _loc1_.clip.frymeter.bg.gotoAndStop(2);
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 addr1052:
                                 _loc1_.clip.oil.boostboil.play();
                                 if(!_loc12_)
                                 {
                                    _loc1_.clip.oil.boostboil.visible = true;
                                    if(_loc13_)
                                    {
                                    }
                                    addr1134:
                                    return;
                                    addr1098:
                                 }
                              }
                              else
                              {
                                 addr1088:
                                 _loc1_.clip.oil.boostboil.visible = false;
                              }
                              _loc1_.updateMeatGraphic();
                              _loc1_.updateMeter();
                              §§goto(addr1098);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc13_ || Boolean(this))
                        {
                           §§goto(addr1014);
                        }
                        §§goto(addr1088);
                     }
                     else if(_loc1_.clip.frymeter.bg.currentFrame != 1)
                     {
                        addr1075:
                        _loc1_.clip.frymeter.bg.gotoAndStop(1);
                        _loc1_.clip.oil.boostboil.stop();
                        if(!_loc12_)
                        {
                           §§goto(addr1088);
                        }
                        else
                        {
                           addr1128:
                           _loc1_.clip.frymeter.bg.gotoAndStop(1);
                        }
                        §§goto(addr1134);
                     }
                     §§goto(addr1014);
                  }
                  addr146:
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc1_.isReturning);
                     if(!(_loc12_ && Boolean(_loc2_)))
                     {
                        §§push(!§§pop());
                        if(_loc13_ || Boolean(this))
                        {
                        }
                        addr386:
                        §§push(§§pop());
                        if(!(_loc12_ && Boolean(_loc3_)))
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              §§push(_loc1_.gameObj);
                              if(!(_loc12_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop().mouseY > 480);
                                 if(_loc12_ && Boolean(this))
                                 {
                                    addr711:
                                    §§push(§§pop());
                                    if(!_loc12_)
                                    {
                                       addr714:
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(Math.abs(_loc7_) <= 1);
                                          if(_loc12_)
                                          {
                                          }
                                          §§goto(addr980);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             _loc1_.clip.x = _loc1_.pourTargetX;
                                             if(!(_loc12_ && Boolean(_loc1_)))
                                             {
                                                addr738:
                                                _loc1_.clip.y = _loc1_.pourTargetY;
                                                if(_loc13_)
                                                {
                                                }
                                                addr898:
                                                if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
                                                {
                                                   if(_loc13_ || Boolean(this))
                                                   {
                                                      addr912:
                                                      _loc1_.resetBasket();
                                                      if(_loc13_)
                                                      {
                                                         addr920:
                                                         _loc1_.gameObj.§_-8f§.isThrowingAway = false;
                                                         if(_loc13_)
                                                         {
                                                         }
                                                         §§goto(addr1075);
                                                      }
                                                      §§goto(addr1128);
                                                   }
                                                   §§goto(addr1052);
                                                }
                                             }
                                             addr789:
                                          }
                                          §§goto(addr1039);
                                       }
                                       if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
                                       {
                                          _loc1_.resetBasket();
                                          if(!(_loc12_ && Boolean(_loc1_)))
                                          {
                                             addr763:
                                             §§push(_loc1_.gameObj.§_-8f§);
                                             if(!(_loc12_ && Boolean(_loc2_)))
                                             {
                                                §§push(true);
                                                if(_loc13_)
                                                {
                                                   §§pop().isSwitchingBowls = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      addr777:
                                                      §§push(_loc1_.gameObj.§_-8f§);
                                                      §§push(false);
                                                      if(!(_loc13_ || Boolean(_loc3_)))
                                                      {
                                                         §§goto(addr920);
                                                      }
                                                   }
                                                   §§goto(addr1075);
                                                }
                                                §§pop().isPouringMeat = §§pop();
                                             }
                                             §§goto(addr998);
                                          }
                                          else
                                          {
                                             §§goto(addr898);
                                          }
                                       }
                                       §§goto(addr789);
                                    }
                                    addr871:
                                    if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
                                    {
                                       if(!_loc12_)
                                       {
                                          _loc1_.resetBasket();
                                          if(_loc13_)
                                          {
                                             addr886:
                                             §§push(_loc1_.gameObj.§_-8f§);
                                             §§push(false);
                                             if(_loc13_)
                                             {
                                                §§pop().isPouringMeat = §§pop();
                                                if(_loc13_ || Boolean(_loc2_))
                                                {
                                                }
                                                addr933:
                                                §§push(_loc1_.isRollingOver);
                                                if(!_loc12_)
                                                {
                                                   addr937:
                                                   §§push(!§§pop());
                                                   if(!_loc12_)
                                                   {
                                                      addr940:
                                                      if(§§pop())
                                                      {
                                                         _loc10_ = _loc1_;
                                                         §§push(_loc10_.cookTime);
                                                         if(_loc13_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         _loc11_ = §§pop();
                                                         if(_loc13_)
                                                         {
                                                            _loc10_.cookTime = _loc11_;
                                                         }
                                                         addr956:
                                                         §§push(_loc1_.gameObj);
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         addr976:
                                                         §§push(§§pop().§_-8f§);
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr980);
                                                            §§push(§§pop().isBoosting);
                                                         }
                                                         §§goto(addr998);
                                                      }
                                                      else if(_loc1_.clip.frymeter.greenbar.currentFrame != 2)
                                                      {
                                                         if(_loc13_ || Boolean(this))
                                                         {
                                                            _loc1_.clip.frymeter.greenbar.gotoAndStop(2);
                                                            addr1113:
                                                            if(!_loc12_)
                                                            {
                                                               §§goto(addr1128);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1134);
                                                   }
                                                   §§goto(addr983);
                                                }
                                                §§goto(addr980);
                                             }
                                             §§goto(addr920);
                                          }
                                          addr972:
                                          §§push(_loc1_.gameObj);
                                          if(_loc13_)
                                          {
                                             §§goto(addr976);
                                          }
                                          §§goto(addr998);
                                       }
                                       §§goto(addr912);
                                    }
                                    §§goto(addr898);
                                 }
                                 addr923:
                                 §§push(_loc1_.isCooking);
                                 if(_loc12_)
                                 {
                                 }
                                 §§goto(addr980);
                              }
                              if(§§pop().userData.currentDay == 1)
                              {
                                 addr964:
                                 §§push(_loc1_);
                                 §§push(_loc1_.cookTime);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() + 2);
                                 }
                                 §§pop().cookTime = §§pop();
                              }
                              §§goto(addr972);
                           }
                           if(§§pop())
                           {
                              addr416:
                              _loc1_.releaseBasket(null);
                              if(_loc13_)
                              {
                              }
                              §§goto(addr1014);
                           }
                           §§goto(addr923);
                        }
                        addr853:
                        if(§§pop())
                        {
                           addr854:
                           §§pop();
                           addr855:
                           §§push(Math.abs(_loc9_) <= 1);
                        }
                        if(§§pop())
                        {
                           _loc1_.clip.x = _loc1_.throwawayTargetX;
                           addr866:
                           _loc1_.clip.y = _loc1_.throwawayTargetY;
                        }
                        §§goto(addr871);
                     }
                     addr573:
                     §§pop();
                     §§push(_loc1_.clip.currentFrame == _loc1_.dragFrame);
                     if(!_loc12_)
                     {
                        addr582:
                        if(§§pop())
                        {
                           _loc1_.clip.x = _loc2_;
                           _loc1_.clip.y = _loc3_;
                           if(_loc13_)
                           {
                              §§push(_loc1_.gameObj);
                              if(_loc13_)
                              {
                                 §§pop().§_-8f§.clip.basketholder.addChild(_loc1_.clip);
                                 _loc1_.isReturning = false;
                                 addr606:
                                 addr608:
                                 §§push(_loc1_.gameObj.soundManager);
                                 if(!_loc12_)
                                 {
                                    §§pop().playSound("fryer_return.wav");
                                    if(_loc13_)
                                    {
                                       if(!_loc1_.isFree())
                                       {
                                          if(_loc13_)
                                          {
                                             _loc1_.isCooking = true;
                                             _loc1_.clip.oil.gotoAndPlay("rise");
                                             §§push(_loc1_.gameObj);
                                             if(!(_loc12_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop().soundManager);
                                             }
                                             else
                                             {
                                                §§goto(addr763);
                                             }
                                             §§goto(addr998);
                                          }
                                          §§goto(addr964);
                                       }
                                    }
                                    §§goto(addr1113);
                                 }
                                 §§pop().playSound("fryer_dropoil.wav");
                              }
                              else
                              {
                                 §§goto(addr886);
                              }
                              §§goto(addr920);
                           }
                           §§goto(addr912);
                        }
                        §§goto(addr923);
                     }
                     §§push(§§pop());
                     if(!_loc12_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§goto(addr933);
                        }
                        §§goto(addr940);
                     }
                     §§goto(addr983);
                  }
                  §§push(§§pop());
                  if(!(_loc12_ && Boolean(_loc3_)))
                  {
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           §§pop();
                           §§push(_loc1_.clip.currentFrame > _loc1_.rolloverFrame);
                           if(_loc13_ || Boolean(_loc3_))
                           {
                           }
                           §§goto(addr983);
                        }
                        addr424:
                        if(§§pop())
                        {
                           §§push(_loc1_.basketBoundsStartX);
                           §§push(_loc1_.grillX);
                           if(!_loc12_)
                           {
                              §§push(_loc1_.basketBoundsSpacingX);
                              if(_loc13_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc13_)
                                    {
                                       _loc2_ = §§pop();
                                       §§push(_loc1_.basketBoundsStartY);
                                       §§push(_loc1_.grillY);
                                       if(!_loc12_)
                                       {
                                          §§push(_loc1_.basketBoundsSpacingY);
                                       }
                                       §§goto(addr998);
                                    }
                                    else
                                    {
                                       addr805:
                                       §§push(§§pop() - _loc1_.clip.y);
                                    }
                                    addr810:
                                    _loc9_ = §§pop();
                                    if(!(_loc12_ && Boolean(_loc1_)))
                                    {
                                       addr818:
                                       _loc1_.clip.x += _loc8_ / _loc1_.tweenSpeed;
                                       _loc1_.clip.y += _loc9_ / _loc1_.tweenSpeed;
                                       §§push(Math.abs(_loc8_) <= 1);
                                       if(!(_loc12_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr853);
                                          §§push(§§pop());
                                       }
                                       §§goto(addr980);
                                    }
                                    §§goto(addr871);
                                 }
                                 §§goto(addr1003);
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc12_ && Boolean(_loc1_))
                              {
                              }
                              §§goto(addr998);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc12_)
                           {
                              _loc3_ = §§pop();
                              if(_loc13_ || Boolean(_loc1_))
                              {
                                 §§push(_loc2_ - _loc1_.clip.x);
                                 if(!_loc12_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc13_ || Boolean(_loc1_))
                                    {
                                       _loc5_ = _loc3_ - _loc1_.clip.y;
                                       addr494:
                                       _loc1_.clip.x += _loc4_ / _loc1_.tweenSpeed;
                                       _loc1_.clip.y += _loc5_ / _loc1_.tweenSpeed;
                                    }
                                    §§goto(addr855);
                                 }
                                 else
                                 {
                                    §§goto(addr810);
                                 }
                              }
                              §§goto(addr818);
                           }
                           §§goto(addr998);
                        }
                        else
                        {
                           §§push(_loc1_.isDumping);
                           if(_loc13_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    §§push(_loc1_.pourTargetX);
                                    if(_loc13_)
                                    {
                                       addr801:
                                       §§push(§§pop() - _loc1_.clip.x);
                                       if(!(_loc12_ && Boolean(_loc3_)))
                                       {
                                          _loc6_ = §§pop();
                                          §§push(_loc1_.pourTargetY - _loc1_.clip.y);
                                       }
                                       _loc8_ = §§pop();
                                       §§goto(addr805);
                                       §§push(_loc1_.throwawayTargetY);
                                    }
                                    §§push(§§pop());
                                    if(!_loc12_)
                                    {
                                       _loc7_ = §§pop();
                                       addr675:
                                       _loc1_.clip.x += _loc6_ / _loc1_.tweenSpeed;
                                       _loc1_.clip.y += _loc7_ / _loc1_.tweenSpeed;
                                       if(!(_loc12_ && Boolean(this)))
                                       {
                                          §§push(Math.abs(_loc6_) <= 1);
                                          if(_loc13_)
                                          {
                                             §§goto(addr711);
                                          }
                                          §§goto(addr983);
                                       }
                                       §§goto(addr1088);
                                    }
                                    else
                                    {
                                       §§goto(addr801);
                                    }
                                 }
                                 §§goto(addr866);
                              }
                              else
                              {
                                 §§push(_loc1_.isThrowingAway);
                                 if(_loc13_)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr801);
                                       §§push(_loc1_.throwawayTargetX - _loc1_.clip.x);
                                    }
                                    §§goto(addr923);
                                 }
                              }
                              §§goto(addr937);
                           }
                        }
                        §§goto(addr853);
                     }
                     if(§§pop())
                     {
                        _loc1_.clip.prevFrame();
                        if(_loc13_ || Boolean(_loc2_))
                        {
                        }
                        §§goto(addr1052);
                     }
                     else
                     {
                        §§push(!_loc1_.isRollingOver);
                        if(!_loc1_.isRollingOver)
                        {
                           if(!_loc12_)
                           {
                              §§pop();
                              if(_loc13_ || Boolean(_loc2_))
                              {
                                 addr218:
                                 §§push(_loc1_.isCooking);
                                 if(_loc13_)
                                 {
                                 }
                                 addr248:
                                 §§push(!§§pop());
                                 §§push(!§§pop());
                                 if(_loc13_ || Boolean(_loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       addr293:
                                       if(_loc13_)
                                       {
                                          §§pop();
                                          §§push(!_loc1_.isDumping);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             if(_loc1_.clip.currentFrame > _loc1_.dragFrame)
                                             {
                                                _loc1_.clip.gotoAndStop(_loc1_.dragFrame);
                                                if(!(_loc13_ || Boolean(_loc1_)))
                                                {
                                                   §§goto(addr763);
                                                }
                                                §§goto(addr998);
                                             }
                                             else
                                             {
                                                _loc1_.clip.prevFrame();
                                             }
                                          }
                                          §§goto(addr956);
                                       }
                                       else
                                       {
                                          if(_loc1_.isDragging)
                                          {
                                             if(_loc1_.clip.currentFrame < _loc1_.rolloverFrame)
                                             {
                                                _loc1_.clip.gotoAndStop(_loc1_.rolloverFrame);
                                                if(!(_loc13_ || Boolean(this)))
                                                {
                                                   §§goto(addr675);
                                                }
                                                §§goto(addr1088);
                                             }
                                             else if(_loc1_.clip.currentFrame < _loc1_.sidewaysFrame)
                                             {
                                                if(!_loc12_)
                                                {
                                                   _loc1_.clip.nextFrame();
                                                }
                                                else
                                                {
                                                   §§goto(addr606);
                                                }
                                                §§goto(addr608);
                                             }
                                             addr352:
                                             §§push(_loc1_.gameObj.mouseX < 0);
                                             if(!(_loc1_.gameObj.mouseX < 0))
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§pop();
                                                   if(_loc13_)
                                                   {
                                                      §§push(_loc1_.gameObj);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop().mouseX > 640);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr606);
                                                      }
                                                   }
                                                   §§goto(addr777);
                                                }
                                                §§goto(addr937);
                                             }
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                if(_loc13_ || Boolean(this))
                                                {
                                                   §§push(_loc1_.gameObj.mouseY < 0);
                                                }
                                                §§goto(addr738);
                                             }
                                             §§goto(addr386);
                                          }
                                          else
                                          {
                                             §§goto(addr424);
                                             §§push(_loc1_.isReturning);
                                          }
                                          §§goto(addr386);
                                       }
                                    }
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(!_loc1_.isThrowingAway);
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc13_ || Boolean(_loc3_))
                                    {
                                       §§pop();
                                       §§push(_loc1_.clip.currentFrame > _loc1_.downFrame);
                                       if(_loc13_ || Boolean(_loc1_))
                                       {
                                       }
                                       §§goto(addr573);
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr933);
                           }
                        }
                        addr224:
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc13_ || Boolean(_loc2_))
                           {
                              §§push(_loc1_.isDragging);
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 §§push(!§§pop());
                              }
                              §§goto(addr854);
                           }
                           §§goto(addr416);
                        }
                        §§push(§§pop());
                     }
                     §§goto(addr923);
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§goto(addr248);
                     §§push(_loc1_.isReturning);
                  }
                  §§goto(addr248);
               }
               if(_loc1_.clip.currentFrame > _loc1_.dragFrame)
               {
                  _loc1_.clip.prevFrame();
               }
               else if(_loc1_.clip.currentFrame < _loc1_.dragFrame)
               {
                  _loc1_.clip.gotoAndStop(_loc1_.dragFrame);
                  if(_loc12_ && Boolean(_loc3_))
                  {
                     §§goto(addr854);
                  }
                  §§goto(addr711);
               }
               §§push(Math.abs(_loc4_) <= 1);
               §§push(Math.abs(_loc4_) <= 1);
               if(_loc13_ || Boolean(_loc1_))
               {
                  addr557:
                  if(§§pop())
                  {
                     §§pop();
                     §§push(Math.abs(_loc5_) <= 1);
                  }
                  if(§§pop())
                  {
                     §§goto(addr573);
                  }
                  §§goto(addr582);
               }
               else
               {
                  §§goto(addr714);
               }
            }
            §§goto(addr573);
            §§push(§§pop());
         }
         §§push(§§pop());
         if(!_loc12_)
         {
            if(§§pop())
            {
               §§pop();
               if(!_loc12_)
               {
                  §§push(_loc1_.clip.currentFrame < _loc1_.rolloverFrame);
               }
               §§goto(addr352);
            }
            if(§§pop())
            {
               if(_loc13_)
               {
                  _loc1_.clip.nextFrame();
                  if(!_loc13_)
                  {
                     §§goto(addr494);
                  }
                  §§goto(addr923);
               }
               §§goto(addr1113);
            }
            else
            {
               §§push(_loc1_.isRollingOver);
               if(_loc13_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
                  if(_loc13_)
                  {
                     §§push(§§pop() && _loc1_.isCooking);
                  }
                  §§push(§§pop());
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(_loc13_)
                        {
                           §§push(_loc1_.clip.currentFrame > _loc1_.rolloverFrame);
                           if(_loc13_ || Boolean(_loc3_))
                           {
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr675);
                     }
                     if(§§pop())
                     {
                        _loc1_.clip.prevFrame();
                        if(!_loc13_)
                        {
                           §§goto(addr218);
                        }
                        §§goto(addr923);
                     }
                     else
                     {
                        §§goto(addr132);
                        §§push(_loc1_.isCooking);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr557);
               }
            }
            §§goto(addr987);
         }
         §§goto(addr224);
      }
   }
}

