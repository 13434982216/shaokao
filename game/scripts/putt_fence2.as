package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8311")]
   public dynamic class putt_fence2 extends MovieClip
   {
      public function putt_fence2()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1,9,this.frame10);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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

