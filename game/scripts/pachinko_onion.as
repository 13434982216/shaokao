package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6502")]
   public dynamic class pachinko_onion extends MovieClip
   {
      public function pachinko_onion()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addFrameScript(0,this.frame1,9,this.frame10);
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
      
      internal function frame10() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            gotoAndStop(1);
         }
      }
   }
}

