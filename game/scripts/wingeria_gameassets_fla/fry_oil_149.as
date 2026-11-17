package wingeria_gameassets_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2518")]
   public dynamic class fry_oil_149 extends MovieClip
   {
      public var boostboil:MovieClip;
      
      public function fry_oil_149()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc1_ && _loc2_)
            {
            }
            §§goto(addr55);
         }
         addFrameScript(0,this.frame1,42,this.frame43,50,this.frame51);
         addr55:
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            stop();
         }
      }
      
      internal function frame43() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            gotoAndPlay("loop");
         }
      }
      
      internal function frame51() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            gotoAndStop("static");
         }
      }
   }
}

