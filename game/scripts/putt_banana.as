package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7987")]
   public dynamic class putt_banana extends MovieClip
   {
      public function putt_banana()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_)
            {
            }
            §§goto(addr46);
         }
         addFrameScript(0,this.frame1,9,this.frame10);
         addr46:
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            stop();
         }
      }
      
      internal function frame10() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            gotoAndStop(1);
         }
      }
   }
}

