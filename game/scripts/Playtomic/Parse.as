package Playtomic
{
   public final class Parse
   {
      private static var SECTION:String;
      
      private static var SAVE:String;
      
      private static var DELETE:String;
      
      private static var LOAD:String;
      
      private static var FIND:String;
      
      public function Parse()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      internal static function Initialise(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            SECTION = Encode.MD5("parse-" + param1);
            if(_loc2_ && _loc2_)
            {
            }
            addr91:
            FIND = Encode.MD5("parse-find-" + param1);
            §§goto(addr98);
         }
         SAVE = Encode.MD5("parse-save-" + param1);
         if(_loc3_ || Parse)
         {
            DELETE = Encode.MD5("parse-delete-" + param1);
            if(!(_loc2_ && Boolean(param1)))
            {
               LOAD = Encode.MD5("parse-load-" + param1);
               if(_loc3_ || _loc3_)
               {
               }
               addr98:
               return;
            }
         }
         §§goto(addr91);
      }
      
      public static function Save(param1:PFObject, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            PRequest.Load(SECTION,SAVE,SaveComplete,param2,ObjectPostData(param1));
         }
      }
      
      private static function SaveComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:* = null;
         var _loc9_:XMLList = null;
         if(!_loc12_)
         {
            if(param1 == null)
            {
               if(_loc13_)
               {
               }
            }
            var _loc5_:XMLList = param3["object"];
            var _loc6_:XML = _loc5_[0];
            var _loc7_:PFObject = new PFObject();
            _loc7_.ObjectId = _loc6_["id"];
            if(_loc13_)
            {
               _loc7_.ClassName = param2["classname"];
               if(!_loc12_)
               {
                  _loc7_.Password = param2["password"];
               }
            }
            var _loc10_:* = 0;
            var _loc11_:* = param2;
            for(_loc10_ in _loc11_)
            {
               §§push(_loc10_);
               if(_loc13_ || Boolean(param2))
               {
                  _loc8_ = §§pop();
                  §§push(_loc8_);
               }
               if(§§pop().indexOf("data") == 0)
               {
                  if(_loc13_ || Boolean(param2))
                  {
                     _loc7_.Data[_loc8_.substring(4)] = param2[_loc8_];
                  }
               }
            }
            if(!(_loc12_ && Boolean(param2)))
            {
               if(param4.Success)
               {
                  if(_loc12_ && Boolean(param3))
                  {
                  }
                  §§goto(addr170);
               }
               §§goto(addr164);
            }
            _loc9_ = param3["object"];
            if(_loc13_ || Boolean(param1))
            {
               _loc7_.CreatedAt = DateParse(_loc9_["created"]);
               if(!_loc12_)
               {
                  _loc7_.UpdatedAt = DateParse(_loc9_["created"]);
               }
            }
            addr164:
            param1(_loc7_,param4);
            addr170:
            return;
         }
      }
      
      public static function Delete(param1:PFObject, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            PRequest.Load(SECTION,DELETE,DeleteComplete,param2,ObjectPostData(param1));
         }
      }
      
      private static function DeleteComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(param1))
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() == null)
               {
                  if(_loc5_)
                  {
                  }
               }
               §§push(param1);
            }
            §§pop()(param4);
            param3 = param3;
            param2 = param2;
            return;
         }
      }
      
      public static function Load(param1:String, param2:String, param3:Function = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:PFObject = new PFObject();
         _loc4_.ObjectId = param1;
         if(!_loc6_)
         {
            _loc4_.ClassName = param2;
            if(_loc6_)
            {
            }
            §§goto(addr50);
         }
         PRequest.Load(SECTION,LOAD,LoadComplete,param3,ObjectPostData(_loc4_));
         addr50:
      }
      
      private static function LoadComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:XMLList = null;
         var _loc7_:XMLList = null;
         var _loc8_:XML = null;
         if(_loc12_ || Parse)
         {
            if(param1 == null)
            {
               if(!_loc11_)
               {
                  return;
               }
            }
         }
         var _loc5_:PFObject = new PFObject();
         _loc5_.ObjectId = param2["objectid"];
         if(!_loc11_)
         {
            _loc5_.ClassName = param2["classname"];
            if(_loc12_)
            {
            }
            §§goto(addr57);
         }
         if(param4.Success)
         {
            addr57:
            _loc6_ = param3["object"];
            if(!_loc11_)
            {
               _loc5_.CreatedAt = DateParse(_loc6_["created"]);
               if(_loc12_ || Parse)
               {
                  _loc5_.UpdatedAt = DateParse(_loc6_["updated"]);
                  if(_loc12_)
                  {
                  }
               }
               §§goto(addr98);
            }
            if(!_loc6_.contains("fields"))
            {
            }
            §§goto(addr98);
         }
         addr98:
         _loc7_ = _loc6_["fields"];
         for each(_loc8_ in _loc7_.children())
         {
            if(!(_loc11_ && Boolean(param3)))
            {
               _loc5_[_loc8_.name] = _loc8_.text();
            }
         }
         param1(_loc5_,param4);
      }
      
      public static function Find(param1:PFQuery, param2:Function = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:Object = new Object();
         if(!_loc7_)
         {
            _loc3_["classname"] = param1.ClassName;
            if(!(_loc7_ && Parse))
            {
               _loc3_["limit"] = param1.Limit;
               if(_loc8_ || Boolean(param1))
               {
               }
            }
            _loc3_["order"] = param1.Order != null && param1.Order != "" ? param1.Order : "created_at";
         }
         for(_loc4_ in param1.WhereData)
         {
            if(!_loc7_)
            {
               _loc3_["data" + _loc4_] = param1.WhereData[_loc4_];
            }
         }
         if(_loc8_)
         {
            PRequest.Load(SECTION,FIND,FindComplete,param2,_loc3_);
         }
      }
      
      private static function FindComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc6_:XMLList = null;
         var _loc7_:XML = null;
         var _loc8_:PFObject = null;
         var _loc9_:XMLList = null;
         var _loc10_:XML = null;
         if(!_loc16_)
         {
            if(param1 == null)
            {
               if(_loc15_ || Boolean(param2))
               {
               }
            }
            var _loc5_:Array = new Array();
            if(!(_loc16_ && Boolean(param3)))
            {
               if(param4.Success)
               {
               }
               §§goto(addr178);
            }
            _loc6_ = param3["objects"];
            for each(_loc7_ in _loc6_.children())
            {
               _loc8_ = new PFObject();
               _loc8_.ObjectId = _loc7_["id"];
               if(!(_loc15_ || Parse))
               {
                  continue;
               }
               _loc8_.CreatedAt = DateParse(_loc7_["created"]);
               if(_loc15_)
               {
                  _loc8_.UpdatedAt = DateParse(_loc7_["updated"]);
                  if(_loc15_)
                  {
                     if(_loc7_.contains("fields"))
                     {
                        if(_loc16_ && Parse)
                        {
                           continue;
                        }
                     }
                     addr164:
                     _loc5_.push(_loc8_);
                  }
                  continue;
               }
               _loc9_ = _loc7_["fields"];
               if(!(_loc16_ && Boolean(param2)))
               {
                  var _loc13_:int = 0;
                  if(_loc15_)
                  {
                     for each(_loc10_ in _loc9_.children())
                     {
                        if(!_loc16_)
                        {
                           _loc8_[_loc10_.name] = _loc10_.text();
                        }
                     }
                  }
               }
               §§goto(addr164);
            }
            addr178:
            param1(_loc5_,param4);
            param2 = param2;
            return;
         }
      }
      
      private static function ObjectPostData(param1:PFObject) : Object
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Object = new Object();
         if(_loc7_)
         {
            _loc2_["classname"] = param1.ClassName;
            if(_loc7_ || Parse)
            {
               _loc2_["id"] = param1.ObjectId == null ? "" : param1.ObjectId;
               if(_loc7_ || Boolean(_loc3_))
               {
                  _loc2_["password"] = param1.Password == null ? "" : param1.Password;
               }
            }
         }
         for(_loc3_ in param1.Data)
         {
            if(_loc7_)
            {
               _loc2_["data" + _loc3_] = param1.Data[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private static function DateParse(param1:String) : Date
      {
         var _loc2_:Array = param1.split(" ");
         var _loc3_:Array = (_loc2_[0] as String).split("/");
         var _loc4_:Array = (_loc2_[1] as String).split(":");
         var _loc5_:int = int(_loc3_[1]);
         var _loc6_:int = int(_loc3_[0]);
         var _loc7_:int = int(_loc3_[2]);
         var _loc8_:int = int(_loc4_[0]);
         var _loc9_:int = int(_loc4_[1]);
         var _loc10_:int = int(_loc4_[2]);
         return new Date(Date.UTC(_loc7_,_loc6_,_loc5_,_loc8_,_loc9_,_loc10_));
      }
   }
}

