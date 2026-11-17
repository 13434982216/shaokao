package minigames_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1921")]
   public dynamic class minigame_blast_blastpanelholder_64 extends MovieClip
   {
      public var inside:MovieClip;
      
      public function minigame_blast_blastpanelholder_64()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(89,this.frame90);
            }
         }
      }
      
      internal function frame90() : *
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

