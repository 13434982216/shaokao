package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4129")]
   public dynamic class minigame_putt_hole_143 extends MovieClip
   {
      public function minigame_putt_hole_143()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addFrameScript(0,this.frame1,17,this.frame18);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            stop();
         }
      }
      
      internal function frame18() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            gotoAndPlay("looper");
         }
      }
   }
}

