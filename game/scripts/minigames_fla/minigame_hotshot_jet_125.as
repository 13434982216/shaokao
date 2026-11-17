package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6911")]
   public dynamic class minigame_hotshot_jet_125 extends MovieClip
   {
      public function minigame_hotshot_jet_125()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(3,this.frame4);
            }
         }
      }
      
      internal function frame4() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            stop();
         }
      }
   }
}

