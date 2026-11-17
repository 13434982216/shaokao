package wingGame.screens
{
   import Playtomic.*;
   import §_-1d§.§_-BY§;
   import flash.display.*;
   import flash.events.*;
   
   public class FliplineLogoScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public function FliplineLogoScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
         }
         var _loc2_:FliplineLogoScreen = this;
         if(!_loc4_)
         {
            _loc2_.gameObj = param1;
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_.setupScreen();
               if(_loc3_ || _loc3_)
               {
                  _loc2_.gameObj.§_-4P§.api.§_-h§("FliplineLogoScreen","PreGame");
               }
            }
         }
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FliplineLogoScreen = this;
         if(!_loc3_)
         {
            _loc1_.clip = new fliplineLogoMC();
            if(_loc2_ || Boolean(_loc1_))
            {
               §§push(_loc1_.gameObj);
               if(_loc2_ || Boolean(this))
               {
                  §§pop().addChild(_loc1_.clip);
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr86);
               }
               addr83:
               §§pop().stage.frameRate = 24;
               §§goto(addr86);
            }
         }
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         if(_loc2_)
         {
            _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
            if(_loc3_)
            {
            }
            addr86:
            return;
         }
         §§goto(addr83);
         §§push(_loc1_.gameObj);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:FliplineLogoScreen = this;
         if(_loc2_.clip.currentLabel == "stopframe")
         {
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_.clip.stop();
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr113:
                  §§push(_loc2_.gameObj);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§pop().stage.frameRate = 30;
                     if(_loc4_ && Boolean(_loc2_))
                     {
                     }
                     addr88:
                     §§push(_loc2_.gameObj);
                     if(_loc3_ || _loc3_)
                     {
                        addr107:
                        §§pop().§_-4P§.api.§_-h§("SplashScreen","PreGame");
                        if(!_loc4_)
                        {
                           §§push(_loc2_.gameObj);
                        }
                     }
                  }
                  §§pop().§_-Bh§();
               }
            }
            §§push(_loc2_.gameObj);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().§_-4P§);
               if(_loc3_)
               {
                  §§push(§§pop().api);
                  if(!_loc4_)
                  {
                     §§push("SplashScreen");
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§pop().§_-76§(§§pop());
                        §§goto(addr88);
                     }
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr113);
         }
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:FliplineLogoScreen = this;
         if(_loc3_ || Boolean(param1))
         {
            _loc2_.gameObj.§_-4P§.api.§_-DI§("http://www.flipline.com?utm_source=game_links&utm_medium=game_intro&utm_campaign=papaswingeria","FliplinePreroll","LogoLinks");
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FliplineLogoScreen = this;
         if(!_loc3_)
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(_loc2_)
            {
               _loc1_.clip.btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
               if(!_loc3_)
               {
                  _loc1_.gameObj.removeChild(_loc1_.clip);
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
            }
            §§goto(addr66);
         }
         _loc1_.clip = null;
         addr66:
      }
   }
}

