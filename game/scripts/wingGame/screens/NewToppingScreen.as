package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import wingGame.data.UserData;
   import wingGame.managers.CustomerManager;
   
   public class NewToppingScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var customerClip:MovieClip;
      
      public var toppingClip:MovieClip = null;
      
      public function NewToppingScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super();
         }
         var _loc2_:NewToppingScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj = param1;
            if(_loc3_)
            {
            }
            §§goto(addr49);
         }
         _loc2_.setupScreen();
         addr49:
      }
      
      public function setupScreen() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:NewToppingScreen = this;
         var _loc2_:CustomerManager = _loc1_.gameObj.§_-EW§;
         var _loc3_:UserData = _loc1_.gameObj.userData;
         if(!_loc6_)
         {
            _loc1_.gameObj.soundManager.switchMusic("none");
            if(_loc7_)
            {
            }
            §§goto(addr40);
         }
         _loc1_.clip = new newtopping_screen();
         addr40:
         §§push(_loc3_.getToppingToReveal());
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = Number(_loc3_.toppingIndexes.indexOf(_loc4_));
         §§push(_loc1_.gameObj);
         if(_loc7_ || Boolean(_loc1_))
         {
            §§pop().challengeManager.recordUnlockTopping();
            if(!_loc6_)
            {
               _loc1_.clip.circleMC.customername.text = _loc3_.toppingNames[_loc5_];
            }
            _loc1_.toppingClip = new newtopping_topping();
            §§goto(addr153);
         }
         §§pop().§_-BG§.addChild(_loc1_.clip);
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         addr153:
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loc1_.toppingClip.gotoAndStop(_loc4_);
            _loc1_.clip.circleMC.topping.inside.addChild(_loc1_.toppingClip);
            _loc3_.rememberRevealedTopping(_loc4_);
            if(_loc7_ || Boolean(this))
            {
               §§push(_loc1_.gameObj);
               if(!(_loc6_ && Boolean(_loc1_)))
               {
                  §§pop().soundManager.playSound("customer_overjoyed.wav");
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     §§push(_loc1_.gameObj);
                  }
               }
            }
         }
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:NewToppingScreen = this;
         var _loc3_:CustomerManager = _loc2_.gameObj.§_-EW§;
         if(!_loc5_)
         {
            if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
            {
               if(_loc4_ || Boolean(param1))
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
         var _loc1_:NewToppingScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(_loc4_)
            {
               addr45:
               §§push(_loc1_.gameObj);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§pop().§_-Bi§();
                  if(_loc3_ && Boolean(this))
                  {
                  }
               }
               addr71:
               §§pop().§_-7c§();
            }
            §§goto(addr71);
         }
         catch(err:Error)
         {
            §§goto(addr45);
         }
         _loc1_.gameObj;
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:NewToppingScreen = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            if(_loc1_.toppingClip)
            {
               if(_loc3_)
               {
               }
               _loc1_.gameObj.§_-BG§.removeChild(_loc1_.clip);
               addr77:
               if(!_loc4_)
               {
                  _loc1_.clip = null;
               }
               return;
               addr65:
            }
            try
            {
               addr58:
               _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
               §§goto(addr65);
            }
            catch(err:Error)
            {
            }
            §§goto(addr77);
         }
         _loc1_.toppingClip.parent.removeChild(_loc1_.toppingClip);
         if(_loc3_ || _loc3_)
         {
            _loc1_.toppingClip = null;
            if(!(_loc4_ && Boolean(this)))
            {
               §§goto(addr58);
            }
         }
         §§goto(addr77);
      }
   }
}

