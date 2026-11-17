package wingeria_gameassets_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3434")]
   public dynamic class giveorder_scorebubbles_117 extends MovieClip
   {
      public var build_score:MovieClip;
      
      public var perfect:MovieClip;
      
      public var order_score:MovieClip;
      
      public var sauce_score:MovieClip;
      
      public var grill_score:MovieClip;
      
      public var total_score:MovieClip;
      
      public function giveorder_scorebubbles_117()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               addFrameScript(92,this.frame93,107,this.frame108);
            }
         }
      }
      
      internal function frame93() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.perfect.gotoAndPlay("fireworks");
         }
      }
      
      internal function frame108() : *
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

