package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7204")]
   public dynamic class startDayPanelMC extends MovieClip
   {
      public var hotshot_btn:SimpleButton;
      
      public var clickawayMC:MovieClip;
      
      public var fader:MovieClip;
      
      public var paradetip:MovieClip;
      
      public var paradestar:MovieClip;
      
      public var cravings_btn:SimpleButton;
      
      public var furnistar:MovieClip;
      
      public var clickaway_btn:SimpleButton;
      
      public var blast_btn:SimpleButton;
      
      public var pachinko_btn:SimpleButton;
      
      public var putt_btn:SimpleButton;
      
      public var hallway_btn:SimpleButton;
      
      public var burgerzilla_btn:SimpleButton;
      
      public var backdrop_holder:MovieClip;
      
      public function startDayPanelMC()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               addFrameScript(9,this.frame10,20,this.frame21,24,this.frame25);
            }
         }
      }
      
      internal function frame10() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            stop();
         }
      }
      
      internal function frame21() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            stop();
         }
      }
      
      internal function frame25() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            stop();
         }
      }
   }
}

