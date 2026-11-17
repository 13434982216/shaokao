package §_-C2§
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.utils.getDefinitionByName;
   
   public class §_-8x§
   {
      public function §_-8x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function §_-2l§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Class = getDefinitionByName(param1) as Class;
         var _loc3_:MovieClip = new _loc2_() as MovieClip;
         if(_loc5_ || Boolean(param1))
         {
            _loc3_.tabEnabled = false;
         }
         return _loc3_;
      }
      
      public function §_-Bc§(param1:String) : SimpleButton
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Class = getDefinitionByName(param1) as Class;
         var _loc3_:SimpleButton = new _loc2_() as SimpleButton;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            _loc3_.tabEnabled = false;
         }
         return _loc3_;
      }
      
      public function § for§(param1:String, param2:*, param3:*, param4:Object = null) : *
      {
         var _loc5_:Class = getDefinitionByName(param1) as Class;
         return new _loc5_(param2,param3,param4);
      }
   }
}

