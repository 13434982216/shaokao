package wingGame.models
{
   import §_-1d§.*;
   import §_-C2§.§_-5i§;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import wingGame.data.CustomerData;
   import wingGame.data.FoodData;
   import wingGame.managers.*;
   import wingGame.screens.*;
   
   public class Customer
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var customerType:Number = 1;
      
      public var customerName:String = "Some Guy";
      
      public var isCloser:Boolean = false;
      
      public var timeEntered:Number = 0;
      
      public var timeOrderTaken:Number = 0;
      
      public var customersAlreadyWaiting:Number = 0;
      
      public var currentLine:String;
      
      public var orderIsPlaced:Boolean = false;
      
      public var isWalking:Boolean = false;
      
      public var walkSpeed:Number = 4;
      
      public var walkDir:Number;
      
      public var targetX:Number;
      
      public var order:Array;
      
      public function Customer(param1:§_-BY§, param2:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
         }
         var _loc3_:Customer = this;
         _loc3_.gameObj = param1;
         if(_loc5_ || Boolean(param1))
         {
            _loc3_.customerType = param2;
            _loc3_.isCloser = _loc3_.gameObj.customerData.isCloser(param2);
            _loc3_.defineVars();
         }
         _loc3_.setupCustomer();
         _loc3_.startCustomerEntering();
      }
      
      public function defineVars() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Customer = this;
         var _loc2_:CustomerData = _loc1_.gameObj.customerData;
         if(_loc4_)
         {
            _loc1_.customerName = _loc2_.getCustomerName(_loc1_.customerType);
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc1_.order = _loc2_.getCustomerOrder(_loc1_.customerType);
            }
         }
      }
      
      public function setupCustomer() : void
      {
         var _loc31_:Boolean = false;
         var _loc32_:Boolean = true;
         var _loc26_:Class = null;
         var _loc27_:MovieClip = null;
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc1_:Customer = this;
         if(_loc32_ || Boolean(_loc1_))
         {
            _loc1_.timeEntered = _loc1_.gameObj.§_-6v§.gameplayTimer;
            if(_loc31_ && Boolean(_loc1_))
            {
            }
            §§goto(addr53);
         }
         _loc1_.clip = new customerMC();
         addr53:
         §§push(_loc1_.gameObj.customerData.getCustomerClipName(_loc1_.customerType));
         if(_loc32_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Class = getDefinitionByName("customer_" + _loc2_ + "_body") as Class;
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.name = "clip";
         if(!_loc31_)
         {
            _loc1_.clip.body.addChild(_loc4_);
         }
         var _loc5_:Class = getDefinitionByName("customer_" + _loc2_ + "_head") as Class;
         var _loc6_:MovieClip = new _loc5_();
         _loc6_.name = "clip";
         if(!_loc31_)
         {
            _loc1_.clip.head.addChild(_loc6_);
         }
         var _loc7_:Class = getDefinitionByName("customer_" + _loc2_ + "_eyes") as Class;
         var _loc8_:MovieClip = new _loc7_();
         _loc8_.name = "clip";
         if(!_loc31_)
         {
            _loc1_.clip.eyes.addChild(_loc8_);
         }
         var _loc9_:Class = getDefinitionByName("customer_" + _loc2_ + "_mouth") as Class;
         var _loc10_:MovieClip = new _loc9_();
         _loc10_.name = "clip";
         if(_loc32_)
         {
            _loc1_.clip.mouth.addChild(_loc10_);
         }
         var _loc11_:Class = getDefinitionByName("customer_" + _loc2_ + "_neck") as Class;
         var _loc12_:MovieClip = new _loc11_();
         _loc12_.name = "clip";
         if(_loc32_ || _loc2_)
         {
            _loc1_.clip.neck.addChild(_loc12_);
         }
         try
         {
            _loc26_ = getDefinitionByName("customer_" + _loc2_ + "_hair") as Class;
            _loc27_ = new _loc26_();
            _loc27_.name = "clip";
            if(!(_loc31_ && Boolean(_loc1_)))
            {
               _loc1_.clip.hair.addChild(_loc27_);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc28_ = getDefinitionByName("customer_" + _loc2_ + "_back_hair") as Class;
            _loc29_ = new _loc28_();
            _loc29_.name = "clip";
            if(_loc32_ || _loc2_)
            {
               _loc1_.clip.back_hair.addChild(_loc29_);
            }
         }
         catch(err:Error)
         {
         }
         var _loc13_:Class = getDefinitionByName("customer_" + _loc2_ + "_foot") as Class;
         var _loc14_:MovieClip = new _loc13_();
         _loc14_.name = "clip";
         if(_loc32_ || Boolean(_loc1_))
         {
            _loc1_.clip.front_shoe.addChild(_loc14_);
         }
         var _loc15_:MovieClip = new _loc13_();
         _loc15_.name = "clip";
         if(!_loc31_)
         {
            _loc1_.clip.back_shoe.addChild(_loc15_);
         }
         var _loc16_:Class = getDefinitionByName("customer_" + _loc2_ + "_hand") as Class;
         var _loc17_:MovieClip = new _loc16_();
         _loc17_.name = "clip";
         if(!(_loc31_ && Boolean(_loc3_)))
         {
            _loc1_.clip.fronthand.addChild(_loc17_);
         }
         var _loc18_:Class = getDefinitionByName("customer_" + _loc2_ + "_hand2") as Class;
         var _loc19_:MovieClip = new _loc18_();
         _loc19_.name = "clip";
         if(!(_loc31_ && Boolean(_loc3_)))
         {
            _loc1_.clip.backhand.addChild(_loc19_);
         }
         var _loc20_:Class = getDefinitionByName("customer_" + _loc2_ + "_upperarm") as Class;
         var _loc21_:MovieClip = new _loc20_();
         _loc21_.name = "clip";
         if(!(_loc31_ && Boolean(this)))
         {
            _loc1_.clip.front_upperarm.addChild(_loc21_);
         }
         var _loc22_:MovieClip = new _loc20_();
         _loc22_.name = "clip";
         if(!(_loc31_ && Boolean(_loc3_)))
         {
            _loc1_.clip.back_upperarm.addChild(_loc22_);
         }
         var _loc23_:Class = getDefinitionByName("customer_" + _loc2_ + "_forearm") as Class;
         var _loc24_:MovieClip = new _loc23_();
         _loc24_.name = "clip";
         if(_loc32_ || Boolean(this))
         {
            _loc1_.clip.front_forearm.addChild(_loc24_);
         }
         var _loc25_:MovieClip = new _loc23_();
         _loc25_.name = "clip";
         if(_loc32_)
         {
            _loc1_.clip.back_forearm.addChild(_loc25_);
         }
      }
      
      public function startCustomerEntering() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.§_-A5§;
         var _loc3_:CustomerManager = _loc1_.gameObj.§_-EW§;
         var _loc4_:Number = _loc3_.orderline.length;
         §§push(_loc4_);
         if(_loc6_)
         {
            §§push(§§pop() + 1);
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(§§pop());
            }
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || Boolean(this))
         {
            _loc2_.clip.orderline_holder.addChild(_loc1_.clip);
            if(!(_loc7_ && Boolean(_loc1_)))
            {
               _loc2_.clip.orderline_holder.setChildIndex(_loc1_.clip,0);
            }
            §§goto(addr139);
         }
         _loc1_.clip.scaleX = _loc2_.orderLineScale;
         if(!_loc7_)
         {
            _loc1_.clip.scaleY = _loc2_.orderLineScale;
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(_loc1_);
               §§push(_loc2_.orderLineTargetX);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§push(_loc4_);
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(§§pop() * _loc2_.customerSpacing);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().targetX = §§pop();
               _loc1_.clip.y = _loc2_.orderLineTargetY;
               _loc1_.clip.x = _loc2_.offScreenX;
               if(_loc6_)
               {
                  _loc1_.walkDir = -1;
                  _loc1_.isWalking = true;
                  addr139:
                  _loc1_.clip.gotoAndPlay("walk");
                  _loc1_.currentLine = "orderline";
                  §§goto(addr146);
               }
               addr146:
               _loc3_.orderline.push(_loc1_);
               if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
                  if(_loc6_)
                  {
                  }
                  §§goto(addr178);
               }
               _loc1_.gameObj.userData.addToCustomersToday(_loc1_.customerType);
               §§goto(addr178);
            }
            §§goto(addr139);
         }
         addr178:
      }
      
      public function moveToLeaveLine() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.§_-A5§;
         var _loc3_:CustomerManager = _loc1_.gameObj.§_-EW§;
         if(!_loc5_)
         {
            _loc2_.clip.leaveline_holder.addChild(_loc1_.clip);
            if(_loc6_ || Boolean(_loc2_))
            {
               _loc2_.clip.leaveline_holder.setChildIndex(_loc1_.clip,0);
               if(!_loc5_)
               {
                  _loc1_.clip.scaleX = _loc2_.leaveLineScale * -1;
               }
               _loc1_.clip.scaleY = _loc2_.leaveLineScale;
               if(_loc6_)
               {
               }
               §§goto(addr106);
            }
            addr91:
            _loc1_.clip.y = _loc2_.leaveLineTargetY;
            if(_loc6_ || Boolean(_loc3_))
            {
               §§goto(addr103);
            }
            §§goto(addr113);
         }
         _loc1_.targetX = _loc2_.offScreenX + _loc1_.clip.width;
         if(!_loc5_)
         {
            _loc1_.clip.x = _loc2_.leaveLineTargetX + _loc1_.clip.width;
            §§goto(addr91);
         }
         addr103:
         _loc1_.walkDir = 1;
         addr106:
         _loc1_.isWalking = true;
         _loc1_.clip.gotoAndPlay("walk");
         try
         {
            addr113:
            _loc1_.clip.body.clip.logo.gotoAndStop(2);
            if(_loc6_)
            {
               addr134:
               _loc1_.currentLine = "leaveline";
               §§push(_loc3_.orderline);
               if(_loc6_ || Boolean(_loc1_))
               {
                  §§pop().shift();
                  if(_loc6_)
                  {
                     §§push(_loc3_.leaveline);
                  }
               }
               §§pop().push(_loc1_);
               _loc3_.shiftCustomersInOrderLine();
            }
         }
         catch(err:Error)
         {
            §§goto(addr134);
         }
         if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
            }
         }
      }
      
      public function moveToWaitLine() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.§_-A5§;
         var _loc3_:CustomerManager = _loc1_.gameObj.§_-EW§;
         var _loc4_:Number = _loc3_.waitline.length;
         if(_loc6_ || Boolean(_loc1_))
         {
            _loc2_.clip.waitline_holder.addChild(_loc1_.clip);
            if(_loc6_)
            {
               _loc2_.clip.waitline_holder.setChildIndex(_loc1_.clip,0);
               if(_loc6_ || Boolean(_loc1_))
               {
                  _loc1_.clip.scaleX = _loc2_.waitLineScale;
                  if(_loc6_ || Boolean(_loc1_))
                  {
                  }
               }
               _loc1_.clip.y = _loc2_.waitLineTargetY;
               _loc1_.clip.x = _loc2_.offScreenX;
               _loc1_.walkDir = -1;
               §§goto(addr95);
            }
            _loc1_.clip.scaleY = _loc2_.waitLineScale;
            §§push(_loc1_);
            §§push(_loc2_.waitLineTargetX);
            if(_loc6_)
            {
               §§push(_loc4_);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  §§push(§§pop() * _loc2_.customerSpacing);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().targetX = §§pop();
            addr95:
            if(_loc7_)
            {
            }
            try
            {
               addr131:
               _loc1_.clip.body.clip.logo.gotoAndStop(1);
               if(!(_loc7_ && Boolean(this)))
               {
                  addr157:
                  _loc1_.currentLine = "waitline";
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§push(_loc3_.leaveline);
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        §§pop().shift();
                        if(_loc6_)
                        {
                           §§push(_loc3_.waitline);
                        }
                     }
                     §§pop().push(_loc1_);
                     if(_loc7_)
                     {
                     }
                  }
                  if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
                  {
                     if(_loc6_)
                     {
                     }
                  }
               }
               _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
            }
            catch(err:Error)
            {
               §§goto(addr157);
            }
            return;
         }
         _loc1_.isWalking = true;
         if(_loc6_ || Boolean(this))
         {
            _loc1_.clip.gotoAndPlay("walk");
         }
         §§goto(addr131);
      }
      
      public function moveToTakeOrder() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Customer = this;
         var _loc2_:TakeOrderScreen = _loc1_.gameObj.§_-3N§;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.timeOrderTaken = _loc1_.gameObj.§_-6v§.gameplayTimer;
            _loc1_.customersAlreadyWaiting = _loc1_.gameObj.§_-EW§.waitline.length + _loc1_.gameObj.§_-EW§.leaveline.length;
            _loc2_.clip.customer_holder.addChild(_loc1_.clip);
            if(_loc4_)
            {
               _loc1_.clip.scaleX = _loc2_.customerScale;
            }
            _loc1_.clip.scaleY = _loc2_.customerScale;
         }
         _loc1_.clip.x = _loc2_.customerX;
         if(_loc4_)
         {
            _loc1_.clip.y = _loc2_.customerY;
            if(!_loc3_)
            {
               _loc1_.targetX = _loc2_.customerX;
               _loc1_.isWalking = false;
               if(_loc4_ || Boolean(this))
               {
                  _loc1_.clip.gotoAndPlay("stand");
               }
            }
         }
      }
      
      public function moveToReceiveOrder() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Customer = this;
         var _loc2_:GiveOrderScreen = _loc1_.gameObj.§_-Bq§;
         if(_loc3_)
         {
            _loc2_.clip.customer_holder.addChild(_loc1_.clip);
            if(_loc3_ || Boolean(this))
            {
               _loc1_.clip.scaleX = _loc2_.customerScale;
               if(!_loc4_)
               {
                  _loc1_.clip.scaleY = _loc2_.customerScale;
                  _loc1_.clip.x = _loc2_.customerX;
                  _loc1_.clip.y = _loc2_.customerY;
                  _loc1_.targetX = _loc2_.customerX;
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
               addr81:
               if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  if(_loc4_ && Boolean(_loc2_))
                  {
                  }
                  §§goto(addr114);
               }
               §§goto(addr110);
            }
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.walkCustomer);
            if(_loc3_)
            {
               addr110:
               _loc1_.clip.gotoAndPlay("look");
            }
            §§goto(addr114);
         }
         _loc1_.isWalking = false;
         if(!_loc4_)
         {
            §§goto(addr81);
         }
         addr114:
      }
      
      public function destroy() : void
      {
         var ob:Customer;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         ob = this;
         try
         {
            §§push(§§newactivation());
            if(_loc4_ || Boolean(this))
            {
               §§push(§§pop().§§slot[1]);
               if(!_loc3_)
               {
                  if(§§pop().clip.hasEventListener(Event.ENTER_FRAME))
                  {
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop().§§slot[1]);
                           if(_loc4_ || Boolean(this))
                           {
                              §§pop().clip.removeEventListener(Event.ENTER_FRAME,ob.walkCustomer);
                           }
                           addr131:
                           §§pop().clip.mouth.removeChildAt(0);
                           addr151:
                           if(_loc4_)
                           {
                              addr138:
                              ob.clip.neck.removeChildAt(0);
                              §§push(§§newactivation());
                           }
                           §§push(ob);
                           if(_loc4_ || _loc2_)
                           {
                              addr160:
                              §§pop().clip.back_shoe.removeChildAt(0);
                              if(!_loc3_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop().§§slot[1]);
                                    if(_loc4_)
                                    {
                                       §§pop().clip.fronthand.removeChildAt(0);
                                    }
                                    addr235:
                                    §§pop().clip.back_forearm.removeChildAt(0);
                                    try
                                    {
                                       addr258:
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr296:
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc4_)
                                          {
                                             addr269:
                                             §§pop().clip.hair.removeChildAt(0);
                                             try
                                             {
                                                addr287:
                                             }
                                             catch(err:Error)
                                             {
                                                try
                                                {
                                                   addr314:
                                                }
                                                catch(err:Error)
                                                {
                                                   var _loc2_:* = err;
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §_-5i§.error("Error removing clip from parent");
                                                   }
                                                   addr355:
                                                }
                                             }
                                             §§push(§§newactivation());
                                             addr273:
                                          }
                                          §§pop().clip.back_hair.removeChildAt(0);
                                          §§goto(addr314);
                                       }
                                       §§push(§§pop().§§slot[1]);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§goto(addr296);
                                       }
                                    }
                                    catch(err:Error)
                                    {
                                       §§goto(addr287);
                                    }
                                 }
                                 addr356:
                                 §§push(§§pop().§§slot[1]);
                              }
                           }
                           §§pop().clip.parent.removeChild(ob.clip);
                           if(_loc4_)
                           {
                              §§goto(addr355);
                           }
                        }
                        §§pop().§§slot[1].clip.front_shoe.removeChildAt(0);
                        if(_loc4_)
                        {
                           §§goto(addr151);
                        }
                        §§goto(addr273);
                     }
                     §§push(§§newactivation());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().§§slot[1].clip.backhand.removeChildAt(0);
                        §§push(§§newactivation());
                        if(_loc4_ || _loc2_)
                        {
                           addr209:
                           §§pop().§§slot[1].clip.front_upperarm.removeChildAt(0);
                           ob.clip.back_upperarm.removeChildAt(0);
                           ob.clip.front_forearm.removeChildAt(0);
                           §§push(§§newactivation());
                        }
                        §§push(§§pop().§§slot[1]);
                        if(_loc4_ || Boolean(this))
                        {
                           §§goto(addr235);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr356);
                  }
                  addr87:
                  §§push(ob);
                  if(!_loc3_)
                  {
                     §§pop().clip.stop();
                     try
                     {
                        §§push(§§newactivation());
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop().§§slot[1]);
                           if(_loc4_)
                           {
                              §§pop().clip.body.removeChildAt(0);
                              §§push(§§newactivation());
                              if(!_loc3_)
                              {
                                 §§pop().§§slot[1].clip.head.removeChildAt(0);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    ob.clip.eyes.removeChildAt(0);
                                    §§goto(addr131);
                                    §§push(ob);
                                 }
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr209);
                     }
                     catch(err:Error)
                     {
                        if(_loc4_)
                        {
                           §_-5i§.error("Error removing parts of customer");
                        }
                        §§goto(addr258);
                     }
                  }
                  §§goto(addr269);
               }
               §§pop().clip = null;
            }
            §§goto(addr131);
         }
         catch(err:Error)
         {
            _loc2_ = err;
            if(!_loc3_)
            {
               §_-5i§.error("Error stopping walking on customer.");
            }
            §§goto(addr87);
         }
         §§pop().§§slot[1];
      }
      
      public function walkCustomer(param1:Event = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Customer = this;
         var _loc3_:OrderScreen = _loc2_.gameObj.§_-A5§;
         §§push(_loc2_.gameObj);
         if(!_loc5_)
         {
            §§push(§§pop().§_-5b§);
            if(!(_loc5_ && Boolean(param1)))
            {
               §§goto(addr226);
            }
            §§push(§§pop());
            if(!(_loc5_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(_loc4_)
                     {
                        §§push(_loc2_.clip.x + _loc2_.walkDir * _loc2_.walkSpeed <= _loc2_.targetX);
                        if(_loc5_ && Boolean(param1))
                        {
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr157);
               }
               if(§§pop())
               {
                  _loc2_.clip.x = _loc2_.targetX;
                  _loc2_.clip.gotoAndPlay("stand");
                  _loc2_.isWalking = false;
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     §§push(_loc2_.currentLine);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        addr141:
                        if(§§pop() == "orderline")
                        {
                           §§push(_loc2_.gameObj);
                        }
                        _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.walkCustomer);
                     }
                     else
                     {
                        §§goto(addr186);
                     }
                  }
               }
               else
               {
                  §§goto(addr151);
                  §§push(_loc2_.walkDir);
               }
               §§goto(addr226);
            }
            §§goto(addr152);
         }
         if(§§pop().§_-EW§.orderline[0] == _loc2_)
         {
            _loc3_.showTakeOrderBubble(_loc2_.isCloser);
            if(_loc5_ && Boolean(param1))
            {
            }
            addr226:
            if(!§§pop())
            {
               if(_loc4_)
               {
                  §§push(_loc2_.walkDir);
                  if(!_loc5_)
                  {
                     §§push(-1);
                     if(_loc4_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc5_ && Boolean(_loc3_))
                        {
                        }
                        addr157:
                        §§pop();
                        addr170:
                        if(_loc2_.clip.x + _loc2_.walkDir * _loc2_.walkSpeed >= _loc2_.targetX)
                        {
                           if(_loc4_)
                           {
                              _loc2_.clip.x = _loc2_.targetX;
                              if(_loc4_)
                              {
                              }
                           }
                           _loc2_.clip.gotoAndPlay("stand");
                           addr186:
                           if(_loc2_.currentLine == "leaveline")
                           {
                              _loc2_.moveToWaitLine();
                              if(_loc4_)
                              {
                                 addr192:
                              }
                           }
                           else
                           {
                              _loc2_.isWalking = false;
                           }
                           _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.walkCustomer);
                        }
                        else
                        {
                           _loc2_.isWalking = true;
                        }
                        _loc2_.clip.x += _loc2_.walkDir * _loc2_.walkSpeed;
                     }
                     addr152:
                     §§push(§§pop() == §§pop());
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr157);
                        }
                     }
                     §§goto(addr170);
                  }
                  addr151:
                  §§goto(addr152);
                  §§push(1);
               }
            }
            return;
         }
         §§goto(addr141);
      }
      
      public function resetContainer() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc1_:Customer = this;
         var _loc2_:OrderScreen = _loc1_.gameObj.§_-A5§;
         var _loc3_:CustomerManager = _loc1_.gameObj.§_-EW§;
         if(_loc5_)
         {
            if(_loc1_.currentLine == "waitline")
            {
               if(_loc5_ || Boolean(_loc2_))
               {
               }
               addr80:
               while(true)
               {
                  §§push(_loc4_);
                  §§push(_loc3_.waitline);
                  if(!_loc6_)
                  {
                     if(§§pop() < §§pop().length)
                     {
                        §§push(_loc3_.waitline);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(§§pop()[§§pop()] == _loc1_)
                              {
                                 _loc1_.clip.x = _loc2_.waitLineTargetX + _loc4_ * _loc2_.customerSpacing;
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.clip.y = _loc2_.waitLineTargetY;
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr156:
                                 if(!_loc2_.clip.orderline_holder.contains(_loc1_.clip))
                                 {
                                    _loc2_.clip.orderline_holder.addChild(_loc1_.clip);
                                    if(!_loc6_)
                                    {
                                       _loc2_.clip.orderline_holder.setChildIndex(_loc1_.clip,0);
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          §§push(0);
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             _loc4_ = §§pop();
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          addr238:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          addr242:
                                          while(true)
                                          {
                                             §§push(_loc3_.orderline);
                                          }
                                       }
                                       addr241:
                                    }
                                    addr222:
                                    _loc1_.clip.y = _loc2_.orderLineTargetY;
                                 }
                              }
                              else
                              {
                                 §§push(_loc4_ + 1);
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       _loc4_ = §§pop();
                                       continue;
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr241);
                                    }
                                    addr240:
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr240);
                              }
                           }
                           while(true)
                           {
                              if(§§pop()[§§pop()] == _loc1_)
                              {
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.clip.x = _loc2_.orderLineTargetX + _loc4_ * _loc2_.customerSpacing;
                                    if(_loc5_)
                                    {
                                       §§goto(addr222);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr238);
                                 }
                                 §§goto(addr242);
                              }
                           }
                           addr200:
                        }
                        while(true)
                        {
                           §§goto(addr200);
                        }
                        addr199:
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop().length)
                     {
                        §§goto(addr199);
                        §§push(_loc3_.orderline);
                     }
                  }
               }
            }
            else if(_loc1_.currentLine == "orderline")
            {
               if(!_loc6_)
               {
                  §§goto(addr156);
               }
            }
            return;
         }
         if(!_loc2_.clip.waitline_holder.contains(_loc1_.clip))
         {
            if(!(_loc6_ && Boolean(this)))
            {
               _loc2_.clip.waitline_holder.addChild(_loc1_.clip);
               if(!_loc6_)
               {
                  _loc2_.clip.waitline_holder.setChildIndex(_loc1_.clip,0);
                  if(_loc6_ && Boolean(_loc2_))
                  {
                  }
               }
               §§goto(addr80);
            }
            _loc4_ = 0;
         }
         §§goto(addr80);
      }
      
      public function shiftInOrderLine(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Customer = this;
         _loc2_.targetX = param1;
         if(!_loc4_)
         {
            §§push(_loc2_.isWalking);
            if(_loc3_ || Boolean(_loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc2_.clip.x = _loc2_.targetX;
                     if(_loc4_ && Boolean(this))
                     {
                     }
                  }
               }
               §§push(_loc2_.isWalking);
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                  }
               }
               addr91:
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr96:
                     _loc2_.gameObj.§_-A5§.showTakeOrderBubble(_loc2_.isCloser);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  §§pop();
                  §§push(_loc2_.gameObj);
                  if(_loc3_)
                  {
                     §§push(§§pop().§_-EW§.orderline[0] == _loc2_);
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr91);
         }
      }
      
      public function shiftInWaitLine(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Customer = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.targetX = param1;
            if(_loc3_ || Boolean(_loc2_))
            {
            }
            §§goto(addr57);
         }
         if(!_loc2_.isWalking)
         {
            if(_loc3_)
            {
               _loc2_.clip.x = _loc2_.targetX;
            }
         }
         addr57:
      }
      
      public function getOkayWaitingTime() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Customer = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.order.length)
         {
            §§push(FoodData.isMeat(_loc1_.order[_loc3_][0]));
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop());
               if(_loc4_)
               {
               }
               addr73:
               if(§§pop())
               {
                  if(_loc4_ && Boolean(this))
                  {
                     continue;
                  }
                  §§push(FoodData.getTargetCookTime(_loc1_.order[_loc3_][0]));
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                     }
                     §§goto(addr118);
                  }
                  addr94:
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               _loc3_++;
               if(!(_loc5_ || Boolean(_loc2_)))
               {
                  break;
               }
               continue;
            }
            if(§§pop())
            {
               if(_loc5_ || Boolean(_loc3_))
               {
                  §§pop();
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() < FoodData.getTargetCookTime(_loc1_.order[_loc3_][0]));
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr73);
         }
         addr118:
         _loc2_;
         return §§pop();
      }
   }
}

