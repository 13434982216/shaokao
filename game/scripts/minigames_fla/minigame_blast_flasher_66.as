package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1073")]
   public dynamic class minigame_blast_flasher_66 extends MovieClip
   {
      public function minigame_blast_flasher_66()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1,7,this.frame8);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            stop();
         }
      }
      
      internal function frame8() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            stop();
         }
      }
   }
}

