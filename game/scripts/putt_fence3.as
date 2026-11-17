package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8320")]
   public dynamic class putt_fence3 extends MovieClip
   {
      public function putt_fence3()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_)
            {
            }
            §§goto(addr47);
         }
         addFrameScript(0,this.frame1,9,this.frame10);
         addr47:
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
      
      internal function frame10() : *
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

