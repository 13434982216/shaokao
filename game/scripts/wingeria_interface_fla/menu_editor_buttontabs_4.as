package wingeria_interface_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol306")]
   public dynamic class menu_editor_buttontabs_4 extends MovieClip
   {
      public var clothes_btn:SimpleButton;
      
      public var customize_btn:SimpleButton;
      
      public var stats_btn:SimpleButton;
      
      public var newstar:MovieClip;
      
      public function menu_editor_buttontabs_4()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               addFrameScript(0,this.frame1);
            }
         }
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
   }
}

