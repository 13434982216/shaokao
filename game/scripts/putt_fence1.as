package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8314")]
   public dynamic class putt_fence1 extends MovieClip
   {
      public function putt_fence1()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
            }
            §§goto(addr35);
         }
         addFrameScript(0,this.frame1,9,this.frame10);
         addr35:
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            stop();
         }
      }
      
      internal function frame10() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            gotoAndStop(1);
         }
      }
   }
}

