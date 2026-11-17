package
{
   import §_-H§.§_-77§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.utils.getDefinitionByName;
   import wingGame.screens.§_-5j§;
   
   public dynamic class Preloader extends MovieClip
   {
      private var loadingScreen:§_-5j§;
      
      public function Preloader()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc1_)
            {
            }
            §§goto(addr59);
         }
         stop();
         if(!(_loc1_ && Boolean(this)))
         {
            this.addEventListener(Event.ENTER_FRAME,this.initPreloader);
         }
         addr59:
      }
      
      private function initPreloader(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.initPreloader);
            §_-77§.init(loaderInfo);
            loaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioError);
            stop();
            this.graphics.beginFill(0);
            if(_loc2_)
            {
            }
            this.graphics.endFill();
            this.loadingScreen = new §_-5j§(this,this.loadingFinished);
            return;
            addr52:
         }
         this.graphics.drawRect(0,0,1024,768);
         §§goto(addr52);
      }
      
      private function ioError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            trace(param1.text);
         }
      }
      
      private function loadingFinished() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            gotoAndStop(2);
            if(!(_loc1_ && Boolean(this)))
            {
               loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioError);
               if(_loc2_)
               {
               }
            }
            §§goto(addr50);
         }
         this.startup();
         addr50:
      }
      
      private function startup() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = getDefinitionByName("Main") as Class;
         if(!(_loc2_ && _loc3_))
         {
            addChild(new _loc1_() as DisplayObject);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this.loadingScreen);
               if(!_loc2_)
               {
                  §§goto(addr75);
               }
               §§pop().destroy();
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr75);
            }
         }
         this.loadingScreen = null;
         addr75:
         if(§§pop())
         {
            if(!_loc2_)
            {
               §§push(this.loadingScreen);
            }
         }
      }
   }
}

