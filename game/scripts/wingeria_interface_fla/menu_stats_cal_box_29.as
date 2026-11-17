package wingeria_interface_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol380")]
   public dynamic class menu_stats_cal_box_29 extends MovieClip
   {
      public var calx:MovieClip;
      
      public var circle:MovieClip;
      
      public var payday:MovieClip;
      
      public var day:MovieClip;
      
      public function menu_stats_cal_box_29()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addFrameScript(0,this.frame1);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            stop();
         }
      }
   }
}

