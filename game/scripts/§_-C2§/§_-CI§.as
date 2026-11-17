package §_-C2§
{
   import flash.display.MovieClip;
   import flash.utils.getDefinitionByName;
   
   public class §_-CI§
   {
      public function §_-CI§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §_-2l§(param1:String, param2:Boolean = true, param3:Boolean = true) : MovieClip
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Class = getDefinitionByName(param1) as Class;
         var _loc5_:MovieClip = new _loc4_() as MovieClip;
         _loc5_.tabEnabled = false;
         if(_loc7_ || Boolean(param1))
         {
            _loc5_.mouseEnabled = param2;
            if(_loc7_)
            {
            }
            §§goto(addr59);
         }
         _loc5_.mouseChildren = param3;
         addr59:
         return _loc5_;
      }
   }
}

