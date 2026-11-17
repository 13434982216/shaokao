package wingGame.screens
{
   import Playtomic.*;
   import §_-1d§.§_-BY§;
   import flash.display.*;
   import flash.events.*;
   
   public class SponsorLogoScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public function SponsorLogoScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(this))
         {
            super();
         }
         var _loc2_:SponsorLogoScreen = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.gameObj = param1;
            if(_loc3_)
            {
            }
            §§goto(addr62);
         }
         _loc2_.setupScreen();
         if(_loc3_)
         {
            _loc2_.gameObj.§_-4P§.api.§_-h§("SponsorLogoScreen","PreGame");
         }
         addr62:
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SponsorLogoScreen = this;
         if(!_loc3_)
         {
            _loc1_.clip = new sponsorLogoMC();
            if(!(_loc3_ && _loc2_))
            {
               §§push(_loc1_.gameObj);
               if(!_loc3_)
               {
                  §§pop().addChild(_loc1_.clip);
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
               §§goto(addr52);
            }
            addr52:
            §§pop().stage.frameRate = 45;
            if(_loc3_ && Boolean(_loc1_))
            {
            }
            return;
            §§push(_loc1_.gameObj);
         }
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         if(!_loc3_)
         {
            _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
         }
         §§goto(addr52);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SponsorLogoScreen = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            §§goto(addr80);
         }
         §§push(_loc2_.gameObj);
         if(!_loc4_)
         {
            §§pop().§_-AF§();
            if(_loc3_ || Boolean(_loc2_))
            {
               §§goto(addr77);
            }
            addr80:
            if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(_loc2_.gameObj);
                  if(_loc3_)
                  {
                     §§pop().stage.frameRate = 30;
                     if(_loc4_ && Boolean(_loc2_))
                     {
                     }
                  }
                  addr79:
                  §§pop().final();
               }
               addr77:
               §§goto(addr79);
               §§push(_loc2_.gameObj);
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SponsorLogoScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj.§_-4P§.api.§_-DI§("http://www.papalouie.com?utm_source=game_links&utm_medium=game_intro&utm_campaign=papaswingeria","SponsorPreRoll","LogoLinks");
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SponsorLogoScreen = this;
         if(_loc3_ || _loc3_)
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.clip.btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.gameObj.removeChild(_loc1_.clip);
                  if(_loc3_)
                  {
                  }
               }
            }
            _loc1_.clip = null;
         }
      }
   }
}

