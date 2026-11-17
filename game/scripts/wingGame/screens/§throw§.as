package wingGame.screens
{
   import Playtomic.*;
   import §_-1d§.§_-BY§;
   import flash.display.*;
   import flash.events.*;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §throw§
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public function §throw§(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
         }
         var _loc2_:§throw§ = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.gameObj = param1;
            if(_loc3_ && Boolean(param1))
            {
            }
            §§goto(addr56);
         }
         _loc2_.setupScreen();
         if(!_loc3_)
         {
            §§goto(addr56);
         }
         addr56:
         _loc2_.gameObj.§_-4P§.api.§_-h§("StolenScreen","PreGame");
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§throw§ = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.clip = new lockScreenMC();
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.gameObj.addChild(_loc1_.clip);
               if(!_loc2_)
               {
                  _loc1_.clip.btn.addEventListener(MouseEvent.CLICK,_loc1_.clickScreen);
                  if(_loc3_ || _loc2_)
                  {
                  }
               }
            }
            §§goto(addr79);
         }
         _loc1_.clip.license_btn.addEventListener(MouseEvent.CLICK,_loc1_.§_-5X§);
         addr79:
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§throw§ = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_.gameObj.§_-4P§.api.§_-6f§)
            {
               if(_loc4_)
               {
               }
               addr53:
            }
            else
            {
               navigateToURL(new URLRequest("http://www.flipline.com"),"_blank");
            }
            §§goto(addr60);
         }
         Link.Open("http://www.flipline.com","StolenScreenPlayLink","LogoLinks");
         if(_loc4_)
         {
            §§goto(addr53);
         }
         addr60:
      }
      
      public function §_-5X§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§throw§ = this;
         if(!_loc4_)
         {
            if(_loc2_.gameObj.§_-4P§.api.§_-6f§)
            {
               if(_loc3_)
               {
                  Link.Open("http://www.flipline.com/papaswingeria_licenseredirect.html","StolenScreenLicenseLink","LogoLinks");
                  if(_loc4_ && _loc3_)
                  {
                  }
               }
            }
            else
            {
               navigateToURL(new URLRequest("http://www.flipline.com/papaswingeria_licenseredirect.html"),"_blank");
            }
            §§goto(addr59);
         }
         addr59:
      }
   }
}

