package wingeria_interface_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1579")]
   public dynamic class minigame_hud_271 extends MovieClip
   {
      public var title_txt:TextField;
      
      public var count:MovieClip;
      
      public var stars:MovieClip;
      
      public function minigame_hud_271()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(6,this.frame7);
            }
         }
      }
      
      internal function frame7() : *
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

