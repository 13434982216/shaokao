package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7804")]
   public dynamic class payday_screen extends MovieClip
   {
      public var starburst:MovieClip;
      
      public var circleMC:MovieClip;
      
      public function payday_screen()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               addFrameScript(129,this.frame130);
            }
         }
      }
      
      internal function frame130() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            stop();
         }
      }
   }
}

