package wingGame.screens
{
   import Playtomic.*;
   import §_-1d§.§_-BY§;
   import §_-H§.§_-77§;
   import flash.display.*;
   import flash.events.*;
   
   public class LicenseLogoScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public function LicenseLogoScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param1))
         {
            super();
         }
         var _loc2_:LicenseLogoScreen = this;
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.gameObj = param1;
            if(_loc3_ || _loc3_)
            {
               _loc2_.setupScreen();
               if(_loc4_)
               {
               }
               §§goto(addr67);
            }
         }
         _loc2_.gameObj.§_-4P§.api.§_-h§("LicenseLogoScreen","PreGame");
         addr67:
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LicenseLogoScreen = this;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.clip = new licenseLogoMC();
            if(!(_loc2_ && _loc2_))
            {
               §§push(_loc1_.gameObj);
               if(_loc3_)
               {
                  §§pop().addChild(_loc1_.clip);
                  if(_loc2_)
                  {
                  }
                  addr79:
                  _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
               }
               addr53:
               §§pop().stage.frameRate = 45;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr53);
         §§push(_loc1_.gameObj);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LicenseLogoScreen = this;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr79:
                  §§push(_loc2_.gameObj);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§pop().stage.frameRate = 30;
                     if(_loc3_ || Boolean(this))
                     {
                     }
                     addr77:
                     §§push(_loc2_.gameObj);
                  }
                  §§pop().§_-AO§();
               }
            }
            §§goto(addr80);
         }
         §§push(_loc2_.gameObj);
         if(_loc3_)
         {
            §§pop().§_-AF§();
            if(!_loc4_)
            {
               §§goto(addr77);
            }
            addr80:
            return;
         }
         §§goto(addr79);
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LicenseLogoScreen = this;
         if(_loc3_)
         {
            _loc2_.gameObj.§_-4P§.api.§_-DI§(§_-77§.§_-8T§(),"LicensePreRoll","LogoLinks");
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LicenseLogoScreen = this;
         if(_loc3_ || Boolean(this))
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(_loc3_)
            {
               _loc1_.clip.btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
               if(_loc3_)
               {
               }
               §§goto(addr72);
            }
         }
         _loc1_.gameObj.removeChild(_loc1_.clip);
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.clip = null;
         }
         addr72:
      }
   }
}

