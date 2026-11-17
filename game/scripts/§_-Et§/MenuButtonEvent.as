package §_-Et§
{
   import flash.events.Event;
   
   public class MenuButtonEvent extends Event
   {
      public function MenuButtonEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new MenuButtonEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("MenuButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}

