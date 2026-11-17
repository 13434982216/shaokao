package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7960")]
   public dynamic class pachinko_anchovy extends MovieClip
   {
      public function pachinko_anchovy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,9,this.frame10);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
         }
      }
      
      internal function frame10() : *
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

