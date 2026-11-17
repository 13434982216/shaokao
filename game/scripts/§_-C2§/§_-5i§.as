package §_-C2§
{
   public class §_-5i§
   {
      public static var level:Number = 99;
      
      public static const ALL:Number = 99;
      
      public static const OUTPUT_LEVEL:Number = 5;
      
      public static const DEBUG_LEVEL:Number = 4;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(_loc1_)
      {
         level = 99;
         ALL = 99;
         OUTPUT_LEVEL = 5;
         if(_loc1_)
         {
            DEBUG_LEVEL = 4;
         }
         §§goto(addr56);
      }
      
      public static const INFO_LEVEL:Number = 3;
      
      public static const WARN_LEVEL:Number = 2;
      
      if(_loc1_ || §_-5i§)
      {
         §§goto(addr56);
      }
      addr56:
      
      public static const ERROR_LEVEL:Number = 1;
      
      public static const §_-6y§:Number = 0;
      
      public function §_-5i§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function debug(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(global);
            if(!_loc3_)
            {
               if(§§pop().§§slot[1].level >= §_-5i§.DEBUG_LEVEL)
               {
                  if(!(_loc3_ && rest))
                  {
                     §§push(global);
                  }
               }
            }
            §§pop().§§slot[1].traceMessage(rest);
         }
      }
      
      public static function §_-CE§(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §_-5i§.debug(rest);
         }
      }
      
      public static function info(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && rest))
         {
            §§push(global);
            if(!_loc3_)
            {
               if(§§pop().§§slot[1].level >= §_-5i§.INFO_LEVEL)
               {
                  if(_loc2_ || §_-5i§)
                  {
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr51);
         }
         addr51:
         §§pop().§§slot[1].traceMessage(rest);
         addr54:
         global;
      }
      
      public static function warn(... rest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(global);
            if(_loc3_ || rest)
            {
               if(§§pop().§§slot[1].level >= §_-5i§.WARN_LEVEL)
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr52);
         }
         addr52:
         §§pop().§§slot[1].traceMessage(rest);
         addr55:
         global;
      }
      
      public static function error(... rest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(global);
            if(!(_loc2_ && rest))
            {
               if(§§pop().§§slot[1].level >= §_-5i§.ERROR_LEVEL)
               {
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr52);
         }
         addr52:
         §§pop().§§slot[1].traceMessage("3:" + rest);
         addr57:
         global;
      }
      
      public static function §_-9h§(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || rest)
         {
            §§push(global);
            if(_loc2_ || _loc2_)
            {
               if(§§pop().§§slot[1].level >= §_-5i§.OUTPUT_LEVEL)
               {
                  if(_loc2_)
                  {
                     §§push(global);
                  }
               }
            }
            §§pop().§§slot[1].traceMessage(rest);
         }
      }
      
      public static function §_-7u§(param1:String, param2:Number = 99) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(global);
            if(_loc3_)
            {
               if(§§pop().§§slot[1].level >= param2)
               {
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr35);
            }
            §§goto(addr32);
         }
         addr32:
         §§pop().§§slot[1].traceMessage(param1);
         addr35:
         global;
      }
      
      private static function traceMessage(... rest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            trace(rest);
         }
      }
      
      public static function §_-Y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-5i§.level = param1;
         }
      }
   }
}

