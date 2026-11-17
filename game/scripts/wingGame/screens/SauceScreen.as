package wingGame.screens
{
   import §_-1d§.*;
   import flash.display.MovieClip;
   import flash.events.*;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   import wingGame.models.SauceBottle;
   import wingGame.models.WingOrder;
   
   public class SauceScreen
   {
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:§_-BY§;
      
      public var bowlStartX:Number = -220;
      
      public var bowlCenterX:Number = 140;
      
      public var bowlEndX:Number = 650;
      
      public var bowlTweenSpeed:Number = 2;
      
      public var topStartY:Number = -144;
      
      public var topEndY:Number = 100;
      
      public var topTweenSpeed:Number = 40;
      
      public var lidStartY:Number = -86;
      
      public var lidEndY:Number = 164;
      
      public var lidTweenSpeed:Number = 40;
      
      public var ticketStartX:Number = -329;
      
      public var ticketCenterX:Number = 31;
      
      public var ticketEndX:Number = -99;
      
      public var ticketTweenSpeed:Number = 2;
      
      public var isSpinning:Boolean = false;
      
      public var isTumbling:Boolean = false;
      
      public var isMeterSpinning:Boolean = false;
      
      public var isMeterTumbling:Boolean = false;
      
      public var isSaucing:Boolean = false;
      
      public var isMeterSaucing:Boolean = false;
      
      public var isAddingLid:Boolean = false;
      
      public var isAddingTumbler:Boolean = false;
      
      public var hasBeenSauced:Boolean = false;
      
      public var hasFinishedPreparing:Boolean = false;
      
      public var didLoopTumble:Boolean = false;
      
      public var meterTimer:Number = 0;
      
      public var sauceMeterSpeed:Number = 5;
      
      public var sauceMeterDivisions:Number = 12;
      
      public var meatHolder:MovieClip = null;
      
      public var sauceSquirter:MovieClip = null;
      
      public var ticketMeatClip:MovieClip = null;
      
      public var bottles:Vector.<SauceBottle>;
      
      public var wingQueue:Vector.<WingOrder>;
      
      public var currentWingOrder:WingOrder = null;
      
      public var animTimer:Number = 0;
      
      public var delayBeforeAddingTumbler:Number = 10;
      
      public var delayBeforeAddingLid:Number = 15;
      
      public var delayAfterAddingLid:Number = 3;
      
      public var sauceOptions:Array;
      
      public var sauceStartX:Number = 33;
      
      public var sauceSpacing:Number = 57.1;
      
      public var sauceStartY:Number = 308;
      
      public function SauceScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.sauceOptions = [FoodData.SAUCE_PARMESAN,FoodData.SAUCE_TERIYAKI,FoodData.SAUCE_BBQ,FoodData.SAUCE_CALYPSO,FoodData.SAUCE_ATOMIC,FoodData.SAUCE_BUFFALO,FoodData.SAUCE_MEDIUM,FoodData.SAUCE_SPICYGARLIC,FoodData.SAUCE_HONEYMUSTARD,FoodData.SAUCE_WILDONION,FoodData.SAUCE_WASABI];
            if(_loc4_ || Boolean(param1))
            {
            }
            §§goto(addr57);
         }
         super();
         addr57:
         var _loc2_:SauceScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj = param1;
            if(_loc4_)
            {
            }
            §§goto(addr76);
         }
         _loc2_.setupScreen();
         addr76:
      }
      
      public function setupScreen() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:SauceBottle = null;
         var _loc1_:SauceScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc9_)
         {
            _loc1_.wingQueue = new Vector.<WingOrder>();
            _loc1_.clip = new sauceScreenMC();
            _loc1_.clip.lid.gotoAndStop(1);
            _loc1_.clip.lid.y = _loc1_.lidStartY;
            _loc1_.clip.lid.x = _loc1_.bowlCenterX;
            _loc1_.clip.top.y = _loc1_.topStartY;
            _loc1_.clip.bottom.x = _loc1_.bowlStartX;
         }
         _loc1_.clip.infoticket.x = _loc1_.ticketStartX;
         _loc1_.clip.tumbler.visible = false;
         _loc1_.clip.top.visible = true;
         _loc1_.clip.bottom.visible = true;
         _loc1_.clip.lid.visible = true;
         _loc1_.clip.sauce_meter.visible = false;
         if(!(_loc10_ && Boolean(this)))
         {
            _loc1_.clip.num_txt.visible = false;
            _loc1_.clip.spin_meter.visible = false;
            _loc1_.clip.tumble_meter_1.visible = false;
         }
         _loc1_.clip.tumble_meter_2.visible = false;
         if(_loc9_ || Boolean(_loc2_))
         {
            _loc1_.clip.spin_btn.visible = false;
         }
         _loc1_.clip.spin_btn_pulser.visible = false;
         _loc1_.clip.spin_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSpinButton);
         _loc1_.clip.sauce_meter.holder.mask = _loc1_.clip.sauce_meter.masker;
         _loc1_.bottles = new Vector.<SauceBottle>();
         var _loc4_:* = 0;
         if(!_loc10_)
         {
            _loc3_ = 0;
         }
         while(_loc3_ < _loc1_.sauceOptions.length)
         {
            if(_loc2_.hasTopping(_loc1_.sauceOptions[_loc3_]))
            {
               if(!(_loc9_ || Boolean(_loc2_)))
               {
                  break;
               }
               §§push(_loc4_);
               if(_loc9_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(_loc9_ || Boolean(this))
                     {
                     }
                  }
                  addr237:
                  var _loc5_:* = §§pop();
                  var _loc6_:* = 0;
                  if(_loc9_)
                  {
                     §§push(0);
                     if(!(_loc10_ && Boolean(this)))
                     {
                        _loc3_ = §§pop();
                        if(_loc10_)
                        {
                        }
                        while(true)
                        {
                           §§push(_loc1_.sauceStartX);
                           if(!_loc10_)
                           {
                              §§push(_loc5_);
                              if(!_loc10_)
                              {
                                 addr285:
                                 §§push(_loc6_);
                                 if(!(_loc10_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc10_)
                                    {
                                    }
                                    addr286:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc10_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 §§goto(addr286);
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr285);
                              §§push(_loc1_.sauceSpacing);
                           }
                           _loc7_ = §§pop();
                           if(!_loc10_)
                           {
                              _loc8_ = new SauceBottle(_loc1_.gameObj,_loc1_.sauceOptions[_loc3_],_loc1_.clip.topholder,_loc7_,_loc1_.sauceStartY);
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 _loc1_.bottles.push(_loc8_);
                                 addr340:
                                 if(_loc10_)
                                 {
                                 }
                                 do
                                 {
                                    _loc3_++;
                                 }
                                 while(!(_loc10_ && Boolean(_loc2_)));
                                 
                                 addr340:
                              }
                              §§push(_loc6_);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              _loc6_ = §§pop();
                              §§goto(addr340);
                           }
                           §§goto(addr360);
                        }
                        addr265:
                     }
                     while(true)
                     {
                        if(§§pop() < _loc1_.sauceOptions.length)
                        {
                           if(_loc2_.hasTopping(_loc1_.sauceOptions[_loc3_]))
                           {
                              if(_loc9_)
                              {
                                 §§goto(addr265);
                              }
                           }
                           §§goto(addr340);
                        }
                        addr360:
                        return;
                     }
                     addr356:
                  }
                  while(true)
                  {
                     §§goto(addr356);
                  }
               }
               _loc4_ = §§pop();
               if(_loc10_)
               {
                  break;
               }
            }
            _loc3_++;
            if(_loc10_ && Boolean(_loc3_))
            {
               break;
            }
         }
         §§goto(addr237);
         §§push(Math.floor((_loc1_.sauceOptions.length - _loc4_) / 2));
      }
      
      public function destroy() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:String = null;
         var _loc1_:SauceScreen = this;
         if(_loc5_)
         {
            _loc1_.clip.spin_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSpinButton);
            if(_loc5_)
            {
            }
            addr37:
            loop0:
            while(true)
            {
               §§push(_loc2_);
               while(§§pop() < _loc1_.wingQueue.length)
               {
                  _loc1_.wingQueue[_loc2_].destroy();
                  _loc1_.wingQueue[_loc2_] = null;
                  if(_loc4_)
                  {
                     _loc1_.gameObj.§_-3D§.removeChild(_loc1_.clip);
                     _loc1_.clip = null;
                     return;
                  }
                  §§push(_loc2_);
                  if(!(_loc5_ || Boolean(_loc2_)))
                  {
                     continue;
                  }
                  §§push(§§pop() + 1);
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  _loc2_ = §§pop();
                  if(!(_loc5_ || Boolean(_loc1_)))
                  {
                     break;
                  }
                  continue loop0;
               }
               _loc1_.wingQueue = null;
               §§push(_loc1_.gameObj);
               if(_loc5_ || Boolean(_loc2_))
               {
                  if(§§pop().§_-3D§.contains(_loc1_.clip))
                  {
                     §§goto(addr109);
                  }
                  §§goto(addr115);
               }
               §§goto(addr111);
            }
         }
         _loc2_ = 0;
         §§goto(addr37);
      }
      
      public function restoreSoundAfterAd() : void
      {
         var _loc1_:SauceScreen = this;
      }
      
      public function activateScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SauceScreen = this;
         if(_loc3_)
         {
            §§push(_loc1_.gameObj);
            if(!_loc2_)
            {
               if(!§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  if(!_loc2_)
                  {
                     §§push(_loc1_.gameObj);
                     if(_loc2_)
                     {
                     }
                     addr54:
                     §§pop().soundManager.switchMusic("other");
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.checkForWaitingOrder();
                        if(_loc2_ && _loc3_)
                        {
                        }
                     }
                     addr80:
                     _loc1_.isActive = true;
                  }
                  return;
               }
            }
            §§pop().§_-3D§.addChild(_loc1_.clip);
            if(_loc2_ && _loc3_)
            {
            }
            §§goto(addr80);
         }
         §§goto(addr54);
         §§push(_loc1_.gameObj);
      }
      
      public function deactivateScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SauceScreen = this;
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc1_.gameObj);
            if(!(_loc3_ && Boolean(this)))
            {
               if(§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr60);
         }
         addr60:
         §§pop().§_-3D§.removeChild(_loc1_.clip);
         if(_loc2_)
         {
            §§goto(addr66);
         }
         addr66:
         _loc1_.isActive = false;
         _loc1_.gameObj;
      }
      
      public function updateScreen() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc1_:SauceScreen = this;
         if(_loc1_.currentWingOrder != null)
         {
            §§push(!_loc1_.hasBeenSauced);
            §§push(!_loc1_.hasBeenSauced);
            if(_loc9_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(!_loc1_.isMeterSaucing);
               }
               §§push(§§pop());
               if(_loc9_ || Boolean(_loc1_))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc8_)
                     {
                        addr474:
                        §§push(_loc1_.isSaucing);
                        if(!(_loc8_ && Boolean(_loc2_)))
                        {
                           §§push(!§§pop());
                        }
                        §§push(§§pop());
                        if(_loc9_)
                        {
                           addr477:
                           if(§§pop())
                           {
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 _loc1_.clip.tumbler.gotoAndStop(66);
                                 if(!(_loc8_ && Boolean(_loc3_)))
                                 {
                                    _loc1_.startAddingLid();
                                 }
                                 else
                                 {
                                    addr638:
                                    §§push(_loc1_.bowlEndX);
                                    if(_loc9_)
                                    {
                                       addr647:
                                       §§push(§§pop() - _loc1_.clip.bottom.x);
                                       if(_loc9_ || Boolean(_loc1_))
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc8_ && Boolean(_loc3_)))
                                          {
                                             addr663:
                                             _loc1_.clip.bottom.x += _loc4_ / _loc1_.bowlTweenSpeed;
                                             _loc1_.clip.lid.x = _loc1_.clip.bottom.x;
                                             addr724:
                                             if(_loc9_)
                                             {
                                                §§push(_loc1_.ticketEndX);
                                             }
                                             if(Math.abs(_loc4_) <= 1)
                                             {
                                                addr729:
                                                _loc1_.finishCurrentOrder();
                                             }
                                          }
                                       }
                                       addr701:
                                       _loc5_ = §§pop();
                                       _loc1_.clip.infoticket.x += _loc5_ / _loc1_.ticketTweenSpeed;
                                       if(!_loc8_)
                                       {
                                          §§goto(addr724);
                                       }
                                       §§goto(addr729);
                                    }
                                    §§push(§§pop() - _loc1_.clip.infoticket.x);
                                    if(!(_loc8_ && Boolean(_loc1_)))
                                    {
                                       §§push(§§pop());
                                    }
                                    §§goto(addr701);
                                 }
                              }
                              else
                              {
                                 addr520:
                                 if(_loc1_.clip.top.y > _loc1_.topStartY)
                                 {
                                    addr527:
                                    _loc1_.clip.top.y -= _loc1_.topTweenSpeed;
                                    if(_loc9_ || Boolean(this))
                                    {
                                    }
                                    §§goto(addr663);
                                 }
                                 if(_loc1_.clip.lid.y < _loc1_.lidEndY)
                                 {
                                    addr552:
                                    §§push(_loc1_.animTimer);
                                    if(_loc9_ || Boolean(this))
                                    {
                                       addr561:
                                       §§push(_loc1_.delayBeforeAddingLid);
                                       if(_loc9_ || Boolean(_loc3_))
                                       {
                                          addr570:
                                          if(§§pop() > §§pop())
                                          {
                                             _loc1_.clip.lid.y += _loc1_.lidTweenSpeed;
                                          }
                                          if(_loc1_.clip.lid.y >= _loc1_.lidEndY)
                                          {
                                             addr589:
                                             _loc1_.clip.lid.y = _loc1_.lidEndY;
                                             _loc1_.animTimer = 0;
                                             if(_loc9_)
                                             {
                                             }
                                          }
                                       }
                                       addr634:
                                    }
                                    else
                                    {
                                       §§goto(addr647);
                                    }
                                    §§goto(addr729);
                                 }
                                 else
                                 {
                                    §§push(_loc1_.animTimer);
                                    §§push(_loc1_.delayAfterAddingLid);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    _loc1_.clip.lid.y = _loc1_.lidEndY;
                                    _loc1_.clip.top.y = _loc1_.topStartY;
                                    if(_loc9_ || Boolean(_loc2_))
                                    {
                                       addr625:
                                       _loc1_.startFinishingBowl();
                                       if(_loc9_ || Boolean(_loc3_))
                                       {
                                       }
                                    }
                                    §§goto(addr663);
                                 }
                                 §§goto(addr634);
                              }
                           }
                        }
                        else
                        {
                           addr502:
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 var _loc6_:* = _loc1_;
                                 §§push(_loc6_.animTimer);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc9_)
                                 {
                                    _loc6_.animTimer = _loc7_;
                                 }
                                 §§goto(addr520);
                              }
                              §§goto(addr589);
                           }
                           else
                           {
                              addr637:
                              if(_loc1_.hasFinishedPreparing)
                              {
                                 §§goto(addr638);
                              }
                           }
                        }
                     }
                     §§goto(addr634);
                  }
                  if(§§pop())
                  {
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        _loc2_ = _loc1_.bowlCenterX - _loc1_.clip.bottom.x;
                        if(_loc9_)
                        {
                           §§push(_loc1_.ticketCenterX - _loc1_.clip.infoticket.x);
                           if(!_loc8_)
                           {
                              _loc3_ = §§pop();
                              _loc1_.clip.bottom.x += _loc2_ / _loc1_.bowlTweenSpeed;
                              _loc1_.clip.infoticket.x += _loc3_ / _loc1_.ticketTweenSpeed;
                              if(Math.abs(_loc2_) <= 1)
                              {
                                 _loc1_.clip.bottom.x = _loc1_.bowlCenterX;
                                 if(_loc9_ || Boolean(this))
                                 {
                                    _loc1_.clip.infoticket.x = _loc1_.ticketCenterX;
                                 }
                                 else
                                 {
                                    addr465:
                                    §§push(_loc1_.didLoopTumble);
                                    if(_loc9_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr474);
                                    }
                                    §§goto(addr477);
                                 }
                              }
                           }
                           §§goto(addr561);
                        }
                     }
                     §§goto(addr625);
                  }
                  else if(_loc1_.isMeterSaucing)
                  {
                     _loc1_.updateSauceMeter();
                  }
                  else
                  {
                     §§push(_loc1_.isSaucing);
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              if(_loc1_.sauceSquirter)
                              {
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    _loc1_.sauceSquirter.drip.y += 20;
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       if(_loc1_.sauceSquirter.drip.y > 174)
                                       {
                                          _loc1_.startAddingTumbler();
                                          if(_loc8_)
                                          {
                                             addr403:
                                             _loc1_.clip.tumbler.gotoAndStop(41);
                                             if(_loc9_)
                                             {
                                                _loc1_.didLoopTumble = true;
                                             }
                                             else
                                             {
                                                §§goto(addr552);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr292:
                                       _loc1_.clip.spin_btn_pulser.gotoAndPlay("pulse");
                                    }
                                 }
                                 §§goto(addr625);
                              }
                           }
                           §§goto(addr663);
                        }
                        else if(_loc1_.isAddingTumbler)
                        {
                           if(!_loc8_)
                           {
                              _loc6_ = _loc1_;
                              §§push(_loc6_.animTimer);
                              if(_loc9_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc7_ = §§pop();
                              if(!(_loc8_ && Boolean(_loc2_)))
                              {
                                 _loc6_.animTimer = _loc7_;
                              }
                              §§push(_loc1_.animTimer);
                              if(_loc9_)
                              {
                                 §§push(_loc1_.delayBeforeAddingTumbler);
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       _loc1_.clip.top.y += _loc1_.topTweenSpeed;
                                       if(!(_loc8_ && Boolean(_loc2_)))
                                       {
                                          if(_loc1_.clip.top.y >= _loc1_.topEndY)
                                          {
                                             _loc1_.clip.top.y = _loc1_.topEndY;
                                             _loc1_.startSpinMeter();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr663);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr570);
                                 }
                              }
                              else
                              {
                                 §§goto(addr647);
                              }
                              §§goto(addr729);
                           }
                           else
                           {
                              §§goto(addr527);
                           }
                        }
                        else
                        {
                           §§push(_loc1_.isMeterSpinning);
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc1_.clip.spin_meter.currentFrame == Math.round(_loc1_.clip.spin_meter.totalFrames / 2) - 3)
                                 {
                                 }
                                 §§goto(addr292);
                              }
                              else
                              {
                                 §§push(_loc1_.isSpinning);
                                 if(!_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc9_ || Boolean(this))
                                       {
                                          _loc1_.clip.tumbler.nextFrame();
                                          if(_loc1_.clip.tumbler.currentFrame == 31)
                                          {
                                             _loc1_.clip.tumbler.gotoAndStop(31);
                                             if(_loc9_ || Boolean(this))
                                             {
                                                _loc1_.startTumbleMeter();
                                                if(_loc8_)
                                                {
                                                   §§goto(addr527);
                                                }
                                             }
                                             §§goto(addr663);
                                          }
                                       }
                                       else
                                       {
                                          addr446:
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc1_.isMeterTumbling);
                                       if(!_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc1_.clip.tumble_meter_1.currentFrame == Math.round(_loc1_.clip.tumble_meter_1.totalFrames / 2) - 3)
                                             {
                                                _loc1_.clip.spin_btn_pulser.gotoAndPlay("pulse");
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc1_.isTumbling);
                                          }
                                       }
                                       addr395:
                                       if(§§pop())
                                       {
                                          if(!(_loc8_ && Boolean(this)))
                                          {
                                             §§goto(addr403);
                                          }
                                          §§goto(addr729);
                                       }
                                       else
                                       {
                                          §§push(_loc1_.clip.tumbler.currentFrame == 50);
                                       }
                                    }
                                 }
                                 addr457:
                                 §§pop();
                                 if(!(_loc8_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr465);
                                 }
                                 §§goto(addr527);
                              }
                           }
                           §§push(§§pop());
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc1_.didLoopTumble);
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop());
                                 }
                                 §§goto(addr637);
                              }
                              if(§§pop())
                              {
                                 _loc1_.clip.tumbler.gotoAndStop(59);
                                 §§goto(addr446);
                              }
                              else
                              {
                                 §§push(_loc1_.clip.tumbler.currentFrame == 66);
                                 §§push(_loc1_.clip.tumbler.currentFrame == 66);
                              }
                           }
                        }
                        §§goto(addr477);
                     }
                     if(§§pop())
                     {
                        _loc1_.clip.tumbler.nextFrame();
                        §§push(_loc1_.clip.tumbler.currentFrame >= 58);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc1_.didLoopTumble);
                                 if(_loc9_)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                              §§goto(addr395);
                           }
                        }
                        §§goto(addr474);
                     }
                     else
                     {
                        §§push(_loc1_.isAddingLid);
                     }
                  }
                  §§goto(addr502);
               }
            }
            if(§§pop())
            {
               if(!_loc8_)
               {
                  §§goto(addr457);
               }
               §§goto(addr502);
            }
            §§goto(addr477);
         }
      }
      
      public function finishCurrentOrder() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SauceScreen = this;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(_loc1_.gameObj);
            if(_loc2_ || _loc3_)
            {
               addr65:
               §§push(§§pop().§_-7q§);
               if(!(_loc3_ && _loc2_))
               {
                  §§pop().addToWingQueue(_loc1_.currentWingOrder);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.currentWingOrder.createBowl();
                     if(_loc2_)
                     {
                     }
                  }
                  §§push(_loc1_.gameObj);
               }
               §§pop().checkForBowlGaps();
               if(!_loc3_)
               {
                  _loc1_.currentWingOrder = null;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.checkForWaitingOrder();
                  }
               }
            }
            §§goto(addr65);
            §§push(§§pop().§_-7q§);
         }
      }
      
      public function checkForWaitingOrder() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SauceScreen = this;
         if(!_loc2_)
         {
            §§push(_loc1_.currentWingOrder == null);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     §§goto(addr73);
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.currentWingOrder = _loc1_.wingQueue.shift();
                  if(_loc2_)
                  {
                  }
               }
            }
            §§goto(addr73);
         }
         _loc1_.createOrder();
         addr73:
         if(_loc3_)
         {
            §§push(_loc1_.wingQueue.length > 0);
         }
      }
      
      public function createOrder() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:SauceScreen = this;
         _loc1_.clip.lid.gotoAndStop(1);
         _loc1_.clip.lid.y = _loc1_.lidStartY;
         _loc1_.clip.lid.x = _loc1_.bowlCenterX;
         if(!(_loc7_ && _loc2_))
         {
            _loc1_.clip.top.y = _loc1_.topStartY;
            if(!(_loc7_ && _loc3_))
            {
               _loc1_.clip.bottom.x = _loc1_.bowlStartX;
               _loc1_.clip.infoticket.x = _loc1_.ticketStartX;
               if(_loc6_)
               {
                  _loc1_.clip.tumbler.gotoAndStop(1);
                  _loc1_.clip.tumbler.visible = false;
                  _loc1_.clip.top.visible = true;
                  _loc1_.clip.bottom.visible = true;
                  _loc1_.clip.lid.visible = true;
                  _loc1_.clip.sauce_meter.visible = false;
                  _loc1_.clip.num_txt.visible = false;
                  _loc1_.clip.spin_meter.visible = false;
                  if(_loc6_ || _loc3_)
                  {
                     _loc1_.clip.tumble_meter_1.visible = false;
                     _loc1_.clip.tumble_meter_2.visible = false;
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc1_.clip.spin_btn.visible = false;
                        _loc1_.clip.spin_btn_pulser.visible = false;
                     }
                     addr219:
                     _loc1_.meatHolder = new saucebowl_meatcontainer_wing();
                     if(_loc7_ && _loc3_)
                     {
                        addr311:
                        _loc1_.meatHolder = new saucebowl_meatcontainer_strips();
                        _loc1_.ticketMeatClip = new meat_strips();
                     }
                     addr326:
                     _loc1_.clip.bottom.meatholder.addChild(_loc1_.meatHolder);
                     if(_loc6_)
                     {
                        addr335:
                        _loc1_.clip.infoticket.addChild(_loc1_.ticketMeatClip);
                     }
                     var _loc2_:Number = 9;
                     §§push(_loc1_.currentWingOrder.cookAmount);
                     if(!_loc7_)
                     {
                        §§push(§§pop() / FoodData.getMaxCookTime(_loc1_.currentWingOrder.meatType));
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           §§push(§§pop());
                        }
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Number = Math.min(_loc2_,Math.floor(_loc3_ * (_loc2_ - 1)) + 1);
                     var _loc5_:int = 1;
                     loop0:
                     while(true)
                     {
                        §§push(_loc5_);
                        while(true)
                        {
                           §§push(3);
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    _loc1_.ticketMeatClip.sauce.stop();
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       _loc1_.ticketMeatClip.sauce.visible = false;
                                       break;
                                    }
                                 }
                                 addr603:
                                 _loc1_.ticketMeatClip.x = 30;
                                 addr607:
                                 _loc1_.ticketMeatClip.y = 64;
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    _loc1_.clip.infoticket.num_txt.text = String(_loc1_.currentWingOrder.meatAmount);
                                    if(_loc7_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 §§goto(addr647);
                              }
                              §§goto(addr642);
                           }
                           _loc1_.ticketMeatClip.meat.gotoAndStop(_loc4_);
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              _loc1_.ticketMeatClip.scaleX = 0.35;
                              if(_loc6_ || Boolean(this))
                              {
                                 _loc1_.ticketMeatClip.scaleY = 0.35;
                                 if(_loc6_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr603);
                                 }
                              }
                           }
                           addr642:
                           _loc1_.meatHolder["meat" + _loc5_].sauce.stop();
                           _loc1_.meatHolder["meat" + _loc5_].sauce.visible = false;
                           if(_loc6_)
                           {
                              _loc1_.meatHolder["meat" + _loc5_].meat.gotoAndStop(_loc4_);
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 continue;
                              }
                              §§push(1);
                              if(_loc7_ && Boolean(_loc1_))
                              {
                                 continue loop2;
                              }
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 addr504:
                                 §§push(2);
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc6_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                §§pop();
                                             }
                                          }
                                          addr486:
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                _loc1_.meatHolder["meat" + _loc5_].visible = true;
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc5_);
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       addr513:
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             addr516:
                                             §§pop();
                                             §§push(_loc1_.currentWingOrder.meatAmount > 6);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          _loc1_.meatHolder["meat" + _loc5_].visible = true;
                                          if(_loc7_ && Boolean(this))
                                          {
                                             break loop2;
                                          }
                                       }
                                       else
                                       {
                                          _loc1_.meatHolder["meat" + _loc5_].visible = false;
                                       }
                                       continue loop0;
                                    }
                                    addr512:
                                    §§goto(addr513);
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    §§goto(addr512);
                                 }
                                 §§goto(addr516);
                              }
                              §§push(3);
                              if(_loc7_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr504);
                           }
                           §§push(_loc1_.currentWingOrder);
                           if(_loc6_)
                           {
                              §§push(§§pop().meatAmount);
                              if(!_loc7_)
                              {
                                 §§push(3);
                                 if(!(_loc7_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() > §§pop());
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§goto(addr486);
                                    }
                                 }
                              }
                           }
                           §§goto(addr516);
                           _loc1_.gameObj.soundManager.playSound("trayslide.wav");
                           addr647:
                           return;
                        }
                        if(!_loc7_)
                        {
                           _loc1_.meatHolder["meat" + _loc5_].visible = true;
                           continue;
                        }
                        §§goto(addr607);
                        _loc5_++;
                     }
                  }
                  _loc1_.ticketMeatClip = new meat_wing();
                  §§goto(addr326);
               }
               _loc1_.hasBeenSauced = false;
               _loc1_.hasFinishedPreparing = false;
               if(_loc6_ || Boolean(_loc2_))
               {
                  _loc1_.didLoopTumble = false;
                  if(_loc1_.meatHolder != null)
                  {
                     _loc1_.clip.bottom.meatholder.removeChild(_loc1_.meatHolder);
                     if(_loc6_)
                     {
                        _loc1_.meatHolder = null;
                        if(_loc7_)
                        {
                        }
                        addr294:
                        _loc1_.meatHolder = new saucebowl_meatcontainer_shrimp();
                        if(_loc6_)
                        {
                           _loc1_.ticketMeatClip = new meat_shrimp();
                        }
                     }
                     §§goto(addr326);
                  }
                  if(_loc1_.ticketMeatClip != null)
                  {
                     _loc1_.clip.infoticket.removeChild(_loc1_.ticketMeatClip);
                     if(_loc6_)
                     {
                     }
                  }
                  addr192:
                  §§push(_loc1_.currentWingOrder);
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     §§push(§§pop().meatType);
                     if(_loc6_ || Boolean(this))
                     {
                        §§push(FoodData.MEAT_WING);
                        if(_loc6_ || _loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr219);
                           }
                           else
                           {
                              §§push(_loc1_.currentWingOrder);
                              if(_loc7_)
                              {
                              }
                              addr274:
                              §§push(§§pop().meatType);
                              if(_loc6_ || Boolean(_loc1_))
                              {
                              }
                              if(§§pop() == FoodData.MEAT_STRIPS)
                              {
                                 §§goto(addr311);
                              }
                           }
                           §§goto(addr219);
                        }
                        addr251:
                        if(§§pop() == §§pop())
                        {
                           if(!_loc7_)
                           {
                              _loc1_.meatHolder = new saucebowl_meatcontainer_boneless();
                              if(_loc6_ || _loc3_)
                              {
                              }
                              §§goto(addr335);
                           }
                        }
                        else
                        {
                           §§push(_loc1_.currentWingOrder);
                           if(!_loc7_)
                           {
                              §§goto(addr274);
                           }
                           addr307:
                           §§goto(addr274);
                           §§push(§§pop().meatType);
                        }
                        §§goto(addr219);
                     }
                     addr282:
                     §§push(FoodData.MEAT_SHRIMP);
                     if(!_loc7_)
                     {
                        addr286:
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              §§goto(addr294);
                           }
                           else
                           {
                              §§goto(addr311);
                           }
                        }
                        else
                        {
                           §§goto(addr307);
                           §§push(_loc1_.currentWingOrder);
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr274);
                  }
                  §§push(§§pop().meatType);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(FoodData.MEAT_BONELESS);
                     if(_loc6_)
                     {
                        §§goto(addr251);
                     }
                     §§goto(addr286);
                  }
                  §§goto(addr282);
               }
               _loc1_.ticketMeatClip = new meat_boneless();
            }
            addr269:
            §§goto(addr219);
         }
         _loc1_.ticketMeatClip = null;
         if(_loc6_)
         {
            §§goto(addr192);
         }
         §§goto(addr269);
      }
      
      public function startSauceMeter() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SauceScreen = this;
         _loc1_.isMeterSaucing = true;
         _loc1_.meterTimer = 15;
         if(_loc3_)
         {
            _loc1_.clip.sauce_meter.visible = true;
            if(_loc3_ || _loc2_)
            {
               _loc1_.clip.num_txt.visible = true;
               if(!_loc2_)
               {
                  _loc1_.clip.num_txt.text = "1";
                  if(_loc3_)
                  {
                     _loc1_.clip.sauce_meter.holder.graphics.clear();
                  }
                  addr113:
                  _loc1_.gameObj.§_-8o§();
                  addr114:
                  return;
                  addr111:
               }
            }
            §§push(_loc1_.gameObj);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop().§_-3f§);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           if(_loc3_)
                           {
                           }
                           §§goto(addr114);
                        }
                     }
                  }
               }
               addr110:
               if(§§pop())
               {
                  §§goto(addr111);
               }
               §§goto(addr114);
            }
            addr107:
            §§goto(addr110);
            §§push(§§pop().§_-DZ§ == 16);
         }
         §§push(_loc1_.gameObj);
         if(_loc3_ || Boolean(this))
         {
            §§goto(addr107);
         }
         §§goto(addr113);
      }
      
      public function stopSauceMeter() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SauceScreen = this;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.isMeterSaucing = false;
            if(_loc3_ || _loc3_)
            {
            }
            §§goto(addr65);
         }
         _loc1_.meterTimer = 0;
         if(_loc3_)
         {
            _loc1_.clip.sauce_meter.visible = false;
            if(_loc3_)
            {
               _loc1_.clip.num_txt.visible = false;
            }
         }
         addr65:
      }
      
      public function startSpinMeter() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SauceScreen = this;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.isSaucing = false;
            _loc1_.isAddingTumbler = false;
            _loc1_.isMeterSpinning = true;
            if(_loc2_)
            {
               _loc1_.meterTimer = 0;
               if(_loc2_)
               {
                  _loc1_.clip.spin_meter.gotoAndPlay(1);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.clip.spin_btn.visible = true;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.clip.spin_btn_pulser.visible = true;
                        _loc1_.clip.spin_meter.visible = true;
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.clip.bottom.visible = false;
                        }
                        addr113:
                        _loc1_.gameObj.soundManager.playSound("fryer_return.wav");
                        §§goto(addr118);
                     }
                  }
               }
            }
         }
         _loc1_.clip.top.visible = false;
         if(_loc2_)
         {
            _loc1_.clip.tumbler.visible = true;
            if(_loc3_)
            {
            }
            addr118:
            return;
         }
         §§goto(addr113);
      }
      
      public function startTumbleMeter() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SauceScreen = this;
         _loc1_.isSpinning = false;
         _loc1_.isMeterTumbling = true;
         _loc1_.meterTimer = 0;
         _loc1_.clip.spin_btn.visible = true;
         _loc1_.clip.spin_btn_pulser.visible = true;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.clip.tumble_meter_1.visible = true;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.clip.tumble_meter_2.visible = true;
               if(_loc2_)
               {
               }
            }
            §§goto(addr114);
         }
         _loc1_.clip.tumble_meter_1.gotoAndPlay(1);
         _loc1_.clip.tumble_meter_2.gotoAndPlay(2);
         §§push(_loc1_.gameObj);
         if(_loc3_ || Boolean(this))
         {
            §§push(§§pop().§_-3f§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ && Boolean(this))
                     {
                     }
                  }
               }
               §§pop();
               addr114:
               §§push(_loc1_.gameObj);
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr144);
               }
               §§pop().§_-8o§();
               §§goto(addr144);
            }
            addr144:
            if(§§pop().§_-DZ§ == 19)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(_loc1_.gameObj);
               }
            }
            return;
         }
         §§goto(addr114);
      }
      
      public function startAddingLid() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:SauceScreen = this;
         if(_loc6_ || Boolean(_loc1_))
         {
            _loc1_.animTimer = 0;
            if(_loc6_)
            {
               _loc1_.isTumbling = false;
            }
            §§goto(addr39);
         }
         _loc1_.isAddingLid = true;
         _loc1_.clip.spin_btn.visible = false;
         addr39:
         _loc1_.clip.spin_btn_pulser.visible = false;
         if(!(_loc7_ && _loc3_))
         {
            _loc1_.clip.tumble_meter_1.visible = false;
            if(!_loc7_)
            {
               _loc1_.clip.tumble_meter_2.visible = false;
            }
            _loc1_.clip.spin_meter.visible = false;
            if(_loc6_)
            {
            }
            _loc1_.clip.lid.gotoAndStop(FoodData.getSauceFrame(_loc1_.currentWingOrder.sauceType));
            §§goto(addr95);
         }
         _loc1_.clip.sauce_meter.visible = false;
         _loc1_.clip.num_txt.visible = false;
         _loc1_.clip.tumbler.visible = false;
         _loc1_.clip.top.visible = true;
         _loc1_.clip.bottom.visible = true;
         addr95:
         §§push(_loc1_.currentWingOrder.getSauceQualityFrame());
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = 5;
         §§push(FoodData.getSauceFrame(_loc1_.currentWingOrder.sauceType));
         if(_loc6_ || Boolean(_loc3_))
         {
            §§push(§§pop() - 1);
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc3_);
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc6_)
               {
                  §§push(§§pop());
               }
            }
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 1;
         while(_loc5_ <= 3)
         {
            _loc1_.meatHolder["meat" + _loc5_].sauce.gotoAndStop(_loc4_);
            if(!(_loc7_ && _loc2_))
            {
               _loc1_.meatHolder["meat" + _loc5_].sauce.visible = true;
               if(!(_loc6_ || _loc2_))
               {
                  break;
               }
            }
            _loc5_++;
            if(!_loc6_)
            {
               break;
            }
         }
      }
      
      public function squirtSauce(param1:String, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:SauceScreen = this;
         §§push(_loc4_.meterTimer);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_.currentWingOrder);
         if(_loc6_)
         {
            §§pop().sauceType = param1;
            §§goto(addr208);
         }
         §§pop().sauceAmountValue = _loc5_;
         if(_loc4_.sauceSquirter != null)
         {
            _loc4_.clip.bottom.meatholder.removeChild(_loc4_.sauceSquirter);
            _loc4_.sauceSquirter = null;
         }
         _loc4_.sauceSquirter = new sauce_squirtclip();
         _loc4_.clip.bottom.meatholder.addChild(_loc4_.sauceSquirter);
         _loc4_.sauceSquirter.drip.mask = _loc4_.sauceSquirter.masker;
         if(!(_loc7_ && Boolean(param1)))
         {
            _loc4_.sauceSquirter.drip.gotoAndStop(FoodData.getSauceFrame(param1));
            _loc4_.sauceSquirter.drip.x = param2 - _loc4_.clip.bottom.x;
            _loc4_.sauceSquirter.drip.y = param3 - _loc4_.clip.bottom.y;
            _loc4_.isMeterSaucing = false;
            _loc4_.isSaucing = true;
            if(!(_loc7_ && Boolean(param1)))
            {
               _loc4_.clip.sauce_meter.visible = false;
               if(_loc7_ && Boolean(param3))
               {
               }
               §§goto(addr169);
            }
            §§goto(addr205);
            §§push(_loc4_.gameObj);
         }
         _loc4_.clip.num_txt.visible = false;
         if(_loc6_)
         {
            §§push(_loc4_.gameObj);
            if(_loc6_)
            {
               §§push(§§pop().§_-3f§);
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§push(§§pop());
                  if(_loc7_)
                  {
                  }
                  §§goto(addr181);
               }
               if(§§pop())
               {
                  if(_loc6_ || Boolean(this))
                  {
                     §§pop();
                     §§goto(addr169);
                  }
               }
               §§goto(addr181);
            }
            addr169:
            §§push(_loc4_.gameObj);
            if(!(_loc7_ && Boolean(this)))
            {
               addr181:
               if(§§pop().§_-DZ§ == 17)
               {
                  if(_loc6_)
                  {
                     §§push(_loc4_.gameObj);
                     if(_loc6_)
                     {
                     }
                     addr205:
                     §§pop().soundManager.playSound("sauce_squirting.wav");
                  }
                  §§goto(addr208);
               }
            }
            §§pop().§_-8o§();
            if(_loc7_ && Boolean(param1))
            {
            }
            §§goto(addr208);
         }
         addr208:
         if(!(_loc7_ && Boolean(param1)))
         {
            §§push(_loc4_.currentWingOrder);
         }
      }
      
      public function startAddingTumbler() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SauceScreen = this;
         _loc1_.animTimer = 0;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.isSaucing = false;
         }
         _loc1_.hasBeenSauced = true;
         _loc1_.isAddingTumbler = true;
         _loc1_.clip.bottom.x = _loc1_.bowlCenterX;
         _loc1_.clip.infoticket.x = _loc1_.ticketCenterX;
      }
      
      public function startFinishingBowl() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SauceScreen = this;
         if(_loc1_.meatHolder != null)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.clip.bottom.meatholder.removeChild(_loc1_.meatHolder);
               _loc1_.meatHolder = null;
               if(_loc3_ && Boolean(this))
               {
               }
               §§goto(addr118);
            }
            addr47:
            _loc1_.hasFinishedPreparing = true;
            if(!_loc3_)
            {
               §§goto(addr117);
            }
            §§push(_loc1_.gameObj);
            if(!_loc3_)
            {
               §§push(§§pop().§_-3f§);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§push(_loc1_.gameObj);
                              if(_loc3_)
                              {
                              }
                              addr117:
                              §§push(_loc1_.gameObj);
                              if(!_loc3_)
                              {
                                 §§pop().soundManager.playSound("trayslide.wav");
                                 if(_loc3_ && _loc2_)
                                 {
                                 }
                                 addr115:
                                 §§push(_loc1_.gameObj);
                              }
                              §§pop().§_-8o§();
                              §§goto(addr118);
                           }
                           §§goto(addr115);
                        }
                     }
                  }
               }
               §§goto(addr114);
            }
            addr114:
            if(§§pop())
            {
               §§goto(addr115);
            }
            addr118:
            return;
            §§push(§§pop().§_-DZ§ == 21);
         }
         _loc1_.isAddingLid = false;
         §§goto(addr47);
      }
      
      public function clickSpinButton(param1:MouseEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:SauceScreen = this;
         §§push(_loc2_.isMeterSpinning);
         if(_loc10_ || Boolean(this))
         {
            if(§§pop())
            {
               if(_loc10_)
               {
                  _loc2_.isMeterSpinning = false;
                  if(_loc10_)
                  {
                     _loc2_.isSpinning = true;
                     _loc2_.clip.tumbler.gotoAndStop(1);
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        _loc2_.clip.spin_meter.visible = false;
                        if(_loc10_ || Boolean(_loc3_))
                        {
                           _loc2_.clip.spin_meter.stop();
                           addr215:
                           §§push(Number(_loc2_.clip.spin_meter.totalFrames));
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              _loc3_ = §§pop();
                              §§push(Number(_loc2_.clip.spin_meter.currentFrame));
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop());
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    _loc4_ = §§pop();
                                    §§push(_loc3_);
                                    §§push(2);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc9_ && Boolean(this))
                                       {
                                       }
                                       addr155:
                                       §§push(§§pop() / §§pop());
                                       if(_loc9_ && Boolean(this))
                                       {
                                       }
                                       §§goto(addr371);
                                    }
                                    addr341:
                                    §§push(§§pop() / §§pop());
                                    if(!_loc9_)
                                    {
                                       addr344:
                                       if(§§pop() > §§pop())
                                       {
                                       }
                                       addr359:
                                       §§push(_loc7_);
                                       §§push(_loc6_);
                                       if(_loc9_)
                                       {
                                       }
                                       addr365:
                                       §§push(§§pop() / §§pop());
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop());
                                          if(_loc9_)
                                          {
                                          }
                                          §§goto(addr371);
                                       }
                                       if(§§pop() == 20)
                                       {
                                          if(_loc10_)
                                          {
                                             _loc2_.gameObj.§_-8o§();
                                          }
                                          §§goto(addr371);
                                       }
                                    }
                                    §§goto(addr365);
                                    §§push(§§pop() / 2);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    §§push(Math.abs(_loc4_ - _loc3_));
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc9_)
                                       {
                                       }
                                    }
                                    addr164:
                                    _loc5_ = §§pop();
                                 }
                              }
                              §§goto(addr164);
                              §§push(§§pop());
                           }
                           §§push(18);
                           if(_loc10_ || Boolean(this))
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc10_)
                              {
                                 addr233:
                                 if(§§pop())
                                 {
                                    _loc2_.gameObj.§_-8o§();
                                 }
                                 §§push(_loc2_.gameObj);
                                 if(!_loc9_)
                                 {
                                    addr241:
                                    §§push(§§pop().soundManager);
                                    if(_loc10_ || Boolean(_loc2_))
                                    {
                                       §§push("buttonclick.wav");
                                       if(!(_loc9_ && Boolean(_loc2_)))
                                       {
                                          §§pop().playSound(§§pop());
                                          if(!_loc9_)
                                          {
                                             §§push(_loc2_.gameObj.soundManager);
                                             if(_loc10_)
                                             {
                                                §§pop().playSound("sauce_tumble.wav");
                                             }
                                          }
                                          else
                                          {
                                             addr323:
                                             _loc7_ = Number(_loc2_.clip.tumble_meter_1.currentFrame);
                                             §§push(_loc7_);
                                             if(_loc10_ || Boolean(param1))
                                             {
                                                §§push(_loc6_);
                                                §§push(2);
                                                if(_loc10_)
                                                {
                                                }
                                                §§goto(addr341);
                                             }
                                             §§goto(addr365);
                                          }
                                          addr432:
                                          §§pop().playSound("sauce_tumble2.wav");
                                       }
                                       §§goto(addr426);
                                    }
                                    addr425:
                                    addr426:
                                    §§pop().playSound(§§pop());
                                    if(_loc10_)
                                    {
                                       addr431:
                                       §§goto(addr432);
                                       §§push(_loc2_.gameObj.soundManager);
                                    }
                                    addr371:
                                    _loc8_ = §§pop();
                                    _loc8_ = Math.min(1,_loc8_ + 0.09);
                                    if(_loc10_)
                                    {
                                       addr385:
                                       _loc2_.currentWingOrder.sauceTumbleValue = _loc8_;
                                       §§push(_loc2_.gameObj.§_-3f§);
                                       addr382:
                                       addr384:
                                    }
                                    _loc2_.clip.spin_btn_pulser.visible = false;
                                    return;
                                    §§push("buttonclick.wav");
                                 }
                                 §§push(§§pop().soundManager);
                                 if(_loc10_)
                                 {
                                    §§goto(addr425);
                                 }
                                 §§goto(addr432);
                              }
                              addr399:
                              §§pop();
                              §§push(_loc2_.gameObj);
                              if(_loc10_ || Boolean(this))
                              {
                                 addr409:
                                 §§goto(addr365);
                                 §§push(§§pop().§_-DZ§);
                              }
                              §§goto(addr431);
                           }
                           §§goto(addr365);
                        }
                        §§push(_loc4_);
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           §§push(_loc3_);
                           if(!_loc9_)
                           {
                              §§push(2);
                              if(_loc10_)
                              {
                                 §§goto(addr155);
                                 §§push(§§pop() / §§pop());
                              }
                              §§goto(addr341);
                           }
                           §§goto(addr344);
                        }
                        else
                        {
                           addr320:
                           _loc6_ = §§pop();
                           if(_loc10_)
                           {
                              §§goto(addr323);
                           }
                        }
                     }
                     _loc5_ = Math.min(1,_loc5_ + 0.05);
                     if(!_loc9_)
                     {
                        §§push(_loc2_.currentWingOrder);
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           §§push(_loc5_);
                           if(!_loc9_)
                           {
                              §§pop().sauceSpinValue = §§pop();
                              if(!_loc9_)
                              {
                                 §§push(_loc2_.gameObj);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop().§_-3f§);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop());
                                       §§push(§§pop());
                                       if(_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(_loc2_.gameObj);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop().§_-DZ§);
                                                if(_loc10_ || Boolean(_loc3_))
                                                {
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr241);
                                          }
                                       }
                                       addr391:
                                       if(§§pop())
                                       {
                                          if(_loc10_ || Boolean(param1))
                                          {
                                             §§goto(addr399);
                                          }
                                       }
                                       §§goto(addr344);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr409);
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr385);
                        }
                        §§goto(addr384);
                     }
                     §§goto(addr385);
                  }
                  addr345:
                  _loc7_ = Math.abs(_loc7_ - _loc6_);
                  if(_loc10_ || Boolean(param1))
                  {
                     §§goto(addr359);
                  }
                  §§goto(addr155);
               }
               §§push(_loc2_.gameObj);
               if(!_loc9_)
               {
                  §§goto(addr233);
               }
               §§goto(addr431);
            }
            else if(_loc2_.isMeterTumbling)
            {
               _loc2_.isMeterTumbling = false;
               _loc2_.isTumbling = true;
               if(!_loc9_)
               {
                  _loc2_.clip.tumbler.gotoAndStop(32);
                  _loc2_.clip.tumble_meter_1.visible = false;
                  if(_loc10_ || Boolean(_loc2_))
                  {
                     _loc2_.clip.tumble_meter_2.visible = false;
                     _loc2_.clip.tumble_meter_1.stop();
                     if(_loc10_)
                     {
                        _loc2_.clip.tumble_meter_2.stop();
                        if(_loc10_)
                        {
                           §§push(Number(_loc2_.clip.tumble_meter_1.totalFrames));
                           if(!_loc9_)
                           {
                              §§goto(addr320);
                           }
                           §§goto(addr155);
                        }
                     }
                     §§goto(addr431);
                  }
                  §§goto(addr345);
               }
               §§goto(addr399);
            }
            _loc2_.clip.spin_btn.visible = false;
            §§goto(addr155);
         }
         §§goto(addr391);
         §§push(§§pop());
      }
      
      public function updateSauceMeter() : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:SauceScreen = this;
         if(!_loc14_)
         {
            §§push(_loc1_);
            §§push(_loc1_.meterTimer);
            if(!_loc14_)
            {
               §§push(§§pop() + _loc1_.sauceMeterSpeed);
            }
            §§pop().meterTimer = §§pop();
            if(!(_loc14_ && _loc2_))
            {
               §§push(_loc1_.meterTimer);
               if(_loc15_ || Boolean(this))
               {
                  if(§§pop() > 360)
                  {
                     if(_loc15_ || _loc3_)
                     {
                     }
                  }
                  addr66:
                  §§push(FoodData.getSauceNumberAmount(_loc1_.meterTimer));
                  if(!(_loc14_ && Boolean(this)))
                  {
                     §§push(§§pop());
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc15_)
               {
                  _loc1_.clip.num_txt.text = String(_loc2_);
               }
               var _loc3_:MovieClip = _loc1_.clip.sauce_meter.holder;
               var _loc4_:Number = 260;
               §§push(0);
               §§push(_loc4_);
               if(!_loc14_)
               {
                  §§push(§§pop() / 2);
               }
               §§push(§§pop() + §§pop());
               if(_loc15_ || _loc2_)
               {
                  §§push(§§pop());
               }
               var _loc5_:* = §§pop();
               §§push(0);
               §§push(_loc4_);
               if(!(_loc14_ && Boolean(_loc3_)))
               {
                  §§push(§§pop() / 2);
               }
               §§push(§§pop() + §§pop());
               if(_loc15_ || Boolean(_loc1_))
               {
                  §§push(§§pop());
               }
               var _loc6_:* = §§pop();
               var _loc7_:* = 20;
               var _loc8_:Number = Math.min(90,Math.abs(_loc1_.meterTimer - 180));
               §§push(90 - _loc8_);
               if(_loc15_ || Boolean(_loc3_))
               {
                  §§push(90);
                  if(!_loc14_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc14_ && _loc2_))
                     {
                        §§push(30);
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc15_)
                  {
                  }
                  §§goto(addr181);
               }
               addr181:
               var _loc9_:* = §§pop();
               if(!_loc14_)
               {
                  §§push(_loc7_);
                  if(!_loc14_)
                  {
                     §§goto(addr234);
                  }
                  _loc7_ = §§pop();
                  if(_loc14_)
                  {
                  }
                  §§goto(addr207);
               }
               _loc3_.graphics.clear();
               if(_loc15_)
               {
                  §§goto(addr207);
               }
               addr207:
               _loc3_.graphics.lineStyle(_loc7_,8912712,1);
               if(!(_loc14_ && _loc2_))
               {
                  _loc3_.graphics.moveTo(_loc5_,_loc6_);
               }
               §§push(_loc4_);
               if(!(_loc14_ && Boolean(_loc3_)))
               {
                  §§goto(addr233);
               }
               addr234:
               §§push(§§pop() + _loc9_);
               if(!_loc14_)
               {
                  §§push(§§pop());
                  if(_loc15_ || _loc2_)
                  {
                  }
                  addr233:
                  §§push(§§pop());
               }
               var _loc10_:* = §§pop();
               §§push(_loc1_.meterTimer);
               if(_loc15_ || Boolean(_loc1_))
               {
                  §§push(360);
                  if(_loc15_)
                  {
                     addr266:
                     §§push(§§pop() / §§pop());
                     if(!_loc14_)
                     {
                        §§push(2);
                     }
                     §§push(§§pop());
                  }
                  §§push(§§pop() * Math.PI);
                  if(_loc15_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc14_)
                     {
                        §§push(Math.PI / 2);
                     }
                     §§goto(addr266);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc14_)
                  {
                     §§goto(addr266);
                  }
               }
               var _loc11_:* = §§pop();
               §§push(_loc10_);
               if(!(_loc14_ && Boolean(_loc1_)))
               {
                  §§push(§§pop() * Math.cos(_loc11_));
                  if(!(_loc14_ && Boolean(_loc1_)))
                  {
                     §§push(§§pop() + _loc5_);
                     if(_loc14_)
                     {
                     }
                  }
                  §§push(§§pop());
               }
               var _loc12_:* = §§pop();
               §§push(_loc10_);
               if(_loc15_)
               {
                  §§push(§§pop() * Math.sin(_loc11_));
                  if(_loc15_)
                  {
                     §§push(§§pop() + _loc6_);
                     if(_loc15_)
                     {
                        §§push(§§pop());
                     }
                  }
               }
               var _loc13_:* = §§pop();
               if(_loc15_)
               {
                  _loc3_.graphics.lineTo(_loc12_,_loc13_);
               }
               return;
               §§push(§§pop());
            }
         }
         §§push(_loc1_);
         §§push(_loc1_.meterTimer);
         if(!(_loc14_ && Boolean(_loc1_)))
         {
            §§push(§§pop() - 360);
         }
         §§pop().meterTimer = §§pop();
         §§goto(addr66);
      }
      
      private function drawArc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:MovieClip) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc13_:* = NaN;
         if(!_loc14_)
         {
            §§push(param4);
            if(_loc15_)
            {
               §§push(§§pop() - 0.25);
               if(_loc15_ || Boolean(param3))
               {
                  §§push(§§pop());
                  if(_loc15_ || Boolean(this))
                  {
                  }
               }
               param4 = §§pop();
            }
            addr51:
            var _loc8_:* = §§pop();
            §§push(param5);
            if(!_loc14_)
            {
               §§push(§§pop() / param6);
               if(_loc15_ || Boolean(this))
               {
               }
               addr65:
               var _loc9_:* = §§pop();
               §§push(param1);
               if(_loc15_)
               {
                  §§push(§§pop() + Math.cos(param4 * _loc8_) * param3);
                  if(_loc14_)
                  {
                  }
                  addr80:
                  var _loc10_:* = §§pop();
                  §§push(param2);
                  if(_loc15_ || Boolean(this))
                  {
                     §§push(§§pop() + Math.sin(param4 * _loc8_) * param3);
                     if(_loc14_ && Boolean(param3))
                     {
                     }
                     §§goto(addr105);
                  }
                  addr105:
                  var _loc11_:* = §§pop();
                  if(_loc15_ || Boolean(param1))
                  {
                     param7.graphics.moveTo(_loc10_,_loc11_);
                  }
                  var _loc12_:int = 1;
                  do
                  {
                     if(_loc12_ <= param6)
                     {
                        §§push(param4);
                        §§push(_loc12_ * _loc9_);
                        if(!(_loc14_ && Boolean(param3)))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc15_)
                           {
                              §§push(§§pop());
                              if(_loc15_ || Boolean(param2))
                              {
                              }
                              addr202:
                              _loc11_ = §§pop();
                              if(_loc15_)
                              {
                                 addr205:
                                 param7.graphics.lineTo(_loc10_,_loc11_);
                                 if(_loc14_ && Boolean(param1))
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                           _loc13_ = §§pop();
                           if(!_loc14_)
                           {
                              §§push(param1);
                              if(_loc15_)
                              {
                                 §§push(Math.cos(_loc13_ * _loc8_) * param3);
                                 if(_loc14_ && Boolean(this))
                                 {
                                 }
                                 addr193:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc14_ && Boolean(this)))
                                 {
                                    §§push(§§pop());
                                 }
                                 §§goto(addr202);
                              }
                              addr186:
                              §§goto(addr193);
                              §§push(Math.sin(_loc13_ * _loc8_) * param3);
                           }
                           §§goto(addr205);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc15_)
                        {
                           _loc10_ = §§pop();
                           if(!_loc14_)
                           {
                              §§push(param2);
                              if(!(_loc14_ && Boolean(this)))
                              {
                                 §§goto(addr186);
                              }
                           }
                           break;
                        }
                        §§goto(addr202);
                     }
                     break;
                  }
                  while(_loc12_++, _loc15_);
                  
                  return;
                  §§push(§§pop());
               }
               §§goto(addr80);
               §§push(§§pop());
            }
            §§goto(addr65);
            §§push(§§pop());
         }
         §§push(2 * Math.PI);
         if(_loc15_ || Boolean(this))
         {
            §§push(§§pop());
         }
         §§goto(addr51);
      }
      
      public function initStationUpgrades() : void
      {
         var _loc1_:SauceScreen = this;
      }
      
      public function addToWingQueue(param1:WingOrder) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SauceScreen = this;
         if(_loc3_ || Boolean(this))
         {
            _loc2_.wingQueue.push(param1);
         }
      }
      
      public function removeFromWingQueue(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SauceScreen = this;
         if(_loc4_)
         {
            if(param1 < _loc2_.wingQueue.length)
            {
               if(_loc3_)
               {
               }
            }
            §§goto(addr45);
         }
         _loc2_.wingQueue.splice(param1,1);
         addr45:
      }
   }
}

