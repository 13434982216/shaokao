package Playtomic
{
   public final class GeoIP
   {
      private static var SECTION:String;
      
      private static var LOAD:String;
      
      public function GeoIP()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            SECTION = Encode.MD5("geoip-" + param1);
            if(_loc2_ || _loc2_)
            {
            }
            §§goto(addr55);
         }
         LOAD = Encode.MD5("geoip-lookup-" + param1);
         addr55:
      }
      
      public static function Lookup(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || GeoIP)
         {
            PRequest.Load(SECTION,LOAD,LookupComplete,param1);
         }
      }
      
      private static function LookupComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && GeoIP))
         {
            if(param1 == null)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc5_:Object = {
            "Code":"N/A",
            "Name":"UNKNOWN"
         };
         if(_loc6_)
         {
            if(param4.Success)
            {
               if(_loc6_ || Boolean(param2))
               {
               }
               addr67:
               _loc5_["Name"] = param3["location"]["name"];
               if(_loc6_)
               {
               }
               §§goto(addr90);
            }
            §§goto(addr84);
         }
         _loc5_["Code"] = param3["location"]["code"];
         if(!(_loc7_ && Boolean(param2)))
         {
            §§goto(addr67);
         }
         addr84:
         param1(_loc5_,param4);
         addr90:
         param2 = param2;
      }
   }
}

