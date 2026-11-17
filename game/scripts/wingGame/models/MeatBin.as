package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import wingGame.data.*;
   import wingGame.screens.*;
   
   public class MeatBin
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var shelfSpots:Array;
      
      public var shelfX:Number = 0;
      
      public var shelfY:Number = 324;
      
      public var binCenterX:Number = 65;
      
      public var binCenterY:Number = 90;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isTweeningToLid:Boolean = false;
      
      public var isTweeningToPour:Boolean = false;
      
      public var isShowingLid:Boolean = false;
      
      public var isWaitingToDump:Boolean = false;
      
      public var isPouring:Boolean = false;
      
      public var pouringWhichFryerX:Number = -1;
      
      public var pouringWhichFryerY:Number = -1;
      
      public var fryerBoundsStartX:Number = 12;
      
      public var fryerBoundsSpacingX:Number = 120;
      
      public var fryerBoundsStartY:Number = 86;
      
      public var fryerBoundsSpacingY:Number = 142;
      
      public var isClickingDial:Boolean = false;
      
      public var pourHowMany:Number = 0;
      
      public var pourMax:Number = 12;
      
      public var lastPourHowMany:Number = 0;
      
      public var tweenSpeed:Number = 2;
      
      public var finishedPouringFrame:Number = 48;
      
      public function MeatBin(param1:§_-BY§, param2:MovieClip, param3:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(param3))
         {
            this.shelfSpots = [3,103,203,303];
            if(_loc6_)
            {
            }
            §§goto(addr38);
         }
         super();
         addr38:
         var _loc4_:MeatBin = this;
         _loc4_.gameObj = param1;
         if(_loc5_)
         {
            _loc4_.clip = param2;
            if(_loc6_ && Boolean(this))
            {
            }
            §§goto(addr68);
         }
         _loc4_.type = param3;
         if(!_loc6_)
         {
            §§goto(addr68);
         }
         addr68:
         _loc4_.setupBin();
      }
      
      public function setupBin() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MeatBin = this;
         §§push(_loc1_.type);
         if(!_loc2_)
         {
            §§push(FoodData.MEAT_SHRIMP);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() == §§pop())
               {
                  _loc1_.shelfX = _loc1_.shelfSpots[0];
                  if(_loc3_)
                  {
                  }
                  §§goto(addr121);
               }
               else
               {
                  §§push(_loc1_.type);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(FoodData.MEAT_WING);
                     if(!_loc2_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.shelfX = _loc1_.shelfSpots[1];
                              if(_loc3_ || Boolean(_loc1_))
                              {
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr132);
                        }
                        else
                        {
                           §§push(_loc1_.type);
                           if(_loc3_)
                           {
                           }
                           addr100:
                           §§push(FoodData.MEAT_STRIPS);
                        }
                     }
                  }
               }
               §§goto(addr111);
            }
            addr102:
            if(§§pop() == §§pop())
            {
               if(!_loc2_)
               {
                  _loc1_.shelfX = _loc1_.shelfSpots[3];
               }
            }
            §§goto(addr111);
         }
         §§push(FoodData.MEAT_BONELESS);
         if(!_loc2_)
         {
            if(§§pop() == §§pop())
            {
               _loc1_.shelfX = _loc1_.shelfSpots[2];
            }
            else
            {
               §§goto(addr100);
               §§push(_loc1_.type);
            }
            addr111:
            _loc1_.clip.x = _loc1_.shelfX;
            _loc1_.clip.y = _loc1_.shelfY;
            addr121:
            _loc1_.clip.buttonMode = true;
            if(!(_loc2_ && _loc3_))
            {
               addr132:
               _loc1_.clip.useHandCursor = true;
               addr136:
               _loc1_.clip.dial.visible = false;
               _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBin);
               _loc1_.clip.dial.dial_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDial);
               if(_loc3_)
               {
                  _loc1_.clip.dial.color.mask = _loc1_.clip.dial.masker;
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      public function clickBin(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MeatBin = this;
         §§push(_loc2_.gameObj);
         if(!_loc4_)
         {
            §§push(!§§pop().§_-3f§);
            §§push(!§§pop().§_-3f§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(_loc2_.gameObj);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr205);
               }
               addr36:
               if(§§pop())
               {
                  §§push(_loc2_.isTweeningToLid);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        addr76:
                        if(§§pop())
                        {
                           addr139:
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§pop();
                              addr203:
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(_loc2_.isTweeningToPour);
                              }
                              addr205:
                              §§pop().soundManager.playSound("grabtopping.wav");
                              return;
                              §§push(_loc2_.gameObj);
                           }
                           §§push(§§pop());
                        }
                        §§push(§§pop());
                        if(_loc3_ || Boolean(_loc2_))
                        {
                        }
                        addr132:
                        if(§§pop())
                        {
                           §§pop();
                           addr141:
                           §§push(_loc2_.isShowingLid);
                           if(!_loc4_)
                           {
                              addr138:
                              §§push(!§§pop());
                           }
                           §§pop();
                           addr142:
                           §§push(_loc2_.isWaitingToDump);
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 _loc2_.isDragging = true;
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    _loc2_.isReturning = false;
                                    if(_loc4_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 _loc2_.resetDial();
                                 if(!_loc4_)
                                 {
                                    _loc2_.clip.startDrag();
                                    §§push(_loc2_.gameObj);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBin);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr203);
                              }
                           }
                        }
                        §§goto(addr139);
                     }
                     if(§§pop())
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§push(!_loc2_.isPouring);
                              if(_loc3_)
                              {
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr142);
                        }
                        addr118:
                        §§pop();
                        §§push(_loc2_.isDragging);
                        if(!_loc4_)
                        {
                           addr124:
                           §§push(!§§pop());
                           §§push(!§§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr132);
                           }
                        }
                        §§goto(addr138);
                     }
                     addr112:
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr118);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr132);
                  }
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr112);
               }
               §§goto(addr205);
            }
            if(!§§pop())
            {
            }
            §§goto(addr141);
         }
         §§push(§§pop().§_-DZ§ == 11);
         if(_loc3_)
         {
            §§goto(addr36);
         }
         §§goto(addr112);
      }
      
      public function releaseBin(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MeatBin = this;
         if(_loc6_ || Boolean(this))
         {
            _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBin);
            if(_loc6_ || Boolean(this))
            {
            }
            addr50:
            var _loc3_:Number = Math.floor((_loc2_.clip.x + _loc2_.binCenterX - _loc2_.fryerBoundsStartX) / _loc2_.fryerBoundsSpacingX);
            var _loc4_:Number = Math.floor((_loc2_.clip.y + _loc2_.binCenterY - _loc2_.fryerBoundsStartY) / _loc2_.fryerBoundsSpacingY);
            §§push(_loc2_.gameObj.§_-8f§.isFryerFree(_loc3_,_loc4_));
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            §§push(_loc5_);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     _loc2_.pouringWhichFryerX = _loc3_;
                     _loc2_.pouringWhichFryerY = _loc4_;
                     if(!_loc7_)
                     {
                        _loc2_.isTweeningToLid = true;
                        _loc2_.clip.gotoAndPlay("showlid");
                     }
                     §§push(_loc2_.gameObj);
                     if(!_loc7_)
                     {
                        §§push(§§pop().§_-3f§);
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop());
                           if(_loc6_ || Boolean(_loc3_))
                           {
                           }
                        }
                        addr174:
                        if(§§pop())
                        {
                           addr177:
                           _loc2_.gameObj.§_-8o§();
                           if(_loc6_ || Boolean(_loc2_))
                           {
                           }
                        }
                     }
                     addr171:
                     §§goto(addr174);
                     §§push(§§pop().§_-DZ§ == 11);
                  }
               }
               else
               {
                  _loc2_.isReturning = true;
               }
               return;
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  §§pop();
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     §§push(_loc2_.gameObj);
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        §§goto(addr171);
                     }
                  }
                  §§goto(addr177);
               }
            }
            §§goto(addr174);
         }
         _loc2_.clip.stopDrag();
         if(_loc6_ || Boolean(_loc3_))
         {
            _loc2_.isDragging = false;
         }
         §§goto(addr50);
      }
      
      public function resetDial() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MeatBin = this;
         if(_loc3_)
         {
            _loc1_.clip.dial.visible = false;
            if(_loc3_ || _loc3_)
            {
            }
            §§goto(addr51);
         }
         _loc1_.clip.dial.dial_btn.rotation = 0;
         if(!_loc2_)
         {
            _loc1_.pourHowMany = 0;
            if(_loc3_)
            {
               §§goto(addr51);
            }
         }
         addr51:
         _loc1_.lastPourHowMany = 0;
         if(_loc3_ || Boolean(this))
         {
            _loc1_.clip.dial.color.graphics.clear();
         }
      }
      
      public function showDial() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MeatBin = this;
         if(_loc3_)
         {
            _loc1_.clip.x = _loc1_.getFryerTargetX();
            _loc1_.clip.y = _loc1_.getFryerTargetY();
            _loc1_.isTweeningToLid = false;
            if(_loc2_ && _loc3_)
            {
            }
            §§goto(addr69);
         }
         _loc1_.isShowingLid = true;
         if(!_loc2_)
         {
            _loc1_.clip.dial.visible = true;
            _loc1_.clip.dial.num_txt.text = "0";
         }
         addr69:
      }
      
      public function startPouring() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MeatBin = this;
         if(!_loc3_)
         {
            _loc1_.clip.dial.visible = false;
            if(_loc2_)
            {
               _loc1_.clip.gotoAndPlay("pour");
               if(_loc2_ || _loc2_)
               {
               }
               §§goto(addr48);
            }
         }
         _loc1_.isShowingLid = false;
         if(!_loc3_)
         {
            §§goto(addr48);
         }
         addr48:
         _loc1_.isWaitingToDump = false;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.isPouring = true;
         }
      }
      
      public function clickDial(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MeatBin = this;
         if(_loc4_ || Boolean(param1))
         {
            if(!_loc2_.isWaitingToDump)
            {
               if(_loc4_)
               {
                  _loc2_.isClickingDial = true;
                  if(_loc4_)
                  {
                     §§push(_loc2_.gameObj);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseDial);
                        if(_loc4_)
                        {
                           §§push(_loc2_.gameObj);
                           if(!_loc3_)
                           {
                              §§pop().stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseDial);
                              if(_loc3_ && _loc3_)
                              {
                              }
                           }
                        }
                        §§push(_loc2_.gameObj);
                     }
                     §§pop().soundManager.playSound("buttonclick.wav");
                  }
               }
            }
         }
      }
      
      public function releaseDial(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MeatBin = this;
         §§push(_loc2_.gameObj);
         if(_loc4_ || Boolean(param1))
         {
            §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseDial);
            §§push(_loc2_.gameObj);
            if(_loc4_)
            {
            }
            addr46:
            §§pop().soundManager.playSound("release_button.wav");
            §§push(_loc2_.gameObj.§_-3f§);
            §§push(_loc2_.gameObj.§_-3f§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || Boolean(this))
                  {
                     §§pop();
                     addr225:
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(_loc2_.pourHowMany);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr198);
                        }
                        addr197:
                        addr198:
                        addr199:
                        §§push(4);
                        if(_loc4_)
                        {
                           §§push(§§pop() == §§pop());
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              _loc2_.gameObj.§_-8o§();
                           }
                           §§goto(addr254);
                        }
                        addr254:
                        return;
                        §§push(12);
                     }
                     _loc2_.pouringWhichFryerY = -1;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc2_.clip.gotoAndStop("static");
                        addr246:
                        _loc2_.clip.dial.visible = false;
                        addr235:
                     }
                     _loc2_.isReturning = true;
                     §§goto(addr254);
                  }
                  addr119:
                  §§push(false);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr134:
                     §§push(§§pop() == §§pop());
                     §§push(§§pop() == §§pop());
                     if(_loc3_)
                     {
                     }
                  }
                  if(§§pop())
                  {
                     addr184:
                     §§pop();
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(_loc2_.gameObj);
                        if(!_loc3_)
                        {
                           §§goto(addr197);
                           §§push(§§pop().§_-DZ§);
                        }
                        else
                        {
                           addr213:
                           if(!§§pop().§_-3f§)
                           {
                              if(_loc4_)
                              {
                                 _loc2_.isShowingLid = false;
                                 addr220:
                                 _loc2_.pouringWhichFryerX = -1;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr225);
                                 }
                              }
                              §§goto(addr225);
                           }
                        }
                        §§goto(addr254);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr199);
               }
               §§push(§§pop());
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  if(!§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr180:
                           §§push(_loc2_.gameObj);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              §§goto(addr119);
                              §§push(§§pop().§_-3f§);
                           }
                           §§goto(addr119);
                           §§push(Boolean(§§pop().§_-3f§));
                           §§push(Boolean(§§pop().§_-3f§));
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr184);
                  }
                  addr155:
                  if(§§pop())
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc2_.isShowingLid = false;
                        if(_loc4_)
                        {
                           _loc2_.isWaitingToDump = true;
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§goto(addr180);
                              §§push(_loc2_.gameObj);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr254);
                  }
                  else
                  {
                     §§push(_loc2_.gameObj);
                  }
                  §§goto(addr213);
               }
               §§goto(addr134);
            }
            if(§§pop())
            {
               §§pop();
               if(_loc4_ || Boolean(this))
               {
                  §§push(_loc2_.pourHowMany);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§push(§§pop() > §§pop());
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr197);
               }
               §§goto(addr246);
            }
            §§goto(addr155);
         }
         §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseDial);
         _loc2_.isClickingDial = false;
         §§goto(addr46);
         §§push(_loc2_.gameObj);
      }
      
      public function updateBin() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:MeatBin = this;
         if(_loc6_)
         {
            §§push(_loc1_.isClickingDial);
            if(_loc6_)
            {
               §§push(§§pop());
               §§push(§§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     addr585:
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        §§pop();
                        §§push(_loc1_.isWaitingToDump);
                     }
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        §§goto(addr601);
                     }
                     §§push(§§pop());
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§goto(addr601);
                     }
                     §§goto(addr625);
                  }
                  if(§§pop())
                  {
                     _loc1_.updateDial();
                     if(_loc6_ || Boolean(_loc1_))
                     {
                     }
                     addr160:
                     §§push(_loc1_.shelfY);
                     if(_loc6_ || Boolean(this))
                     {
                        addr487:
                        §§push(§§pop() - _loc1_.clip.y);
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc7_ && Boolean(_loc1_)))
                              {
                                 _loc1_.clip.x += _loc2_ / _loc1_.tweenSpeed;
                                 addr320:
                                 §§push(_loc1_.gameObj.§_-8f§);
                                 if(!_loc7_)
                                 {
                                    addr210:
                                    §§push(!§§pop().isDraggingBasket);
                                    if(!§§pop().isDraggingBasket)
                                    {
                                       §§pop();
                                       addr250:
                                       §§push(_loc1_.gameObj.§_-8f§.isThrowingAway);
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          addr252:
                                          §§pop();
                                          §§push(Math.abs(_loc3_) <= 1);
                                          if(!(_loc6_ || Boolean(_loc1_)))
                                          {
                                             addr359:
                                             if(§§pop())
                                             {
                                                if(_loc1_.clip.currentFrame == _loc1_.clip.totalFrames)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      _loc1_.clip.gotoAndStop("static");
                                                      if(_loc6_)
                                                      {
                                                      }
                                                      addr396:
                                                      §§push(_loc1_.gameObj);
                                                      if(_loc6_ || Boolean(_loc3_))
                                                      {
                                                         addr408:
                                                         addr406:
                                                         if(Boolean(§§pop().§_-8f§.isThrowingAway))
                                                         {
                                                            _loc1_.clip.y = 460;
                                                            if(_loc7_)
                                                            {
                                                               addr457:
                                                               §§push(_loc1_.gameObj.§_-8f§);
                                                               if(_loc6_ || Boolean(_loc2_))
                                                               {
                                                                  §§pop().addMeatToFryer(_loc1_.pouringWhichFryerX,_loc1_.pouringWhichFryerY,_loc1_.type,_loc1_.pourHowMany);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr626);
                                                               }
                                                            }
                                                         }
                                                         _loc1_.isPouring = false;
                                                         _loc1_.pouringWhichFryerX = -1;
                                                         _loc1_.pouringWhichFryerY = -1;
                                                         addr424:
                                                         _loc1_.isReturning = true;
                                                      }
                                                      else
                                                      {
                                                         addr445:
                                                         §§pop().soundManager.playSound("dump_wings_into_fryer.wav");
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr604);
                                                         }
                                                      }
                                                      §§goto(addr601);
                                                   }
                                                   addr495:
                                                   §§push(_loc1_.getFryerTargetY());
                                                   if(_loc7_)
                                                   {
                                                   }
                                                   addr503:
                                                   _loc5_ = §§pop();
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr554);
                                                }
                                                else if(_loc1_.clip.currentFrame == _loc1_.finishedPouringFrame - 20)
                                                {
                                                   if(!(_loc7_ && Boolean(this)))
                                                   {
                                                      addr443:
                                                      §§goto(addr445);
                                                      §§push(_loc1_.gameObj);
                                                   }
                                                   else
                                                   {
                                                      addr548:
                                                      if(Math.abs(_loc5_) <= 1)
                                                      {
                                                         addr554:
                                                         _loc1_.clip.x = _loc1_.getFryerTargetX();
                                                         _loc1_.clip.y = _loc1_.getFryerTargetY();
                                                         if(!(_loc7_ && Boolean(_loc1_)))
                                                         {
                                                            addr571:
                                                            if(_loc1_.clip.currentFrameLabel == "dialframe")
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr578:
                                                                  _loc1_.showDial();
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr700);
                                                         }
                                                         §§goto(addr601);
                                                      }
                                                      §§goto(addr571);
                                                   }
                                                   §§goto(addr601);
                                                }
                                                else if(_loc1_.clip.currentFrame == _loc1_.finishedPouringFrame)
                                                {
                                                   §§goto(addr457);
                                                }
                                                addr601:
                                                §§goto(addr588);
                                             }
                                             else
                                             {
                                                §§push(_loc1_.isTweeningToLid);
                                             }
                                          }
                                          §§goto(addr479);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          _loc1_.clip.y += _loc3_ / _loc1_.tweenSpeed;
                                          if(_loc7_)
                                          {
                                          }
                                          §§goto(addr554);
                                       }
                                       §§goto(addr424);
                                    }
                                    §§goto(addr250);
                                    §§push(Math.abs(_loc2_) <= 1);
                                 }
                                 §§push(§§pop().isThrowingAway);
                                 if(!_loc7_)
                                 {
                                    addr324:
                                    if(!§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc1_.clip.y = _loc1_.shelfY;
                                          if(_loc7_ && Boolean(_loc2_))
                                          {
                                             §§goto(addr578);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr548);
                                       }
                                       §§goto(addr571);
                                    }
                                    _loc1_.isReturning = false;
                                    if(_loc7_ && Boolean(_loc2_))
                                    {
                                       §§goto(addr629);
                                    }
                                    else
                                    {
                                       addr356:
                                    }
                                 }
                                 else
                                 {
                                    addr479:
                                    if(§§pop())
                                    {
                                       §§push(_loc1_.getFryerTargetX() - _loc1_.clip.x);
                                    }
                                    else
                                    {
                                       §§push(_loc1_.isShowingLid);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr585);
                                       }
                                    }
                                    addr588:
                                    §§goto(addr589);
                                 }
                                 §§goto(addr601);
                              }
                              _loc1_.clip.x += _loc4_ / _loc1_.tweenSpeed;
                              _loc1_.clip.y += _loc5_ / _loc1_.tweenSpeed;
                              §§push(Math.abs(_loc4_) <= 1);
                              if(_loc6_)
                              {
                                 addr537:
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && Boolean(_loc1_)))
                                    {
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          §§goto(addr548);
                                       }
                                       else
                                       {
                                          §§goto(addr656);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr601);
                                    }
                                    §§goto(addr601);
                                 }
                                 §§goto(addr548);
                              }
                              else
                              {
                                 §§goto(addr585);
                              }
                           }
                           §§goto(addr503);
                           §§push(§§pop() - _loc1_.clip.y);
                        }
                        _loc4_ = §§pop();
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§goto(addr495);
                        }
                        §§goto(addr668);
                     }
                     §§goto(addr487);
                     §§push(§§pop());
                  }
                  §§push(_loc1_.isDragging);
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        §§push(_loc1_.gameObj.mouseX < 0);
                        §§push(_loc1_.gameObj.mouseX < 0);
                        if(!(_loc7_ && Boolean(_loc1_)))
                        {
                           if(!§§pop())
                           {
                              addr121:
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 §§pop();
                                 §§push(_loc1_.gameObj.mouseX > 640);
                              }
                              §§pop();
                              if(_loc6_)
                              {
                                 §§push(_loc1_.gameObj.mouseY > 480);
                                 if(!_loc7_)
                                 {
                                    addr131:
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc1_.releaseBin(null);
                                          if(!(_loc6_ || Boolean(this)))
                                          {
                                             §§goto(addr700);
                                          }
                                       }
                                    }
                                    §§goto(addr601);
                                 }
                                 else
                                 {
                                    §§goto(addr252);
                                 }
                              }
                              §§goto(addr457);
                           }
                           §§push(§§pop());
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              if(!§§pop())
                              {
                                 §§pop();
                                 if(_loc6_ || Boolean(this))
                                 {
                                    §§push(_loc1_.gameObj.mouseY < 0);
                                    if(_loc6_)
                                    {
                                    }
                                    §§goto(addr324);
                                 }
                                 else
                                 {
                                    addr150:
                                    §§push(_loc1_.shelfX - _loc1_.clip.x);
                                    if(!_loc7_)
                                    {
                                       _loc2_ = §§pop();
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr160);
                              }
                              §§push(§§pop());
                           }
                           §§goto(addr210);
                        }
                        addr589:
                        if(§§pop() || _loc1_.isWaitingToDump)
                        {
                           if(_loc6_)
                           {
                              addr604:
                           }
                        }
                        else
                        {
                           §§push(_loc1_.gameObj);
                           if(_loc6_)
                           {
                              §§push(§§pop().§_-8f§);
                              if(_loc6_)
                              {
                                 addr626:
                                 §§push(Boolean(§§pop().isDraggingBasket));
                                 if(!Boolean(§§pop().isDraggingBasket))
                                 {
                                    §§pop();
                                    if(_loc6_)
                                    {
                                       §§push(_loc1_.gameObj);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       addr629:
                                       if(_loc1_.clip.y < 450)
                                       {
                                          if(_loc7_ && Boolean(_loc2_))
                                          {
                                          }
                                          addr656:
                                       }
                                       else
                                       {
                                          _loc1_.clip.y = 450;
                                       }
                                    }
                                    _loc1_.clip.y += 50;
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr656);
                                    }
                                 }
                                 else if(_loc1_.clip.y != _loc1_.shelfY)
                                 {
                                    addr668:
                                    _loc1_.clip.y += (_loc1_.shelfY - _loc1_.clip.y) / 1.3;
                                    if(Math.abs(_loc1_.shelfY - _loc1_.clip.y) <= 1)
                                    {
                                       addr700:
                                       _loc1_.clip.y = _loc1_.shelfY;
                                    }
                                 }
                              }
                              addr622:
                              §§push(§§pop().isThrowingAway);
                              if(!_loc7_)
                              {
                                 addr625:
                                 §§push(§§pop());
                              }
                              §§goto(addr626);
                           }
                           addr621:
                           §§goto(addr622);
                           §§push(§§pop().§_-8f§);
                        }
                        return;
                     }
                     §§push(_loc1_.isReturning);
                     §§goto(addr359);
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr150);
                     }
                     §§goto(addr495);
                  }
                  else
                  {
                     §§push(_loc1_.isPouring);
                  }
                  §§goto(addr359);
               }
               if(!§§pop())
               {
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§goto(addr121);
                  }
                  §§goto(addr408);
               }
               §§goto(addr131);
            }
            if(§§pop())
            {
               if(!_loc7_)
               {
                  _loc1_.clip.x = _loc1_.shelfX;
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     §§push(_loc1_.gameObj);
                     if(!_loc7_)
                     {
                        §§push(§§pop().§_-8f§.isDraggingBasket);
                        if(!_loc7_)
                        {
                           §§push(!§§pop());
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push(§§pop());
                              if(_loc6_ || Boolean(_loc1_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(_loc1_.gameObj.§_-8f§);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr320);
                                          }
                                          else
                                          {
                                             §§goto(addr406);
                                          }
                                       }
                                       §§goto(addr604);
                                    }
                                    §§goto(addr625);
                                 }
                                 §§goto(addr324);
                              }
                              §§goto(addr537);
                           }
                           else
                           {
                              addr391:
                              if(!§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    §§goto(addr396);
                                 }
                                 §§goto(addr626);
                              }
                           }
                           §§goto(addr408);
                        }
                        §§goto(addr601);
                     }
                     §§goto(addr621);
                  }
                  §§goto(addr443);
               }
            }
            §§goto(addr356);
         }
         _loc1_.clip.x = -100;
         _loc1_.clip.y = _loc1_.shelfY;
         §§push(_loc1_.gameObj.§_-8f§.isDraggingBasket);
         if(!_loc7_)
         {
            §§goto(addr391);
            §§push(§§pop());
         }
         else
         {
            §§goto(addr252);
         }
         §§goto(addr621);
      }
      
      private function getFryerTargetX() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MeatBin = this;
         §§push(_loc1_.fryerBoundsStartX);
         if(!(_loc2_ && _loc3_))
         {
            §§push(_loc1_.pouringWhichFryerX);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§pop() * _loc1_.fryerBoundsSpacingX);
            }
            §§push(§§pop() + §§pop());
            if(_loc2_)
            {
            }
            §§goto(addr57);
         }
         addr57:
         §§pop() - 10;
         return §§pop();
      }
      
      private function getFryerTargetY() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MeatBin = this;
         §§push(_loc1_.fryerBoundsStartY);
         if(!_loc3_)
         {
            §§push(_loc1_.pouringWhichFryerY);
            if(_loc2_ || Boolean(_loc1_))
            {
               §§push(§§pop() * _loc1_.fryerBoundsSpacingY);
            }
            §§push(§§pop() + §§pop());
            if(_loc3_)
            {
            }
            §§goto(addr51);
         }
         addr51:
         §§pop() - 5;
         return §§pop();
      }
      
      public function updateDial() : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc1_:MeatBin = this;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         §§push(_loc1_.isClickingDial);
         if(!_loc22_)
         {
            if(§§pop())
            {
               §§push(Number(_loc1_.clip.dial.mouseX));
               if(_loc23_ || Boolean(_loc2_))
               {
                  _loc17_ = §§pop();
                  if(_loc23_ || Boolean(_loc3_))
                  {
                     _loc18_ = Number(_loc1_.clip.dial.mouseY);
                     §§push(_loc17_);
                     if(!_loc22_)
                     {
                        §§push(§§pop() - _loc1_.clip.dial.dial_btn.x);
                        if(!(_loc22_ && Boolean(_loc2_)))
                        {
                           _loc19_ = §§pop();
                           addr127:
                           if(!(_loc22_ && Boolean(_loc3_)))
                           {
                              §§push(_loc18_);
                           }
                           §§push(_loc2_);
                           if(_loc23_)
                           {
                              addr130:
                              §§push(§§pop() + Math.PI / 2);
                           }
                           _loc3_ = §§pop();
                           if(_loc23_)
                           {
                              addr199:
                              §§push(_loc3_);
                              §§push(0);
                              if(_loc23_ || Boolean(_loc1_))
                              {
                                 addr227:
                                 if(§§pop() < §§pop())
                                 {
                                    addr244:
                                    §§push(_loc3_);
                                    if(_loc23_ || Boolean(this))
                                    {
                                       addr216:
                                       §§push(360);
                                    }
                                    _loc3_ = §§pop();
                                    addr246:
                                    var _loc4_:* = false;
                                    addr245:
                                    if(!_loc1_.isWaitingToDump)
                                    {
                                       §§push(_loc3_);
                                       §§push(180);
                                       if(_loc23_)
                                       {
                                          addr333:
                                          §§push(§§pop() >= §§pop());
                                          if(!(_loc22_ && Boolean(_loc3_)))
                                          {
                                             §§push(§§pop());
                                             if(!_loc22_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr305:
                                                   if(!_loc22_)
                                                   {
                                                      §§pop();
                                                      if(_loc23_)
                                                      {
                                                         §§push(_loc1_.pourHowMany);
                                                         §§push(3);
                                                         if(_loc23_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc23_ || Boolean(_loc1_))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr308:
                                                      §§push(_loc1_.pourHowMany);
                                                      §§push(9);
                                                   }
                                                   §§pop();
                                                   if(!_loc22_)
                                                   {
                                                      §§goto(addr308);
                                                   }
                                                   addr332:
                                                   §§push(true);
                                                }
                                                if(§§pop())
                                                {
                                                   §§push(0);
                                                   if(_loc23_ || Boolean(_loc1_))
                                                   {
                                                      _loc3_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      addr321:
                                                      §§push(§§pop());
                                                      if(!(_loc22_ && Boolean(_loc2_)))
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc23_)
                                                         {
                                                            §§goto(addr332);
                                                         }
                                                      }
                                                   }
                                                   addr343:
                                                   var _loc5_:* = §§pop();
                                                   §§push(_loc4_);
                                                   if(_loc23_ || Boolean(this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(_loc1_.pourMax);
                                                         if(_loc23_ || Boolean(_loc3_))
                                                         {
                                                            _loc5_ = §§pop();
                                                         }
                                                         addr389:
                                                         if(§§pop() != _loc1_.lastPourHowMany)
                                                         {
                                                            if(!_loc22_)
                                                            {
                                                               addr410:
                                                               _loc21_ = Math.max(1,Math.min(_loc1_.pourHowMany,8));
                                                               if(_loc23_)
                                                               {
                                                                  §§push(_loc1_.gameObj.soundManager);
                                                                  §§push("bindial_" + _loc21_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(§§pop() + ".wav");
                                                                  }
                                                                  §§pop().playSound(§§pop());
                                                                  if(_loc22_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr430:
                                                            §§push(_loc3_);
                                                            if(_loc23_ || Boolean(_loc3_))
                                                            {
                                                               §§push(§§pop() / 360);
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            if(_loc23_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc22_ && Boolean(this)))
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc23_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                     }
                                                                     addr474:
                                                                     var _loc7_:Number = §§pop();
                                                                     var _loc8_:MovieClip = _loc1_.clip.dial.color;
                                                                     var _loc9_:Number = 127;
                                                                     addr473:
                                                                     §§push(0);
                                                                     §§push(_loc9_);
                                                                     if(_loc23_)
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(0);
                                                                     §§push(_loc9_);
                                                                     if(_loc23_)
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc22_ && Boolean(_loc1_)))
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc9_);
                                                                     if(!(_loc22_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                        if(_loc23_)
                                                                        {
                                                                        }
                                                                        addr524:
                                                                        var _loc12_:* = §§pop();
                                                                        var _loc13_:uint = 1883392;
                                                                        if(_loc23_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(_loc1_.isWaitingToDump);
                                                                           if(!(_loc22_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc22_ && Boolean(_loc2_))
                                                                              {
                                                                              }
                                                                              addr600:
                                                                              §§pop();
                                                                              addr604:
                                                                              addr603:
                                                                              §§push(_loc1_.gameObj.§_-6v§.gameplayTimer);
                                                                              §§push(4);
                                                                              if(_loc23_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr613:
                                                                                 §§push(§§pop() % §§pop());
                                                                                 if(_loc23_ || Boolean(_loc2_))
                                                                                 {
                                                                                    addr621:
                                                                                    §§push(1);
                                                                                    if(_loc23_ || Boolean(_loc1_))
                                                                                    {
                                                                                       addr630:
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          addr631:
                                                                                          _loc13_ = 4063004;
                                                                                          if(_loc23_)
                                                                                          {
                                                                                          }
                                                                                          addr639:
                                                                                          _loc8_.graphics.lineStyle(1,0,0);
                                                                                          _loc8_.graphics.beginFill(1883392,1);
                                                                                          _loc8_.graphics.beginFill(_loc13_,1);
                                                                                          _loc8_.graphics.drawCircle(_loc10_,15,12);
                                                                                          if(!(_loc22_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             _loc8_.graphics.endFill();
                                                                                             if(_loc23_ || Boolean(this))
                                                                                             {
                                                                                                _loc8_.graphics.beginFill(_loc13_,1);
                                                                                                _loc8_.graphics.moveTo(_loc10_,0);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr695:
                                                                                             §§push(_loc6_);
                                                                                             §§push(2);
                                                                                          }
                                                                                          _loc8_.graphics.lineTo(_loc10_,_loc11_);
                                                                                          §§goto(addr695);
                                                                                       }
                                                                                       _loc8_.graphics.clear();
                                                                                       §§goto(addr639);
                                                                                    }
                                                                                 }
                                                                                 addr716:
                                                                                 var _loc14_:Number = §§pop() - Math.PI / 2;
                                                                                 addr710:
                                                                                 addr714:
                                                                                 §§push(_loc12_);
                                                                                 if(!(_loc22_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(§§pop() * Math.cos(_loc14_));
                                                                                    if(!(_loc22_ && Boolean(_loc1_)))
                                                                                    {
                                                                                       §§push(§§pop() + _loc10_);
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 var _loc15_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(_loc23_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(§§pop() * Math.sin(_loc14_));
                                                                                    if(_loc22_ && Boolean(this))
                                                                                    {
                                                                                    }
                                                                                    addr766:
                                                                                    var _loc16_:* = §§pop();
                                                                                    _loc1_.drawArc(_loc10_,_loc11_,_loc12_,0,_loc6_,20,_loc8_);
                                                                                    _loc8_.graphics.lineTo(_loc10_,_loc11_);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       _loc8_.graphics.endFill();
                                                                                       §§push(_loc3_ <= 0);
                                                                                       if(_loc23_ || Boolean(_loc2_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§push(_loc1_.isWaitingToDump);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr813);
                                                                                       }
                                                                                       addr813:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                       }
                                                                                       return;
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    _loc1_.startPouring();
                                                                                    §§goto(addr813);
                                                                                 }
                                                                                 §§push(§§pop() + _loc11_);
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 §§goto(addr766);
                                                                              }
                                                                              §§push(§§pop() * Math.PI);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc22_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    §§goto(addr710);
                                                                                 }
                                                                                 §§goto(addr716);
                                                                              }
                                                                              §§goto(addr714);
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc23_ || Boolean(this))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc22_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr631);
                                                                                 }
                                                                                 §§goto(addr600);
                                                                              }
                                                                              §§goto(addr630);
                                                                           }
                                                                           addr597:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc23_)
                                                                              {
                                                                                 §§goto(addr600);
                                                                              }
                                                                           }
                                                                           §§goto(addr630);
                                                                        }
                                                                        §§push(_loc1_.gameObj);
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(§§pop().§_-6v§);
                                                                           if(!(_loc22_ && Boolean(_loc1_)))
                                                                           {
                                                                              §§push(§§pop().gameplayTimer);
                                                                              if(_loc23_)
                                                                              {
                                                                                 §§push(4);
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    §§push(§§pop() % §§pop());
                                                                                    §§push(0);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc23_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§goto(addr597);
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       §§goto(addr630);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr613);
                                                                              }
                                                                              §§goto(addr621);
                                                                           }
                                                                           §§goto(addr604);
                                                                        }
                                                                        §§goto(addr603);
                                                                     }
                                                                     §§goto(addr524);
                                                                     §§push(§§pop());
                                                                  }
                                                               }
                                                            }
                                                            §§push(_loc6_);
                                                            if(_loc23_ || Boolean(_loc2_))
                                                            {
                                                               §§push(§§pop() * (2 * Math.PI));
                                                               if(_loc23_)
                                                               {
                                                               }
                                                               §§goto(addr474);
                                                            }
                                                            §§goto(addr473);
                                                         }
                                                         _loc1_.lastPourHowMany = _loc1_.pourHowMany;
                                                         §§goto(addr430);
                                                      }
                                                      §§push(_loc1_.isClickingDial);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      _loc1_.pourHowMany = _loc5_;
                                                   }
                                                   _loc1_.clip.dial.num_txt.text = String(_loc1_.pourHowMany);
                                                   _loc1_.clip.dial.dial_btn.rotation = _loc3_;
                                                   §§push(_loc1_.pourHowMany);
                                                   if(_loc23_)
                                                   {
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr410);
                                                }
                                                else
                                                {
                                                   §§push(_loc3_);
                                                   §§push(180);
                                                   if(!_loc22_)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      if(!_loc22_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr305);
                                             }
                                             addr319:
                                             if(§§pop())
                                             {
                                                §§goto(addr321);
                                                §§push(0);
                                             }
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       §§push(§§pop() > §§pop());
                                       if(!(_loc22_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr319);
                                       }
                                       §§goto(addr333);
                                    }
                                    §§goto(addr343);
                                    §§push(Math.floor(_loc3_ / 360 * _loc1_.pourMax));
                                 }
                                 §§push(_loc1_.isWaitingToDump);
                                 if(_loc22_ && Boolean(_loc1_))
                                 {
                                 }
                                 §§goto(addr246);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc22_ && Boolean(_loc1_)))
                              {
                                 addr226:
                                 _loc3_ = §§pop();
                                 §§goto(addr227);
                              }
                              §§goto(addr244);
                           }
                        }
                        §§push(§§pop() - _loc1_.clip.dial.dial_btn.y);
                        if(!(_loc22_ && Boolean(_loc1_)))
                        {
                           §§push(§§pop());
                           if(_loc23_ || Boolean(this))
                           {
                              _loc20_ = §§pop();
                              §§push(Math.atan2(_loc20_,_loc19_));
                              if(_loc23_ || Boolean(_loc3_))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc23_)
                                 {
                                    §§goto(addr127);
                                 }
                              }
                           }
                           addr178:
                           §§push(360);
                           if(!(_loc22_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop() % §§pop());
                              if(!(_loc22_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr127);
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr130);
                     }
                     addr140:
                     §§push(§§pop());
                     if(_loc23_ || Boolean(this))
                     {
                        _loc3_ = §§pop();
                        addr170:
                        §§push(_loc3_);
                        if(_loc23_ || Boolean(_loc2_))
                        {
                           §§goto(addr178);
                        }
                     }
                     §§goto(addr216);
                  }
                  addr237:
                  §§goto(addr244);
                  §§push(Math.max(0,_loc3_ - 50));
               }
               _loc2_ = §§pop();
               §§goto(addr140);
               §§push(§_-Bf§.radsToDegrees(_loc2_));
            }
            else
            {
               §§push(_loc1_.isWaitingToDump);
               if(_loc22_)
               {
               }
            }
            if(§§pop())
            {
               §§goto(addr237);
            }
            §§goto(addr245);
         }
         if(§§pop())
         {
            §§push(_loc1_.clip.dial.dial_btn.rotation - 1);
            if(!(_loc22_ && Boolean(_loc3_)))
            {
               _loc3_ = §§pop();
            }
            §§goto(addr226);
         }
         §§goto(addr170);
      }
      
      private function drawArc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:MovieClip) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc13_:* = NaN;
         if(_loc14_ || Boolean(param3))
         {
            §§push(param4);
            if(!(_loc15_ && Boolean(param2)))
            {
               §§push(§§pop() - 0.25);
               if(!_loc15_)
               {
                  §§push(§§pop());
                  if(_loc15_)
                  {
                  }
                  addr50:
                  var _loc8_:* = §§pop();
                  §§push(param5);
                  if(!_loc15_)
                  {
                     §§push(§§pop() / param6);
                     if(_loc14_)
                     {
                     }
                     addr59:
                     var _loc9_:* = §§pop();
                     §§push(param1);
                     if(!_loc15_)
                     {
                        §§push(§§pop() + Math.cos(param4 * _loc8_) * param3);
                        if(_loc14_ || Boolean(param2))
                        {
                           §§push(§§pop());
                        }
                     }
                     var _loc10_:* = §§pop();
                     §§push(param2);
                     if(_loc14_)
                     {
                        §§push(§§pop() + Math.sin(param4 * _loc8_) * param3);
                        if(_loc14_)
                        {
                        }
                        §§goto(addr101);
                     }
                     addr101:
                     var _loc11_:* = §§pop();
                     if(_loc14_)
                     {
                        param7.graphics.moveTo(_loc10_,_loc11_);
                     }
                     var _loc12_:int = 1;
                     while(_loc12_ <= param6)
                     {
                        §§push(param4);
                        if(!_loc15_)
                        {
                           §§push(_loc12_ * _loc9_);
                           if(!_loc15_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc14_ || Boolean(param1))
                              {
                                 §§push(§§pop());
                                 if(_loc14_)
                                 {
                                    _loc13_ = §§pop();
                                    if(!_loc15_)
                                    {
                                       §§push(param1);
                                       if(_loc15_)
                                       {
                                       }
                                    }
                                    addr182:
                                    _loc12_++;
                                    if(_loc15_ && Boolean(param3))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§push(Math.cos(_loc13_ * _loc8_) * param3);
                                 if(_loc14_ || Boolean(param1))
                                 {
                                 }
                                 addr165:
                                 §§push(§§pop() + §§pop());
                              }
                              _loc11_ = §§pop();
                              if(_loc14_)
                              {
                                 param7.graphics.lineTo(_loc10_,_loc11_);
                                 if(_loc15_ && Boolean(param3))
                                 {
                                    continue;
                                 }
                                 §§goto(addr182);
                              }
                              break;
                           }
                           _loc10_ = §§pop() + §§pop();
                           if(!_loc15_)
                           {
                              §§push(param2);
                           }
                           break;
                        }
                        §§goto(addr165);
                        §§push(Math.sin(_loc13_ * _loc8_) * param3);
                     }
                     return;
                     §§push(§§pop());
                  }
                  §§goto(addr59);
                  §§push(§§pop());
               }
            }
            param4 = §§pop();
         }
         §§push(2 * Math.PI);
         if(!(_loc15_ && Boolean(param2)))
         {
            §§push(§§pop());
         }
         §§goto(addr50);
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MeatBin = this;
         if(_loc2_)
         {
            _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBin);
            if(_loc3_ && Boolean(_loc1_))
            {
            }
            §§goto(addr65);
         }
         _loc1_.clip.dial.dial_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDial);
         if(_loc2_ || _loc3_)
         {
            _loc1_.clip = null;
         }
         addr65:
      }
   }
}

