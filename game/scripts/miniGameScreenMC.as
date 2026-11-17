package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1609")]
   public dynamic class miniGameScreenMC extends MovieClip
   {
      public var skip_btn:SimpleButton;
      
      public var logo:MovieClip;
      
      public var foodini:minigame_foodini;
      
      public var hud:MovieClip;
      
      public var holder:MovieClip;
      
      public var trainingclip:MovieClip;
      
      public var play_btn:SimpleButton;
      
      public var prizepanel:MovieClip;
      
      public function miniGameScreenMC()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
            }
            §§goto(addr53);
         }
         addFrameScript(94,this.frame95,174,this.frame175,335,this.frame336,407,this.frame408);
         addr53:
      }
      
      internal function frame95() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            stop();
         }
      }
      
      internal function frame175() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            stop();
         }
      }
      
      internal function frame336() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            stop();
         }
      }
      
      internal function frame408() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            gotoAndPlay("fadeout");
         }
      }
   }
}

