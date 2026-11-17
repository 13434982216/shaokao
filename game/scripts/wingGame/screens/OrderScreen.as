package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.§_-5i§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import wingGame.data.FurniData;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   import wingGame.managers.SoundManager;
   import wingGame.models.Customer;
   import wingGame.models.FurnitureItem;
   import wingGame.models.Worker;
   
   public class OrderScreen
   {
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:§_-BY§;
      
      public var orderLineTargetX:Number = 105;
      
      public var orderLineTargetY:Number = 198;
      
      public var orderLineScale:Number = 0.6;
      
      public var leaveLineTargetX:Number = 152;
      
      public var leaveLineTargetY:Number = 186;
      
      public var leaveLineScale:Number = 0.6;
      
      public var waitLineTargetX:Number = 141;
      
      public var waitLineTargetY:Number = 131;
      
      public var waitLineScale:Number = 0.6;
      
      public var customerSpacing:Number = 85;
      
      public var offScreenX:Number = 675;
      
      public var forceCustomerDelay:Number = 900;
      
      public var timeEnteredStation:Number = 0;
      
      public var clicksToStation:Number = 0;
      
      public var clicksToForce:Number = 2;
      
      public var clickForceCustomerDelay:Number = 90;
      
      public var willForceCustomer:Boolean = false;
      
      public var clickForceCustomerTimer:Number = 0;
      
      public var signBarWidth:Number = 80;
      
      public var readyToTrainCloser:Boolean = false;
      
      public var readyToTrainCritic:Boolean = false;
      
      public var furniItems:Vector.<FurnitureItem>;
      
      public var backdropBitmap:Bitmap;
      
      public var muted_boombox:Boolean = false;
      
      public var muted_jukebox:Boolean = false;
      
      public var muted_phonograph:Boolean = false;
      
      public var boomboxMC:MovieClip = null;
      
      public var jukeboxMC:MovieClip = null;
      
      public var phonographMC:MovieClip = null;
      
      public var isWaitingToEnd:Boolean = false;
      
      public var endingTimer:Number = 0;
      
      public var endingTimerMax:Number = 80;
      
      public var worker:Worker = null;
      
      public function OrderScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.furniItems = new Vector.<FurnitureItem>();
            if(_loc3_ || Boolean(this))
            {
               super();
            }
         }
         var _loc2_:OrderScreen = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.gameObj = param1;
            if(_loc3_ || _loc3_)
            {
               _loc2_.setupScreen();
            }
         }
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:OrderScreen = this;
         _loc1_.clip = new orderScreenMC();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.clip.opensign.gotoAndStop(1);
            _loc1_.clip.opensign.sign.gotoAndStop(1);
            if(_loc2_)
            {
            }
            §§goto(addr68);
         }
         _loc1_.clip.opensign.sign.opensign.bar.scaleX = 0;
         _loc1_.clip.takeorder_bubble.clip.takeorder_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
         if(_loc3_)
         {
            §§goto(addr68);
         }
         addr68:
         _loc1_.clip.takeorder_bubble.clip.takeorder_closer_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.hideTakeOrderBubble();
            if(_loc2_)
            {
            }
            §§goto(addr112);
         }
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip,_loc1_.gameObj.workerData,20,173,0.6,false,true);
         addr112:
      }
      
      public function destroy() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:OrderScreen = this;
         _loc1_.clip.takeorder_bubble.clip.takeorder_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
         if(!_loc5_)
         {
            _loc1_.clip.takeorder_bubble.clip.takeorder_closer_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickTakeOrder);
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc1_.worker.destroy();
               if(_loc4_)
               {
               }
            }
            §§goto(addr60);
         }
         _loc1_.worker = null;
         if(_loc4_ || Boolean(this))
         {
            addr60:
            if(_loc1_.backdropBitmap != null)
            {
               if(!_loc5_)
               {
                  addr66:
                  _loc1_.backdropBitmap.bitmapData.dispose();
               }
               try
               {
                  _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
                  if(_loc4_)
                  {
                     addr97:
                     _loc1_.backdropBitmap = null;
                  }
               }
               catch(err:Error)
               {
                  var _loc3_:* = err;
                  §§goto(addr97);
               }
            }
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ < _loc1_.furniItems.length)
               {
                  _loc1_.furniItems[_loc2_].destroy();
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     _loc1_.furniItems[_loc2_] = null;
                     _loc2_++;
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        continue;
                     }
                  }
                  break;
               }
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc1_.furniItems = null;
                  §§push(_loc1_.gameObj);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(!§§pop().§_-3D§.contains(_loc1_.clip))
                     {
                     }
                     addr178:
                     _loc1_.clip = null;
                     break;
                  }
                  addr160:
                  §§pop().§_-3D§.removeChild(_loc1_.clip);
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr178);
                  }
                  break;
               }
               §§goto(addr160);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function activateScreen() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Customer = null;
         var _loc1_:OrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         §§push(_loc1_.gameObj);
         if(_loc6_)
         {
            addr44:
            if(!§§pop().§_-3D§.contains(_loc1_.clip))
            {
               §§push(_loc1_.gameObj);
               if(_loc6_)
               {
               }
               addr48:
               §§push(§§pop().hud);
               if(_loc6_ || Boolean(this))
               {
                  §§pop().clip.doorchime_alert.visible = false;
                  §§goto(addr112);
               }
               §§pop().clip.doorchime_alert.stop();
               if(!_loc5_)
               {
                  if(_loc2_.hasRibbon())
                  {
                     if(_loc6_)
                     {
                        _loc1_.clip.ribbon.visible = true;
                        if(_loc5_)
                        {
                        }
                        addr108:
                        _loc1_.hideTakeOrderBubble();
                     }
                     addr95:
                     if(_loc1_.clip.opensign.currentFrame == 1)
                     {
                        _loc1_.clip.opensign.gotoAndPlay(2);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     _loc1_.clip.ribbon.visible = false;
                     if(!_loc5_)
                     {
                        §§goto(addr95);
                     }
                  }
               }
               addr112:
               §§push(_loc1_.gameObj);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  addr69:
                  §§push(§§pop().hud);
               }
               var _loc3_:CustomerManager = §§pop().§_-EW§;
               §§push(_loc3_.orderline);
               if(_loc6_ || Boolean(_loc3_))
               {
                  if(§§pop().length > 0)
                  {
                     §§goto(addr307);
                  }
                  §§goto(addr187);
               }
               _loc4_ = §§pop()[0];
               §§push(_loc4_.isWalking);
               if(_loc6_)
               {
                  §§push(!§§pop());
                  if(_loc6_ || Boolean(_loc3_))
                  {
                  }
                  §§goto(addr175);
               }
               if(§§pop())
               {
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     §§pop();
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§push(_loc4_.currentLine == "orderline");
                     }
                     §§goto(addr183);
                  }
               }
               addr175:
               if(§§pop())
               {
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     addr183:
                     _loc1_.showTakeOrderBubble(_loc4_.isCloser);
                  }
               }
               addr187:
               _loc1_.timeEnteredStation = _loc1_.gameObj.§_-6v§.gameplayTimer;
               _loc1_.isActive = true;
               _loc1_.worker.playAnimation("leanin");
               _loc3_.updateCustomersForBonuses();
               §§push(_loc1_.gameObj);
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(§§pop().§_-EW§.outOfCustomers(true));
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§push(§§pop());
                     if(_loc6_ || Boolean(_loc1_))
                     {
                     }
                     addr248:
                     if(§§pop())
                     {
                        §_-5i§.§_-CE§("End the Day!");
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§push(_loc1_.gameObj);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push(§§pop().soundManager);
                              if(!_loc5_)
                              {
                                 §§pop().playSound("endofday.wav");
                                 §§push(_loc1_.gameObj);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr307);
                              }
                              addr289:
                              §§pop().switchMusic("order");
                              if(_loc5_ && Boolean(this))
                              {
                              }
                              §§goto(addr307);
                           }
                        }
                        _loc1_.playFurniMusic();
                        §§goto(addr307);
                     }
                     else
                     {
                        §§push(_loc1_.gameObj);
                     }
                     §§goto(addr289);
                     §§push(§§pop().soundManager);
                  }
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        §§push(_loc1_.gameObj);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§push(§§pop().§_-A7§.outOfTickets());
                           if(_loc6_)
                           {
                              §§push(§§pop());
                           }
                        }
                     }
                  }
                  §§goto(addr248);
               }
               §§pop().hud.disableStationButtons();
               addr307:
               if(!_loc5_)
               {
                  §§push(_loc3_.orderline);
               }
               _loc1_.isWaitingToEnd = true;
               _loc1_.endingTimer = 0;
               return;
               §§push(_loc1_.gameObj);
            }
            §§push(_loc1_.gameObj);
            if(!_loc5_)
            {
               §§goto(addr48);
            }
            §§goto(addr69);
         }
         §§pop().§_-3D§.addChild(_loc1_.clip);
         if(_loc6_)
         {
            §§goto(addr44);
         }
         §§goto(addr108);
      }
      
      public function deactivateScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:OrderScreen = this;
         if(!(_loc2_ && _loc3_))
         {
            §§push(_loc1_.gameObj);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  §§goto(addr74);
               }
               §§goto(addr67);
            }
            §§pop().§_-3D§.removeChild(_loc1_.clip);
            if(!_loc2_)
            {
               addr67:
               _loc1_.stopFurniMusic();
               if(_loc2_)
               {
               }
               §§goto(addr74);
            }
         }
         _loc1_.isActive = false;
         addr74:
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_.gameObj);
         }
      }
      
      public function showTakeOrderBubble(param1:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:OrderScreen = this;
         §§push(_loc2_.gameObj);
         if(_loc3_)
         {
            §§push(§§pop().§_-3f§);
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  addr50:
                  if(§§pop())
                  {
                     addr53:
                     _loc2_.gameObj.§_-8o§();
                  }
                  _loc2_.clip.takeorder_bubble.visible = true;
                  §§push(param1);
               }
               §§pop();
               §§push(_loc2_.gameObj);
               if(_loc3_ || param1)
               {
               }
               §§goto(addr53);
            }
            §§goto(addr67);
         }
         §§push(§§pop().§_-DZ§ == 5);
         if(!_loc4_)
         {
            §§goto(addr50);
         }
         addr67:
         if(§§pop())
         {
            _loc2_.clip.takeorder_bubble.clip.takeorder_btn.visible = false;
            _loc2_.clip.takeorder_bubble.clip.takeorder_closer_btn.visible = true;
            if(_loc3_ || param1)
            {
               _loc2_.clip.takeorder_bubble.clip.gotoAndStop("closer");
               if(_loc4_ && param1)
               {
               }
            }
            §§goto(addr130);
         }
         else
         {
            _loc2_.clip.takeorder_bubble.clip.takeorder_btn.visible = true;
            _loc2_.clip.takeorder_bubble.clip.takeorder_closer_btn.visible = false;
         }
         _loc2_.clip.takeorder_bubble.clip.gotoAndStop("normal");
         addr130:
      }
      
      public function hideTakeOrderBubble() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:OrderScreen = this;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.clip.takeorder_bubble.visible = false;
         }
      }
      
      public function clickTakeOrder(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:OrderScreen = this;
         if(!_loc4_)
         {
            §§push(_loc2_.gameObj);
            if(_loc3_ || Boolean(param1))
            {
               if(!§§pop().§_-4V§)
               {
                  _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
                  _loc2_.clicksToStation = 0;
                  if(!_loc4_)
                  {
                     _loc2_.hideTakeOrderBubble();
                  }
                  addr61:
                  §§push(_loc2_.gameObj.§_-DZ§ == 6);
                  if(_loc3_ || Boolean(param1))
                  {
                     addr80:
                     if(§§pop())
                     {
                        §§push(_loc2_.gameObj);
                        if(_loc3_)
                        {
                           §§pop().§_-8o§();
                           if(_loc4_ && Boolean(_loc2_))
                           {
                           }
                        }
                        addr95:
                        §§push(§§pop().hud);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr129:
                           addr131:
                           §§push(§§pop().whichContextTraining);
                           if(!_loc4_)
                           {
                              §§push(§§pop() == "critic");
                           }
                           if(§§pop() == "closer")
                           {
                              addr132:
                              §§push(_loc2_.gameObj);
                              if(_loc4_)
                              {
                              }
                              §§pop().hud.startTransition("takeOrder");
                              addr149:
                           }
                           addr147:
                           §§goto(addr149);
                           §§push(_loc2_.gameObj);
                        }
                        §§pop().removeContextTraining();
                        §§goto(addr147);
                     }
                     §§goto(addr95);
                     §§push(_loc2_.gameObj);
                  }
                  if(!§§pop())
                  {
                     §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        addr118:
                        §§push(_loc2_.gameObj.hud);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§goto(addr129);
                           §§push(§§pop().whichContextTraining);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr131);
               }
               return;
            }
            §§push(§§pop().hud);
            if(_loc3_)
            {
               §§goto(addr95);
            }
            §§goto(addr132);
         }
         §§push(_loc2_.gameObj);
         if(_loc3_)
         {
            §§push(Boolean(§§pop().§_-3f§));
            if(_loc3_ || Boolean(param1))
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr80);
               }
               §§goto(addr61);
            }
            §§goto(addr129);
         }
         §§goto(addr118);
      }
      
      public function updateScreen() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:OrderScreen = this;
         if(_loc1_.isActive)
         {
            §§push(_loc1_.gameObj);
            if(!_loc9_)
            {
               §§push(§§pop().§_-6v§);
               if(_loc10_ || Boolean(_loc3_))
               {
                  §§push(§§pop().gameplayTimer);
                  §§push(_loc1_.timeEnteredStation);
                  if(_loc10_ || Boolean(this))
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc9_ && Boolean(this)))
                     {
                        §§push(_loc1_.forceCustomerDelay);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(_loc1_.gameObj.§_-EW§.orderline);
                              if(_loc10_ || Boolean(this))
                              {
                                 §§push(§§pop().length == 0);
                                 if(!(_loc9_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       addr143:
                                       if(§§pop())
                                       {
                                          if(_loc9_ && Boolean(_loc2_))
                                          {
                                          }
                                          addr437:
                                          §§push(§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          addr329:
                                          §§push(_loc1_.gameObj);
                                          if(!(_loc9_ && Boolean(_loc2_)))
                                          {
                                             addr250:
                                             §§push(§§pop().userData.currentDay);
                                             if(!(_loc9_ && Boolean(_loc2_)))
                                             {
                                                §§push(1);
                                                if(_loc10_ || Boolean(_loc3_))
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push(_loc1_.gameObj);
                                                      if(_loc10_)
                                                      {
                                                         §§pop().§_-EW§.spawnCustomer();
                                                      }
                                                   }
                                                }
                                                addr314:
                                                if(§§pop() < §§pop())
                                                {
                                                   addr315:
                                                   §§push(0);
                                                   if(!_loc9_)
                                                   {
                                                      addr319:
                                                      _loc2_ = §§pop();
                                                      if(_loc9_ && Boolean(this))
                                                      {
                                                      }
                                                      addr364:
                                                      _loc1_.clip.opensign.sign.opensign.marker.x = _loc1_.clip.opensign.sign.opensign.bar.x + _loc6_ * _loc1_.signBarWidth;
                                                      _loc1_.worker.animateModel();
                                                   }
                                                   addr420:
                                                   addr422:
                                                   if(§§pop() >= _loc1_.clickForceCustomerDelay)
                                                   {
                                                      addr454:
                                                      §§push(_loc1_.gameObj.§_-EW§);
                                                      if(!(_loc9_ && Boolean(_loc1_)))
                                                      {
                                                         addr433:
                                                         §§push(§§pop().orderline);
                                                      }
                                                      §§push(§§pop().totalCustomers);
                                                      if(!(_loc9_ && Boolean(_loc1_)))
                                                      {
                                                         addr464:
                                                         addr468:
                                                         addr466:
                                                         addr465:
                                                         addr462:
                                                         if(§§pop() < _loc1_.gameObj.§_-EW§.customerLineup.length)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               addr471:
                                                               §_-5i§.§_-CE§(">> Force a customer!");
                                                               §§push(_loc1_.gameObj);
                                                               if(_loc10_ || Boolean(_loc2_))
                                                               {
                                                                  addr484:
                                                                  §§pop().§_-EW§.spawnCustomer();
                                                                  if(_loc9_ && Boolean(_loc2_))
                                                                  {
                                                                  }
                                                                  §§goto(addr545);
                                                               }
                                                               addr540:
                                                               §§pop().hud.startTransition("ending");
                                                               if(_loc9_)
                                                               {
                                                               }
                                                               §§goto(addr545);
                                                            }
                                                            addr523:
                                                            §§push(_loc1_.gameObj);
                                                            if(_loc10_)
                                                            {
                                                               §§pop().§return§ = true;
                                                               if(_loc10_)
                                                               {
                                                                  addr531:
                                                                  §§push(_loc1_.gameObj);
                                                               }
                                                               §§goto(addr545);
                                                            }
                                                            §§goto(addr540);
                                                         }
                                                         _loc1_.willForceCustomer = false;
                                                      }
                                                      §§goto(addr520);
                                                   }
                                                   if(_loc1_.isWaitingToEnd)
                                                   {
                                                      var _loc7_:* = _loc1_;
                                                      §§push(_loc7_.endingTimer);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(_loc10_ || Boolean(this))
                                                      {
                                                         _loc7_.endingTimer = _loc8_;
                                                      }
                                                      addr520:
                                                      if(§§pop() == _loc1_.endingTimerMax)
                                                      {
                                                         §§goto(addr523);
                                                      }
                                                      addr545:
                                                      _loc1_.isWaitingToEnd = false;
                                                      return;
                                                      §§push(_loc1_.endingTimer);
                                                   }
                                                   §§goto(addr545);
                                                }
                                                §§push(_loc1_.gameObj);
                                             }
                                             §§push(§§pop());
                                             if(_loc10_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   §§push(_loc1_.gameObj.§_-EW§.lastSpawnTime + _loc3_);
                                                   if(!(_loc9_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(_loc1_.gameObj);
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(§§pop() - §§pop().§_-6v§.gameplayTimer);
                                                         if(_loc10_ || Boolean(_loc2_))
                                                         {
                                                            _loc4_ = §§pop();
                                                            §§push(_loc2_);
                                                         }
                                                         §§goto(addr520);
                                                      }
                                                      §§goto(addr464);
                                                   }
                                                   addr349:
                                                   _loc5_ = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      addr361:
                                                      _loc6_ = Math.min(1,_loc5_ / _loc1_.gameObj.§_-Bl§);
                                                      addr352:
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr364);
                                                      }
                                                      addr418:
                                                      §§goto(addr420);
                                                      §§push(_loc1_.clickForceCustomerTimer);
                                                   }
                                                   §§goto(addr464);
                                                }
                                                §§goto(addr315);
                                             }
                                             §§push(§§pop() - 1);
                                             if(_loc10_ || Boolean(this))
                                             {
                                                §§push(§§pop());
                                                if(!_loc9_)
                                                {
                                                   addr309:
                                                   _loc2_ = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr314);
                                                      §§push(_loc2_);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr361);
                                             }
                                             addr348:
                                             §§goto(addr349);
                                             §§push(§§pop());
                                          }
                                          §§push(§§pop().§_-6v§);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(_loc10_)
                                       {
                                          addr442:
                                          §§push(_loc1_.gameObj);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop().§_-EW§);
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                §§goto(addr454);
                                             }
                                             §§goto(addr484);
                                          }
                                          §§goto(addr540);
                                       }
                                       §§goto(addr471);
                                    }
                                    §§goto(addr468);
                                 }
                                 §§pop();
                                 §§push(_loc1_.gameObj.§_-EW§);
                                 if(!(_loc9_ && Boolean(_loc1_)))
                                 {
                                    §§push(§§pop().totalCustomers);
                                    §§push(_loc1_.gameObj);
                                    if(_loc10_ || Boolean(this))
                                    {
                                       §§push(§§pop().§_-EW§);
                                       if(!(_loc9_ && Boolean(_loc1_)))
                                       {
                                          §§push(§§pop().customerLineup);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() < §§pop().length);
                                             if(_loc10_)
                                             {
                                                §§goto(addr143);
                                             }
                                             §§goto(addr437);
                                          }
                                          §§goto(addr466);
                                       }
                                       §§goto(addr465);
                                    }
                                    §§goto(addr464);
                                 }
                                 §§goto(addr433);
                              }
                              addr434:
                              §§goto(addr437);
                              §§push(§§pop().length == 0);
                           }
                           _loc1_.clip.opensign.sign.opensign.bar.scaleX = Math.min(1,_loc1_.gameObj.§_-6v§.gameplayTimer / _loc1_.gameObj.§_-Bl§);
                           if(_loc10_)
                           {
                              §§push(_loc1_.gameObj);
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop().§_-EW§.customerLineup);
                                 if(_loc10_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop().length - _loc1_.gameObj.§_-EW§.totalCustomers);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop());
                                    }
                                    §§goto(addr319);
                                 }
                                 §§goto(addr434);
                              }
                              §§goto(addr471);
                           }
                           §§goto(addr352);
                        }
                        addr341:
                        §§push(§§pop() + §§pop());
                        §§push(_loc2_ * _loc3_);
                     }
                     _loc2_ = §§pop();
                     if(!(_loc9_ && Boolean(_loc1_)))
                     {
                        §§push(_loc1_.gameObj);
                        if(_loc10_ || Boolean(_loc1_))
                        {
                        }
                        §§goto(addr329);
                     }
                     §§goto(addr442);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc9_)
                  {
                     §§goto(addr348);
                  }
                  §§goto(addr454);
               }
               §§push(§§pop().gameplayTimer);
               if(_loc10_ || Boolean(_loc2_))
               {
                  §§push(_loc4_);
                  if(_loc10_)
                  {
                     §§goto(addr341);
                  }
                  §§goto(addr422);
               }
               §§goto(addr462);
            }
            §§push(§§pop().§_-EW§.spawnTiming);
            if(_loc10_ || Boolean(_loc1_))
            {
               §§goto(addr250);
            }
            §§goto(addr309);
         }
         §§push(_loc1_.willForceCustomer);
         if(_loc10_ || Boolean(this))
         {
            if(§§pop())
            {
               if(!_loc9_)
               {
                  _loc7_ = _loc1_;
                  §§push(_loc7_.clickForceCustomerTimer);
                  if(!_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc8_ = §§pop();
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     _loc7_.clickForceCustomerTimer = _loc8_;
                  }
                  §§goto(addr361);
               }
               §§goto(addr531);
            }
         }
         §§goto(addr315);
      }
      
      public function registerClickForForcing() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:OrderScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.§_-EW§;
         if(!_loc6_)
         {
            §§push(_loc1_.gameObj.userData.currentDay);
            if(!_loc6_)
            {
               §§push(§§pop() > 1);
               if(_loc5_ || Boolean(_loc1_))
               {
                  §§goto(addr109);
               }
               §§push(§§pop());
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc5_ || Boolean(this))
                     {
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr108);
               }
               addr109:
               §§push(§§pop());
               if(_loc5_ || Boolean(_loc2_))
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc1_.willForceCustomer);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        §§push(!§§pop());
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(_loc2_.orderline);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           §§push(§§pop().length == 0);
                           if(_loc6_ && Boolean(_loc2_))
                           {
                           }
                           §§goto(addr126);
                        }
                        addr108:
                        §§push(§§pop().length <= 2);
                        §§push(§§pop().length <= 2);
                     }
                  }
               }
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     §§push(_loc2_.totalCustomers);
                     if(_loc5_)
                     {
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr127);
               }
               §§goto(addr126);
            }
            addr126:
            if(§§pop())
            {
               addr127:
               var _loc3_:* = _loc1_;
               §§push(_loc3_.clicksToStation);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  _loc3_.clicksToStation = _loc4_;
               }
               addr164:
               §§push(§_-5i§);
               §§push("Register Click for Forcing Customer (" + _loc1_.clicksToStation);
               if(!(_loc6_ && Boolean(_loc1_)))
               {
                  §§push(§§pop() + ")");
               }
               §§pop().§_-CE§(§§pop());
               if(_loc1_.clicksToStation >= _loc1_.clicksToForce)
               {
                  §_-5i§.§_-CE§(">> Will force a customer out!");
                  if(_loc5_)
                  {
                     _loc1_.clickForceCustomerTimer = 0;
                     addr182:
                     _loc1_.clicksToStation = 0;
                     if(_loc5_)
                     {
                     }
                  }
                  _loc1_.willForceCustomer = true;
               }
            }
            return;
            §§push(§§pop() < _loc2_.customerLineup.length);
         }
         §§goto(addr108);
         §§push(_loc2_.waitline);
      }
      
      public function initStationUpgrades() : void
      {
         var screen:OrderScreen;
         var user:UserData;
         var f:int;
         var i:int;
         var data:FurniData;
         var x:Number;
         var y:Number;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§pop().§§slot[5] = null;
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§push(NaN);
                  if(_loc3_ || Boolean(this))
                  {
                     §§pop().§§slot[6] = §§pop();
                     if(!_loc4_)
                     {
                        §§push(§§newactivation());
                        if(_loc3_)
                        {
                           §§push(NaN);
                        }
                     }
                  }
                  §§pop().§§slot[7] = §§pop();
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§newactivation());
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§pop().§§slot[1] = this;
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc4_ && Boolean(this))
                           {
                           }
                        }
                     }
                  }
                  addr98:
                  while(true)
                  {
                     §§push(§§newactivation());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop().§§slot[3]);
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              if(§§pop() >= §§pop().§§slot[2].lobbyPlacement.length)
                              {
                                 if(!_loc4_)
                                 {
                                    addr344:
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       if(§§pop().§§slot[1].backdropBitmap != null)
                                       {
                                          addr416:
                                          if(!_loc4_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§pop().§§slot[1].backdropBitmap.bitmapData.dispose();
                                                §§goto(addr475);
                                             }
                                             addr316:
                                             §§pop().§§slot[1].backdropBitmap = screen.createLobbyBackdropBitmap();
                                             addr314:
                                             if(_loc3_ || Boolean(this))
                                             {
                                             }
                                          }
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(i);
                                                if(_loc4_ && _loc3_)
                                                {
                                                }
                                                §§goto(addr470);
                                             }
                                             §§goto(addr475);
                                          }
                                          addr416:
                                       }
                                       addr313:
                                       §§goto(addr314);
                                       §§push(§§newactivation());
                                    }
                                    §§pop().§§slot[4] = 0;
                                    §§goto(addr468);
                                 }
                                 addr326:
                                 screen.clip.backdrop_holder.addChild(screen.backdropBitmap);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       §§goto(addr344);
                                    }
                                    §§goto(addr469);
                                 }
                                 §§goto(addr468);
                              }
                              else
                              {
                                 §§push(§§newactivation());
                                 §§push(§§newactivation());
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§pop().§§slot[5] = §§pop().§§slot[1].gameObj.§_-Cf§.getFurniFromTag(user.lobbyPlacement[f][0]);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             addr175:
                                             §§push(§§pop().§§slot[2]);
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                addr176:
                                                §§push(§§pop().lobbyPlacement);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr177:
                                                   §§push(§§newactivation());
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      if(_loc3_)
                                                      {
                                                         §§push(Number(§§pop()[§§pop()][1]));
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§pop().§§slot[6] = §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§newactivation());
                                                            §§push(§§newactivation());
                                                         }
                                                         addr182:
                                                         §§pop().§§slot[7] = §§pop();
                                                         if(_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§newactivation());
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                         }
                                                      }
                                                      addr178:
                                                      §§goto(addr182);
                                                      §§push(Number(§§pop()[§§pop()][2]));
                                                   }
                                                   §§goto(addr178);
                                                   §§push(§§pop().§§slot[3]);
                                                }
                                                §§goto(addr177);
                                                §§push(§§newactivation());
                                             }
                                             §§goto(addr176);
                                             §§push(§§pop().lobbyPlacement);
                                          }
                                       }
                                       §§push(§§pop().§§slot[1]);
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§pop().addFurni(§§pop().§§slot[5],false,x,y);
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(f);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   continue;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[4] = §§pop();
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§goto(addr468);
                                                   }
                                                   §§goto(addr475);
                                                }
                                             }
                                             addr449:
                                          }
                                          §§goto(addr470);
                                       }
                                       §§goto(addr416);
                                    }
                                    else
                                    {
                                       §§goto(addr313);
                                    }
                                 }
                                 §§goto(addr175);
                                 §§push(§§pop().§§slot[2]);
                              }
                              while(true)
                              {
                                 §§pop().§§slot[1].backdropBitmap.bitmapData.fillRect(new Rectangle(screen.furniItems[i].clip.x,screen.furniItems[i].clip.y,screen.furniItems[i].tileWidth * screen.furniItems[i].data.width,screen.furniItems[i].tileWidth * screen.furniItems[i].data.depth),0);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr416);
                                 }
                                 §§goto(addr475);
                              }
                              addr359:
                           }
                           while(true)
                           {
                              if(§§pop() < §§pop().§§slot[1].furniItems.length)
                              {
                                 if(screen.furniItems[i].data.tag == "poster_window")
                                 {
                                    §§goto(addr359);
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr437);
                              }
                              addr475:
                              try
                              {
                              }
                              catch(err:Error)
                              {
                                 addr307:
                                 screen.backdropBitmap = null;
                                 addr468:
                                 if(_loc4_)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    addr469:
                                    while(true)
                                    {
                                       §§push(§§pop().§§slot[4]);
                                       addr470:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                       }
                                    }
                                 }
                                 addr468:
                              }
                              §§newactivation();
                              return;
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc4_)
                           {
                              §§goto(addr449);
                           }
                           §§goto(addr437);
                        }
                     }
                     §§push(§§pop().§§slot[1]);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().clip.backdrop_holder.removeChild(screen.backdropBitmap);
                        if(_loc3_ || Boolean(this))
                        {
                           break;
                        }
                        §§goto(addr326);
                     }
                     §§goto(addr316);
                  }
                  §§goto(addr307);
               }
               §§pop().§§slot[2] = screen.gameObj.userData;
               if(_loc4_ && _loc2_)
               {
               }
               §§goto(addr98);
            }
            §§push(§§newactivation());
         }
         §§pop().§§slot[3] = 0;
         §§goto(addr98);
      }
      
      public function addFurni(param1:FurniData, param2:Boolean, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:OrderScreen = this;
         var _loc6_:MovieClip = _loc5_.clip.wall_layer;
         if(_loc9_ || Boolean(this))
         {
            §§goto(addr87);
         }
         _loc6_ = _loc5_.clip.floor0_layer;
         addr87:
         if(param1.type == FurniData.TYPE_FURNI)
         {
            if(!(_loc8_ && Boolean(param3)))
            {
               §§push(param4);
               if(!(_loc8_ && Boolean(param1)))
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc8_ && param2)
                        {
                        }
                     }
                     else
                     {
                        §§push(param4);
                     }
                     addr76:
                     _loc6_ = _loc5_.clip.floor1_layer;
                  }
                  addr75:
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr76);
                  }
                  else
                  {
                     _loc6_ = _loc5_.clip.floor2_layer;
                  }
               }
               §§goto(addr75);
               §§push(1);
            }
         }
         var _loc7_:FurnitureItem = new FurnitureItem(_loc5_.gameObj,_loc6_,param1,param3,param4,false,true);
         if(!_loc8_)
         {
            _loc5_.furniItems.push(_loc7_);
         }
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc1_:OrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new lobbyBackdropMC();
         if(_loc8_)
         {
            _loc4_ = 1;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            §§push(10);
            if(!_loc7_)
            {
               if(§§pop() > §§pop())
               {
                  §§goto(addr134);
               }
               else
               {
                  addr112:
               }
               _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
               §§push(_loc4_ + 1);
               if(_loc8_)
               {
                  _loc4_ = §§pop();
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               addr78:
               while(true)
               {
                  §§push(_loc4_);
                  while(true)
                  {
                     break loop0;
                  }
                  _loc4_ = §§pop();
               }
               _loc4_ = §§pop();
               if(_loc8_ || Boolean(_loc1_))
               {
                  §§goto(addr78);
               }
               §§goto(addr122);
            }
            break;
         }
         while(true)
         {
            if(§§pop() > §§pop())
            {
               if(_loc8_ || Boolean(_loc1_))
               {
                  §§goto(addr122);
               }
               addr122:
               _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
               _loc5_.holder.countertop.gotoAndStop(_loc2_.lobbyWallpaper);
               addr134:
               if(_loc8_ || Boolean(_loc3_))
               {
                  §§push(1);
               }
               _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
               if(_loc8_)
               {
                  _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
               }
               var _loc6_:BitmapData = new BitmapData(640,480,true,4294967295);
               _loc6_.draw(_loc5_,null,null,null,new Rectangle(0,0,640,480));
               _loc3_ = new Bitmap(_loc6_);
               _loc5_ = null;
               return _loc3_;
            }
            _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(§§pop() + 1);
               if(_loc8_ || Boolean(this))
               {
               }
               addr111:
               _loc4_ = §§pop();
               §§goto(addr112);
            }
            §§push(§§pop());
            if(!_loc8_)
            {
               continue;
            }
            §§goto(addr111);
         }
      }
      
      public function playFurniMusic(param1:String = "all") : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:OrderScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:SoundManager = _loc2_.gameObj.soundManager;
         var _loc5_:Number = _loc4_.track_order.position;
         §§push(_loc4_.trackLength);
         if(_loc9_ || Boolean(_loc2_))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(_loc9_ || Boolean(_loc3_))
         {
            §§push(§§pop() / _loc6_);
            if(_loc9_)
            {
            }
            addr55:
            var _loc7_:* = §§pop();
            var _loc8_:SoundTransform = new SoundTransform(1,0);
            §§push(param1);
            §§push("all");
            if(!_loc10_)
            {
               §§push(§§pop() == §§pop());
               if(!(_loc10_ && Boolean(param1)))
               {
                  §§push(§§pop());
                  if(!(_loc10_ && Boolean(this)))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc9_ || Boolean(_loc2_))
                           {
                              §§goto(addr257);
                           }
                           addr242:
                           _loc4_.track_boombox.soundTransform = _loc8_;
                           if(!_loc10_)
                           {
                              addr250:
                              §§push(param1 == "all");
                              §§push(param1 == "all");
                              if(_loc9_)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    addr256:
                                    addr257:
                                    addr259:
                                    addr260:
                                    §§push(param1);
                                    if(!(_loc10_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop() == "jukebox");
                                    }
                                    §§push(§§pop() == "phonograph");
                                    if(!(§§pop() == "phonograph"))
                                    {
                                       §§pop();
                                       §§goto(addr312);
                                    }
                                    §§push(§§pop());
                                    if(_loc10_)
                                    {
                                    }
                                    addr286:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(_loc9_)
                                       {
                                          addr290:
                                          §§push(!_loc2_.muted_phonograph);
                                       }
                                       §§goto(addr312);
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc10_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr312);
                                       }
                                    }
                                    addr312:
                                    if(!_loc10_)
                                    {
                                       addr265:
                                       §§push(param1 == "furni_phonograph");
                                    }
                                    _loc4_.track_phonograph.soundTransform = _loc8_;
                                    return;
                                    §§push(param1);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr260);
                           }
                           §§goto(addr290);
                        }
                     }
                     §§push(§§pop() || param1 == "furni_jukebox");
                     §§push(§§pop() || param1 == "furni_jukebox");
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           addr156:
                           if(!_loc10_)
                           {
                              §§push(_loc3_.isFurniInLobby("furni_jukebox"));
                           }
                           §§push(param1);
                           if(!_loc10_)
                           {
                              §§push("all");
                              if(_loc9_ || Boolean(_loc2_))
                              {
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr257);
                        }
                        §§push(§§pop());
                        if(_loc9_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push(!_loc2_.muted_jukebox);
                                 }
                              }
                              §§goto(addr290);
                           }
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 _loc4_.track_jukebox.soundTransform = _loc8_;
                              }
                              §§goto(addr256);
                           }
                           §§goto(addr156);
                        }
                        addr191:
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(param1);
                           if(_loc9_ || Boolean(param1))
                           {
                              §§push(§§pop() == "furni_wingeria_music");
                              if(_loc9_ || Boolean(_loc3_))
                              {
                              }
                              addr226:
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push(!_loc2_.muted_boombox);
                                    if(_loc9_ || Boolean(param1))
                                    {
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr312);
                              }
                              if(§§pop())
                              {
                                 §§goto(addr242);
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr257);
                        }
                        if(§§pop())
                        {
                           if(_loc9_ || Boolean(this))
                           {
                              §§pop();
                              addr274:
                              if(_loc9_)
                              {
                                 §§push(_loc3_.isFurniInLobby("furni_wingeria_music"));
                              }
                              §§push(_loc3_.isFurniInLobby("furni_phonograph"));
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 addr285:
                                 §§push(§§pop());
                              }
                              §§goto(addr257);
                           }
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr286);
                  }
                  addr270:
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        §§goto(addr274);
                     }
                     §§goto(addr290);
                  }
                  §§goto(addr285);
               }
               addr177:
               §§pop();
               §§push(param1);
               if(!_loc10_)
               {
                  addr183:
                  §§push(§§pop() == "boombox");
                  §§push(§§pop() == "boombox");
                  if(_loc9_ || Boolean(_loc2_))
                  {
                     §§goto(addr191);
                  }
                  §§goto(addr270);
               }
               §§goto(addr265);
            }
            §§push(§§pop() == §§pop());
            §§push(§§pop() == §§pop());
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               if(!§§pop())
               {
                  §§goto(addr177);
               }
               §§goto(addr183);
            }
            §§goto(addr257);
         }
         §§goto(addr55);
         §§push(§§pop());
      }
      
      public function stopFurniMusic() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:OrderScreen = this;
         var _loc2_:SoundManager = _loc1_.gameObj.soundManager;
         var _loc3_:SoundTransform = new SoundTransform(0,0);
         if(_loc4_)
         {
            _loc2_.track_jukebox.soundTransform = _loc3_;
            if(!_loc5_)
            {
               _loc2_.track_boombox.soundTransform = _loc3_;
               if(_loc4_ || Boolean(_loc1_))
               {
               }
            }
            _loc2_.track_phonograph.soundTransform = _loc3_;
         }
      }
      
      public function toggleMusicMute(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:OrderScreen = this;
         var _loc3_:SoundManager = _loc2_.gameObj.soundManager;
         var _loc4_:SoundTransform = new SoundTransform(0,0);
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_ || Boolean(param1))
            {
               if(§§pop() == "furni_jukebox")
               {
                  §§push(_loc2_);
                  §§push(_loc2_.muted_jukebox);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().muted_jukebox = §§pop();
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(_loc2_.muted_jukebox);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§push(false);
                        if(_loc5_ || Boolean(param1))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc5_)
                              {
                                 _loc2_.playFurniMusic("jukebox");
                              }
                           }
                           else
                           {
                              _loc3_.track_jukebox.soundTransform = _loc4_;
                           }
                        }
                        else
                        {
                           addr123:
                           if(§§pop() == §§pop())
                           {
                              if(_loc6_ && Boolean(_loc2_))
                              {
                                 addr150:
                                 §§push(_loc2_.muted_phonograph);
                                 §§push(false);
                              }
                           }
                           else
                           {
                              _loc3_.track_boombox.soundTransform = _loc4_;
                           }
                        }
                        addr139:
                     }
                     else
                     {
                        addr120:
                        §§push(false);
                        if(!_loc6_)
                        {
                           §§goto(addr123);
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        _loc2_.playFurniMusic("phonograph");
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        _loc3_.track_phonograph.soundTransform = _loc4_;
                     }
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc5_ || Boolean(param1))
                  {
                  }
                  addr141:
                  if(§§pop() == "furni_phonograph")
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.muted_phonograph);
                     if(_loc5_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().muted_phonograph = §§pop();
                     §§goto(addr150);
                  }
               }
               §§goto(addr171);
            }
            if(§§pop() == "furni_wingeria_music")
            {
               §§push(_loc2_);
               §§push(_loc2_.muted_boombox);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  §§push(!§§pop());
               }
               §§pop().muted_boombox = §§pop();
               §§push(_loc2_.muted_boombox);
               if(_loc5_)
               {
                  §§goto(addr120);
               }
               §§goto(addr150);
            }
            else
            {
               §§goto(addr141);
               §§push(param1);
            }
            addr171:
            return;
         }
         _loc2_.playFurniMusic("boombox");
         §§goto(addr139);
      }
   }
}

