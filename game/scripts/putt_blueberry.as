package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3465")]
   public dynamic class putt_blueberry extends MovieClip
   {
      public function putt_blueberry()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
            }
            §§goto(addr46);
         }
         addFrameScript(0,this.frame1,9,this.frame10);
         addr46:
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

