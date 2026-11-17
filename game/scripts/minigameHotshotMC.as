package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6921")]
   public dynamic class minigameHotshotMC extends MovieClip
   {
      public var particles:MovieClip;
      
      public var bgsplatholder:MovieClip;
      
      public var ground:MovieClip;
      
      public var hits_txt:TextField;
      
      public var reticule:MovieClip;
      
      public var counter:MovieClip;
      
      public var gun:MovieClip;
      
      public var jet:MovieClip;
      
      public var need_txt:TextField;
      
      public var bgenemyholder:MovieClip;
      
      public var enemyholder:MovieClip;
      
      public function minigameHotshotMC()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
            }
            §§goto(addr49);
         }
         addFrameScript(0,this.frame1);
         addr49:
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
   }
}

