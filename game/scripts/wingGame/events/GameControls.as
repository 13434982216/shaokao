package wingGame.events
{
   import §_-1d§.§_-BY§;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getTimer;
   
   public class GameControls
   {
      public var gameObj:§_-BY§;
      
      public var gameplayTimer:Number = 0;
      
      public var lastTime:Number = 0;
      
      public var alreadyCheated:Boolean = false;
      
      public function GameControls(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super();
         }
         var _loc2_:GameControls = this;
         if(_loc3_)
         {
            _loc2_.gameObj = param1;
         }
      }
      
      public function setupGameCycle() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GameControls = this;
         if(!_loc3_)
         {
            §§push(_loc1_.gameObj);
            if(_loc2_)
            {
               §§pop().§_-3D§.addEventListener(Event.ENTER_FRAME,_loc1_.gameCycle);
               if(!_loc3_)
               {
                  §§push(_loc1_.gameObj);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr55);
               }
               addr53:
               addr55:
               §§pop().stage.addEventListener(KeyboardEvent.KEY_UP,_loc1_.keyListener);
               if(_loc3_ && _loc2_)
               {
               }
               return;
               §§push(_loc1_.gameObj);
            }
            §§pop().stage.focus = _loc1_.gameObj.stage;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr53);
            }
            §§goto(addr55);
         }
         _loc1_.alreadyCheated = false;
         §§goto(addr55);
      }
      
      public function removeGameCycle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameControls = this;
         if(_loc3_)
         {
            §§push(_loc1_.gameObj);
            if(_loc3_ || Boolean(_loc1_))
            {
               if(§§pop().§_-3D§.hasEventListener(Event.ENTER_FRAME))
               {
                  if(!_loc2_)
                  {
                     §§push(_loc1_.gameObj);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                     }
                     addr73:
                     §§pop().stage.removeEventListener(KeyboardEvent.KEY_UP,_loc1_.keyListener);
                  }
               }
               addr71:
               §§goto(addr73);
               §§push(_loc1_.gameObj);
            }
            §§pop().§_-3D§.removeEventListener(Event.ENTER_FRAME,_loc1_.gameCycle);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr71);
            }
         }
      }
      
      public function resetKeyFocus() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameControls = this;
         if(!_loc2_)
         {
            _loc1_.gameObj.stage.focus = _loc1_.gameObj.stage;
         }
      }
      
      public function keyListener(param1:KeyboardEvent) : void
      {
         var _loc2_:GameControls = this;
      }
      
      public function gameCycle(param1:Event) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:GameControls = this;
         var _loc3_:§_-BY§ = _loc2_.gameObj;
         §§push(_loc3_.§_-5b§);
         if(!_loc8_)
         {
            if(!§§pop())
            {
               var _loc6_:* = _loc2_;
               §§push(_loc6_.gameplayTimer);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(!(_loc8_ && Boolean(param1)))
               {
                  _loc6_.gameplayTimer = _loc7_;
               }
               if(!_loc8_)
               {
                  §§push(_loc3_.hud);
                  if(_loc9_ || Boolean(_loc3_))
                  {
                     addr63:
                     if(§§pop())
                     {
                        §§push(_loc3_.hud);
                     }
                     §§push(_loc3_.§return§);
                  }
                  §§pop().updateHUD();
                  if(_loc9_)
                  {
                     §§goto(addr63);
                  }
                  addr92:
                  _loc3_.§_-8f§.updateScreen();
               }
               addr95:
               _loc3_.§_-Bg§.updateScreen();
            }
            addr98:
            var _loc4_:Number = getTimer();
            var _loc5_:Number = Math.round(1000 / (_loc4_ - this.lastTime));
            if(_loc9_)
            {
               addr154:
               §§push(_loc3_.hud);
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(!(_loc8_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                        }
                     }
                     §§goto(addr144);
                  }
                  §§pop();
                  if(!(_loc8_ && Boolean(this)))
                  {
                     §§push(_loc3_.hud);
                     if(!_loc8_)
                     {
                        addr144:
                        if(§§pop())
                        {
                           if(_loc9_ || Boolean(this))
                           {
                           }
                           §§goto(addr177);
                        }
                        _loc2_.lastTime = _loc4_;
                        addr177:
                        return;
                        §§push(Boolean(§§pop().clip));
                     }
                  }
               }
               §§pop().clip.fps_txt.text = _loc5_ + " fps";
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  §§goto(addr144);
               }
               §§goto(addr177);
            }
            §§goto(addr154);
            §§push(_loc3_.hud);
         }
         if(!§§pop())
         {
            if(_loc9_)
            {
               _loc3_.§_-EW§.updateManager();
            }
            _loc3_.§_-3N§.updateScreen();
            if(!_loc8_)
            {
               _loc3_.§_-Bq§.updateScreen();
               _loc3_.§_-A5§.updateScreen();
               _loc3_.§_-7q§.updateScreen();
               §§goto(addr92);
            }
            §§goto(addr95);
         }
         §§goto(addr98);
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameControls = this;
         if(_loc3_ || _loc2_)
         {
            _loc1_.removeGameCycle();
         }
      }
   }
}

