package wingeria_interface_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5500")]
   public dynamic class saveSlotAnimMC_315 extends MovieClip
   {
      public var slot1MC:MovieClip;
      
      public var slot2MC:MovieClip;
      
      public var slot3MC:MovieClip;
      
      public function saveSlotAnimMC_315()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               addFrameScript(0,this.frame1,1,this.frame2,13,this.frame14,25,this.frame26);
            }
         }
      }
      
      internal function frame1() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
         }
      }
      
      internal function frame2() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            stop();
         }
      }
      
      internal function frame14() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            stop();
         }
      }
      
      internal function frame26() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            stop();
         }
      }
   }
}

