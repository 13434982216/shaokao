package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.§_-5i§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import wingGame.data.UserData;
   import wingGame.managers.*;
   import wingGame.models.Customer;
   import wingGame.models.Ticket;
   import wingGame.models.Worker;
   
   public class TakeOrderScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var customerScale:Number = 1.14;
      
      public var customerX:Number = 280;
      
      public var customerY:Number = 95;
      
      public var stepArray:Array;
      
      public var whichStep:Number = -1;
      
      public var stepTimer:Number = 0;
      
      public var lastStepTime:Number = 0;
      
      public var shorterTimingSpacing:Number = 15;
      
      public var timingSpacing:Number = 40;
      
      public var useTimingSpacing:Number = 15;
      
      public var seal0Spacing:Number = 40;
      
      public var seal1Spacing:Number = 30;
      
      public var seal2Spacing:Number = 20;
      
      public var seal3Spacing:Number = 10;
      
      public var isPlacingOrder:Boolean = false;
      
      public var currentTicket:Ticket;
      
      public var currentCustomer:Customer;
      
      public var timeActivated:Number = -1;
      
      public var triedToRestart:Boolean = false;
      
      public var backdropBitmap:Bitmap = null;
      
      public var countertopMC:MovieClip = null;
      
      public var worker:Worker = null;
      
      public function TakeOrderScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.stepArray = [];
            if(_loc3_ || _loc2_)
            {
               super();
            }
         }
         var _loc2_:TakeOrderScreen = this;
         if(_loc3_)
         {
            _loc2_.gameObj = param1;
            if(_loc3_)
            {
               _loc2_.setupScreen();
            }
         }
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TakeOrderScreen = this;
         if(!_loc3_)
         {
            _loc1_.clip = new takeOrderMC();
            if(_loc2_)
            {
            }
            §§goto(addr53);
         }
         _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip,_loc1_.gameObj.workerData,-10,192,1.14,true);
         addr53:
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:TakeOrderScreen = this;
         if(_loc4_)
         {
            if(_loc1_.countertopMC != null)
            {
               if(_loc4_)
               {
                  _loc1_.clip.countertop.removeChild(_loc1_.countertopMC);
                  if(_loc4_)
                  {
                  }
                  addr44:
                  _loc1_.backdropBitmap.bitmapData.dispose();
                  try
                  {
                     addr48:
                     _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
                  }
                  catch(err:Error)
                  {
                     var _loc2_:* = err;
                  }
                  _loc1_.backdropBitmap = null;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr83:
                     _loc1_.worker.destroy();
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        _loc1_.worker = null;
                        if(_loc4_)
                        {
                        }
                        addr121:
                        _loc1_.gameObj.§_-3D§.removeChild(_loc1_.clip);
                        §§goto(addr119);
                     }
                     §§push(_loc1_.gameObj);
                     if(_loc4_ || _loc2_)
                     {
                        if(§§pop().§_-3D§.contains(_loc1_.clip))
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr119);
                           }
                           addr119:
                           if(_loc3_ && Boolean(_loc1_))
                           {
                           }
                           return;
                        }
                     }
                     §§goto(addr121);
                  }
                  _loc1_.clip = null;
                  §§goto(addr121);
               }
            }
            addr38:
            if(_loc1_.backdropBitmap != null)
            {
               if(!_loc3_)
               {
                  §§goto(addr44);
               }
               §§goto(addr48);
            }
            §§goto(addr83);
         }
         _loc1_.countertopMC = null;
         if(!_loc3_)
         {
            §§goto(addr38);
         }
         §§goto(addr48);
      }
      
      public function activateScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TakeOrderScreen = this;
         if(_loc3_)
         {
            §§push(_loc1_.gameObj);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  §§push(_loc1_.gameObj);
                  if(_loc3_)
                  {
                  }
                  addr85:
                  §§pop().soundManager.switchMusic("order");
                  if(_loc3_ || Boolean(this))
                  {
                     addr102:
                     _loc1_.isActive = true;
                  }
               }
               addr55:
               _loc1_.currentCustomer = _loc1_.gameObj.§_-EW§.orderline[0];
               if(_loc3_ || _loc2_)
               {
                  _loc1_.currentCustomer.moveToTakeOrder();
                  _loc1_.initializeOrder();
                  if(_loc3_)
                  {
                     _loc1_.timeActivated = _loc1_.gameObj.§_-6v§.gameplayTimer;
                     §§goto(addr85);
                     §§push(_loc1_.gameObj);
                  }
                  §§goto(addr102);
               }
            }
            §§pop().§_-3D§.addChild(_loc1_.clip);
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr55);
            }
            §§goto(addr102);
         }
      }
      
      public function deactivateScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TakeOrderScreen = this;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(_loc1_.gameObj);
            if(!_loc2_)
            {
               if(§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  addr110:
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§push(_loc1_.gameObj);
                  }
                  _loc1_.timeActivated = -1;
                  _loc1_.triedToRestart = false;
               }
               §§goto(addr60);
            }
            §§pop().§_-3D§.removeChild(_loc1_.clip);
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr60);
            }
            §§goto(addr110);
         }
         _loc1_.isActive = false;
         addr60:
         §§push(_loc1_.currentCustomer);
         if(_loc3_ || _loc3_)
         {
            addr86:
            if(§§pop() != null)
            {
               §§push(_loc1_.currentCustomer);
            }
            §§push(_loc1_.currentTicket);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  §§push(_loc1_.currentTicket);
               }
               §§goto(addr110);
            }
            §§pop().finishDrawingTicket();
            _loc1_.currentTicket = null;
            §§goto(addr110);
         }
         §§pop().moveToLeaveLine();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.currentCustomer = null;
            if(_loc3_)
            {
            }
            §§goto(addr86);
         }
      }
      
      public function initializeOrder() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc1_:TakeOrderScreen = this;
         if(_loc10_ || Boolean(_loc1_))
         {
            _loc1_.isPlacingOrder = true;
            if(_loc10_ || _loc2_)
            {
               _loc1_.stepTimer = 0;
               if(!_loc9_)
               {
                  _loc1_.lastStepTime = 0;
                  if(_loc9_ && _loc2_)
                  {
                  }
               }
               addr56:
               _loc1_.stepArray = [];
               var _loc2_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  loop1:
                  while(true)
                  {
                     if(§§pop() >= _loc1_.currentCustomer.order.length)
                     {
                        if(_loc10_ || Boolean(_loc3_))
                        {
                           _loc1_.clip.bubble.visible = false;
                        }
                     }
                     else
                     {
                        §§push(_loc1_.currentCustomer);
                        if(_loc10_ || Boolean(this))
                        {
                           §§push(§§pop().order);
                           if(_loc10_)
                           {
                              §§push(_loc2_);
                              if(_loc10_)
                              {
                                 if(§§pop()[§§pop()].length == 1)
                                 {
                                    §§push(_loc1_.stepArray);
                                    if(!_loc9_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc10_)
                                       {
                                       }
                                       while(true)
                                       {
                                          if(§§pop()[§§pop()][_loc8_] != "")
                                          {
                                             if(_loc10_ || Boolean(_loc3_))
                                             {
                                                §§push(_loc1_.stepArray);
                                             }
                                          }
                                          addr151:
                                          while(true)
                                          {
                                             §§push(_loc8_ + 1);
                                             if(_loc10_ || Boolean(_loc2_))
                                             {
                                                _loc8_ = §§pop();
                                                if(_loc10_)
                                                {
                                                }
                                             }
                                             addr242:
                                             var _loc3_:Number = §§pop();
                                             §§push(_loc1_.gameObj.userData.getCustomerSeal(_loc1_.currentCustomer.customerType));
                                             if(_loc10_)
                                             {
                                                §§push(§§pop());
                                             }
                                             var _loc4_:* = §§pop();
                                             var _loc5_:int = 1;
                                             addr310:
                                             if(_loc5_ <= 5)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc9_ && Boolean(this)))
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc10_ || Boolean(_loc3_))
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!(_loc9_ && Boolean(_loc3_)))
                                                         {
                                                            _loc1_.clip.stars["star" + _loc5_].gotoAndStop(2);
                                                            if(!(_loc9_ && Boolean(_loc2_)))
                                                            {
                                                               addr309:
                                                               _loc5_++;
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         addr354:
                                                         _loc1_.clip.bubble.gotoAndStop("closer");
                                                         if(_loc9_)
                                                         {
                                                         }
                                                         var _loc6_:GlowFilter = _loc1_.clip.customername_txt.filters[0];
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc1_.currentCustomer.isCloser)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                               }
                                                               addr406:
                                                               _loc1_.clip.customername_txt.filters = [_loc6_];
                                                               addr395:
                                                            }
                                                            else
                                                            {
                                                               _loc6_.color = 3365915;
                                                               if(!(_loc9_ && Boolean(_loc2_)))
                                                               {
                                                                  §§goto(addr406);
                                                               }
                                                            }
                                                            addr412:
                                                            §§push(_loc1_.gameObj.§_-6v§.gameplayTimer);
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc1_.gameObj.§_-Bl§);
                                                               if(_loc10_ || Boolean(_loc1_))
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                  }
                                                                  addr432:
                                                                  §§push(§§pop());
                                                               }
                                                               var _loc7_:* = §§pop();
                                                               §§push(0.98);
                                                               if(_loc10_ || Boolean(this))
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        _loc1_.clip.bg.gotoAndStop(7);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr536:
                                                                        _loc1_.clip.bg.gotoAndStop(2);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc7_);
                                                                     §§push(0.8);
                                                                     if(_loc10_ || Boolean(_loc1_))
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           _loc1_.clip.bg.gotoAndStop(6);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc7_);
                                                                           §§push(0.65);
                                                                           if(_loc10_ || Boolean(_loc2_))
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 _loc1_.clip.bg.gotoAndStop(5);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(_loc9_ && Boolean(_loc1_))
                                                                                    {
                                                                                    }
                                                                                    addr528:
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(!(_loc9_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§goto(addr536);
                                                                                       }
                                                                                       addr561:
                                                                                       _loc1_.timingSpacing = _loc1_.seal0Spacing;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr597:
                                                                                          _loc1_.timingSpacing = _loc1_.seal2Spacing;
                                                                                       }
                                                                                       addr611:
                                                                                       §§push(_loc1_.currentCustomer);
                                                                                       if(_loc10_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr621:
                                                                                          addr622:
                                                                                          §§push(§§pop().customerType == 1);
                                                                                          §§push(§§pop().customerType == 1);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(_loc1_.gameObj);
                                                                                                   if(_loc10_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      addr706:
                                                                                                      addr708:
                                                                                                      §§push(§§pop().userData);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(!§§pop().hasTrainedCritic);
                                                                                                      }
                                                                                                      if(!§§pop().hasTrainedCloser)
                                                                                                      {
                                                                                                         addr731:
                                                                                                         §§push(_loc1_.gameObj);
                                                                                                         if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            addr726:
                                                                                                            §§pop().hud.showContextTraining("closer");
                                                                                                            §§push(_loc1_.gameObj);
                                                                                                            addr725:
                                                                                                         }
                                                                                                         §§pop().userData.hasTrainedCloser = true;
                                                                                                      }
                                                                                                      §§goto(addr733);
                                                                                                   }
                                                                                                   addr670:
                                                                                                   §§push(§§pop().userData);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§pop().hasTrainedCritic = §§pop();
                                                                                                      }
                                                                                                      §§goto(addr733);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr731);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr677);
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(_loc1_.gameObj);
                                                                                                   if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      §§push(§§pop().hud);
                                                                                                      if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         §§pop().showContextTraining("critic");
                                                                                                         §§push(_loc1_.gameObj);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr670);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr725);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr726);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr703:
                                                                                                      §§push(§§pop().userData);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§goto(addr706);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr731);
                                                                                                }
                                                                                                §§goto(addr677);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc1_.currentCustomer);
                                                                                             }
                                                                                             §§goto(addr726);
                                                                                          }
                                                                                          addr690:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr691:
                                                                                             §§pop();
                                                                                             if(!(_loc9_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§push(_loc1_.gameObj);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§goto(addr703);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr726);
                                                                                          }
                                                                                          §§goto(addr708);
                                                                                       }
                                                                                       §§push(Boolean(§§pop().isCloser));
                                                                                       if(_loc10_ || Boolean(this))
                                                                                       {
                                                                                          §§goto(addr690);
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       §§goto(addr691);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc1_.clip.bg.gotoAndStop(1);
                                                                                    }
                                                                                 }
                                                                                 addr527:
                                                                                 §§goto(addr528);
                                                                                 §§push(0.2);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!(_loc9_ && Boolean(this)))
                                                                        {
                                                                           _loc1_.clip.bg.gotoAndStop(4);
                                                                        }
                                                                        addr677:
                                                                        addr733:
                                                                        return;
                                                                     }
                                                                     §§push(_loc7_);
                                                                     §§push(0.35);
                                                                     if(_loc10_ || Boolean(_loc3_))
                                                                     {
                                                                     }
                                                                     §§goto(addr528);
                                                                  }
                                                                  addr547:
                                                                  _loc1_.worker.playAnimation("starttakeorder");
                                                                  §§push(_loc4_);
                                                                  §§push(0);
                                                                  if(_loc10_ || Boolean(_loc3_))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        §§goto(addr561);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc10_ || Boolean(_loc1_))
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc10_)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 addr580:
                                                                                 _loc1_.timingSpacing = _loc1_.seal1Spacing;
                                                                                 §§goto(addr611);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(_loc9_ && Boolean(_loc2_))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr621);
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              §§goto(addr597);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc4_);
                                                                           }
                                                                        }
                                                                        §§push(3);
                                                                        if(_loc10_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              _loc1_.timingSpacing = _loc1_.seal3Spacing;
                                                                           }
                                                                           §§goto(addr561);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr622);
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc1_.clip.bg.gotoAndStop(3);
                                                                  }
                                                                  §§goto(addr580);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr527);
                                                                  §§push(_loc7_);
                                                               }
                                                               §§goto(addr547);
                                                            }
                                                            §§goto(addr432);
                                                            §§push(§§pop());
                                                         }
                                                         _loc6_.color = 13830400;
                                                         if(!_loc9_)
                                                         {
                                                            §§goto(addr395);
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      _loc1_.clip.stars["star" + _loc5_].gotoAndStop(1);
                                                      §§goto(addr309);
                                                   }
                                                   addr317:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      addr318:
                                                      _loc1_.clip.stars.currentseal.visible = false;
                                                      addr344:
                                                      _loc1_.clip.stars.award.gotoAndStop(1);
                                                      if(_loc1_.currentCustomer.isCloser)
                                                      {
                                                         §§goto(addr354);
                                                      }
                                                      else
                                                      {
                                                         _loc1_.clip.bubble.gotoAndStop("normal");
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc1_.clip.stars.currentseal.visible = true;
                                                      if(_loc10_ || Boolean(this))
                                                      {
                                                         _loc1_.clip.stars.currentseal.gotoAndStop(_loc4_);
                                                         §§goto(addr344);
                                                      }
                                                   }
                                                   §§goto(addr354);
                                                }
                                                addr316:
                                                §§goto(addr317);
                                                §§push(0);
                                             }
                                             if(!_loc9_)
                                             {
                                                §§goto(addr316);
                                                §§push(_loc4_);
                                             }
                                             §§goto(addr318);
                                          }
                                       }
                                       addr126:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc10_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr126);
                                       }
                                       addr141:
                                       while(true)
                                       {
                                          §§push(null);
                                          addr143:
                                          while(true)
                                          {
                                             §§pop().push(§§pop());
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                §§goto(addr151);
                                             }
                                             break loop1;
                                          }
                                       }
                                    }
                                    addr118:
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(!_loc10_)
                                    {
                                       continue;
                                    }
                                    _loc8_ = §§pop();
                                 }
                                 while(true)
                                 {
                                    if(_loc8_ >= _loc1_.currentCustomer.order[_loc2_].length)
                                    {
                                       addr172:
                                       _loc2_++;
                                       if(!(_loc10_ || Boolean(this)))
                                       {
                                          break loop1;
                                       }
                                       continue loop0;
                                    }
                                    §§push(_loc1_.currentCustomer);
                                 }
                              }
                              §§push(null);
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 §§pop().push(§§pop());
                                 if(_loc9_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr143);
                              }
                              §§goto(addr172);
                           }
                           while(true)
                           {
                              §§goto(addr141);
                           }
                           addr140:
                        }
                        while(true)
                        {
                           §§push(§§pop().order);
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              §§goto(addr118);
                           }
                           §§goto(addr140);
                        }
                     }
                     _loc1_.currentTicket = _loc1_.gameObj.§_-A7§.addTicket(_loc1_.currentCustomer.customerType);
                     break;
                  }
                  §§push(_loc1_.gameObj);
                  if(_loc10_ || Boolean(this))
                  {
                     §§pop().soundManager.playSound("dropticket.wav");
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        _loc1_.clip.customername_txt.text = String(_loc1_.currentCustomer.customerName);
                     }
                     §§push(_loc1_.gameObj);
                  }
                  §§goto(addr242);
               }
            }
         }
         _loc1_.whichStep = -1;
         if(_loc9_)
         {
         }
         §§goto(addr56);
      }
      
      public function updateScreen() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc1_:TakeOrderScreen = this;
         §§push(_loc1_.isPlacingOrder);
         if(_loc1_.isPlacingOrder)
         {
            §§pop();
            if(!(_loc12_ && _loc2_))
            {
               §§push(_loc1_.gameObj);
               if(_loc11_ || _loc2_)
               {
                  §§push(!§§pop().§_-5b§);
                  if(_loc11_ || Boolean(_loc1_))
                  {
                  }
                  addr194:
                  §§pop();
                  addr553:
                  §§push(_loc1_.whichStep);
                  if(_loc11_ || Boolean(this))
                  {
                     §§push(_loc1_.stepArray);
                     if(_loc11_ || Boolean(_loc1_))
                     {
                        addr215:
                        if(§§pop() < §§pop().length)
                        {
                           _loc1_.useTimingSpacing = _loc1_.timingSpacing;
                           §§push(_loc1_.whichStep);
                           if(_loc11_)
                           {
                              addr225:
                              if(§§pop() == 0)
                              {
                                 _loc1_.currentCustomer.clip.gotoAndPlay("takeorder");
                                 if(_loc12_)
                                 {
                                 }
                                 addr540:
                                 _loc1_.stepTimer = 0;
                                 addr543:
                                 §§push(_loc1_.gameObj);
                              }
                              _loc1_.clip.bubble.visible = true;
                              §§push(_loc1_.gameObj);
                              if(!_loc12_)
                              {
                                 §§pop().soundManager.playSound("talkbubble.wav");
                                 if(!_loc12_)
                                 {
                                    §§push(_loc1_.stepArray);
                                    if(_loc11_)
                                    {
                                       §§push(_loc1_.whichStep);
                                       if(!_loc12_)
                                       {
                                          if(§§pop()[§§pop()].length == 1)
                                          {
                                             §§push(_loc1_.stepArray);
                                             §§push(_loc1_.whichStep);
                                             if(_loc11_ || _loc2_)
                                             {
                                             }
                                             addr288:
                                             §§push(§§pop()[§§pop()][0]);
                                             if(!_loc12_)
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc11_ || Boolean(_loc3_))
                                                {
                                                   _loc1_.clip.bubble.clip.gotoAndStop(_loc4_);
                                                   _loc1_.clip.bubble.bg.gotoAndPlay(1);
                                                   if(_loc11_ || Boolean(_loc1_))
                                                   {
                                                      _loc1_.clip.bubble.bg2.gotoAndPlay(1);
                                                   }
                                                   else
                                                   {
                                                      addr454:
                                                      §§push(_loc1_.currentCustomer);
                                                      if(_loc11_ || Boolean(_loc1_))
                                                      {
                                                         §§pop().clip.gotoAndPlay("stand");
                                                         _loc1_.clip.bubble.visible = false;
                                                         if(!(_loc12_ && _loc2_))
                                                         {
                                                            _loc1_.useTimingSpacing = _loc1_.shorterTimingSpacing;
                                                         }
                                                         else
                                                         {
                                                            addr498:
                                                            §§push(_loc1_.currentCustomer.order);
                                                            if(_loc11_)
                                                            {
                                                               addr517:
                                                               if(§§pop() != null && _loc1_.currentCustomer && §§pop() - _loc1_.timeActivated)
                                                               {
                                                                  if(!(_loc12_ && Boolean(_loc1_)))
                                                                  {
                                                                     addr536:
                                                                     _loc1_.finishPlacingOrder();
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr543);
                                                               }
                                                            }
                                                            addr512:
                                                            §§push(§§pop().length > 0);
                                                            if(_loc11_)
                                                            {
                                                            }
                                                            §§goto(addr517);
                                                         }
                                                      }
                                                      §§goto(addr512);
                                                      §§push(§§pop().order);
                                                   }
                                                   §§goto(addr540);
                                                }
                                                §§push(_loc1_.currentTicket);
                                                if(_loc11_ || Boolean(_loc1_))
                                                {
                                                   §§push(_loc1_.stepArray);
                                                   if(!(_loc12_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(_loc1_.whichStep);
                                                      if(!_loc12_)
                                                      {
                                                         §§pop().drawTicketDetails(§§pop()[§§pop()][0]);
                                                         addr431:
                                                      }
                                                      §§goto(addr540);
                                                   }
                                                   addr411:
                                                   §§pop().drawTicketDetails(§§pop()[§§pop()][0],_loc1_.stepArray[_loc1_.whichStep][1]);
                                                   if(!_loc12_)
                                                   {
                                                      §§goto(addr431);
                                                   }
                                                   §§goto(addr540);
                                                }
                                                addr409:
                                                §§goto(addr411);
                                                §§push(_loc1_.whichStep);
                                             }
                                             else
                                             {
                                                addr386:
                                                _loc5_ = §§pop();
                                             }
                                             addr407:
                                             §§goto(addr409);
                                             §§push(_loc1_.stepArray);
                                          }
                                          else
                                          {
                                             §_-5i§.§_-CE§("Multi Bubble.");
                                             if(_loc11_)
                                             {
                                                §§push(_loc1_.currentCustomer.order);
                                                if(!(_loc11_ || Boolean(this)))
                                                {
                                                   §§goto(addr512);
                                                }
                                                §§goto(addr540);
                                             }
                                          }
                                          addr399:
                                          _loc1_.clip.bubble.bg2.gotoAndPlay(1);
                                          addr405:
                                          §§goto(addr407);
                                          §§push(_loc1_.currentTicket);
                                       }
                                       _loc3_ = Number(§§pop()[§§pop()][0]);
                                       if(!_loc12_)
                                       {
                                          addr279:
                                          §§push(_loc1_.currentCustomer.order);
                                          if(!(_loc12_ && Boolean(this)))
                                          {
                                             §§goto(addr288);
                                             §§push(_loc3_);
                                          }
                                          §§goto(addr517);
                                       }
                                       §§goto(addr405);
                                    }
                                    §§goto(addr386);
                                    §§push(§§pop()[_loc1_.stepArray[_loc1_.whichStep][0]][_loc1_.stepArray[_loc1_.whichStep][1]]);
                                 }
                                 _loc1_.clip.bubble.clip.gotoAndStop(_loc5_);
                                 _loc1_.clip.bubble.bg.gotoAndPlay(1);
                                 §§goto(addr399);
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc1_.whichStep);
                           if(!(_loc12_ && _loc2_))
                           {
                              §§push(_loc1_.stepArray);
                              if(!_loc12_)
                              {
                                 if(§§pop() == §§pop().length)
                                 {
                                    if(_loc11_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr454);
                                    }
                                    §§goto(addr540);
                                 }
                                 else
                                 {
                                    §§push(_loc1_.currentCustomer != null);
                                    if(!(_loc12_ && Boolean(_loc3_)))
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§goto(addr498);
                                       }
                                       §§goto(addr517);
                                    }
                                 }
                                 §§goto(addr517);
                              }
                           }
                        }
                     }
                     §§goto(addr517);
                     §§push(§§pop() > §§pop().length);
                  }
                  var _loc2_:Number = §§pop();
                  if(!(_loc12_ && Boolean(this)))
                  {
                     addr699:
                     §§push(_loc1_.timeActivated);
                     if(_loc11_)
                     {
                        §§push(-1);
                        if(!_loc12_)
                        {
                           §§push(§§pop() > §§pop());
                           §§push(§§pop() > §§pop());
                           if(!(_loc12_ && Boolean(this)))
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc12_)
                                 {
                                 }
                                 §§goto(addr656);
                              }
                              addr595:
                              if(§§pop())
                              {
                                 §§push(_loc1_.isActive);
                                 §§push(_loc1_.isActive);
                                 if(_loc11_ || Boolean(_loc1_))
                                 {
                                    addr612:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(!_loc1_.isPlacingOrder);
                                    }
                                    §§push(§§pop());
                                 }
                              }
                              §§goto(addr854);
                           }
                           if(§§pop())
                           {
                              if(_loc11_ || Boolean(this))
                              {
                                 §§pop();
                                 if(!(_loc12_ && Boolean(this)))
                                 {
                                    addr716:
                                    §§push(_loc1_.whichStep);
                                    if(_loc11_ || Boolean(_loc1_))
                                    {
                                       §§push(0);
                                    }
                                    _loc8_ = §§pop();
                                    §§goto(addr717);
                                 }
                                 §§goto(addr656);
                              }
                           }
                           addr640:
                           if(§§pop())
                           {
                              if(!_loc1_.triedToRestart)
                              {
                                 if(!_loc12_)
                                 {
                                    _loc1_.whichStep = -1;
                                    if(_loc11_ || Boolean(_loc3_))
                                    {
                                       addr656:
                                       _loc1_.isPlacingOrder = true;
                                       if(!(_loc12_ && Boolean(this)))
                                       {
                                          _loc1_.triedToRestart = true;
                                          if(_loc11_ || Boolean(_loc3_))
                                          {
                                             _loc1_.timeActivated = _loc1_.gameObj.§_-6v§.gameplayTimer;
                                          }
                                          addr854:
                                          if(_loc1_.isActive)
                                          {
                                             if(_loc11_)
                                             {
                                                addr859:
                                                _loc1_.worker.animateModel();
                                             }
                                          }
                                       }
                                       else
                                       {
                                          try
                                          {
                                             addr717:
                                             §§push(_loc1_.currentTicket.ticketNumber);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc12_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      try
                                                      {
                                                         addr740:
                                                         §§push(_loc1_.currentCustomer);
                                                         if(!(_loc12_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(§§pop().customerType);
                                                            if(_loc11_ || Boolean(_loc1_))
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc12_)
                                                               {
                                                               }
                                                            }
                                                            addr785:
                                                            _loc8_ = §§pop();
                                                            if(!_loc12_)
                                                            {
                                                               addr800:
                                                               §§push(§_-5i§);
                                                               §§push("STUCK: " + _loc6_);
                                                               if(!(_loc12_ && Boolean(this)))
                                                               {
                                                                  §§push(", ");
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr837:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc11_ || Boolean(_loc2_))
                                                                     {
                                                                        addr838:
                                                                        §§push(_loc7_);
                                                                        if(_loc11_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(", ");
                                                                           }
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr838);
                                                                     §§push(_loc8_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     §§goto(addr837);
                                                                  }
                                                               }
                                                               §§pop().error(§§pop());
                                                               if(_loc11_ || Boolean(this))
                                                               {
                                                                  §§goto(addr854);
                                                               }
                                                               addr788:
                                                            }
                                                         }
                                                         addr782:
                                                         §§goto(addr785);
                                                      }
                                                      catch(err:Error)
                                                      {
                                                         try
                                                         {
                                                            addr780:
                                                            §§goto(addr782);
                                                         }
                                                         catch(err:Error)
                                                         {
                                                            §§goto(addr800);
                                                         }
                                                      }
                                                      §§push(Number(§§pop().order.length));
                                                   }
                                                   §§goto(addr859);
                                                }
                                             }
                                             _loc7_ = §§pop();
                                             if(_loc11_ || Boolean(_loc2_))
                                             {
                                                §§goto(addr780);
                                             }
                                             §§goto(addr788);
                                          }
                                          catch(err:Error)
                                          {
                                             §§goto(addr740);
                                          }
                                       }
                                       return;
                                    }
                                    addr700:
                                    §§push(0);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc12_)
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc11_ || Boolean(_loc3_))
                                          {
                                             §§push(0);
                                          }
                                       }
                                       §§goto(addr716);
                                    }
                                 }
                                 §§goto(addr717);
                              }
                              else
                              {
                                 §§push(0);
                                 if(_loc11_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc12_ && Boolean(_loc2_))
                                    {
                                    }
                                    §§goto(addr716);
                                 }
                              }
                              §§goto(addr716);
                              §§push(§§pop());
                           }
                           §§goto(addr854);
                        }
                        addr639:
                        §§goto(addr640);
                        §§push(§§pop() <= §§pop());
                     }
                     _loc6_ = §§pop();
                     §§goto(addr700);
                  }
                  §§push(_loc2_);
                  if(!_loc12_)
                  {
                     §§push(150);
                     if(!(_loc12_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop() >= §§pop());
                        if(!_loc12_)
                        {
                           §§goto(addr595);
                        }
                        §§goto(addr612);
                     }
                     §§goto(addr639);
                  }
                  §§goto(addr699);
               }
               §§push(§§pop().§_-6v§.gameplayTimer);
               if(_loc11_)
               {
                  §§goto(addr549);
               }
               §§goto(addr553);
            }
            addr147:
            var _loc9_:* = _loc1_;
            §§push(_loc9_.whichStep);
            if(_loc11_ || Boolean(_loc1_))
            {
               §§push(§§pop() + 1);
            }
            var _loc10_:* = §§pop();
            if(_loc11_ || Boolean(_loc3_))
            {
               _loc9_.whichStep = _loc10_;
            }
            §§push(_loc1_.whichStep);
            §§push(0);
            if(_loc11_)
            {
               §§push(§§pop() >= §§pop());
               if(!(_loc12_ && Boolean(_loc1_)))
               {
                  addr185:
                  §§push(§§pop());
                  if(_loc11_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        §§goto(addr194);
                     }
                     §§goto(addr215);
                  }
               }
               §§goto(addr517);
            }
            §§goto(addr225);
         }
         if(§§pop())
         {
            §§pop();
            §§push(_loc1_.isActive);
            if(_loc11_)
            {
               §§push(§§pop());
            }
            §§goto(addr185);
         }
         if(§§pop())
         {
            if(_loc11_)
            {
               _loc9_ = _loc1_;
               §§push(_loc9_.stepTimer);
               if(_loc11_ || Boolean(_loc2_))
               {
                  §§push(§§pop() + 1);
               }
               _loc10_ = §§pop();
               if(_loc11_)
               {
                  _loc9_.stepTimer = _loc10_;
               }
               §§push(_loc1_.currentCustomer.order);
               §§push(null);
               if(!_loc12_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc11_ || Boolean(_loc2_))
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        §§push(_loc1_.currentCustomer);
                        if(!(_loc12_ && Boolean(_loc1_)))
                        {
                           §§push(§§pop().order.length == 0);
                        }
                        §§goto(addr279);
                     }
                     if(§§pop())
                     {
                        _loc1_.currentCustomer.order = _loc1_.gameObj.customerData.getCustomerOrder(_loc1_.currentCustomer.customerType);
                     }
                     §§push(_loc1_.stepTimer);
                     §§push(_loc1_.useTimingSpacing);
                     if(!(_loc12_ && Boolean(_loc1_)))
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc11_)
                           {
                              §§goto(addr147);
                           }
                           §§goto(addr536);
                        }
                     }
                     §§goto(addr549);
                  }
               }
               §§goto(addr517);
            }
            §§goto(addr498);
         }
         §§goto(addr540);
      }
      
      public function finishPlacingOrder() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TakeOrderScreen = this;
         if(_loc3_)
         {
            _loc1_.isPlacingOrder = false;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.gameObj.hud.startTransition("order");
            }
         }
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc1_:TakeOrderScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new orderBackdropMC();
         if(!(_loc7_ && Boolean(_loc1_)))
         {
            _loc4_ = 1;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               while(true)
               {
                  §§push(10);
                  if(_loc8_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           §§push(1);
                           break loop0;
                        }
                     }
                     else
                     {
                        _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
                        §§push(_loc4_ + 1);
                        if(_loc7_ && Boolean(_loc1_))
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        if(_loc8_ || Boolean(_loc1_))
                        {
                           continue loop0;
                        }
                        addr128:
                        _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
                           if(_loc7_ && Boolean(this))
                           {
                           }
                           §§goto(addr162);
                        }
                     }
                     _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
                     addr162:
                     var _loc6_:BitmapData = new BitmapData(706,552,true,0);
                     _loc6_.draw(_loc5_,null,null,null,new Rectangle(0,0,706,552));
                     _loc3_ = new Bitmap(_loc6_);
                     _loc5_ = null;
                     return _loc3_;
                  }
                  break;
               }
               loop2:
               while(§§pop() <= §§pop())
               {
                  _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
                  §§push(_loc4_ + 1);
                  if(!(_loc7_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(_loc7_)
                     {
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                     addr126:
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§goto(addr126);
                  }
               }
               §§goto(addr128);
            }
            break;
         }
         _loc4_ = §§pop();
         §§goto(addr125);
      }
      
      public function initStationUpgrades() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:TakeOrderScreen = this;
         if(!_loc4_)
         {
            if(_loc1_.backdropBitmap != null)
            {
               if(_loc4_)
               {
               }
               try
               {
                  addr28:
                  _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     addr60:
                     _loc1_.backdropBitmap = null;
                     if(_loc4_ && _loc2_)
                     {
                     }
                     addr95:
                     _loc1_.countertopMC = new giveorder_countertop();
                     _loc1_.countertopMC.gotoAndStop(_loc1_.gameObj.userData.lobbyWallpaper);
                  }
               }
               catch(err:Error)
               {
                  var _loc2_:* = err;
                  §§goto(addr60);
               }
               _loc1_.clip.countertop.addChild(_loc1_.countertopMC);
               return;
            }
            _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.clip.backdrop_holder.addChild(_loc1_.backdropBitmap);
               _loc1_.backdropBitmap.x = -24;
               _loc1_.backdropBitmap.y = -40;
               §§goto(addr95);
            }
            §§goto(addr60);
         }
         _loc1_.backdropBitmap.bitmapData.dispose();
         §§goto(addr28);
      }
   }
}

