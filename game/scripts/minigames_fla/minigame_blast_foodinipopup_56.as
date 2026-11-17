package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1809")]
   public dynamic class minigame_blast_foodinipopup_56 extends MovieClip
   {
      public var inside:MovieClip;
      
      public function minigame_blast_foodinipopup_56()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,46,this.frame47);
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
      
      internal function frame47() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            gotoAndStop(1);
         }
      }
   }
}

