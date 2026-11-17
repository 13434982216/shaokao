package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   import wingGame.models.Worker;
   
   public class PayDayScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var moneyFrame:Number = 40;
      
      public var worker:Worker;
      
      public function PayDayScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && Boolean(param1)))
         {
            super();
         }
         var _loc2_:PayDayScreen = this;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            _loc2_.gameObj = param1;
            if(_loc4_ || _loc3_)
            {
            }
            §§goto(addr59);
         }
         _loc2_.setupScreen();
         addr59:
      }
      
      public function setupScreen() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:PayDayScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.§_-EW§;
         var _loc3_:UserData = _loc1_.gameObj.userData;
         if(_loc6_)
         {
            §§push(_loc1_.gameObj);
            if(_loc6_)
            {
               §§push(§§pop().soundManager);
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§pop().switchMusic("none");
                  if(_loc6_ || Boolean(this))
                  {
                     _loc1_.clip = new payday_screen();
                     if(_loc6_)
                     {
                     }
                  }
                  addr94:
                  _loc1_.worker.playAnimation("payday");
                  addr98:
                  var _loc4_:String = _loc3_.getWeeklyWage(true);
                  if(!_loc5_)
                  {
                     _loc1_.clip.starburst.burst.money.text = _loc4_;
                     if(_loc6_)
                     {
                     }
                     addr161:
                     _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                     §§goto(addr168);
                  }
                  _loc3_.totalTips += _loc3_.getWeeklyWage();
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     §§push(_loc1_.gameObj);
                     if(!_loc5_)
                     {
                        §§pop().challengeManager.recordPayDay();
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§push(_loc1_.gameObj);
                        }
                     }
                     §§pop().§_-BG§.addChild(_loc1_.clip);
                     if(_loc5_ && Boolean(_loc3_))
                     {
                     }
                     addr168:
                     return;
                  }
                  §§goto(addr161);
               }
               addr59:
               §§pop().playSound("customer_overjoyed.wav");
               if(_loc6_)
               {
                  _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.circleMC,_loc1_.gameObj.workerData,130,80,1,false,false);
                  if(_loc6_ || Boolean(_loc2_))
                  {
                  }
                  §§goto(addr98);
               }
               §§goto(addr94);
            }
            addr58:
            §§goto(addr59);
            §§push(§§pop().soundManager);
         }
         §§goto(addr58);
         §§push(_loc1_.gameObj);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:PayDayScreen = this;
         var _loc3_:CustomerManager = _loc2_.gameObj.§_-EW§;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            §§push(_loc2_.worker);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || Boolean(this))
                  {
                  }
                  §§goto(addr78);
               }
               §§goto(addr50);
            }
            §§goto(addr49);
         }
         addr49:
         §§pop().animateModel();
         addr50:
         if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
         {
            _loc2_.endAnimation();
         }
         else if(_loc2_.clip.currentFrame == _loc2_.moneyFrame)
         {
            _loc2_.gameObj.soundManager.playSound("multicoin.wav");
            §§goto(addr78);
         }
         addr78:
         _loc2_.clip.starburst.gotoAndPlay(2);
         _loc2_.worker;
      }
      
      public function endAnimation() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:PayDayScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         }
         catch(err:Error)
         {
            var _loc2_:* = err;
         }
         §§push(_loc1_.gameObj.§_-EW§);
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(§§pop().showNoPapa);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(_loc3_ || Boolean(this))
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        addr111:
                        §§push(_loc1_.gameObj);
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           §§push(§§pop().§_-EW§);
                        }
                        §§pop().§_-EH§();
                        addr132:
                        _loc1_.gameObj.§_-2M§();
                        return;
                        addr130:
                     }
                  }
                  addr82:
                  if(§§pop())
                  {
                     §§push(_loc1_.gameObj);
                     if(!_loc4_)
                     {
                        §§pop().§function§();
                        §§goto(addr130);
                     }
                     else
                     {
                        addr98:
                        if(§§pop().userData.getToppingToReveal() != "none")
                        {
                           §§push(_loc1_.gameObj);
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr111);
                           }
                        }
                        else
                        {
                           _loc1_.gameObj.§_-Bi§();
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              §§goto(addr111);
                           }
                        }
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     §§push(_loc1_.gameObj);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr132);
               }
            }
            addr81:
            §§goto(addr82);
            §§push(§§pop());
         }
         §§push(§§pop().showNewCustomer);
         if(!_loc4_)
         {
            §§goto(addr81);
         }
         §§goto(addr82);
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:PayDayScreen = this;
         if(!_loc4_)
         {
            _loc1_.worker.destroy();
            if(_loc3_)
            {
            }
            try
            {
               addr26:
               _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  addr59:
                  _loc1_.gameObj.§_-BG§.removeChild(_loc1_.clip);
                  if(_loc3_ || Boolean(this))
                  {
                  }
               }
               _loc1_.clip = null;
            }
            catch(err:Error)
            {
               §§goto(addr59);
            }
            return;
         }
         _loc1_.worker = null;
         §§goto(addr26);
      }
   }
}

