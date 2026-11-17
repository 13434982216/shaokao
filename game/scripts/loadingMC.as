package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol27")]
   public dynamic class loadingMC extends MovieClip
   {
      public var bar:MovieClip;
      
      public var loader_bar:MovieClip;
      
      public function loadingMC()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addFrameScript(27,this.frame28,64,this.frame65);
            }
         }
      }
      
      internal function frame28() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            stop();
         }
      }
      
      internal function frame65() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            stop();
         }
      }
   }
}

