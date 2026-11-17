package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-CI§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class SauceBottle
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var shelfX:Number = 0;
      
      public var shelfY:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isSquirting:Boolean = false;
      
      public var boundsLeft:Number = 140;
      
      public var boundsRight:Number = 350;
      
      public var boundsTop:Number = 0;
      
      public var boundsBottom:Number = 235;
      
      public var tweenSpeed:Number = 2;
      
      public var rotationSpeed:Number = 1.33333;
      
      public var isRotating:Boolean = false;
      
      public var timeToSquirt:Number = 10;
      
      public var squirtTimer:Number = 0;
      
      public var container:MovieClip;
      
      public function SauceBottle(param1:§_-BY§, param2:String, param3:MovieClip, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         this.gameObj = param1;
         this.container = param3;
         if(!(_loc7_ && Boolean(param2)))
         {
            this.type = param2;
            this.shelfX = param4;
            this.shelfY = param5;
            if(_loc6_)
            {
               this.setupBottle();
            }
         }
      }
      
      public function setupBottle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SauceBottle = this;
         if(!_loc2_)
         {
            _loc1_.clip = §_-CI§.§_-2l§("sauce_" + _loc1_.type);
            if(_loc3_)
            {
               _loc1_.clip.x = _loc1_.shelfX;
               if(!_loc2_)
               {
                  _loc1_.clip.y = _loc1_.shelfY;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.clip.scaleX = 1.27;
                     _loc1_.clip.scaleY = 1.27;
                  }
                  addr79:
                  _loc1_.clip.useHandCursor = true;
                  if(_loc3_ || _loc2_)
                  {
                     addr90:
                     _loc1_.clip.gotoAndStop(1);
                     if(_loc3_)
                     {
                        _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBottle);
                     }
                     _loc1_.clip.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBottle);
                  }
               }
               §§goto(addr124);
            }
            _loc1_.container.addChild(_loc1_.clip);
            _loc1_.clip.buttonMode = true;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr79);
            }
            §§goto(addr90);
         }
         _loc1_.clip.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBottle);
         addr124:
      }
      
      public function canClick() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SauceBottle = this;
         if(!_loc2_)
         {
            §§push(_loc1_.gameObj);
            if(_loc3_ || Boolean(this))
            {
               §§push(§§pop().§_-Bg§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop().currentWingOrder == null);
                  if(!_loc2_)
                  {
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                           }
                           addr58:
                           §§push(!§§pop());
                           if(_loc2_)
                           {
                           }
                           §§goto(addr165);
                        }
                        §§push(§§pop());
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§pop();
                                 §§push(!_loc1_.isReturning);
                                 if(_loc2_)
                                 {
                                 }
                                 addr106:
                                 §§push(!§§pop());
                                 if(_loc2_ && Boolean(_loc1_))
                                 {
                                 }
                                 addr118:
                                 §§pop();
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§push(_loc1_.gameObj);
                                    if(_loc2_)
                                    {
                                    }
                                    addr147:
                                    §§push(§§pop().§_-Bg§);
                                 }
                                 §§push(true);
                                 if(_loc3_)
                                 {
                                    §§goto(addr163);
                                 }
                                 else
                                 {
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr143);
                           }
                           §§push(§§pop());
                           if(_loc2_)
                           {
                           }
                           §§goto(addr143);
                        }
                     }
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(_loc1_.isSquirting);
                           if(_loc2_ && Boolean(_loc1_))
                           {
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr143);
                  }
                  §§pop();
               }
               §§goto(addr148);
            }
            §§push(§§pop().§_-Bg§);
            if(_loc3_ || Boolean(this))
            {
               §§push(!§§pop().hasBeenSauced);
               if(!_loc2_)
               {
                  §§goto(addr142);
               }
               addr163:
               return §§pop();
            }
            addr148:
            §§push(§§pop().isSaucing);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            §§goto(addr143);
         }
         §§push(_loc1_.isDragging);
         if(!(_loc2_ && _loc2_))
         {
            §§goto(addr58);
         }
         addr143:
         §§push(§§pop());
         if(!_loc2_)
         {
            if(§§pop())
            {
               §§goto(addr118);
            }
            addr142:
            §§push(§§pop());
         }
         if(§§pop())
         {
            §§pop();
            §§goto(addr147);
            §§push(_loc1_.gameObj);
         }
         if(§§pop())
         {
            §§goto(addr118);
         }
         else
         {
            §§push(false);
         }
         addr165:
         return §§pop();
      }
      
      public function clickBottle(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SauceBottle = this;
         if(_loc2_.canClick())
         {
            if(_loc4_)
            {
               §§push(_loc2_.gameObj);
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§pop().§_-Bg§.clip.topholder.addChildAt(_loc2_.clip,_loc2_.gameObj.§_-Bg§.clip.topholder.numChildren - 1);
                  if(!_loc3_)
                  {
                     if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
                     {
                        _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateBottle);
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                     }
                     §§push(_loc2_.gameObj);
                     if(_loc3_ && Boolean(this))
                     {
                     }
                     addr109:
                     §§pop().soundManager.playSound("grabtopping.wav");
                  }
                  addr107:
                  §§goto(addr109);
                  §§push(_loc2_.gameObj);
               }
               §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBottle);
            }
            §§push(_loc2_.gameObj);
            if(!_loc3_)
            {
               §§pop().stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseBottle);
               _loc2_.isDragging = true;
               §§goto(addr107);
            }
            §§goto(addr109);
         }
      }
      
      public function releaseBottle(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SauceBottle = this;
         §§push(_loc2_.gameObj);
         if(_loc4_ || Boolean(this))
         {
            §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBottle);
            §§push(_loc2_.gameObj);
            if(_loc4_ || _loc3_)
            {
               §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseBottle);
               _loc2_.isDragging = false;
               §§push(_loc2_.clip.x >= _loc2_.boundsLeft);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§goto(addr145);
                     }
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(_loc2_.clip.y >= _loc2_.boundsTop);
                           }
                           §§goto(addr145);
                        }
                     }
                  }
                  §§goto(addr96);
               }
               addr96:
               if(§§pop())
               {
                  §§pop();
                  if(!_loc3_)
                  {
                     §§push(_loc2_.clip.y <= _loc2_.boundsBottom);
                  }
                  §§goto(addr145);
               }
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     _loc2_.squirtTimer = 0;
                     if(_loc3_ && Boolean(this))
                     {
                     }
                  }
                  §§push(_loc2_.gameObj);
               }
               else
               {
                  _loc2_.isReturning = true;
               }
               addr145:
               if(_loc4_)
               {
                  §§push(_loc2_.clip.x <= _loc2_.boundsRight);
               }
               _loc2_.isSquirting = true;
               return;
               §§push(§§pop());
            }
         }
         §§pop().§_-Bg§.squirtSauce(_loc2_.type,_loc2_.clip.x,_loc2_.clip.y);
         §§goto(addr145);
      }
      
      public function rolloverBottle(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SauceBottle = this;
         if(_loc3_)
         {
            if(_loc2_.canClick())
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.clip.y = _loc2_.shelfY - 2;
               }
            }
         }
      }
      
      public function rolloutBottle(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SauceBottle = this;
         if(_loc3_)
         {
            if(_loc2_.canClick())
            {
               if(!_loc4_)
               {
                  _loc2_.clip.y = _loc2_.shelfY;
               }
            }
         }
      }
      
      public function updateBottle(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc2_:SauceBottle = this;
         _loc2_.rotateBottle();
         §§push(_loc2_.isDragging);
         if(_loc8_ || Boolean(_loc3_))
         {
            if(§§pop())
            {
               _loc2_.clip.x = _loc2_.gameObj.§_-Bg§.clip.mouseX;
               if(_loc8_)
               {
                  _loc2_.clip.y = _loc2_.gameObj.§_-Bg§.clip.mouseY;
               }
               addr294:
               _loc3_ = _loc2_.shelfX - _loc2_.clip.x;
               if(_loc8_ || Boolean(_loc3_))
               {
                  §§push(_loc2_.shelfY);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - _loc2_.clip.y);
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc4_ = §§pop();
                  if(_loc8_ || Boolean(this))
                  {
                     addr333:
                     _loc2_.clip.x += _loc3_ / _loc2_.tweenSpeed;
                     if(!(_loc7_ && Boolean(this)))
                     {
                        _loc2_.clip.y += _loc4_ / _loc2_.tweenSpeed;
                        addr367:
                        addr368:
                        §§push(Math.abs(_loc3_) <= 1);
                        if(Math.abs(_loc3_) <= 1)
                        {
                           if(_loc8_ || Boolean(param1))
                           {
                              addr376:
                              §§pop();
                              addr377:
                              §§push(Math.abs(_loc4_) <= 1);
                              if(_loc7_)
                              {
                              }
                              §§goto(addr390);
                           }
                        }
                        addr384:
                        if(§§pop())
                        {
                        }
                        §§goto(addr390);
                     }
                     addr429:
                     _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateBottle);
                     §§goto(addr390);
                  }
               }
               _loc2_.clip.x = _loc2_.shelfX;
               addr396:
               _loc2_.clip.y = _loc2_.shelfY;
               addr401:
               _loc2_.clip.rotation = 0;
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  _loc2_.isReturning = false;
                  if(_loc8_ || Boolean(param1))
                  {
                  }
                  addr390:
                  §§goto(addr389);
               }
               §§goto(addr429);
            }
            §§push(_loc2_.isDragging);
            §§push(_loc2_.isDragging);
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     §§pop();
                     addr165:
                     if(_loc8_)
                     {
                        §§push(_loc2_.clip.x >= _loc2_.boundsLeft);
                     }
                     §§push(_loc2_.gameObj);
                     if(!_loc7_)
                     {
                        addr169:
                        §§push(§§pop().§_-Bg§);
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           addr177:
                           §§push(§§pop().isMeterSaucing);
                           if(_loc7_ && Boolean(_loc3_))
                           {
                           }
                           §§goto(addr376);
                        }
                        addr197:
                        §§pop().stopSauceMeter();
                        if(_loc7_ && Boolean(param1))
                        {
                           §§goto(addr401);
                        }
                        §§goto(addr376);
                     }
                     addr196:
                     §§goto(addr197);
                     §§push(§§pop().§_-Bg§);
                  }
                  §§push(§§pop());
                  if(!(_loc7_ && Boolean(this)))
                  {
                     addr193:
                     if(§§pop())
                     {
                        §§goto(addr196);
                        §§push(_loc2_.gameObj);
                     }
                     else
                     {
                        if(_loc2_.isSquirting)
                        {
                           if(!_loc7_)
                           {
                              _loc2_.clip.gotoAndStop(2);
                              _loc2_.clip.y += 2;
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 var _loc5_:* = _loc2_;
                                 §§push(_loc5_.squirtTimer);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc8_)
                                 {
                                    _loc5_.squirtTimer = _loc6_;
                                 }
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    if(_loc2_.squirtTimer >= _loc2_.timeToSquirt)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc2_.clip.gotoAndStop(1);
                                          _loc2_.isSquirting = false;
                                          _loc2_.isReturning = true;
                                       }
                                       else
                                       {
                                          §§goto(addr396);
                                       }
                                    }
                                 }
                              }
                              addr387:
                              §§push(_loc2_.isRotating);
                           }
                           else
                           {
                              §§goto(addr377);
                           }
                           addr389:
                           if(§§pop())
                           {
                           }
                           return;
                        }
                        §§push(_loc2_.isReturning);
                        if(_loc8_ || Boolean(this))
                        {
                           if(§§pop())
                           {
                              if(_loc7_ && Boolean(this))
                              {
                              }
                              §§goto(addr294);
                           }
                        }
                        §§goto(addr376);
                     }
                     §§goto(addr376);
                  }
                  §§goto(addr384);
               }
               §§push(§§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc2_.clip.x <= _loc2_.boundsRight);
                  }
                  §§push(§§pop());
                  if(_loc7_ && Boolean(this))
                  {
                  }
               }
               if(§§pop())
               {
                  §§pop();
                  §§push(_loc2_.clip.y >= _loc2_.boundsTop);
               }
               §§push(§§pop());
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc2_.clip.y <= _loc2_.boundsBottom);
                     }
                     §§goto(addr294);
                  }
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§push(_loc2_.gameObj);
                        if(!_loc7_)
                        {
                           §§push(§§pop().§_-Bg§);
                           if(!_loc7_)
                           {
                              §§push(§§pop().isMeterSaucing);
                              if(!_loc7_)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(_loc2_.gameObj);
                                    if(_loc7_ && Boolean(_loc3_))
                                    {
                                    }
                                    §§goto(addr169);
                                 }
                              }
                              §§goto(addr367);
                           }
                           §§goto(addr177);
                        }
                        §§push(§§pop().§_-Bg§);
                        if(!_loc7_)
                        {
                           §§pop().startSauceMeter();
                        }
                        else
                        {
                           §§goto(addr177);
                        }
                     }
                     §§goto(addr376);
                  }
                  else
                  {
                     §§push(_loc2_.isDragging);
                     if(_loc2_.isDragging)
                     {
                        §§pop();
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§goto(addr165);
                        }
                        §§goto(addr333);
                     }
                  }
                  §§goto(addr193);
               }
            }
            §§goto(addr368);
         }
         §§pop();
         §§goto(addr387);
      }
      
      public function rotateBottle() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:SauceBottle = this;
         §§push(_loc1_.isDragging);
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr41);
            }
         }
         §§pop();
         §§push(_loc1_.isSquirting);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         addr41:
         if(§§pop())
         {
            if(_loc4_ || _loc3_)
            {
               if(_loc1_.clip.rotation < 180)
               {
                  §§push(180 - _loc1_.clip.rotation);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        _loc2_ = §§pop();
                        _loc1_.clip.rotation += _loc2_ / _loc1_.rotationSpeed;
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           §§push(1);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    _loc1_.clip.rotation = 180;
                                 }
                              }
                              else
                              {
                                 _loc1_.isRotating = true;
                              }
                              addr118:
                           }
                        }
                        else
                        {
                           addr168:
                           §§push(1);
                        }
                        if(§§pop() <= §§pop())
                        {
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              _loc1_.clip.rotation = 0;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.isRotating = false;
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc1_.isRotating = true;
                           if(_loc4_)
                           {
                              addr206:
                           }
                        }
                     }
                     addr193:
                     §§goto(addr206);
                  }
                  addr153:
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     _loc1_.clip.rotation -= _loc2_ / _loc1_.tweenSpeed;
                     §§goto(addr168);
                     §§push(_loc2_);
                  }
                  §§goto(addr193);
               }
               else
               {
                  _loc1_.isRotating = false;
                  if(!(_loc4_ || Boolean(_loc2_)))
                  {
                     addr142:
                     §§push(_loc1_.clip.rotation);
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr153);
                     }
                     §§goto(addr168);
                  }
               }
            }
            _loc1_.isRotating = false;
            §§goto(addr118);
         }
         else if(_loc1_.clip.rotation > 0)
         {
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr142);
            }
            §§goto(addr193);
         }
         else
         {
            _loc1_.isRotating = false;
         }
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:SauceBottle = this;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBottle);
            if(_loc4_)
            {
               _loc1_.clip.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBottle);
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc1_.clip.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBottle);
               }
            }
         }
         try
         {
            §§push(_loc1_.gameObj);
            if(_loc4_)
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseBottle);
               §§push(_loc1_.gameObj);
            }
            §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc1_.releaseBottle);
         }
         catch(err:Error)
         {
         }
         if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateBottle);
            }
            §§goto(addr138);
         }
         try
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
         }
         catch(err:Error)
         {
         }
         _loc1_.container = null;
         addr138:
         _loc1_.clip = null;
      }
   }
}

