package Playtomic
{
   public final class GameVars
   {
      private static var SECTION:String;
      
      private static var LOAD:String;
      
      private static var LOADSINGLE:String;
      
      public function GameVars()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      internal static function Initialise(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            SECTION = Encode.MD5("gamevars-" + param1);
            if(!_loc3_)
            {
               LOAD = Encode.MD5("gamevars-load-" + param1);
               if(_loc2_)
               {
                  LOADSINGLE = Encode.MD5("gamevars-loadsingle-" + param1);
               }
            }
         }
      }
      
      public static function Load(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            PRequest.Load(SECTION,LOAD,LoadComplete,param1,null);
         }
      }
      
      public static function LoadSingle(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = new Object();
         if(_loc5_ || GameVars)
         {
            _loc3_["name"] = param1;
            if(_loc5_ || GameVars)
            {
            }
            §§goto(addr57);
         }
         PRequest.Load(SECTION,LOADSINGLE,LoadComplete,param2,_loc3_);
         addr57:
      }
      
      private static function LoadComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:XMLList = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:XML = null;
         if(!_loc12_)
         {
            if(param1 == null)
            {
               if(_loc13_ || Boolean(param2))
               {
                  return;
               }
            }
         }
         var _loc5_:Object = new Object();
         if(!(_loc12_ && Boolean(param1)))
         {
            if(param4.Success)
            {
            }
            param2 = param2;
            §§goto(addr111);
         }
         _loc6_ = param3["gamevar"];
         for each(_loc9_ in _loc6_)
         {
            §§push(_loc9_["name"]);
            if(_loc13_ || Boolean(param3))
            {
               _loc7_ = §§pop();
               if(_loc12_)
               {
                  continue;
               }
               §§push(_loc9_["value"]);
            }
            _loc8_ = §§pop();
            if(_loc13_ || Boolean(param2))
            {
               _loc5_[_loc7_] = _loc8_;
            }
         }
         addr111:
         if(!_loc12_)
         {
            param1(_loc5_,param4);
         }
      }
   }
}

