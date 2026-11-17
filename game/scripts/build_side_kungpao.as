package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2090")]
   public dynamic class build_side_kungpao extends MovieClip
   {
      public function build_side_kungpao()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1,4,this.frame5,6,this.frame7);
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            stop();
         }
      }
      
      internal function frame7() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            gotoAndStop(1);
         }
      }
   }
}

