package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4024")]
   public dynamic class minigame_hallway_door_96 extends MovieClip
   {
      public function minigame_hallway_door_96()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,12,this.frame13);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            stop();
         }
      }
      
      internal function frame13() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
         }
      }
   }
}

