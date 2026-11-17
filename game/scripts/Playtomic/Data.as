package Playtomic
{
   public final class Data
   {
      private static var SECTION:String;
      
      private static var VIEWS:String;
      
      private static var PLAYS:String;
      
      private static var PLAYTIME:String;
      
      private static var CUSTOMMETRIC:String;
      
      private static var LEVELCOUNTERMETRIC:String;
      
      private static var LEVELRANGEDMETRIC:String;
      
      private static var LEVELAVERAGEMETRIC:String;
      
      public function Data()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      internal static function Initialise(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         SECTION = Encode.MD5("data-" + param1);
         VIEWS = Encode.MD5("data-views-" + param1);
         PLAYS = Encode.MD5("data-plays-" + param1);
         if(_loc3_ || Data)
         {
            PLAYTIME = Encode.MD5("data-playtime-" + param1);
            CUSTOMMETRIC = Encode.MD5("data-custommetric-" + param1);
            LEVELCOUNTERMETRIC = Encode.MD5("data-levelcountermetric-" + param1);
         }
         LEVELRANGEDMETRIC = Encode.MD5("data-levelrangedmetric-" + param1);
         LEVELAVERAGEMETRIC = Encode.MD5("data-levelaveragemetric-" + param1);
      }
      
      public static function Views(param1:Function, param2:Object = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            General(VIEWS,"Views",param1,param2);
         }
      }
      
      public static function Plays(param1:Function, param2:Object = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            General(PLAYS,"Plays",param1,param2);
         }
      }
      
      public static function PlayTime(param1:Function, param2:Object = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Data)
         {
            General(PLAYTIME,"Playtime",param1,param2);
         }
      }
      
      private static function General(param1:String, param2:String, param3:Function, param4:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && Data))
         {
            if(param4 == null)
            {
            }
            addr28:
            var _loc5_:Object = new Object();
            _loc5_["type"] = param2;
            if(!(_loc6_ && Boolean(param3)))
            {
               _loc5_["day"] = !!param4.hasOwnProperty("day") ? param4["day"] : 0;
               if(_loc7_ || Boolean(param2))
               {
               }
               _loc5_["year"] = !!param4.hasOwnProperty("year") ? param4["year"] : 0;
               §§goto(addr92);
            }
            _loc5_["month"] = !!param4.hasOwnProperty("month") ? param4["month"] : 0;
            if(_loc7_ || Boolean(param2))
            {
               addr92:
               if(!(_loc6_ && Data))
               {
                  addr120:
                  PRequest.Load(SECTION,param1,GeneralComplete,param3,_loc5_);
               }
               return;
            }
            §§goto(addr120);
         }
         param4 = new Object();
         §§goto(addr28);
      }
      
      private static function GeneralComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || Boolean(param3))
         {
            if(param1 == null)
            {
               if(!(_loc6_ && Boolean(param3)))
               {
                  return;
               }
            }
         }
         var _loc5_:Object = new Object();
         if(param4.Success == 1)
         {
            if(_loc7_ || Data)
            {
               _loc5_["Name"] = param2["type"];
               _loc5_["Day"] = param2["day"];
               if(_loc7_ || Data)
               {
                  _loc5_["Month"] = param2["month"];
                  _loc5_["Year"] = param2["year"];
               }
               §§goto(addr106);
            }
            _loc5_["Value"] = int(param3["value"]);
         }
         param1(_loc5_,param4);
         addr106:
      }
      
      public static function CustomMetric(param1:String, param2:Function, param3:Object = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(param2)))
         {
            if(param3 == null)
            {
            }
            §§goto(addr27);
         }
         param3 = new Object();
         addr27:
         var _loc4_:Object = new Object();
         _loc4_["metric"] = param1;
         if(!_loc6_)
         {
            _loc4_["day"] = !!param3.hasOwnProperty("day") ? param3["day"] : 0;
            if(_loc5_ || Data)
            {
               _loc4_["month"] = !!param3.hasOwnProperty("month") ? param3["month"] : 0;
               if(_loc6_ && Data)
               {
               }
               §§goto(addr116);
            }
            _loc4_["year"] = !!param3.hasOwnProperty("year") ? param3["year"] : 0;
            if(_loc6_)
            {
            }
            §§goto(addr116);
         }
         PRequest.Load(SECTION,CUSTOMMETRIC,CustomMetricComplete,param2,_loc4_);
         addr116:
      }
      
      private static function CustomMetricComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc5_:Object = new Object();
         if(param4.Success)
         {
            if(!(_loc7_ && Data))
            {
               _loc5_["Name"] = "CustomMetric";
            }
            _loc5_["Metric"] = param2["metric"];
            _loc5_["Day"] = param2["day"];
            _loc5_["Month"] = param2["month"];
            _loc5_["Year"] = param2["year"];
            if(!(_loc7_ && Boolean(param2)))
            {
               _loc5_["Value"] = int(param3["value"]);
            }
         }
         param1(_loc5_,param4);
      }
      
      public static function LevelCounterMetric(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(param3)))
         {
            LevelMetric(LEVELCOUNTERMETRIC,param1,param2,LevelCounterMetricComplete,param3,param4);
         }
      }
      
      private static function LevelCounterMetricComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(param1 == null)
            {
               if(_loc7_ || Boolean(param2))
               {
               }
            }
            var _loc5_:Object = new Object();
            if(param4.Success)
            {
               _loc5_["Name"] = "LevelAverageMetric";
               _loc5_["Metric"] = param2["metric"];
               _loc5_["Level"] = param2["level"];
               _loc5_["Day"] = param2["day"];
               _loc5_["Month"] = param2["month"];
               _loc5_["Year"] = param2["year"];
               if(!_loc6_)
               {
                  _loc5_["Value"] = int(param3["value"]);
               }
               §§goto(addr98);
            }
            param1(_loc5_,param4);
            addr98:
            return;
         }
      }
      
      public static function LevelRangedMetric(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && Boolean(param1)))
         {
            LevelMetric(LEVELRANGEDMETRIC,param1,param2,LevelRangedMetricComplete,param3,param4);
         }
      }
      
      private static function LevelRangedMetricComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Array = null;
         var _loc7_:XMLList = null;
         var _loc8_:XML = null;
         if(!_loc12_)
         {
            if(param1 == null)
            {
               if(_loc11_ || Boolean(param3))
               {
                  return;
               }
            }
         }
         var _loc5_:Object = new Object();
         if(param4.Success)
         {
            _loc5_["Name"] = "LevelAverageMetric";
            if(_loc11_ || Boolean(param3))
            {
               _loc5_["Metric"] = param2["metric"];
               if(_loc11_)
               {
                  _loc5_["Level"] = param2["level"];
                  if(_loc11_)
                  {
                     _loc5_["Day"] = param2["day"];
                     if(_loc11_ || Data)
                     {
                        _loc5_["Month"] = param2["month"];
                     }
                  }
               }
            }
            _loc5_["Year"] = param2["year"];
            _loc6_ = new Array();
            _loc7_ = param3["value"];
            for each(_loc8_ in _loc7_)
            {
               if(!_loc12_)
               {
                  _loc6_.push({
                     "TrackValue":int(_loc8_.@trackvalue),
                     "Value":int(_loc8_)
                  });
               }
            }
            if(!_loc12_)
            {
               _loc5_["Values"] = _loc6_;
            }
         }
         param1(_loc5_,param4);
      }
      
      public static function LevelAverageMetric(param1:String, param2:*, param3:Function, param4:Object = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            LevelMetric(LEVELAVERAGEMETRIC,param1,param2,LevelAverageMetricComplete,param3,param4);
         }
      }
      
      private static function LevelAverageMetricComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(param1 == null)
            {
               if(_loc6_ || Boolean(param1))
               {
                  return;
               }
            }
         }
         var _loc5_:Object = new Object();
         if(param4.Success)
         {
            _loc5_["Name"] = "LevelAverageMetric";
            if(_loc6_)
            {
               _loc5_["Metric"] = param2["metric"];
               _loc5_["Level"] = param2["level"];
            }
            _loc5_["Day"] = param2["day"];
            if(!(_loc7_ && Boolean(param2)))
            {
               _loc5_["Month"] = param2["month"];
            }
            _loc5_["Year"] = param2["year"];
            _loc5_["Min"] = int(param3["min"]);
            _loc5_["Max"] = int(param3["max"]);
            if(_loc6_)
            {
               _loc5_["Average"] = int(param3["average"]);
               if(!_loc7_)
               {
                  _loc5_["Total"] = Number(param3["total"]);
                  if(_loc7_ && Boolean(param1))
                  {
                  }
               }
            }
            §§goto(addr139);
         }
         param1(_loc5_,param4);
         addr139:
      }
      
      private static function LevelMetric(param1:String, param2:String, param3:String, param4:Function, param5:Function, param6:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(param6 == null)
            {
            }
            §§goto(addr23);
         }
         param6 = new Object();
         addr23:
         var _loc7_:Object = new Object();
         _loc7_["metric"] = param2;
         if(!(_loc8_ && Data))
         {
            _loc7_["level"] = param3;
            if(!(_loc8_ && Boolean(param1)))
            {
               _loc7_["day"] = !!param6.hasOwnProperty("day") ? param6["day"] : 0;
               if(_loc9_ || Boolean(param1))
               {
                  _loc7_["month"] = !!param6.hasOwnProperty("month") ? param6["month"] : 0;
                  if(_loc9_ || Data)
                  {
                     _loc7_["year"] = !!param6.hasOwnProperty("year") ? param6["year"] : 0;
                     if(_loc9_ || Boolean(param3))
                     {
                     }
                  }
               }
            }
            PRequest.Load(SECTION,param1,param4,param5,_loc7_);
         }
      }
   }
}

