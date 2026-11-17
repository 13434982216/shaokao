package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import wingGame.data.CustomerData;
   import wingGame.managers.CustomerManager;
   
   public class NewCustomerScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var customerClip:MovieClip;
      
      public function NewCustomerScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         var _loc2_:NewCustomerScreen = this;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.gameObj = param1;
            if(_loc4_ && Boolean(param1))
            {
            }
            §§goto(addr53);
         }
         _loc2_.setupScreen();
         addr53:
      }
      
      public function setupScreen() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:NewCustomerScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.§_-EW§;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         if(_loc4_ || Boolean(_loc2_))
         {
            addr148:
            §§push(_loc1_.gameObj);
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               §§push(§§pop().soundManager);
               if(_loc4_)
               {
                  §§pop().switchMusic("none");
               }
               addr144:
               §§pop().playSound("customer_overjoyed.wav");
               §§push(_loc1_.gameObj);
            }
            §§pop().§_-BG§.addChild(_loc1_.clip);
            §§goto(addr159);
         }
         §§push(_loc2_.showNoPapa);
         if(_loc4_)
         {
            if(§§pop())
            {
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  _loc1_.clip = new newcustomer_nopapa();
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc1_.clip.sealMC.seal.gotoAndStop(3);
                     if(!_loc5_)
                     {
                        _loc1_.clip.sealMC.gotoAndPlay(2);
                        §§push(_loc1_.gameObj);
                        if(_loc4_)
                        {
                           §§push(§§pop().soundManager);
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              §§pop().playSound("endofday.wav");
                           }
                        }
                        else
                        {
                           addr143:
                           §§push(§§pop().soundManager);
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr159);
               }
               addr159:
               _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
               return;
            }
            §§push(_loc2_.showNewCustomer);
            §§goto(addr144);
         }
         if(§§pop())
         {
            if(_loc4_ || Boolean(this))
            {
               _loc1_.clip = new newcustomer_screen();
               _loc1_.buildCustomer(_loc2_.showNewCustomerNum);
            }
            _loc1_.clip.circleMC.customername.text = _loc3_.getCustomerName(_loc2_.showNewCustomerNum);
            if(!_loc5_)
            {
               §§push(_loc1_.gameObj);
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§goto(addr143);
               }
            }
            §§goto(addr148);
         }
         §§goto(addr144);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:NewCustomerScreen = this;
         var _loc3_:CustomerManager = _loc2_.gameObj.§_-EW§;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
            {
               if(_loc5_)
               {
               }
            }
            §§goto(addr53);
         }
         _loc2_.endAnimation();
         addr53:
      }
      
      public function endAnimation() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:NewCustomerScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(_loc4_ || Boolean(this))
            {
               addr50:
               §§push(_loc1_.gameObj);
               if(_loc4_)
               {
                  if(§§pop().userData.getToppingToReveal() != "none")
                  {
                     if(_loc4_)
                     {
                     }
                     addr82:
                     §§push(_loc1_.gameObj);
                  }
                  else
                  {
                     §§push(_loc1_.gameObj);
                     if(_loc4_)
                     {
                        §§pop().§_-Bi§();
                        if(_loc4_)
                        {
                           §§goto(addr82);
                        }
                     }
                  }
               }
               addr84:
               §§pop().§_-AG§();
            }
            §§push(_loc1_.gameObj);
            if(!_loc3_)
            {
               §§pop().§_-EH§();
               if(_loc4_)
               {
                  §§goto(addr82);
               }
            }
            §§goto(addr84);
         }
         catch(err:Error)
         {
            §§goto(addr50);
         }
      }
      
      public function destroy() : void
      {
         var screen:NewCustomerScreen;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         screen = this;
         try
         {
            §§push(§§newactivation());
            if(!(_loc3_ && _loc1_))
            {
               §§pop().§§slot[1].clip.removeEventListener(Event.ENTER_FRAME,screen.updateScreen);
               addr52:
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     if(§§pop().customerClip)
                     {
                        if(_loc4_ || _loc1_)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc4_)
                              {
                                 §§push(§§pop().§§slot[1]);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop().customerClip.stop();
                                    if(!_loc3_)
                                    {
                                       screen.customerClip.body.removeChildAt(0);
                                       screen.customerClip.head.removeChildAt(0);
                                       §§push(screen);
                                       if(_loc3_ && _loc1_)
                                       {
                                       }
                                       addr286:
                                       §§pop().customerClip.hair.removeChildAt(0);
                                       addr396:
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          try
                                          {
                                             addr311:
                                             §§push(§§newactivation());
                                             if(_loc4_)
                                             {
                                                §§push(§§pop().§§slot[1]);
                                                if(_loc3_ && _loc1_)
                                                {
                                                }
                                                §§pop().gameObj.§_-BG§.removeChild(screen.clip);
                                                addr383:
                                             }
                                             addr341:
                                             §§push(§§pop().§§slot[1]);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§pop().clip.circleMC.removeChild(screen.customerClip);
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                          }
                                          catch(err:Error)
                                          {
                                             var _loc2_:* = err;
                                             addr340:
                                             §§goto(addr341);
                                          }
                                          §§push(null);
                                       }
                                       §§push(§§newactivation());
                                    }
                                    §§push(§§newactivation());
                                    if(!_loc3_)
                                    {
                                       addr361:
                                       §§push(§§pop().§§slot[1]);
                                       §§push(null);
                                       if(!_loc3_)
                                       {
                                          §§pop().customerClip = §§pop();
                                          if(_loc4_)
                                          {
                                          }
                                          §§goto(addr396);
                                       }
                                    }
                                 }
                                 addr322:
                                 §§pop().customerClip.back_hair.removeChildAt(0);
                                 §§goto(addr340);
                              }
                              addr147:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§pop().customerClip.back_shoe.removeChildAt(0);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§pop().§§slot[1].customerClip.fronthand.removeChildAt(0);
                                       §§push(§§newactivation());
                                    }
                                    §§goto(addr341);
                                 }
                              }
                              addr221:
                              §§pop().customerClip.back_upperarm.removeChildAt(0);
                              screen.customerClip.front_forearm.removeChildAt(0);
                              §§push(screen);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr240:
                                 §§pop().customerClip.back_forearm.removeChildAt(0);
                                 if(_loc4_ || _loc1_)
                                 {
                                    try
                                    {
                                       addr275:
                                       §§push(§§newactivation());
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc4_)
                                          {
                                             §§goto(addr286);
                                          }
                                          §§goto(addr383);
                                       }
                                    }
                                    catch(err:Error)
                                    {
                                       _loc2_ = err;
                                       §§goto(addr311);
                                    }
                                 }
                              }
                              §§goto(addr322);
                           }
                           catch(err:Error)
                           {
                              _loc2_ = err;
                              if(_loc4_ || _loc1_)
                              {
                                 §_-5i§.error("Error removing parts of customer");
                              }
                              §§goto(addr275);
                           }
                        }
                     }
                     §§push(§§newactivation());
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§pop().§§slot[1]);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr383);
                        }
                        §§goto(addr311);
                     }
                  }
                  §§pop().customerClip.eyes.removeChildAt(0);
                  if(_loc4_ || _loc2_)
                  {
                     screen.customerClip.mouth.removeChildAt(0);
                     if(!(_loc3_ && _loc2_))
                     {
                        screen.customerClip.neck.removeChildAt(0);
                        if(_loc4_ || Boolean(this))
                        {
                           screen.customerClip.front_shoe.removeChildAt(0);
                        }
                        §§goto(addr286);
                     }
                     §§goto(addr147);
                     §§push(§§newactivation());
                  }
                  §§goto(addr322);
               }
               §§goto(addr311);
               §§push(§§pop().§§slot[1]);
            }
            §§pop().§§slot[1].customerClip.backhand.removeChildAt(0);
            §§push(screen);
            if(!(_loc3_ && _loc1_))
            {
               §§pop().customerClip.front_upperarm.removeChildAt(0);
               if(_loc4_ || _loc2_)
               {
                  §§push(screen);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr221);
                  }
                  §§goto(addr361);
               }
               §§goto(addr147);
            }
            §§goto(addr240);
         }
         catch(err:Error)
         {
            _loc2_ = err;
            §§goto(addr52);
         }
         §§pop().clip = §§pop();
      }
      
      public function buildCustomer(param1:Number) : void
      {
         var _loc32_:Boolean = true;
         var _loc33_:Boolean = false;
         var _loc27_:Class = null;
         var _loc28_:MovieClip = null;
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc2_:NewCustomerScreen = this;
         if(!(_loc33_ && _loc3_))
         {
            _loc2_.customerClip = new customerMC();
         }
         §§push(_loc2_.gameObj.customerData.getCustomerClipName(param1));
         if(_loc32_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:Class = getDefinitionByName("customer_" + _loc3_ + "_body") as Class;
         var _loc5_:MovieClip = new _loc4_();
         _loc5_.name = "clip";
         if(_loc32_)
         {
            _loc2_.customerClip.body.addChild(_loc5_);
         }
         var _loc6_:Class = getDefinitionByName("customer_" + _loc3_ + "_head") as Class;
         var _loc7_:MovieClip = new _loc6_();
         _loc7_.name = "clip";
         if(!_loc33_)
         {
            _loc2_.customerClip.head.addChild(_loc7_);
         }
         var _loc8_:Class = getDefinitionByName("customer_" + _loc3_ + "_eyes") as Class;
         var _loc9_:MovieClip = new _loc8_();
         _loc9_.name = "clip";
         if(!_loc33_)
         {
            _loc2_.customerClip.eyes.addChild(_loc9_);
         }
         var _loc10_:Class = getDefinitionByName("customer_" + _loc3_ + "_mouth") as Class;
         var _loc11_:MovieClip = new _loc10_();
         _loc11_.name = "clip";
         if(!(_loc33_ && Boolean(this)))
         {
            _loc2_.customerClip.mouth.addChild(_loc11_);
         }
         var _loc12_:Class = getDefinitionByName("customer_" + _loc3_ + "_neck") as Class;
         var _loc13_:MovieClip = new _loc12_();
         _loc13_.name = "clip";
         if(_loc32_)
         {
            _loc2_.customerClip.neck.addChild(_loc13_);
         }
         try
         {
            _loc27_ = getDefinitionByName("customer_" + _loc3_ + "_hair") as Class;
            _loc28_ = new _loc27_();
            _loc28_.name = "clip";
            if(_loc32_ || Boolean(this))
            {
               _loc2_.customerClip.hair.addChild(_loc28_);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc29_ = getDefinitionByName("customer_" + _loc3_ + "_back_hair") as Class;
            _loc30_ = new _loc29_();
            _loc30_.name = "clip";
            if(_loc32_ || Boolean(param1))
            {
               _loc2_.customerClip.back_hair.addChild(_loc30_);
            }
         }
         catch(err:Error)
         {
         }
         var _loc14_:Class = getDefinitionByName("customer_" + _loc3_ + "_foot") as Class;
         var _loc15_:MovieClip = new _loc14_();
         _loc15_.name = "clip";
         if(_loc32_)
         {
            _loc2_.customerClip.front_shoe.addChild(_loc15_);
         }
         var _loc16_:MovieClip = new _loc14_();
         _loc16_.name = "clip";
         if(_loc32_)
         {
            _loc2_.customerClip.back_shoe.addChild(_loc16_);
         }
         var _loc17_:Class = getDefinitionByName("customer_" + _loc3_ + "_hand") as Class;
         var _loc18_:MovieClip = new _loc17_();
         _loc18_.name = "clip";
         if(_loc32_ || Boolean(this))
         {
            _loc2_.customerClip.fronthand.addChild(_loc18_);
         }
         var _loc19_:Class = getDefinitionByName("customer_" + _loc3_ + "_hand2") as Class;
         var _loc20_:MovieClip = new _loc19_();
         _loc20_.name = "clip";
         if(!_loc33_)
         {
            _loc2_.customerClip.backhand.addChild(_loc20_);
         }
         var _loc21_:Class = getDefinitionByName("customer_" + _loc3_ + "_upperarm") as Class;
         var _loc22_:MovieClip = new _loc21_();
         _loc22_.name = "clip";
         if(_loc32_ || Boolean(_loc2_))
         {
            _loc2_.customerClip.front_upperarm.addChild(_loc22_);
         }
         var _loc23_:MovieClip = new _loc21_();
         _loc23_.name = "clip";
         if(!_loc33_)
         {
            _loc2_.customerClip.back_upperarm.addChild(_loc23_);
         }
         var _loc24_:Class = getDefinitionByName("customer_" + _loc3_ + "_forearm") as Class;
         var _loc25_:MovieClip = new _loc24_();
         _loc25_.name = "clip";
         if(!_loc33_)
         {
            _loc2_.customerClip.front_forearm.addChild(_loc25_);
         }
         var _loc26_:MovieClip = new _loc24_();
         _loc26_.name = "clip";
         if(_loc32_ || Boolean(this))
         {
            _loc2_.customerClip.back_forearm.addChild(_loc26_);
            _loc2_.customerClip.gotoAndPlay("overjoyed");
         }
         _loc2_.customerClip.scaleX = 0.8;
         if(_loc32_ || Boolean(param1))
         {
            _loc2_.customerClip.scaleY = 0.8;
            if(_loc32_)
            {
               _loc2_.customerClip.x = 141;
            }
            _loc2_.customerClip.y = 75;
         }
         _loc2_.clip.circleMC.addChild(_loc2_.customerClip);
      }
   }
}

