package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7353")]
   public dynamic class pachinko_mushroom extends MovieClip
   {
      public function pachinko_mushroom()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc1_ && _loc2_)
            {
            }
            §§goto(addr52);
         }
         addFrameScript(0,this.frame1,9,this.frame10);
         addr52:
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
         if(_loc1_)
         {
            gotoAndStop(1);
         }
      }
   }
}

