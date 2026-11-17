package wingGame.managers
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import wingGame.data.FurniData;
   import wingGame.data.UserData;
   import wingGame.models.Customer;
   import wingGame.models.FurnitureItem;
   import wingGame.screens.OrderScreen;
   
   public class CustomerManager
   {
      public var gameObj:§_-BY§;
      
      public var totalCustomers:Number = 0;
      
      public var orderline:Array;
      
      public var leaveline:Array;
      
      public var waitline:Array;
      
      public var numberOfCustomers:Array;
      
      public var customerLineup:Array;
      
      public var minSpawnTiming:Number = 0;
      
      public var spawnTiming:Number = 0;
      
      public var firstSpawnTiming:Number = 750;
      
      public var lastSpawnTime:Number = 0;
      
      public var totalTime:Number = 0;
      
      public var showNewCustomer:Boolean = false;
      
      public var showNewCustomerNum:Number = 1;
      
      public var showNoPapa:Boolean = false;
      
      public function CustomerManager(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.orderline = [];
            if(!_loc4_)
            {
               this.leaveline = [];
               if(_loc3_)
               {
               }
               addr60:
               this.customerLineup = [];
            }
            this.waitline = [];
            this.numberOfCustomers = [4,4,5,5,5,5,5,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7];
            §§goto(addr60);
         }
         super();
         var _loc2_:CustomerManager = this;
         if(_loc3_)
         {
            _loc2_.gameObj = param1;
            if(!(_loc4_ && Boolean(param1)))
            {
               _loc2_.setupManager();
            }
         }
      }
      
      public function setupManager() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:CustomerManager = this;
         _loc1_.totalCustomers = 0;
         if(!_loc3_)
         {
            _loc1_.orderline = [];
            if(_loc2_)
            {
               _loc1_.leaveline = [];
               _loc1_.waitline = [];
               _loc1_.customerLineup = [];
            }
            if(_loc1_.gameObj.userData.currentDay == 1)
            {
               _loc1_.trainingLineup();
            }
            else
            {
               _loc1_.decideLineup();
            }
            §§goto(addr60);
         }
         addr60:
      }
      
      public function trainingLineup() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:CustomerManager = this;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.customerLineup = [9,12];
         }
      }
      
      public function decideLineup() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:CustomerManager = this;
         §§push(_loc1_.gameObj.userData.getRank());
         if(_loc13_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = 0;
         if(_loc13_)
         {
            §§push(_loc3_);
            if(!(_loc14_ && _loc3_))
            {
               if(§§pop() >= _loc1_.numberOfCustomers.length)
               {
                  if(_loc14_ && Boolean(_loc1_))
                  {
                  }
                  addr105:
                  addr100:
                  addr102:
                  var _loc5_:* = Number(_loc1_.numberOfCustomers[_loc4_]);
                  §§push(_loc5_);
                  if(!_loc14_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc13_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc5_ = §§pop();
                  var _loc6_:Array = _loc1_.gameObj.userData.getCustomerPool(_loc5_);
                  §§push(_loc1_.gameObj.userData.getNewestCustomer());
                  if(!_loc14_)
                  {
                     §§push(§§pop());
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc1_.gameObj.userData.getCloserCustomer());
                  if(_loc13_ || _loc3_)
                  {
                     §§push(§§pop());
                  }
                  var _loc8_:* = §§pop();
                  §§push(§_-5i§);
                  §§push("-- Possible Customers: " + _loc6_.toString());
                  if(_loc13_ || _loc3_)
                  {
                     §§push(§§pop() + ".  New Customer: ");
                     if(!(_loc14_ && Boolean(this)))
                     {
                        §§push(_loc7_);
                        if(_loc13_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc13_)
                           {
                           }
                        }
                        addr180:
                        §§pop().§_-CE§(§§pop() + §§pop());
                        _loc1_.customerLineup = [];
                        addr179:
                        §§push(_loc7_);
                        §§push(0);
                        if(!(_loc14_ && Boolean(_loc1_)))
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!_loc14_)
                              {
                                 §§push(_loc1_.customerLineup);
                                 if(_loc13_ || Boolean(_loc1_))
                                 {
                                    §§push(_loc7_);
                                    if(_loc13_)
                                    {
                                       §§pop().push(§§pop());
                                       addr488:
                                       if(_loc13_ || Boolean(this))
                                       {
                                          if(_loc6_.indexOf(_loc7_) > -1)
                                          {
                                             if(_loc13_ || Boolean(_loc2_))
                                             {
                                                _loc6_.splice(_loc6_.indexOf(_loc7_),1);
                                                if(_loc14_ && Boolean(_loc2_))
                                                {
                                                }
                                                addr264:
                                                §§push(§_-5i§);
                                                §§push("Already Earned Customer " + _loc7_);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() + ".");
                                                }
                                                §§pop().§_-CE§(§§pop());
                                                _loc1_.showNewCustomer = false;
                                             }
                                          }
                                          addr491:
                                          §§push(_loc5_);
                                          if(!_loc14_)
                                          {
                                             _loc5_ = §§pop() - 1;
                                             §§push(this.gameObj);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop().userData);
                                                if(!(_loc14_ && Boolean(_loc1_)))
                                                {
                                                   §§push(§§pop().alreadyEarnedCustomer(_loc7_));
                                                   if(!_loc14_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr264);
                                                      }
                                                      else
                                                      {
                                                         §§push(§_-5i§);
                                                         §§push("Customer " + _loc7_);
                                                         if(_loc13_)
                                                         {
                                                            §§push(§§pop() + " is new!");
                                                         }
                                                         §§pop().§_-CE§(§§pop());
                                                         if(!(_loc14_ && Boolean(_loc1_)))
                                                         {
                                                            _loc1_.showNewCustomer = true;
                                                            _loc1_.showNewCustomerNum = _loc7_;
                                                         }
                                                      }
                                                      addr480:
                                                      _loc6_.splice(_loc6_.indexOf(_loc9_),1);
                                                      if(_loc14_)
                                                      {
                                                      }
                                                      addr519:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         while(true)
                                                         {
                                                            if(§§pop() < _loc5_)
                                                            {
                                                               if(_loc6_.length > 0)
                                                               {
                                                                  §§push(_loc6_.length);
                                                                  if(!(_loc13_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  _loc10_ = §§pop();
                                                                  _loc11_ = Math.floor(Math.random() * _loc10_);
                                                                  _loc12_ = Number(_loc6_[_loc11_]);
                                                                  §§push(_loc1_.customerLineup);
                                                                  if(!(_loc14_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§pop().push(§§pop());
                                                                        if(!(_loc14_ && _loc3_))
                                                                        {
                                                                           _loc6_.splice(_loc11_,1);
                                                                           if(_loc13_ || Boolean(this))
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr592:
                                                                     §§pop().push(§§pop());
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc1_.gameObj);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(§§pop().userData);
                                                                           if(!(_loc14_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(§§pop().readyToShowPapa());
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc14_ && Boolean(_loc1_))
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr635);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr634:
                                                                                 if(!(_loc14_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(_loc1_.gameObj);
                                                                                 }
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              §§goto(addr635);
                                                                           }
                                                                           §§goto(addr631);
                                                                        }
                                                                        addr631:
                                                                        §§push(§§pop().isEveryoneGold());
                                                                        if(_loc13_)
                                                                        {
                                                                           §§goto(addr634);
                                                                        }
                                                                        addr635:
                                                                        if(§§pop())
                                                                        {
                                                                           _loc1_.showNoPapa = true;
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc1_.showNoPapa = false;
                                                                        }
                                                                        §_-5i§.§_-CE§("Chosen Customers Today: " + this.customerLineup);
                                                                        return;
                                                                        §§push(§§pop().userData);
                                                                     }
                                                                     §§goto(addr635);
                                                                  }
                                                                  addr591:
                                                                  §§goto(addr592);
                                                                  §§push(_loc8_);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr591);
                                                         }
                                                         §§push(_loc2_);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         _loc2_ = §§pop();
                                                      }
                                                   }
                                                   addr369:
                                                   if(§§pop())
                                                   {
                                                      §§push(§_-5i§);
                                                      §§push("Customer " + _loc7_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() + " is already ordering ");
                                                         if(_loc14_ && Boolean(this))
                                                         {
                                                         }
                                                         addr399:
                                                         §§pop().§_-CE§(§§pop());
                                                         if(_loc13_ || Boolean(this))
                                                         {
                                                         }
                                                         _loc2_ = 0;
                                                         addr505:
                                                      }
                                                      §§push(§§pop() + this.gameObj.userData.getToppingToReveal());
                                                      if(_loc13_ || Boolean(_loc2_))
                                                      {
                                                         §§push(§§pop() + ". Don\'t need to add one in for this.");
                                                      }
                                                      §§goto(addr399);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc1_.gameObj);
                                                   }
                                                   §§goto(addr519);
                                                }
                                                addr319:
                                                if(§§pop().getToppingToReveal() != "none")
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc13_)
                                                   {
                                                      §§push(0);
                                                      if(_loc14_)
                                                      {
                                                      }
                                                      addr423:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §§push(_loc1_.customerLineup);
                                                         if(_loc13_)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!_loc14_)
                                                            {
                                                               if(§§pop().indexOf(§§pop()) == -1)
                                                               {
                                                                  §§push(§_-5i§);
                                                                  §§push("Add Customer " + _loc9_);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(§§pop() + " to order ");
                                                                     if(_loc14_ && Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                     addr454:
                                                                     §§pop().§_-CE§(§§pop());
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc1_.customerLineup);
                                                                     }
                                                                     §§goto(addr480);
                                                                  }
                                                                  §§goto(addr454);
                                                                  §§push(§§pop() + this.gameObj.userData.getToppingToReveal());
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §_-5i§.§_-CE§("Couldn\'t find a Customer to order " + this.gameObj.userData.getToppingToReveal());
                                                      }
                                                      §§goto(addr505);
                                                   }
                                                   addr418:
                                                   _loc9_ = §§pop();
                                                   §§push(_loc9_);
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr423);
                                                      §§push(0);
                                                   }
                                                   _loc5_ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §_-5i§.§_-CE§("No new toppings to feature.");
                                                   if(!(_loc14_ && Boolean(_loc1_)))
                                                   {
                                                      §§goto(addr399);
                                                   }
                                                }
                                                §§goto(addr480);
                                             }
                                             addr411:
                                             §§goto(addr418);
                                             §§push(Number(§§pop().customerData.getCustomerWithTopping(this.gameObj.userData.getToppingToReveal(),_loc6_)));
                                          }
                                          §§goto(addr418);
                                          §§push(§§pop() - 1);
                                       }
                                       §§push(_loc5_);
                                       if(!_loc14_)
                                       {
                                          §§goto(addr491);
                                       }
                                       §§goto(addr399);
                                    }
                                    addr460:
                                    §§pop().push(§§pop());
                                    if(_loc13_ || Boolean(_loc1_))
                                    {
                                       if(_loc6_.indexOf(_loc9_) > -1)
                                       {
                                          if(!(_loc14_ && Boolean(this)))
                                          {
                                             §§goto(addr480);
                                          }
                                          §§goto(addr399);
                                       }
                                       §§goto(addr488);
                                    }
                                 }
                                 §§goto(addr460);
                                 §§push(_loc9_);
                              }
                              §§goto(addr399);
                           }
                           §_-5i§.§_-CE§("Which Topping to Reveal/Feature: " + this.gameObj.userData.getToppingToReveal());
                           if(!(_loc14_ && Boolean(_loc1_)))
                           {
                              addr352:
                              §§push(this.gameObj);
                              if(!_loc14_)
                              {
                                 §§goto(addr319);
                                 §§push(§§pop().userData);
                              }
                              §§push(§§pop().customerData);
                              if(_loc13_ || _loc3_)
                              {
                                 §§push(§§pop().customersHaveTopping(_loc7_,this.gameObj.userData.getToppingToReveal()));
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§goto(addr369);
                              }
                              §§goto(addr411);
                           }
                           §§goto(addr488);
                        }
                        §§push(§§pop() > §§pop());
                        if(_loc13_)
                        {
                           if(§§pop())
                           {
                              if(_loc14_)
                              {
                              }
                           }
                           §§goto(addr369);
                        }
                        §§pop();
                        §§push(_loc1_.gameObj);
                        if(!(_loc14_ && Boolean(this)))
                        {
                           §§goto(addr352);
                        }
                        §§goto(addr411);
                     }
                     §§push(§§pop() + ". Closer Customer: ");
                     if(_loc14_)
                     {
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr179);
                  §§push(_loc8_);
                  addr92:
               }
               else
               {
                  §§push(_loc3_);
                  if(_loc13_)
                  {
                     addr96:
                     §§push(§§pop());
                     if(_loc14_)
                     {
                     }
                     §§goto(addr105);
                  }
               }
            }
            _loc4_ = §§pop();
            §§goto(addr100);
         }
         §§push(_loc1_.numberOfCustomers);
         if(!(_loc14_ && _loc3_))
         {
            §§push(§§pop().length - 1);
            if(!_loc14_)
            {
               §§push(§§pop());
               if(_loc13_ || Boolean(_loc1_))
               {
                  _loc4_ = §§pop();
                  if(_loc13_ || Boolean(_loc2_))
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr105);
               }
            }
            else
            {
               §§goto(addr96);
            }
            §§goto(addr105);
         }
         §§goto(addr102);
      }
      
      public function startSpawningCustomers() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:CustomerManager = this;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.totalTime = _loc1_.gameObj.§_-Bl§;
         }
         var _loc2_:Number = _loc1_.customerLineup.length;
         if(!_loc3_)
         {
            _loc1_.spawnTiming = Math.floor(_loc1_.totalTime / (_loc2_ - 1));
            if(_loc1_.spawnTiming > 1500)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc1_.spawnTiming = 1500;
               }
               addr73:
               _loc1_.spawnTiming = 1800;
               _loc1_.minSpawnTiming = 1800;
               if(_loc4_)
               {
                  if(!_loc1_.gameObj.§_-3f§)
                  {
                     _loc1_.spawnCustomer();
                  }
               }
            }
            _loc1_.minSpawnTiming = Math.min(1200,_loc1_.spawnTiming);
            §§goto(addr73);
         }
      }
      
      public function spawnCustomer() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = false;
         var _loc1_:CustomerManager = this;
         §§push(_loc1_.totalCustomers);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || Boolean(_loc1_))
         {
            §§push(_loc1_.customerLineup);
            if(_loc5_)
            {
               §§goto(addr123);
            }
            if(§§pop() == §§pop().length - 1)
            {
               addr99:
               _loc1_.gameObj.§_-A5§.clip.opensign.sign.gotoAndPlay(2);
               _loc4_ = true;
            }
            _loc1_.addCustomer(_loc3_,_loc4_);
            _loc1_.lastSpawnTime = _loc1_.gameObj.§_-6v§.gameplayTimer;
            §§goto(addr106);
         }
         _loc3_ = §§pop();
         §§push(false);
         if(!_loc6_)
         {
            _loc4_ = §§pop();
            §§push(_loc1_.gameObj);
            if(_loc5_ || Boolean(_loc1_))
            {
               §§push(§§pop().§_-A5§);
               if(!(_loc6_ && _loc2_))
               {
                  §§pop().clicksToStation = 0;
                  if(!_loc6_)
                  {
                     §§goto(addr91);
                     §§push(_loc2_);
                  }
                  addr106:
                  addr123:
                  if(§§pop() < §§pop().length)
                  {
                     §§push(Number(_loc1_.customerLineup[_loc2_]));
                     if(_loc5_ || Boolean(_loc1_))
                     {
                     }
                     addr91:
                     §§push(_loc1_.customerLineup);
                  }
                  return;
               }
            }
         }
         §§goto(addr99);
      }
      
      public function addCustomer(param1:Number, param2:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:CustomerManager = this;
         if(!(_loc8_ && Boolean(this)))
         {
            var _loc5_:* = _loc3_;
            §§push(_loc5_.totalCustomers);
            if(!_loc8_)
            {
               §§push(§§pop() + 1);
            }
            var _loc6_:* = §§pop();
            if(_loc7_ || Boolean(_loc3_))
            {
               _loc5_.totalCustomers = _loc6_;
            }
         }
         var _loc4_:Customer = new Customer(_loc3_.gameObj,param1);
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            _loc3_.gameObj.hud.showCustomerAlert();
         }
      }
      
      public function deleteCustomer(param1:Customer) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:CustomerManager = this;
         var _loc4_:* = -1;
         if(!_loc5_)
         {
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < _loc2_.waitline.length)
            {
               §§push(_loc2_.waitline);
               if(_loc6_)
               {
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     if(§§pop()[§§pop()] == param1)
                     {
                        §§push(_loc3_);
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              _loc4_ = §§pop();
                              if(!_loc5_)
                              {
                                 break;
                              }
                              addr87:
                              _loc2_.shiftCustomersInWaitLine(_loc4_);
                              param1.destroy();
                              param1 = null;
                              if(_loc6_)
                              {
                                 §§push(_loc2_.waitline);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().length == 0);
                                    if(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_ || Boolean(this))
                                          {
                                          }
                                       }
                                       addr135:
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc2_.totalCustomers == _loc2_.customerLineup.length)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    §§pop();
                                    if(_loc6_ || Boolean(this))
                                    {
                                    }
                                    addr144:
                                    return;
                                 }
                                 addr125:
                                 §§goto(addr135);
                                 §§push(§§pop().length == 0);
                              }
                              §§goto(addr125);
                              §§push(_loc2_.orderline);
                           }
                        }
                     }
                     else
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           continue;
                        }
                     }
                     §§push(§§pop() + 1);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  addr85:
                  §§pop().splice(§§pop(),1);
                  §§goto(addr87);
               }
               §§goto(addr85);
               §§push(_loc4_);
            }
            if(_loc4_ > -1)
            {
               §§goto(addr84);
               §§push(_loc2_.waitline);
            }
            §§goto(addr87);
            _loc3_ = §§pop();
         }
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:CustomerManager = this;
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            §§push(_loc1_.waitline);
            if(_loc3_)
            {
               if(§§pop() >= §§pop().length)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     _loc2_ = §§pop();
                     if(_loc3_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              §§push(_loc1_.leaveline);
                              if(!_loc4_)
                              {
                                 if(§§pop() < §§pop().length)
                                 {
                                    §§push(_loc1_.leaveline);
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr192:
                                       §§push(_loc2_);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§pop()[§§pop()].destroy();
                                          §§push(_loc1_.leaveline);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr193:
                                                §§push(null);
                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   §§push(_loc2_ + 1);
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc3_ || Boolean(_loc2_))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                   }
                                                   addr197:
                                                }
                                                while(true)
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   §§push(_loc2_);
                                                   break loop1;
                                                }
                                                addr193:
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr193);
                                       }
                                       addr192:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr199:
                                    while(true)
                                    {
                                       §§push(_loc1_.orderline);
                                       break loop0;
                                    }
                                 }
                                 addr198:
                              }
                              break loop0;
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr197);
                        }
                     }
                     addr161:
                     §§push(0);
                  }
                  §§push(§§pop());
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr199);
               }
               else
               {
                  §§push(_loc1_.waitline);
                  if(_loc3_)
                  {
                     addr187:
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§pop()[§§pop()].destroy();
                        §§push(_loc1_.waitline);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                     }
                     while(true)
                     {
                        §§pop()[§§pop()].destroy();
                        §§push(_loc1_.orderline);
                     }
                     addr187:
                  }
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§pop()[§§pop()] = §§pop();
                        _loc2_++;
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr187);
               }
               addr191:
            }
            break;
         }
         while(§§pop() < §§pop().length)
         {
            §§push(_loc1_.orderline);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  §§goto(addr187);
               }
               §§goto(addr192);
            }
            §§goto(addr191);
         }
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc1_.waitline = null;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.leaveline = null;
            }
            §§goto(addr233);
         }
         _loc1_.orderline = null;
         addr233:
      }
      
      public function getWaitingCustomer(param1:Number) : Customer
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Customer = null;
         var _loc6_:Customer = null;
         var _loc2_:CustomerManager = this;
         var _loc3_:Customer = null;
         if(_loc8_ || Boolean(_loc2_))
         {
            _loc4_ = 0;
         }
         while(_loc4_ < _loc2_.waitline.length)
         {
            _loc5_ = _loc2_.waitline[_loc4_];
            §§push(_loc5_.customerType);
            if(_loc8_ || Boolean(this))
            {
               if(§§pop() == param1)
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc3_ = _loc5_;
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr195);
                  }
               }
               else
               {
                  §§push(_loc4_);
                  if(_loc7_)
                  {
                  }
                  addr77:
                  _loc4_ = §§pop();
               }
               continue;
            }
            §§push(§§pop() + 1);
            if(_loc8_)
            {
               §§push(§§pop());
            }
            §§goto(addr77);
         }
         if(_loc3_ == null)
         {
            if(_loc8_ || Boolean(this))
            {
               §§push(_loc2_.leaveline);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  if(§§pop().length > 0)
                  {
                     if(_loc8_)
                     {
                        §§push(0);
                        if(_loc8_ || Boolean(this))
                        {
                           _loc4_ = §§pop();
                           if(_loc8_ || Boolean(this))
                           {
                              while(true)
                              {
                                 §§push(_loc4_);
                              }
                           }
                        }
                        while(§§pop() < _loc2_.leaveline.length)
                        {
                           §§push(_loc2_.leaveline);
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc6_ = §§pop()[_loc4_];
                  §§push(_loc6_.customerType);
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     if(§§pop() == param1)
                     {
                        if(_loc8_ || Boolean(this))
                        {
                           _loc6_.moveToWaitLine();
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              break;
                           }
                        }
                        break;
                     }
                     §§push(_loc4_);
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        §§push(§§pop() + 1);
                        if(_loc8_)
                        {
                        }
                     }
                     addr189:
                     _loc4_ = §§pop();
                     §§goto(addr190);
                  }
                  §§goto(addr189);
               }
               _loc3_ = _loc6_;
            }
         }
         addr195:
         return _loc3_;
      }
      
      public function shiftCustomersInWaitLine(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Customer = null;
         var _loc6_:* = NaN;
         var _loc2_:CustomerManager = this;
         var _loc3_:OrderScreen = _loc2_.gameObj.§_-A5§;
         var _loc4_:int = param1;
         while(_loc4_ < _loc2_.waitline.length)
         {
            _loc5_ = _loc2_.waitline[_loc4_];
            if(_loc7_ || Boolean(param1))
            {
               §§push(_loc3_.waitLineTargetX);
               if(_loc7_)
               {
                  §§push(§§pop() + _loc4_ * _loc3_.customerSpacing);
                  if(_loc8_)
                  {
                  }
                  addr63:
                  _loc6_ = §§pop();
                  if(_loc7_ || Boolean(_loc3_))
                  {
                  }
                  _loc4_++;
                  continue;
               }
               §§goto(addr63);
               §§push(§§pop());
            }
            _loc5_.shiftInWaitLine(_loc6_);
            if(_loc8_ && Boolean(param1))
            {
               continue;
            }
            §§goto(addr63);
         }
      }
      
      public function shiftCustomersInOrderLine() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Customer = null;
         var _loc5_:* = NaN;
         var _loc1_:CustomerManager = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.§_-A5§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.orderline.length)
         {
            _loc4_ = _loc1_.orderline[_loc3_];
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(_loc2_.orderLineTargetX);
               if(!(_loc7_ && Boolean(this)))
               {
                  §§push(§§pop() + _loc3_ * _loc2_.customerSpacing);
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(§§pop());
                  }
               }
               _loc5_ = §§pop();
               if(_loc7_ && Boolean(_loc3_))
               {
                  continue;
               }
               _loc4_.shiftInOrderLine(_loc5_);
               if(_loc7_ && Boolean(_loc3_))
               {
                  continue;
               }
            }
            _loc3_++;
         }
      }
      
      public function resetAllCustomerContainers() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:CustomerManager = this;
         if(_loc3_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            §§push(_loc1_.waitline);
            if(_loc3_ || Boolean(this))
            {
               if(§§pop() >= §§pop().length)
               {
                  if(_loc3_)
                  {
                     addr80:
                     §§push(0);
                     if(_loc3_)
                     {
                        addr84:
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(_loc2_);
                        }
                        addr112:
                     }
                     while(true)
                     {
                        §§push(_loc1_.orderline);
                        break loop0;
                     }
                     addr113:
                  }
               }
               else
               {
                  §§push(_loc1_.waitline);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§pop()[§§pop()].resetContainer();
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                           }
                           §§goto(addr84);
                        }
                        _loc2_ = §§pop();
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           continue;
                        }
                        §§goto(addr80);
                     }
                     while(true)
                     {
                        §§pop()[§§pop()].resetContainer();
                        if(_loc3_ || _loc3_)
                        {
                        }
                        §§goto(addr117);
                     }
                     addr90:
                  }
                  while(true)
                  {
                     §§goto(addr90);
                     break loop0;
                  }
                  addr117:
                  return;
                  addr89:
               }
               while(true)
               {
                  §§push(_loc2_ + 1);
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr112);
                  }
                  §§goto(addr113);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < §§pop().length)
            {
               §§goto(addr89);
               §§push(_loc1_.orderline);
            }
            §§goto(addr117);
         }
      }
      
      public function updateManager() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:CustomerManager = this;
         §§push(_loc1_.gameObj.§_-6v§.gameplayTimer);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_.gameObj);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop().userData.currentDay);
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§push(1);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(_loc1_.gameObj);
                        if(_loc4_ && _loc2_)
                        {
                        }
                        addr129:
                        if(!§§pop().§_-3f§)
                        {
                           _loc1_.spawnCustomer();
                           if(!_loc3_)
                           {
                              addr211:
                           }
                        }
                        §§goto(addr355);
                     }
                     else
                     {
                        §§push(_loc1_.totalCustomers);
                        if(!_loc4_)
                        {
                           if(§§pop() < _loc1_.customerLineup.length)
                           {
                              if(_loc3_)
                              {
                                 §§push(_loc1_.orderline);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§push(§§pop().length == 0);
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(_loc1_.waitline);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(§§pop().length == 0);
                                             if(_loc3_)
                                             {
                                             }
                                             addr314:
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr322:
                                                   _loc1_.spawnCustomer();
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      addr331:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                             }
                                          }
                                          addr251:
                                          §§push(§§pop().length == 0);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             addr261:
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr269:
                                                   _loc1_.spawnCustomer();
                                                }
                                                else
                                                {
                                                   §§goto(addr322);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                                §§push(_loc1_.lastSpawnTime);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr282:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_ && Boolean(_loc1_))
                                                   {
                                                   }
                                                }
                                                addr352:
                                                if(§§pop() >= §§pop())
                                                {
                                                   _loc1_.spawnCustomer();
                                                }
                                             }
                                          }
                                          §§goto(addr314);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc4_ && _loc3_)
                                          {
                                          }
                                       }
                                       addr201:
                                       if(§§pop())
                                       {
                                          _loc1_.spawnCustomer();
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§goto(addr211);
                                          }
                                          else
                                          {
                                             §§goto(addr269);
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc2_);
                                          §§push(_loc1_.lastSpawnTime);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§push(§§pop() - §§pop());
                                             §§push(_loc1_.minSpawnTiming);
                                             if(_loc4_ && Boolean(this))
                                             {
                                             }
                                             §§goto(addr282);
                                          }
                                          §§push(§§pop() >= §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                addr238:
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr241:
                                                      §§pop();
                                                      §§push(_loc1_.orderline);
                                                      if(_loc3_ || Boolean(_loc1_))
                                                      {
                                                         §§goto(addr251);
                                                      }
                                                      addr302:
                                                      §§push(§§pop().length == 0);
                                                      if(§§pop().length == 0)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr314);
                                                }
                                                §§goto(addr261);
                                             }
                                             addr296:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                addr310:
                                                if(_loc3_)
                                                {
                                                   §§goto(addr302);
                                                   §§push(_loc1_.orderline);
                                                }
                                                §§push(_loc1_.totalCustomers);
                                                §§push(1);
                                             }
                                             §§goto(addr302);
                                          }
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             §§goto(addr310);
                                          }
                                          §§goto(addr331);
                                       }
                                    }
                                    §§pop();
                                    addr194:
                                    §§push(_loc1_.leaveline);
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr201);
                                 §§push(§§pop().length == 0);
                              }
                           }
                           §§goto(addr355);
                        }
                     }
                     §§push(_loc1_.lastSpawnTime);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        §§push(_loc1_.spawnTiming);
                     }
                     §§goto(addr352);
                  }
                  addr313:
                  §§goto(addr314);
                  §§push(§§pop() == §§pop());
               }
               §§push(_loc1_.firstSpawnTiming);
               if(_loc3_)
               {
                  §§goto(addr296);
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
               }
               §§goto(addr352);
            }
            §§push(Boolean(§§pop().§_-3f§));
            §§push(Boolean(§§pop().§_-3f§));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(_loc1_.gameObj);
                     if(!_loc4_)
                     {
                        §§push(§§pop().§_-DZ§);
                        §§push(5);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc3_ || _loc2_)
                           {
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr313);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr201);
               }
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc1_.orderline);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop().length == 0);
                     }
                     §§goto(addr251);
                  }
                  if(§§pop())
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        _loc1_.spawnCustomer();
                        if(_loc4_ && _loc3_)
                        {
                        }
                        §§goto(addr355);
                     }
                     §§goto(addr194);
                  }
                  else
                  {
                     §§goto(addr129);
                     §§push(_loc1_.gameObj);
                  }
                  §§goto(addr129);
               }
               §§goto(addr296);
            }
            §§goto(addr238);
         }
         addr355:
      }
      
      public function outOfCustomers(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:CustomerManager = this;
         var _loc3_:Boolean = false;
         if(!_loc5_)
         {
            if(_loc2_.totalCustomers == _loc2_.customerLineup.length)
            {
               §§push(param1 == true);
               if(_loc4_)
               {
                  §§push(§§pop() && §§pop().length == 0);
                  if(§§pop() && §§pop().length == 0)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§pop();
                        addr81:
                        §§push(_loc2_.leaveline);
                        if(_loc4_)
                        {
                           §§push(§§pop().length == 0);
                        }
                        if(§§pop().length == 0)
                        {
                           if(!_loc5_)
                           {
                              _loc3_ = true;
                           }
                           else
                           {
                              §§goto(addr155);
                           }
                        }
                        else
                        {
                           §§push(param1);
                           §§push(false);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           if(!§§pop())
                           {
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr174);
                     }
                     §§pop();
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(_loc2_.waitline);
                        if(!_loc5_)
                        {
                           §§push(§§pop().length <= 1);
                           if(_loc4_ || Boolean(this))
                           {
                              §§goto(addr133);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr140);
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(_loc2_.orderline);
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              §§goto(addr81);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr81);
               }
               §§goto(addr180);
            }
            addr179:
            addr180:
            return §§pop();
            §§push(_loc3_);
         }
         §§goto(addr179);
      }
      
      private function getBonusesWithinRange(param1:String, param2:Number) : Array
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc11_:* = 0;
         var _loc3_:CustomerManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:OrderScreen = _loc3_.gameObj.§_-A5§;
         var _loc6_:Array = [];
         if(_loc12_)
         {
            §§push(param1);
            if(_loc12_)
            {
               addr76:
               if(§§pop() == "waitline")
               {
                  addr72:
                  if(!(_loc13_ && Boolean(param2)))
                  {
                     §§push(0);
                     if(_loc12_ || Boolean(_loc3_))
                     {
                        §§push(1);
                        if(_loc12_)
                        {
                           §§push(null);
                           if(_loc12_)
                           {
                              _loc7_ = §§pop();
                           }
                        }
                        addr74:
                        _loc7_ = §§pop();
                     }
                     addr73:
                     §§goto(addr74);
                     §§push(null);
                  }
                  §§goto(addr73);
                  §§push(2);
               }
               else
               {
                  §§push(param1);
               }
               §§push(param2);
               if(!_loc13_)
               {
                  §§push(0);
                  if(!_loc13_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(0);
                        if(_loc12_)
                        {
                           §§push(1);
                           if(_loc12_)
                           {
                              §§push(2);
                              if(_loc12_)
                              {
                                 §§push(null);
                                 if(_loc12_ || Boolean(_loc3_))
                                 {
                                    _loc8_ = §§pop();
                                 }
                              }
                           }
                           else
                           {
                              addr195:
                              §§push(10);
                              if(_loc12_)
                              {
                                 §§push(null);
                                 if(!_loc13_)
                                 {
                                    addr201:
                                    _loc8_ = §§pop();
                                 }
                              }
                           }
                           addr237:
                           §§push(null);
                           if(_loc12_ || Boolean(this))
                           {
                              _loc8_ = §§pop();
                           }
                        }
                        else
                        {
                           addr254:
                           §§push(null);
                        }
                        addr255:
                        _loc8_ = §§pop();
                     }
                     else
                     {
                        §§push(param2);
                        if(!_loc13_)
                        {
                           §§push(1);
                           if(_loc13_)
                           {
                           }
                           addr210:
                           if(§§pop() == §§pop())
                           {
                              if(_loc12_)
                              {
                                 §§push(10);
                                 if(_loc12_ || Boolean(this))
                                 {
                                    addr221:
                                    §§push(11);
                                    if(!(_loc13_ && Boolean(param2)))
                                    {
                                       addr229:
                                       §§push(12);
                                       if(!(_loc13_ && Boolean(this)))
                                       {
                                          §§goto(addr237);
                                       }
                                       §§goto(addr255);
                                    }
                                 }
                                 §§goto(addr254);
                              }
                              else
                              {
                                 addr251:
                                 §§push(13);
                              }
                              §§goto(addr254);
                           }
                           else
                           {
                              addr249:
                              if(param2 == 5)
                              {
                                 §§goto(addr251);
                              }
                           }
                        }
                        addr148:
                        §§push(2);
                        if(_loc12_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§push(5);
                              if(_loc12_ || Boolean(param1))
                              {
                                 §§push(6);
                                 if(!_loc13_)
                                 {
                                    §§push(7);
                                    if(_loc12_)
                                    {
                                       §§push(null);
                                       if(!_loc13_)
                                       {
                                          addr169:
                                          _loc8_ = §§pop();
                                       }
                                       else
                                       {
                                          §§goto(addr201);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr229);
                                 }
                                 §§goto(addr237);
                              }
                              else
                              {
                                 addr187:
                                 §§push(9);
                                 if(_loc12_ || Boolean(param1))
                                 {
                                    §§goto(addr195);
                                 }
                                 else
                                 {
                                    §§goto(addr254);
                                 }
                              }
                              §§goto(addr254);
                           }
                           else
                           {
                              §§push(param2);
                              if(_loc12_ || Boolean(_loc3_))
                              {
                                 addr180:
                                 §§push(3);
                                 if(_loc12_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(8);
                                       if(_loc12_)
                                       {
                                          §§goto(addr187);
                                       }
                                       else
                                       {
                                          §§goto(addr221);
                                       }
                                    }
                                    else
                                    {
                                       §§push(param2);
                                       if(_loc13_)
                                       {
                                       }
                                       §§goto(addr249);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr210);
                     }
                     addr257:
                     var _loc9_:Boolean = false;
                     if(_loc12_)
                     {
                        §§push(param1 == "orderline");
                        if(_loc12_ || Boolean(_loc3_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc13_ && Boolean(param2)))
                              {
                                 §§pop();
                                 if(_loc12_ || Boolean(param1))
                                 {
                                 }
                                 addr309:
                                 _loc9_ = true;
                                 addr310:
                                 var _loc10_:int = 0;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc10_);
                                    while(§§pop() < _loc5_.furniItems.length)
                                    {
                                       §§push(_loc5_.furniItems[_loc10_].data.special != "none");
                                       §§push(_loc5_.furniItems[_loc10_].data.special != "none");
                                       if(!(_loc13_ && Boolean(_loc3_)))
                                       {
                                          if(§§pop())
                                          {
                                             addr356:
                                             if(!_loc13_)
                                             {
                                                §§pop();
                                                addr415:
                                                §§push(_loc5_.furniItems[_loc10_].data.special == FurniData.SPECIAL_SCORE);
                                                if(_loc12_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                §§push(!§§pop());
                                                §§push(!§§pop());
                                                if(!(_loc13_ && Boolean(this)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc13_ && Boolean(_loc3_)))
                                                      {
                                                         addr432:
                                                         §§pop();
                                                         §§push(_loc5_.furniItems[_loc10_].data.special == FurniData.SPECIAL_COMICS);
                                                         if(_loc12_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc13_)
                                                            {
                                                            }
                                                         }
                                                         §§push(!§§pop());
                                                         if(!(_loc13_ && Boolean(param1)))
                                                         {
                                                            addr467:
                                                            if(§§pop())
                                                            {
                                                               §§push(int(_loc5_.furniItems[_loc10_].xtile));
                                                               if(_loc12_)
                                                               {
                                                                  _loc11_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc11_);
                                                                     if(_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop() >= _loc5_.furniItems[_loc10_].xtile + _loc5_.furniItems[_loc10_].data.width)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(_loc8_.indexOf(_loc11_) > -1);
                                                                     _loc11_++;
                                                                  }
                                                                  addr505:
                                                               }
                                                               continue;
                                                            }
                                                            continue loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                            }
                                                            addr496:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_.push(_loc5_.furniItems[_loc10_]);
                                                                  addr503:
                                                                  continue loop0;
                                                               }
                                                               _loc11_++;
                                                               §§goto(addr505);
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr496);
                                                      }
                                                   }
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§pop();
                                             if(_loc5_.furniItems[_loc10_].isOccupied != false)
                                             {
                                                continue loop0;
                                             }
                                             if(!(_loc12_ || Boolean(this)))
                                             {
                                                break;
                                             }
                                             §§push(!_loc9_);
                                             if(!!_loc9_)
                                             {
                                                §§pop();
                                                if(!(_loc12_ || Boolean(param2)))
                                                {
                                                   continue loop0;
                                                }
                                                §§push(_loc5_.furniItems[_loc10_].data.special != FurniData.SPECIAL_ARCADE);
                                                if(_loc5_.furniItems[_loc10_].data.special != FurniData.SPECIAL_ARCADE)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc13_ && Boolean(_loc3_)))
                                                      {
                                                         §§goto(addr415);
                                                         §§push(_loc5_.furniItems[_loc10_].data.special == FurniData.SPECIAL_BOOK);
                                                      }
                                                      §§goto(addr503);
                                                   }
                                                   §§goto(addr432);
                                                }
                                                §§goto(addr415);
                                             }
                                             §§goto(addr467);
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc12_ || Boolean(param2))
                                             {
                                                §§goto(addr356);
                                             }
                                             §§goto(addr496);
                                          }
                                          §§goto(addr356);
                                       }
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§goto(addr432);
                                          §§push(_loc5_.furniItems[_loc10_].data.special == FurniData.SPECIAL_NEWSPAPER);
                                       }
                                       §§goto(addr467);
                                    }
                                    return _loc6_;
                                    _loc10_++;
                                 }
                                 addr308:
                              }
                           }
                        }
                        addr300:
                        if(§§pop())
                        {
                           if(_loc12_ || Boolean(_loc3_))
                           {
                              §§goto(addr308);
                           }
                        }
                        §§goto(addr310);
                     }
                     §§push(param2 == 0);
                     if(_loc12_)
                     {
                        §§goto(addr300);
                     }
                     §§goto(addr309);
                  }
                  if(§§pop() == §§pop())
                  {
                     §§push(3);
                     if(!(_loc13_ && Boolean(param2)))
                     {
                        §§push(4);
                        if(_loc12_ || Boolean(this))
                        {
                           §§push(5);
                           if(!_loc13_)
                           {
                              §§push(null);
                              if(!(_loc13_ && Boolean(_loc3_)))
                              {
                                 _loc8_ = §§pop();
                              }
                              else
                              {
                                 §§goto(addr169);
                              }
                           }
                        }
                        §§goto(addr254);
                     }
                     else
                     {
                        §§goto(addr187);
                     }
                  }
                  else
                  {
                     §§push(param2);
                     if(!(_loc13_ && Boolean(param2)))
                     {
                        §§goto(addr148);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr257);
               }
               §§push(4);
               if(!_loc13_)
               {
                  §§goto(addr210);
               }
               §§goto(addr249);
            }
            if(§§pop() == "orderline")
            {
            }
            §§goto(addr76);
         }
         §§goto(addr72);
         §§push(1);
      }
      
      public function updateCustomersForBonuses() : void
      {
         var manager:CustomerManager;
         var data:UserData;
         var i:Number;
         var maxPerLine:Number;
         var customer:Customer;
         var available:Array;
         var gotBonus:Boolean;
         var lines:Array;
         var ln:int;
         var whichLine:Array;
         var whichVariation:Number;
         var chooseIndex:Number;
         var furni:FurnitureItem;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         §§push(NaN);
         if(_loc4_)
         {
            §§pop().§§slot[3] = §§pop();
            §§push(§§newactivation());
            if(_loc4_ || _loc3_)
            {
               §§push(null);
               if(_loc4_)
               {
                  §§pop().§§slot[5] = §§pop();
                  if(_loc4_)
                  {
                     §§push(§§newactivation());
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§pop().§§slot[10] = §§pop();
                     }
                  }
                  §§push(§§newactivation());
                  §§push(NaN);
                  if(_loc4_)
                  {
                  }
                  addr132:
                  §§pop().§§slot[4] = §§pop();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc4_)
                     {
                        addr144:
                        §§pop().§§slot[6] = null;
                        addr143:
                        if(_loc3_)
                        {
                        }
                        addr167:
                        i = 0;
                        addr164:
                        loop0:
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop().§§slot[3]);
                              loop1:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(§§pop() >= §§pop().§§slot[1].gameObj.§_-A5§.furniItems.length)
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop().§§slot[1]);
                                          }
                                          loop54:
                                          while(true)
                                          {
                                             §§push(Math.ceil(Math.random() * 4));
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§pop().§§slot[11] = §§pop();
                                                §§push(§§newactivation());
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   loop55:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      loop52:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         loop51:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§§slot[8]);
                                                            loop50:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               loop49:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§§slot[9]);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().getBonusesWithinRange(§§pop()[§§pop()],i));
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§pop().§§slot[6] = §§pop();
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           §§push(available);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              loop56:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() != null);
                                                                                 §§push(§§pop() != null);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             §§push(available);
                                                                                          }
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[13].data);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().special);
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(FurniData.SPECIAL_NEWSPAPER);
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     loop9:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(!§§pop().§§slot[5].isWalking);
                                                                                                                           if(!(_loc3_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop10:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(customer.clip.currentFrame < 45);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr1054:
                                                                                                                                    return;
                                                                                                                                    addr972:
                                                                                                                                 }
                                                                                                                                 addr997:
                                                                                                                                 loop12:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc3_ && _loc2_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       loop13:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§§slot[9]);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                addr1051:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop().§§slot[8].length)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                      if(_loc4_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§§slot[1]);
                                                                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop52;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop51;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().§§slot[8]);
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop50;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop49;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().§§slot[9]);
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            §§pop().§§slot[10] = §§pop()[§§pop()[§§pop()]];
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                         }
                                                                                                                                                         loop53:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§§slot[10]);
                                                                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§§slot[3]);
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§§slot[5] = §§pop()[§§pop()];
                                                                                                                                                                     §§push(i);
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() < §§pop().§§slot[4]);
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc3_ && _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr950:
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§§slot[5]);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§§pop().isWalking);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr624:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().clip.gotoAndPlay("chewgum" + whichVariation);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr624:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§§slot[13].data);
                                                                                                                                                                                       if(_loc4_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().special == FurniData.SPECIAL_BUBBLEGUM);
                                                                                                                                                                                          if(!(§§pop().special == FurniData.SPECIAL_BUBBLEGUM))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(furni.data.special == FurniData.SPECIAL_SCOREBUBBLEGUM);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr614:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().§§slot[13]);
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().data.special);
                                                                                                                                                                                                      §§push(FurniData.SPECIAL_MUSIC);
                                                                                                                                                                                                      if(_loc3_ && Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(furni);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().data.special == FurniData.SPECIAL_BOOK);
                                                                                                                                                                                                            §§push(§§pop().data.special == FurniData.SPECIAL_BOOK);
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop9;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§§slot[13].data);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr872:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().§§slot[5].clip.gotoAndPlay("drinkcoffee" + whichVariation);
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().§§slot[5]);
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().clip.mug.gotoAndStop(furni.data.special);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1007:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().clip.gotoAndPlay("stand");
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1007:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr880:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr854:
                                                                                                                                                                                                         addr665:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().§§slot[7]);
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                      addr951:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().data);
                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr862:
                                                                                                                                                                                                         §§push(§§pop().special);
                                                                                                                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(FurniData.SPECIAL_COMICS);
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1021:
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop16;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop().§§slot[5]);
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().clip.gotoAndPlay("readpaper" + whichVariation);
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().§§slot[3] + 1);
                                                                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1023:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§newactivation());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                    addr1011:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§§slot[5].clip.book.gotoAndStop(furni.data.special);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr761:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr897);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1007);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1023);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1021:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().§§slot[13].data);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr951);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr739:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == FurniData.SPECIAL_SODA);
                                                                                                                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr872);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr990:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               addr992:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr862:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr852:
                                                                                                                                                                                                   addr723:
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop16;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr624);
                                                                                                                                                                                             §§push(customer);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().special);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr598:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr951);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr950:
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 continue loop54;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr950);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr854);
                                                                                                                                                                           }
                                                                                                                                                                           addr853:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop().§§slot[10].length)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              §§push(false);
                                                                                                                                                                              if(!(_loc4_ || _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§§slot[7] = §§pop();
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 if(!(_loc3_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop53;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop55;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop54;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop13;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr1024:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop1;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1024);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§§slot[7] = §§pop();
                                                                                                                                                                  }
                                                                                                                                                                  addr506:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§§slot[13] = §§pop()[§§pop()];
                                                                                                                                                                  §§goto(addr506);
                                                                                                                                                               }
                                                                                                                                                               addr501:
                                                                                                                                                            }
                                                                                                                                                            addr500:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr501);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop10;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().§§slot[10]);
                                                                                                                                                      if(_loc3_ && _loc1_)
                                                                                                                                                      {
                                                                                                                                                         continue loop56;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop().length > 0)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         §§push(0);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§§slot[3] = §§pop();
                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1021);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr303:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1027);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1054);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1050:
                                                                                                                                          }
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§pop().§§slot[9] = §§pop();
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                break loop19;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1054);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1051);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr990);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr997);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1006:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1007);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr957:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1011);
                                                                                                               }
                                                                                                            }
                                                                                                            addr1048:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr1050);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == FurniData.SPECIAL_COFFEE);
                                                                                                         if(!(§§pop() == FurniData.SPECIAL_COFFEE))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr839:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  break loop16;
                                                                                                               }
                                                                                                               addr839:
                                                                                                            }
                                                                                                            §§goto(addr880);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr853);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr862);
                                                                                                   }
                                                                                                }
                                                                                                addr685:
                                                                                             }
                                                                                             break;
                                                                                             §§pop();
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§§slot[13].data.special);
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                §§goto(addr852);
                                                                                                §§push(FurniData.SPECIAL_PUNCH);
                                                                                             }
                                                                                             §§goto(addr862);
                                                                                          }
                                                                                          addr682:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   §§goto(addr859);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr872);
                                                                                          }
                                                                                          §§goto(addr739);
                                                                                       }
                                                                                       §§goto(addr957);
                                                                                       addr702:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                §§push(Math.floor(Math.random() * available.length));
                                                                                             }
                                                                                             §§goto(addr992);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                §§push(§§pop().§§slot[13]);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§pop().isOccupied = true;
                                                                                                }
                                                                                                §§goto(addr665);
                                                                                             }
                                                                                             §§goto(addr1006);
                                                                                          }
                                                                                          addr576:
                                                                                       }
                                                                                       §§goto(addr950);
                                                                                    }
                                                                                    addr470:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr682);
                                                                                       }
                                                                                       §§goto(addr972);
                                                                                    }
                                                                                    §§goto(addr702);
                                                                                 }
                                                                                 §§goto(addr990);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr470);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(furni);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(§§pop().data.special == FurniData.SPECIAL_ARCADE)
                                                                              {
                                                                                 customer.clip.gotoAndPlay("playgame" + whichVariation);
                                                                                 §§push(furni);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr598);
                                                                                 }
                                                                              }
                                                                              §§goto(addr992);
                                                                           }
                                                                           §§pop().clip.addChild(customer.clip);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              customer.clip.x = 84;
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    §§push(§§pop().§§slot[5]);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§pop().clip.y = -190;
                                                                                       §§goto(addr576);
                                                                                    }
                                                                                    §§goto(addr624);
                                                                                 }
                                                                                 §§goto(addr685);
                                                                              }
                                                                              §§goto(addr1048);
                                                                           }
                                                                           §§goto(addr761);
                                                                        }
                                                                     }
                                                                     addr499:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr500);
                                                                     }
                                                                     continue loop49;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr499);
                                                }
                                                addr498:
                                             }
                                             while(true)
                                             {
                                                §§pop().§§slot[12] = §§pop();
                                                §§goto(addr498);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          customer.clip.gotoAndPlay("dance" + whichVariation);
                                          §§goto(addr950);
                                       }
                                    }
                                    else
                                    {
                                       §§push(manager);
                                       if(_loc4_)
                                       {
                                          §§pop().gameObj.§_-A5§.furniItems[i].isOccupied = false;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(i + 1);
                                             if(_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             continue;
                                          }
                                          §§goto(addr614);
                                       }
                                       §§goto(addr839);
                                    }
                                    §§pop().resetAllCustomerContainers();
                                    if(_loc4_ || _loc1_)
                                    {
                                       §§push(§§newactivation());
                                       §§push(0);
                                       if(!_loc3_)
                                       {
                                          §§pop().§§slot[9] = §§pop();
                                          §§goto(addr1048);
                                       }
                                       §§goto(addr303);
                                    }
                                    §§goto(addr839);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§pop().§§slot[3] = §§pop();
                                 §§goto(addr1021);
                              }
                           }
                           break;
                           §§pop().§§slot[3] = §§pop();
                        }
                        while(true)
                        {
                           §§goto(addr723);
                        }
                     }
                     addr159:
                     §§pop().§§slot[8] = ["waitline","orderline"];
                     §§goto(addr164);
                  }
                  addr149:
                  gotBonus = false;
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr159);
                  }
                  §§goto(addr164);
               }
               addr79:
               §§pop().§§slot[13] = §§pop();
               manager = this;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     §§pop().§§slot[2] = manager.gameObj.userData;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr113:
                        §§push(§§newactivation());
                        if(_loc4_ || _loc1_)
                        {
                        }
                        §§goto(addr149);
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr149);
            }
            §§push(6);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_ || _loc1_)
               {
                  §§goto(addr132);
               }
            }
            §§goto(addr167);
         }
         §§pop().§§slot[11] = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(§§newactivation());
            §§push(NaN);
            if(!(_loc3_ && _loc1_))
            {
               §§pop().§§slot[12] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr79);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr143);
               }
               §§goto(addr113);
            }
            §§goto(addr144);
         }
         §§goto(addr79);
      }
   }
}

