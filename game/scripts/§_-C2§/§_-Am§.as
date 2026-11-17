package §_-C2§
{
   public class §_-Am§
   {
      public function §_-Am§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function §_-39§(param1:Array) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(_loc4_)
         {
            if(param1 != null)
            {
               if(_loc4_)
               {
               }
               addr27:
               while(_loc3_ < param1.length)
               {
                  if(!(param1[_loc3_] is Array))
                  {
                     _loc2_[_loc3_] = param1[_loc3_];
                     if(_loc5_ && Boolean(param1))
                     {
                     }
                     break;
                  }
                  if(!(_loc5_ && §_-Am§))
                  {
                     _loc2_[_loc3_] = §_-Am§.§_-39§(param1[_loc3_]);
                     if(!(_loc4_ || Boolean(param1)))
                     {
                        continue;
                     }
                  }
                  _loc3_++;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            return _loc2_;
         }
         _loc3_ = 0;
         §§goto(addr27);
      }
      
      public static function §_-4t§(param1:Array) : *
      {
         return param1[Math.floor(Math.random() * param1.length)];
      }
   }
}

