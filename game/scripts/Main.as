package
{
   import §_-1d§.§_-BY§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class Main extends Sprite
   {
      public var gameModule:§_-BY§;
      
      public function Main()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               if(stage)
               {
                  if(_loc2_ && _loc2_)
                  {
                  }
               }
               else
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.init);
               }
               §§goto(addr53);
            }
            this.init();
            if(_loc2_)
            {
            }
            §§goto(addr53);
         }
         addr53:
      }
      
      private function init(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.init);
            if(_loc3_)
            {
               this.gameModule = new §_-BY§();
               if(_loc3_)
               {
               }
               §§goto(addr63);
            }
            §§goto(addr60);
         }
         this.addChild(this.gameModule);
         if(_loc3_ || _loc3_)
         {
            addr60:
            this.gameModule.§_-5a§();
            §§goto(addr63);
         }
         addr63:
      }
   }
}

