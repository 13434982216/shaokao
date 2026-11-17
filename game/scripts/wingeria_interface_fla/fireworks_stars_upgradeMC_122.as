package wingeria_interface_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol787")]
   public dynamic class fireworks_stars_upgradeMC_122 extends MovieClip
   {
      public function fireworks_stars_upgradeMC_122()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addFrameScript(0,this.frame1,18,this.frame19);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            stop();
         }
      }
      
      internal function frame19() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            stop();
         }
      }
   }
}

