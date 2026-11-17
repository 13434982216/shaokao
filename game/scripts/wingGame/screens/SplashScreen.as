package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-0i§;
   import flash.display.*;
   import flash.events.*;
   import flash.ui.*;
   
   public class SplashScreen
   {
      public var gameObj:§_-BY§;
      
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var cloudSpeed:Number = 2;
      
      public var cloudWidth:Number = 640;
      
      public var isShowingCredits:Boolean = false;
      
      public var creditsDivisor:Number = 4;
      
      public function SplashScreen(param1:§_-BY§, param2:MovieClip, param3:Object = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(this)))
         {
            super();
         }
         var _loc4_:SplashScreen = this;
         _loc4_.gameObj = param1;
         if(!(_loc6_ && Boolean(param2)))
         {
            _loc4_.container = param2;
            if(_loc5_)
            {
            }
            §§goto(addr56);
         }
         _loc4_.setupScreen();
         addr56:
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SplashScreen = this;
         if(!_loc2_)
         {
            _loc1_.clip = new splashScreenMC();
            _loc1_.clip.iris.gotoAndStop(1);
            if(_loc3_)
            {
               _loc1_.container.addChild(_loc1_.clip);
            }
            §§goto(addr116);
         }
         _loc1_.container.addEventListener("clickStart",_loc1_.clickStart);
         _loc1_.container.addEventListener("clickCredits",_loc1_.clickCredits);
         if(_loc3_)
         {
            _loc1_.container.addEventListener("clickHighScores",_loc1_.clickHighScores);
         }
         _loc1_.clip.fader.mouseEnabled = false;
         if(_loc3_ || _loc3_)
         {
            _loc1_.clip.credits.y = 480;
            if(_loc3_)
            {
            }
            §§goto(addr132);
         }
         _loc1_.clip.credits.addEventListener(MouseEvent.CLICK,_loc1_.hideCredits);
         _loc1_.setupCredits(true);
         if(!_loc2_)
         {
            _loc1_.clip.version_txt.text = _loc1_.gameObj.§_-4P§.§_-E7§;
            _loc1_.gameObj.soundManager.switchMusic("title");
         }
         _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
         if(!_loc2_)
         {
            addr116:
            _loc1_.clip.promo_holder.promo_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPromo);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr132:
               if(§_-0i§.§_-24§())
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr149);
            }
            _loc1_.clip.promo_holder.visible = false;
            addr149:
            return;
         }
         §§goto(addr132);
      }
      
      public function animateScreen(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(_loc5_ || Boolean(_loc2_))
         {
            _loc2_.clip.clouds.x -= _loc2_.cloudSpeed;
            if(!_loc4_)
            {
               if(_loc2_.clip.clouds.x <= 0 - _loc2_.cloudWidth)
               {
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr59);
            }
         }
         _loc2_.clip.clouds.x += _loc2_.cloudWidth;
         addr59:
         var _loc3_:* = 999;
         if(_loc5_)
         {
            §§push(_loc2_.isShowingCredits);
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc2_.clip.credits.y > 0);
                     if(_loc4_)
                     {
                     }
                     addr131:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§push(Number(_loc2_.clip.credits.y));
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        _loc3_ = §§pop();
                        if(_loc5_ || Boolean(param1))
                        {
                           _loc2_.clip.credits.y -= _loc3_ / _loc2_.creditsDivisor;
                           if(_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        addr159:
                        _loc3_ = §§pop();
                        addr158:
                        if(_loc5_)
                        {
                           addr162:
                           _loc2_.clip.credits.y += _loc3_ / _loc2_.creditsDivisor;
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc2_.isShowingCredits);
                     if(_loc4_)
                     {
                     }
                     addr142:
                     if(§§pop())
                     {
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           §§push(480 - _loc2_.clip.credits.y);
                           if(!_loc4_)
                           {
                              §§goto(addr158);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr162);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(_loc2_.clip.credits.y < 480);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr131);
            §§push(!§§pop());
         }
         if(_loc2_.clip.iris.currentFrame == _loc2_.clip.iris.totalFrames)
         {
            if(!_loc4_)
            {
               _loc2_.closeSplashScreen();
            }
         }
      }
      
      public function clickStart(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(!_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(_loc4_ || Boolean(param1))
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc4_)
               {
                  if(_loc2_.isShowingCredits)
                  {
                     _loc2_.hideCredits();
                  }
               }
               §§push(_loc2_.gameObj);
               if(_loc4_ || Boolean(param1))
               {
                  §§push(§§pop().§_-4P§);
                  if(_loc4_ || _loc3_)
                  {
                     §§pop().§_-CO§();
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(_loc2_.gameObj);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                     }
                  }
                  addr109:
                  §§pop().api.§_-DU§("SplashScreen");
                  addr111:
                  return;
                  addr108:
               }
               §§push(§§pop().§_-4P§);
               if(_loc4_)
               {
                  §§push(§§pop().api);
                  if(_loc4_ || Boolean(this))
                  {
                     §§pop().§_-5Q§();
                     if(!_loc3_)
                     {
                        _loc2_.clip.iris.gotoAndPlay("irisout");
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr109);
               }
               §§goto(addr108);
            }
            addr107:
            §§goto(addr109);
            §§push(§§pop().§_-4P§);
         }
         §§goto(addr107);
         §§push(_loc2_.gameObj);
      }
      
      public function clickHighScores(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(!_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(!_loc3_)
               {
                  §§push(_loc2_.gameObj);
                  if(_loc4_)
                  {
                     addr83:
                     §§push(§§pop().§_-4P§);
                     if(_loc4_)
                     {
                        if(§§pop().api.§_-6z§())
                        {
                           if(_loc3_ && Boolean(_loc2_))
                           {
                           }
                           addr84:
                           return;
                           addr79:
                        }
                        else
                        {
                           §§push(_loc2_.gameObj);
                        }
                     }
                     §§pop().§_-8N§();
                     §§goto(addr84);
                  }
               }
            }
            addr82:
            §§goto(addr83);
            §§push(§§pop().§_-4P§);
         }
         §§push(_loc2_.gameObj);
         if(_loc4_ || Boolean(param1))
         {
            §§push(§§pop().§_-4P§);
            if(!_loc3_)
            {
               §§pop().§_-CO§();
               if(_loc4_)
               {
                  §§goto(addr79);
               }
            }
            §§goto(addr84);
         }
         else
         {
            §§goto(addr82);
         }
      }
      
      public function clickCredits(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SplashScreen = this;
         if(!_loc4_)
         {
            §§push(_loc2_.gameObj);
            if(_loc3_ || Boolean(param1))
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(!_loc4_)
               {
                  §§push(_loc2_.gameObj);
               }
            }
            §§pop().§_-4P§.§_-CO§();
            if(_loc4_ && Boolean(this))
            {
            }
            §§goto(addr64);
         }
         §§push(_loc2_);
         §§push(_loc2_.isShowingCredits);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         §§pop().isShowingCredits = §§pop();
         addr64:
      }
      
      public function hideCredits(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.isShowingCredits = false;
         }
      }
      
      public function clickPromo(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SplashScreen = this;
         if(!_loc4_)
         {
            _loc2_.gameObj.§_-4P§.api.§_-DI§("http://itunes.apple.com/us/app/papas-burgeria/id514634235?ls=1&mt=8","iPadPromoSplash","Links");
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SplashScreen = this;
         if(_loc3_)
         {
            _loc1_.clip.promo_holder.promo_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPromo);
            _loc1_.setupCredits(false);
            _loc1_.container.removeEventListener("clickStart",_loc1_.clickStart);
            _loc1_.container.removeEventListener("clickCredits",_loc1_.clickCredits);
            _loc1_.container.removeEventListener("clickHighScores",_loc1_.clickHighScores);
            if(_loc3_ || _loc2_)
            {
               _loc1_.clip.credits.removeEventListener(MouseEvent.CLICK,_loc1_.hideCredits);
            }
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
            if(_loc3_)
            {
               _loc1_.container.removeChild(_loc1_.clip);
            }
         }
         _loc1_.clip = null;
      }
      
      public function closeSplashScreen(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(_loc4_ || Boolean(this))
         {
            addr64:
            §§push(_loc2_.gameObj);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop().§_-4P§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop().api);
                  if(_loc4_)
                  {
                     §§pop().§_-76§("SlotSelect");
                     if(_loc3_)
                     {
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr66);
               }
               addr65:
               addr66:
               §§pop().§_-2K§("SplashScreen");
               addr68:
               return;
               §§push(§§pop().api);
            }
            §§goto(addr65);
            §§push(§§pop().§_-4P§);
         }
         §§goto(addr64);
         §§push(_loc2_.gameObj);
      }
      
      public function setupCredits(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(param1)
         {
            _loc2_.clip.credits.inside.flipline1_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.flipline2_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.links.flipline3_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.links.papalouie_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
            _loc2_.clip.credits.inside.facebook_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
            _loc2_.clip.credits.inside.twitter_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
            if(_loc3_)
            {
               _loc2_.clip.credits.inside.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
               addr157:
            }
         }
         else
         {
            _loc2_.clip.credits.inside.flipline1_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.inside.flipline2_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            if(_loc4_ || param1)
            {
               _loc2_.clip.credits.inside.links.flipline3_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.clip.credits.inside.links.papalouie_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
               }
               _loc2_.clip.credits.inside.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
               §§goto(addr157);
            }
         }
      }
      
      public function clickCreditsFlipline(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(!_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!_loc3_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc4_ || Boolean(this))
               {
               }
               §§goto(addr55);
            }
            §§goto(addr49);
         }
         addr49:
         §§pop().§_-4P§.api.§_-DI§("http://www.flipline.com","CreditsFlipline","Links");
         addr55:
         _loc2_.gameObj;
      }
      
      public function clickCreditsPapaLouie(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!_loc3_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc3_ && Boolean(param1))
               {
               }
               §§goto(addr60);
            }
            §§goto(addr54);
         }
         addr54:
         §§pop().§_-4P§.api.§_-DI§("http://www.papalouie.com","CreditsPapaLouie","Links");
         addr60:
         _loc2_.gameObj;
      }
      
      public function clickFacebook(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(_loc4_)
         {
            §§push(_loc2_.gameObj);
            if(_loc4_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc3_ && Boolean(this))
               {
               }
               §§goto(addr55);
            }
            §§goto(addr49);
         }
         addr49:
         §§pop().§_-4P§.api.§_-DI§("http://www.facebook.com/pages/Flipline-Studios/121045844606187","CreditsFliplineFacebook","Links");
         addr55:
         _loc2_.gameObj;
      }
      
      public function clickTwitter(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SplashScreen = this;
         if(_loc4_)
         {
            §§push(_loc2_.gameObj);
            if(_loc4_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc4_)
               {
                  §§push(_loc2_.gameObj);
               }
            }
            §§pop().§_-4P§.api.§_-DI§("http://www.twitter.com/FliplineStudios","CreditsFliplineTwitter","Links");
         }
      }
   }
}

