package §_-C2§
{
   public class §_-Bf§
   {
      public function §_-Bf§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function radsToDegrees(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            §§push(§§pop() * 180);
            if(!_loc3_)
            {
               §§push(§§pop() / Math.PI);
            }
         }
         return §§pop();
      }
      
      public static function degreesToRads(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || §_-Bf§)
         {
            §§push(§§pop() * Math.PI);
            if(_loc3_)
            {
            }
            §§goto(addr36);
         }
         addr36:
         §§pop() / 180;
         return §§pop();
      }
      
      public static function §_-00§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param2);
         if(_loc7_)
         {
            §§push(§§pop() - param1);
            if(_loc8_)
            {
            }
            §§goto(addr21);
         }
         addr21:
         var _loc5_:* = §§pop();
         §§push(param4);
         if(!_loc8_)
         {
            §§push(§§pop() - param3);
            if(_loc7_ || Boolean(param2))
            {
               §§push(§§pop());
            }
         }
         var _loc6_:* = §§pop();
         §§pop();
         return Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
      }
   }
}

