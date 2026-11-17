package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import wingGame.data.CustomerData;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   import wingGame.models.Worker;
   
   public class StartDayScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var worker:Worker;
      
      public var isWaitingForTalkerResponse:Number = 0;
      
      public function StartDayScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super();
         }
         var _loc2_:StartDayScreen = this;
         if(!_loc4_)
         {
            _loc2_.gameObj = param1;
            if(_loc3_)
            {
            }
            §§goto(addr48);
         }
         _loc2_.setupScreen();
         addr48:
      }
      
      public function setupScreen() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:StartDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc1_.clip = new startDayMC();
         _loc1_.gameObj.§_-BG§.addChild(_loc1_.clip);
         _loc1_.clip.dayMC.clip.day_text.text = String(_loc2_.getDay());
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            _loc1_.clip.dayMC.clip.day_shadow.text = String(_loc2_.getDay());
            _loc1_.clip.dayMC.nopapaclip.day_text.text = String(_loc2_.getDay());
            _loc1_.clip.dayMC.nopapaclip.day_shadow.text = String(_loc2_.getDay());
         }
         _loc1_.clip.dayMC.nopapaclip.return_txt.text = "";
         §§push(_loc2_.getDaysUntilPapa());
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         _loc1_.clip.dayMC.clip.visible = false;
         _loc1_.clip.dayMC.nopapaclip.visible = true;
         if(!_loc5_)
         {
            _loc1_.clip.play();
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,this.updateScreen);
            §§push(_loc1_.gameObj);
            if(!_loc5_)
            {
               §§push(§§pop().soundManager);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  §§pop().switchMusic("none");
                  §§push(_loc1_.gameObj);
                  if(!_loc5_)
                  {
                     §§push(§§pop().soundManager);
                  }
               }
               §§pop().playSound("startofday.wav");
               _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.workerholder,_loc1_.gameObj.workerData,0,0,0.22);
               if(_loc4_)
               {
                  _loc1_.worker.playAnimation("startday");
                  _loc1_.setupCustomers();
                  _loc1_.setupOrderHints();
               }
               §§goto(addr185);
            }
            §§goto(addr182);
         }
         addr182:
         §§pop().stage.frameRate = 30;
         addr185:
         _loc1_.gameObj;
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:MovieClip = null;
         var _loc2_:StartDayScreen = this;
         _loc2_.worker.animateModel();
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            _loc2_.clip.removeEventListener(Event.ENTER_FRAME,this.updateScreen);
            §§push(_loc2_.gameObj);
            if(_loc6_ || Boolean(this))
            {
               §§pop().§_-2R§();
               §§push(_loc2_.gameObj);
            }
            §§pop().§_-94§();
            if(_loc7_ && Boolean(param1))
            {
               addr202:
               addr171:
            }
         }
         else if(_loc2_.clip.currentFrame == 66)
         {
            _loc2_.clip.customercross.gotoAndPlay("stand");
            if(!_loc6_)
            {
               addr132:
               _loc2_.clip.customerleaving.gotoAndPlay("stand");
               §§goto(addr202);
            }
         }
         else
         {
            if(_loc2_.clip.currentFrame == 72)
            {
               if(_loc6_)
               {
                  _loc2_.clip.customercross.gotoAndPlay("overjoyed");
                  if(!(_loc6_ || Boolean(_loc2_)))
                  {
                     addr101:
                     _loc2_.clip.customerleaving.gotoAndPlay("stand");
                     if(!_loc6_)
                     {
                        §§goto(addr171);
                     }
                  }
               }
            }
            else
            {
               if(_loc2_.clip.currentFrame == 84)
               {
                  if(_loc6_)
                  {
                     §§goto(addr101);
                  }
                  else
                  {
                     addr227:
                     §§push(_loc2_.isWaitingForTalkerResponse);
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§push(§§pop() > §§pop());
                           if(_loc6_)
                           {
                              addr247:
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(_loc2_.isWaitingForTalkerResponse);
                                    §§push(1);
                                    if(!_loc7_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          addr256:
                                          _loc2_.clip.customertalking2.gotoAndPlay("stand");
                                       }
                                       else
                                       {
                                          _loc2_.clip.customertalking1.gotoAndPlay("stand");
                                          if(_loc7_ && Boolean(param1))
                                          {
                                             addr303:
                                             _loc5_ = _loc2_.clip["customertalking" + _loc2_.isWaitingForTalkerResponse];
                                             §§push(_loc4_);
                                             if(_loc6_ || Boolean(param1))
                                             {
                                                §§push(0.2);
                                                if(_loc6_ || Boolean(this))
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      _loc5_.gotoAndPlay("takeorder");
                                                      if(!(_loc6_ || Boolean(_loc3_)))
                                                      {
                                                         addr352:
                                                         _loc5_.gotoAndPlay("decent");
                                                         if(!_loc6_)
                                                         {
                                                            addr370:
                                                            _loc5_.gotoAndPlay("upset");
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc6_)
                                                      {
                                                         §§push(0.4);
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               §§goto(addr352);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_ || Boolean(_loc3_))
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§push(0.6);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§goto(addr370);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc4_);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr383:
                                                if(§§pop() < §§pop())
                                                {
                                                   _loc5_.gotoAndPlay("pissed");
                                                }
                                                else
                                                {
                                                   _loc5_.gotoAndPlay("happy");
                                                }
                                             }
                                             §§goto(addr383);
                                             §§push(0.8);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr294:
                                    §§push(_loc2_.isWaitingForTalkerResponse);
                                    §§push(0);
                                 }
                              }
                              else
                              {
                                 §§push(_loc2_.clip.currentFrame == 85);
                                 if(!_loc7_)
                                 {
                                    addr283:
                                    if(§§pop())
                                    {
                                       if(_loc6_ || Boolean(param1))
                                       {
                                       }
                                    }
                                 }
                              }
                              addr298:
                              if(§§pop())
                              {
                                 §§push(Math.random());
                              }
                           }
                        }
                        §§goto(addr298);
                        §§push(§§pop() > §§pop());
                     }
                     _loc4_ = §§pop();
                     §§goto(addr303);
                  }
               }
               else
               {
                  if(_loc2_.clip.currentFrame != 89)
                  {
                     §§push(_loc2_.clip.currentFrame == 74);
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc6_ || Boolean(this))
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§pop();
                                 §§goto(addr227);
                              }
                           }
                           §§goto(addr247);
                        }
                        §§goto(addr283);
                     }
                  }
                  §§goto(addr303);
               }
               §§pop();
               if(!_loc7_)
               {
                  §§goto(addr294);
               }
               §§goto(addr303);
            }
            _loc3_ = Math.random();
            if(!_loc7_)
            {
               §§push(_loc3_);
               if(_loc6_ || Boolean(this))
               {
                  §§push(0.2);
                  if(_loc6_)
                  {
                     if(§§pop() < §§pop())
                     {
                        §§goto(addr132);
                     }
                     else
                     {
                        §§push(_loc3_);
                        §§push(0.4);
                        if(_loc6_ || Boolean(this))
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 _loc2_.clip.customerleaving.gotoAndPlay("decent");
                              }
                              else
                              {
                                 addr166:
                                 _loc2_.clip.customerleaving.gotoAndPlay("worried");
                                 §§goto(addr202);
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                           }
                        }
                     }
                     §§goto(addr202);
                  }
                  addr165:
                  if(§§pop() < §§pop())
                  {
                     §§goto(addr166);
                  }
                  else
                  {
                     addr174:
                     if(_loc3_ < 0.8)
                     {
                        _loc2_.clip.customerleaving.gotoAndPlay("pissed");
                        if(!(_loc6_ || Boolean(_loc3_)))
                        {
                           §§goto(addr294);
                        }
                     }
                     else
                     {
                        _loc2_.clip.customerleaving.gotoAndPlay("overjoyed");
                        if(_loc6_)
                        {
                        }
                     }
                  }
                  §§goto(addr202);
               }
               §§push(0.6);
               if(_loc6_)
               {
                  §§goto(addr165);
               }
               §§goto(addr174);
            }
            else
            {
               §§goto(addr256);
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:StartDayScreen = this;
         _loc1_.worker.destroy();
         _loc1_.worker = null;
         _loc1_.destroyCustomerModel(_loc1_.clip.customercross);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.destroyCustomerModel(_loc1_.clip.customerfg);
            _loc1_.destroyCustomerModel(_loc1_.clip.customerleaving);
            _loc1_.destroyCustomerModel(_loc1_.clip.customerreading);
            if(!_loc3_)
            {
               _loc1_.destroyCustomerModel(_loc1_.clip.customertalking1);
               if(!_loc3_)
               {
                  _loc1_.destroyCustomerModel(_loc1_.clip.customertalking2);
                  _loc1_.gameObj.§_-BG§.removeChild(_loc1_.clip);
               }
            }
            §§goto(addr86);
         }
         _loc1_.clip = null;
         addr86:
      }
      
      public function setupOrderHints() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:CustomerOrder = null;
         var _loc9_:* = 0;
         var _loc10_:* = null;
         var _loc11_:* = NaN;
         var _loc1_:StartDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         var _loc4_:CustomerManager = _loc1_.gameObj.§_-EW§;
         if(_loc13_)
         {
            _loc5_ = 1;
         }
         while(true)
         {
            §§push(_loc5_);
            if(!_loc12_)
            {
               if(§§pop() <= 3)
               {
                  _loc1_.clip["sauce_hint" + _loc5_].visible = false;
                  if(_loc13_)
                  {
                     _loc1_.clip["numberhint" + _loc5_].visible = false;
                     if(!(_loc13_ || Boolean(_loc1_)))
                     {
                        continue;
                     }
                  }
                  _loc1_.clip["meathint" + _loc5_].visible = false;
                  if(_loc12_)
                  {
                     continue;
                  }
                  _loc5_++;
                  if(!(_loc12_ && Boolean(_loc3_)))
                  {
                     continue;
                  }
               }
               §§push(0);
            }
            break;
         }
         var _loc6_:Number = §§pop();
         if(_loc13_ || Boolean(this))
         {
            §§push(0);
            if(_loc13_)
            {
               _loc5_ = §§pop();
               addr143:
               if(_loc13_)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                  }
                  addr360:
               }
               while(true)
               {
                  _loc8_ = _loc3_.getCustomerOrderData(_loc7_);
                  §§push(0);
                  if(!(_loc12_ && Boolean(_loc1_)))
                  {
                     _loc9_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc9_);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < _loc8_.wings.length)
                           {
                              if(++_loc6_ <= 3)
                              {
                                 if(!_loc12_)
                                 {
                                    _loc1_.clip["sauce_hint" + _loc6_].visible = true;
                                 }
                                 _loc1_.clip["sauce_hint" + _loc6_].gotoAndStop(FoodData.getSauceFrame(_loc8_.wings[_loc9_][3]));
                                 _loc1_.clip["numberhint" + _loc6_].visible = true;
                                 _loc1_.clip["numberhint" + _loc6_].gotoAndStop(_loc8_.wings[_loc9_][1]);
                                 §§push(_loc8_.wings[_loc9_][0]);
                                 if(_loc13_ || Boolean(_loc1_))
                                 {
                                    _loc10_ = §§pop();
                                    if(_loc13_ || Boolean(_loc1_))
                                    {
                                       §§push(1);
                                       if(!_loc13_)
                                       {
                                          continue;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(4);
                                       addr319:
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          addr321:
                                          while(true)
                                          {
                                             _loc1_.clip["meathint" + _loc6_].visible = true;
                                             if(!_loc12_)
                                             {
                                                _loc1_.clip["meathint" + _loc6_].gotoAndStop(_loc11_);
                                             }
                                             break loop4;
                                          }
                                       }
                                    }
                                    addr318:
                                 }
                                 while(true)
                                 {
                                    §§push(FoodData.MEAT_SHRIMP);
                                    if(_loc13_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§push(3);
                                             if(!_loc13_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop());
                                             while(true)
                                             {
                                                _loc11_ = §§pop();
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc10_);
                                             while(true)
                                             {
                                                §§push(FoodData.MEAT_STRIPS);
                                             }
                                             addr315:
                                          }
                                          §§goto(addr321);
                                       }
                                       addr307:
                                    }
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr318);
                                       }
                                       §§goto(addr321);
                                    }
                                 }
                                 addr303:
                              }
                              break;
                           }
                           §§goto(addr345);
                        }
                        while(true)
                        {
                           _loc9_++;
                           continue loop3;
                        }
                     }
                  }
                  while(true)
                  {
                     _loc11_ = §§pop();
                     §§push(_loc10_);
                     if(_loc13_ || Boolean(_loc2_))
                     {
                        §§push(FoodData.MEAT_WING);
                        if(_loc13_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc12_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(!(_loc12_ && Boolean(_loc1_)))
                                 {
                                    _loc11_ = §§pop();
                                    if(_loc12_)
                                    {
                                    }
                                    §§goto(addr321);
                                 }
                                 else
                                 {
                                    addr298:
                                    _loc11_ = §§pop();
                                 }
                                 §§goto(addr321);
                              }
                              §§goto(addr345);
                           }
                           else
                           {
                              §§push(_loc10_);
                              if(!_loc12_)
                              {
                                 §§push(FoodData.MEAT_BONELESS);
                                 if(!_loc12_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(2);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc12_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr298);
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr319);
                                    }
                                    else
                                    {
                                       §§push(_loc10_);
                                       if(_loc12_)
                                       {
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr315);
                        }
                        §§goto(addr307);
                     }
                     §§goto(addr303);
                  }
               }
               addr143:
            }
            loop16:
            while(true)
            {
               if(§§pop() < _loc4_.customerLineup.length)
               {
                  §§push(_loc6_);
                  if(_loc13_)
                  {
                     if(§§pop() < 3)
                     {
                        if(_loc12_ && Boolean(_loc1_))
                        {
                        }
                        §§goto(addr143);
                     }
                     addr345:
                     §§goto(addr365);
                  }
                  while(true)
                  {
                     _loc7_ = §§pop();
                     if(!(_loc13_ || Boolean(this)))
                     {
                        continue loop16;
                     }
                     §§goto(addr143);
                  }
                  addr135:
               }
               addr365:
               while(true)
               {
                  _loc5_++;
                  if(_loc13_ || Boolean(_loc2_))
                  {
                     §§goto(addr360);
                  }
                  break;
               }
               return;
            }
         }
         while(true)
         {
            §§goto(addr135);
         }
      }
      
      public function setupCustomers() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:StartDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         var _loc4_:CustomerManager = _loc1_.gameObj.§_-EW§;
         var _loc5_:Array = [];
         var _loc6_:Number = Number(_loc4_.customerLineup[0]);
         §§push(_loc3_.getCustomerClipName(_loc6_));
         if(_loc21_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         if(_loc21_ || Boolean(_loc3_))
         {
            _loc1_.setupCustomerModel(_loc1_.clip.customercross,_loc7_);
            if(_loc20_)
            {
            }
            addr66:
            var _loc8_:Number = Number(_loc4_.customerLineup[1]);
            §§push(_loc3_.getCustomerClipName(_loc8_));
            if(!(_loc20_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            var _loc9_:* = §§pop();
            if(!(_loc20_ && Boolean(this)))
            {
               _loc1_.setupCustomerModel(_loc1_.clip.customerleaving,_loc9_);
               if(!_loc20_)
               {
                  _loc5_.push(_loc8_);
               }
            }
            var _loc10_:* = -1;
            loop0:
            while(true)
            {
               §§push(_loc10_);
               while(true)
               {
                  §§push(§§pop() == -1);
                  if(!(_loc20_ && Boolean(this)))
                  {
                     if(!§§pop())
                     {
                        if(_loc21_)
                        {
                           §§pop();
                           if(!_loc20_)
                           {
                              while(true)
                              {
                                 §§push(_loc5_.indexOf(_loc10_) > -1);
                              }
                           }
                           addr149:
                           §§push(_loc3_.getCustomerClipName(_loc10_));
                           if(_loc21_)
                           {
                              §§push(§§pop());
                           }
                           var _loc11_:* = §§pop();
                           if(!_loc20_)
                           {
                              _loc1_.setupCustomerModel(_loc1_.clip.customerfg,_loc11_);
                              if(_loc21_)
                              {
                              }
                              addr169:
                              var _loc12_:* = -1;
                              if(!_loc20_)
                              {
                                 addr195:
                                 addr196:
                                 §§push(_loc12_ == -1);
                                 if(_loc21_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc21_)
                                       {
                                          §§pop();
                                          if(_loc20_ && Boolean(_loc2_))
                                          {
                                          }
                                          addr218:
                                          §§push(_loc3_.getCustomerClipName(_loc12_));
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc13_:* = §§pop();
                                          if(_loc21_ || Boolean(_loc2_))
                                          {
                                             _loc1_.setupCustomerModel(_loc1_.clip.customerreading,_loc13_);
                                             if(_loc21_ || Boolean(_loc1_))
                                             {
                                             }
                                             addr248:
                                             var _loc14_:* = -1;
                                             if(!(_loc20_ && Boolean(_loc3_)))
                                             {
                                                addr279:
                                                §§push(_loc14_ == -1);
                                                if(_loc21_ || Boolean(this))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc20_ && Boolean(_loc1_))
                                                      {
                                                      }
                                                   }
                                                   addr306:
                                                   if(§§pop())
                                                   {
                                                      §§push(Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1)));
                                                      if(_loc21_ || Boolean(_loc1_))
                                                      {
                                                         _loc14_ = §§pop();
                                                         if(_loc21_)
                                                         {
                                                            §§goto(addr279);
                                                         }
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   addr307:
                                                   §§push(_loc3_.getCustomerClipName(_loc14_));
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   var _loc15_:* = §§pop();
                                                   if(!(_loc20_ && Boolean(_loc1_)))
                                                   {
                                                      _loc1_.setupCustomerModel(_loc1_.clip.customertalking1,_loc15_);
                                                      if(!(_loc20_ && Boolean(_loc2_)))
                                                      {
                                                         _loc5_.push(_loc14_);
                                                      }
                                                   }
                                                   var _loc16_:* = -1;
                                                   if(_loc21_)
                                                   {
                                                   }
                                                   addr365:
                                                   §§push(_loc16_ == -1);
                                                   if(_loc21_ || Boolean(_loc2_))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc20_ && Boolean(_loc2_)))
                                                         {
                                                            §§pop();
                                                            addr393:
                                                            if(_loc21_)
                                                            {
                                                               addr387:
                                                               §§push(_loc5_.indexOf(_loc16_) > -1);
                                                            }
                                                            §§push(_loc3_.getCustomerClipName(_loc16_));
                                                            if(!_loc20_)
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            var _loc17_:* = §§pop();
                                                            if(!(_loc20_ && Boolean(_loc3_)))
                                                            {
                                                               _loc1_.setupCustomerModel(_loc1_.clip.customertalking2,_loc17_);
                                                               if(_loc21_)
                                                               {
                                                                  _loc5_.push(_loc16_);
                                                                  if(!_loc20_)
                                                                  {
                                                                     _loc1_.clip.customercross.gotoAndPlay("walk");
                                                                     if(_loc21_ || Boolean(_loc3_))
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               _loc1_.clip.customerfg.gotoAndPlay("walk");
                                                               if(_loc21_)
                                                               {
                                                                  _loc1_.clip.customerleaving.gotoAndPlay("walk");
                                                               }
                                                            }
                                                            var _loc18_:Number = Math.random();
                                                            §§push(_loc18_);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(0.3);
                                                               if(_loc21_ || Boolean(_loc2_))
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        _loc1_.clip.customerreading.gotoAndPlay("readpaper1");
                                                                        _loc1_.clip.customerreading.book.gotoAndStop("newspaper");
                                                                     }
                                                                     else
                                                                     {
                                                                        addr486:
                                                                        _loc1_.clip.customerreading.gotoAndPlay("readpaper1");
                                                                        if(!(_loc20_ && Boolean(_loc2_)))
                                                                        {
                                                                           _loc1_.clip.customerreading.book.gotoAndStop("comics");
                                                                        }
                                                                        else
                                                                        {
                                                                           addr517:
                                                                           _loc1_.clip.customerreading.gotoAndPlay("chewgum3");
                                                                        }
                                                                     }
                                                                     addr541:
                                                                     §§push(Math.random());
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc18_);
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§push(0.6);
                                                                        if(_loc21_ || Boolean(_loc3_))
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              §§goto(addr486);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc18_);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(0.8);
                                                                                 if(_loc21_ || Boolean(this))
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr545:
                                                                        var _loc19_:* = §§pop();
                                                                        if(!(_loc20_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(0.3);
                                                                           if(_loc21_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(!(_loc20_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    _loc1_.clip.customertalking1.gotoAndPlay("takeorder");
                                                                                    _loc1_.clip.customertalking2.gotoAndPlay("stand");
                                                                                    if(!(_loc20_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       _loc1_.isWaitingForTalkerResponse = 2;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr635:
                                                                                       _loc1_.clip.customertalking1.mug.gotoAndStop("soda");
                                                                                       _loc1_.clip.customertalking2.gotoAndPlay("drinkcoffee3");
                                                                                       if(!(_loc20_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          _loc1_.clip.customertalking2.mug.gotoAndStop("soda");
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr619:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc19_);
                                                                                 if(_loc20_ && Boolean(_loc3_))
                                                                                 {
                                                                                 }
                                                                                 addr621:
                                                                                 §§push(0.8);
                                                                              }
                                                                              §§goto(addr679);
                                                                           }
                                                                           addr622:
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(_loc21_ || Boolean(_loc3_))
                                                                              {
                                                                                 _loc1_.clip.customertalking1.gotoAndPlay("drinkcoffee4");
                                                                              }
                                                                              §§goto(addr635);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc1_.clip.customertalking1.gotoAndPlay("dance1");
                                                                              if(_loc21_)
                                                                              {
                                                                                 addr674:
                                                                                 _loc1_.clip.customertalking2.gotoAndPlay("dance4");
                                                                              }
                                                                           }
                                                                           §§goto(addr679);
                                                                        }
                                                                        §§push(0.6);
                                                                        if(_loc21_ || Boolean(_loc1_))
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 _loc1_.clip.customertalking1.gotoAndPlay("stand");
                                                                                 _loc1_.clip.customertalking2.gotoAndPlay("takeorder");
                                                                                 _loc1_.isWaitingForTalkerResponse = 1;
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§goto(addr619);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr674);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr621);
                                                                              §§push(_loc19_);
                                                                           }
                                                                           addr679:
                                                                           return;
                                                                        }
                                                                        §§goto(addr622);
                                                                     }
                                                                  }
                                                               }
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  §§goto(addr517);
                                                               }
                                                               else
                                                               {
                                                                  _loc1_.clip.customerreading.gotoAndPlay("drinkcoffee4");
                                                                  if(_loc21_ || Boolean(_loc3_))
                                                                  {
                                                                     _loc1_.clip.customerreading.mug.gotoAndStop("soda");
                                                                  }
                                                               }
                                                               §§goto(addr541);
                                                            }
                                                            §§goto(addr545);
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§push(Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1)));
                                                      if(_loc21_)
                                                      {
                                                         _loc16_ = §§pop();
                                                         if(_loc21_)
                                                         {
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      §§goto(addr365);
                                                   }
                                                   §§goto(addr393);
                                                }
                                                §§pop();
                                                if(_loc20_)
                                                {
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr306);
                                             §§push(_loc5_.indexOf(_loc14_) > -1);
                                          }
                                          _loc5_.push(_loc12_);
                                          §§goto(addr248);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    §§push(Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1)));
                                    if(!(_loc20_ && Boolean(_loc1_)))
                                    {
                                       _loc12_ = §§pop();
                                       if(_loc21_)
                                       {
                                          §§goto(addr195);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr195);
                              §§push(_loc5_.indexOf(_loc12_) > -1);
                           }
                           _loc5_.push(_loc10_);
                           §§goto(addr169);
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§push(Math.ceil(Math.random() * (_loc3_.getCustomerTotal() - 1)));
                        if(_loc20_)
                        {
                           break;
                        }
                        _loc10_ = §§pop();
                        if(_loc21_ || Boolean(this))
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     §§goto(addr149);
                  }
               }
            }
         }
         _loc5_.push(_loc6_);
         §§goto(addr66);
      }
      
      public function setupCustomerModel(param1:MovieClip, param2:String) : void
      {
         var _loc31_:Boolean = false;
         var _loc32_:Boolean = true;
         var _loc26_:Class = null;
         var _loc27_:MovieClip = null;
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc3_:Class = getDefinitionByName("customer_" + param2 + "_body") as Class;
         var _loc4_:MovieClip = new _loc3_();
         _loc4_.name = "clip";
         if(_loc32_ || Boolean(_loc3_))
         {
            param1.body.addChild(_loc4_);
         }
         var _loc5_:Class = getDefinitionByName("customer_" + param2 + "_head") as Class;
         var _loc6_:MovieClip = new _loc5_();
         _loc6_.name = "clip";
         if(_loc32_ || Boolean(param1))
         {
            param1.head.addChild(_loc6_);
         }
         var _loc7_:Class = getDefinitionByName("customer_" + param2 + "_eyes") as Class;
         var _loc8_:MovieClip = new _loc7_();
         _loc8_.name = "clip";
         if(_loc32_ || Boolean(this))
         {
            param1.eyes.addChild(_loc8_);
         }
         var _loc9_:Class = getDefinitionByName("customer_" + param2 + "_mouth") as Class;
         var _loc10_:MovieClip = new _loc9_();
         _loc10_.name = "clip";
         if(!(_loc31_ && Boolean(this)))
         {
            param1.mouth.addChild(_loc10_);
         }
         var _loc11_:Class = getDefinitionByName("customer_" + param2 + "_neck") as Class;
         var _loc12_:MovieClip = new _loc11_();
         _loc12_.name = "clip";
         if(_loc32_ || Boolean(this))
         {
            param1.neck.addChild(_loc12_);
         }
         try
         {
            _loc26_ = getDefinitionByName("customer_" + param2 + "_hair") as Class;
            _loc27_ = new _loc26_();
            _loc27_.name = "clip";
            if(_loc32_)
            {
               param1.hair.addChild(_loc27_);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc28_ = getDefinitionByName("customer_" + param2 + "_back_hair") as Class;
            _loc29_ = new _loc28_();
            _loc29_.name = "clip";
            if(!_loc31_)
            {
               param1.back_hair.addChild(_loc29_);
            }
         }
         catch(err:Error)
         {
         }
         var _loc13_:Class = getDefinitionByName("customer_" + param2 + "_foot") as Class;
         var _loc14_:MovieClip = new _loc13_();
         _loc14_.name = "clip";
         if(_loc32_ || Boolean(param1))
         {
            param1.front_shoe.addChild(_loc14_);
         }
         var _loc15_:MovieClip = new _loc13_();
         _loc15_.name = "clip";
         if(_loc32_ || Boolean(_loc3_))
         {
            param1.back_shoe.addChild(_loc15_);
         }
         var _loc16_:Class = getDefinitionByName("customer_" + param2 + "_hand") as Class;
         var _loc17_:MovieClip = new _loc16_();
         _loc17_.name = "clip";
         if(!_loc31_)
         {
            param1.fronthand.addChild(_loc17_);
         }
         var _loc18_:Class = getDefinitionByName("customer_" + param2 + "_hand2") as Class;
         var _loc19_:MovieClip = new _loc18_();
         _loc19_.name = "clip";
         if(_loc32_)
         {
            param1.backhand.addChild(_loc19_);
         }
         var _loc20_:Class = getDefinitionByName("customer_" + param2 + "_upperarm") as Class;
         var _loc21_:MovieClip = new _loc20_();
         _loc21_.name = "clip";
         if(!_loc31_)
         {
            param1.front_upperarm.addChild(_loc21_);
         }
         var _loc22_:MovieClip = new _loc20_();
         _loc22_.name = "clip";
         if(!(_loc31_ && Boolean(param1)))
         {
            param1.back_upperarm.addChild(_loc22_);
         }
         var _loc23_:Class = getDefinitionByName("customer_" + param2 + "_forearm") as Class;
         var _loc24_:MovieClip = new _loc23_();
         _loc24_.name = "clip";
         if(!(_loc31_ && Boolean(_loc3_)))
         {
            param1.front_forearm.addChild(_loc24_);
         }
         var _loc25_:MovieClip = new _loc23_();
         _loc25_.name = "clip";
         if(!(_loc31_ && Boolean(param2)))
         {
            param1.back_forearm.addChild(_loc25_);
         }
      }
      
      public function destroyCustomerModel(param1:MovieClip) : void
      {
         var whichClip:MovieClip;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && Boolean(this)))
         {
            §§pop().§§slot[1] = param1;
            if(!_loc5_)
            {
               §§push(§§newactivation());
            }
            try
            {
               addr32:
               whichClip.body.removeChildAt(0);
               if(!_loc5_)
               {
                  whichClip.head.removeChildAt(0);
                  whichClip.eyes.removeChildAt(0);
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§pop().§§slot[1].mouth.removeChildAt(0);
                     §§push(§§newactivation());
                     if(_loc4_ || _loc2_)
                     {
                        §§pop().§§slot[1].neck.removeChildAt(0);
                        §§push(§§newactivation());
                     }
                  }
                  §§pop().§§slot[1].front_shoe.removeChildAt(0);
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§pop().§§slot[1].back_shoe.removeChildAt(0);
                  }
                  addr81:
                  §§pop().§§slot[1].fronthand.removeChildAt(0);
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     §§push(§§newactivation());
                     if(_loc4_ || Boolean(this))
                     {
                        §§pop().§§slot[1].backhand.removeChildAt(0);
                        if(_loc4_)
                        {
                           whichClip.front_upperarm.removeChildAt(0);
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                           }
                           addr128:
                           §§pop().§§slot[1].front_forearm.removeChildAt(0);
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              §§pop().§§slot[1].back_forearm.removeChildAt(0);
                              §§goto(addr203);
                           }
                           §§pop().§§slot[1].hair.removeChildAt(0);
                        }
                        addr163:
                        §§goto(addr177);
                     }
                     §§pop().§§slot[1].back_upperarm.removeChildAt(0);
                     if(_loc4_)
                     {
                        §§goto(addr128);
                        §§push(§§newactivation());
                     }
                     §§goto(addr163);
                  }
               }
               §§goto(addr81);
            }
            catch(err:Error)
            {
               if(_loc4_)
               {
                  §_-5i§.error("Error removing parts of customer");
               }
               §§goto(addr158);
            }
            addr203:
            try
            {
               addr158:
            }
            catch(err:Error)
            {
            }
            try
            {
               addr177:
               whichClip.back_hair.removeChildAt(0);
            }
            catch(err:Error)
            {
            }
            §§newactivation();
            return;
            §§push(§§newactivation());
         }
         §§pop().§§slot[1].stop();
         §§goto(addr32);
      }
   }
}

