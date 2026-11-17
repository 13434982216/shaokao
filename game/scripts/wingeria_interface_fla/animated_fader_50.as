package wingeria_interface_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol463")]
   public dynamic class animated_fader_50 extends MovieClip
   {
      public function animated_fader_50()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               addFrameScript(6,this.frame7,24,this.frame25);
            }
         }
      }
      
      internal function frame7() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            stop();
         }
      }
      
      internal function frame25() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            stop();
         }
      }
   }
}

