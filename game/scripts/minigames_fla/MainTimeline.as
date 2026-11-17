package minigames_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   
   public dynamic class MainTimeline extends MovieClip
   {
      public function MainTimeline()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc2_)
            {
            }
            §§goto(addr32);
         }
         addEventListener(Event.ADDED_TO_STAGE,this.__setPerspectiveProjection_);
         addr32:
      }
      
      public function __setPerspectiveProjection_(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            root.transform.perspectiveProjection.fieldOfView = 55;
            if(!(_loc3_ && Boolean(this)))
            {
               root.transform.perspectiveProjection.projectionCenter = new Point(320,240);
            }
         }
      }
   }
}

