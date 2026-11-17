package wingeria_interface_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5512")]
   public dynamic class chooseCharacterAnimMC_327 extends MovieClip
   {
      public var marty_panel:MovieClip;
      
      public var rita_panel:MovieClip;
      
      public var custom_panel:MovieClip;
      
      public function chooseCharacterAnimMC_327()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc2_ && _loc1_)
            {
            }
            §§goto(addr54);
         }
         addFrameScript(0,this.frame1,13,this.frame14,25,this.frame26);
         addr54:
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            stop();
         }
      }
      
      internal function frame14() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
         }
      }
      
      internal function frame26() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            stop();
         }
      }
   }
}

