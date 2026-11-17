package wingeria_gameassets_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5371")]
   public dynamic class build_bin_carrot_10 extends MovieClip
   {
      public function build_bin_carrot_10()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               addFrameScript(0,this.frame1,4,this.frame5,7,this.frame8);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            stop();
         }
      }
      
      internal function frame5() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            stop();
         }
      }
      
      internal function frame8() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            gotoAndStop(1);
         }
      }
   }
}

