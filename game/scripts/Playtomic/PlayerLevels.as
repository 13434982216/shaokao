package Playtomic
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.net.SharedObject;
   
   public final class PlayerLevels
   {
      public static const NEWEST:String = "newest";
      
      public static const POPULAR:String = "popular";
      
      private static var KongLevelReceiver:Function;
      
      private static var SECTION:String;
      
      private static var SAVE:String;
      
      private static var LIST:String;
      
      private static var LOAD:String;
      
      private static var RATE:String;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(_loc1_)
      {
         NEWEST = "newest";
         if(!(_loc2_ && _loc2_))
         {
            POPULAR = "popular";
            if(_loc2_ && PlayerLevels)
            {
            }
         }
         §§goto(addr52);
      }
      
      private static var KongAPI:* = null;
      
      addr52:
      
      public function PlayerLevels()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      internal static function Initialise(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            SECTION = Encode.MD5("playerlevels-" + param1);
            if(_loc2_ || PlayerLevels)
            {
               RATE = Encode.MD5("playerlevels-rate-" + param1);
               if(_loc2_ || PlayerLevels)
               {
               }
               §§goto(addr92);
            }
         }
         LIST = Encode.MD5("playerlevels-list-" + param1);
         if(_loc2_ || _loc2_)
         {
            SAVE = Encode.MD5("playerlevels-save-" + param1);
            if(_loc2_ || _loc3_)
            {
            }
            §§goto(addr92);
         }
         LOAD = Encode.MD5("playerlevels-load-" + param1);
         addr92:
      }
      
      public static function DeferToKongregate(param1:*, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            KongLevelReceiver = param2;
            if(!(_loc4_ && PlayerLevels))
            {
               KongAPI = param1;
               if(_loc3_ || PlayerLevels)
               {
                  KongAPI.sharedContent.addLoadListener("level",KongLevelLoaded);
               }
            }
         }
      }
      
      public static function LogStart(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && PlayerLevels))
         {
            Log.PlayerLevelStart(param1);
         }
      }
      
      public static function LogWin(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Log.PlayerLevelWin(param1);
         }
      }
      
      public static function LogQuit(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Log.PlayerLevelQuit(param1);
         }
      }
      
      public static function LogRetry(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            Log.PlayerLevelRetry(param1);
         }
      }
      
      public static function Flag(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Log.PlayerLevelFlag(param1);
         }
      }
      
      public static function Rate(param1:String, param2:int, param3:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:SharedObject = SharedObject.getLocal("ratings");
         if(_loc4_.data[param1] != null)
         {
            if(_loc6_ || PlayerLevels)
            {
               §§push(param3);
               if(_loc6_ || Boolean(param1))
               {
                  §§push(null);
                  if(_loc6_)
                  {
                     if(§§pop() != §§pop())
                     {
                        §§push(param3);
                        if(_loc6_)
                        {
                           §§push(global);
                           if(_loc6_ || Boolean(param1))
                           {
                              §§pop()(new Response(0,402));
                              if(_loc7_)
                              {
                              }
                           }
                        }
                        else
                        {
                           addr108:
                           §§push(global);
                        }
                        §§pop()(new Response(0,401));
                     }
                     return;
                  }
                  §§goto(addr115);
               }
               else
               {
                  addr98:
                  §§push(null);
               }
               if(§§pop() != §§pop())
               {
                  if(!(_loc7_ && Boolean(param3)))
                  {
                     §§goto(addr108);
                     §§push(param3);
                  }
               }
               addr115:
               return;
            }
            §§goto(addr116);
         }
         §§push(param2);
         if(_loc6_)
         {
            addr93:
            §§push(0);
            if(!_loc7_)
            {
               §§push(§§pop() < §§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_ || Boolean(param1))
                     {
                     }
                  }
                  §§goto(addr94);
               }
               §§pop();
               §§push(param2);
            }
            addr94:
            if(§§pop())
            {
               §§push(param3);
               if(_loc6_)
               {
                  §§goto(addr98);
               }
               §§goto(addr108);
            }
            addr116:
            var _loc5_:Object = new Object();
            _loc5_["levelid"] = param1;
            if(_loc6_)
            {
               _loc5_["rating"] = param2;
               if(_loc6_ || Boolean(param2))
               {
                  _loc4_.data[param1] = param2;
                  if(_loc6_ || Boolean(param3))
                  {
                     PRequest.Load(SECTION,RATE,RateComplete,param3,_loc5_);
                  }
               }
            }
            return;
            §§push(§§pop() > §§pop());
         }
         §§goto(addr93);
         §§push(10);
      }
      
      private static function RateComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(param2))
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() == null)
               {
                  if(_loc5_ || Boolean(param2))
                  {
                     return;
                  }
               }
            }
            §§pop()(param4);
            param3 = param3;
            param2 = param2;
            return;
            addr48:
         }
         §§goto(addr48);
         §§push(param1);
      }
      
      public static function Load(param1:String, param2:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = new Object();
         if(_loc5_ || Boolean(param1))
         {
            _loc3_["levelid"] = param1;
            if(_loc5_ || Boolean(param2))
            {
            }
            §§goto(addr57);
         }
         PRequest.Load(SECTION,LOAD,LoadComplete,param2,_loc3_);
         addr57:
      }
      
      private static function LoadComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:XMLList = null;
         var _loc12_:XML = null;
         if(_loc15_)
         {
            if(param1 == null)
            {
               if(!_loc16_)
               {
                  return;
               }
            }
         }
         var _loc5_:PlayerLevel = null;
         if(!(_loc16_ && Boolean(param1)))
         {
            if(param4.Success)
            {
            }
            §§goto(addr297);
         }
         _loc6_ = XML(param3["level"]);
         _loc7_ = _loc6_["sdate"];
         if(_loc15_ || Boolean(param3))
         {
            §§push(int(_loc7_.substring(_loc7_.lastIndexOf("/") + 1)));
            if(!(_loc16_ && PlayerLevels))
            {
               _loc8_ = §§pop();
               if(_loc16_ && Boolean(param1))
               {
               }
               addr133:
               _loc10_ = int(_loc7_.substring(_loc7_.indexOf("/") + 1).substring(0,2));
               addr134:
               _loc5_ = new PlayerLevel();
               _loc5_.LevelId = _loc6_["levelid"];
               _loc5_.PlayerName = _loc6_["playername"];
               if(_loc15_ || Boolean(param3))
               {
                  _loc5_.PlayerId = _loc6_["playerid"];
                  if(!_loc16_)
                  {
                     _loc5_.Name = _loc6_["name"];
                     _loc5_.Score = _loc6_["score"];
                     _loc5_.Votes = _loc6_["votes"];
                     _loc5_.Rating = _loc6_["rating"];
                  }
                  §§goto(addr201);
               }
               _loc5_.Data = _loc6_["data"];
               if(_loc15_ || Boolean(param2))
               {
                  addr201:
                  _loc5_.Wins = _loc6_["wins"];
                  if(_loc15_)
                  {
                     _loc5_.Starts = _loc6_["starts"];
                     _loc5_.Retries = _loc6_["retries"];
                  }
                  _loc5_.Quits = _loc6_["quits"];
                  if(!_loc16_)
                  {
                     _loc5_.Flags = _loc6_["flags"];
                     if(!_loc16_)
                     {
                        addr232:
                        _loc5_.SDate = new Date(_loc8_,_loc9_ - 1,_loc10_);
                        _loc5_.RDate = _loc6_["rdate"];
                        _loc5_.SetThumb(_loc6_["thumb"]);
                     }
                     §§goto(addr254);
                  }
                  if(_loc6_["custom"])
                  {
                     addr254:
                     _loc11_ = _loc6_["custom"];
                     for each(_loc12_ in _loc11_.children())
                     {
                        if(!(_loc16_ && Boolean(param2)))
                        {
                           _loc5_.CustomData[_loc12_.name()] = _loc12_.text();
                        }
                     }
                     §§goto(addr297);
                  }
                  addr297:
                  param1(_loc5_,param4);
                  param2 = param2;
                  return;
               }
               §§goto(addr232);
               addr120:
            }
            addr112:
            _loc9_ = §§pop();
            if(_loc15_ || PlayerLevels)
            {
               §§goto(addr120);
            }
            §§goto(addr134);
         }
         §§push(int(_loc7_.substring(0,_loc7_.indexOf("/"))));
         if(_loc15_ || PlayerLevels)
         {
            §§goto(addr112);
         }
         §§goto(addr133);
      }
      
      public static function List(param1:Function = null, param2:Object = null) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc13_:String = null;
         if(_loc16_)
         {
            if(param2 == null)
            {
               if(_loc16_)
               {
                  param2 = new Object();
               }
            }
            addr39:
            addr40:
            if(!param2.hasOwnProperty("mode"))
            {
               §§push("popular");
            }
            var _loc3_:String = §§pop();
            if(_loc16_ || Boolean(param1))
            {
               if(!param2.hasOwnProperty("page"))
               {
                  §§push(1);
                  if(_loc16_ || Boolean(param1))
                  {
                     addr67:
                     §§push(§§pop());
                  }
               }
               var _loc4_:* = §§pop();
               if(_loc16_)
               {
                  if(!param2.hasOwnProperty("perpage"))
                  {
                     §§push(20);
                     if(!_loc17_)
                     {
                        addr85:
                        §§push(§§pop());
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(_loc16_)
                  {
                     addr106:
                     addr107:
                     if(!param2.hasOwnProperty("datemin"))
                     {
                        §§push("");
                     }
                     var _loc6_:String = §§pop();
                     if(!_loc17_)
                     {
                        addr122:
                        addr123:
                        if(!param2.hasOwnProperty("datemax"))
                        {
                           §§push("");
                        }
                        var _loc7_:String = §§pop();
                        if(!(_loc17_ && PlayerLevels))
                        {
                           if(!param2.hasOwnProperty("data"))
                           {
                              §§push(false);
                              if(!(_loc17_ && Boolean(param1)))
                              {
                                 addr150:
                                 §§push(§§pop());
                              }
                           }
                           var _loc8_:* = §§pop();
                           if(_loc16_ || Boolean(_loc3_))
                           {
                              addr179:
                              if(!param2.hasOwnProperty("thumbs"))
                              {
                                 §§push(false);
                                 if(!_loc17_)
                                 {
                                    addr178:
                                    §§push(§§pop());
                                 }
                              }
                              var _loc9_:* = §§pop();
                              if(_loc16_ || Boolean(param1))
                              {
                                 §§goto(addr205);
                              }
                              addr205:
                              if(!param2.hasOwnProperty("customfilters"))
                              {
                                 §§push({});
                              }
                              var _loc10_:Object = §§pop();
                              if(_loc16_ || Boolean(param2))
                              {
                                 if(KongAPI != null)
                                 {
                                    if(_loc16_)
                                    {
                                       if(_loc3_ == "popular")
                                       {
                                          if(_loc17_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          KongAPI.sharedContent.browse("level",KongAPI.sharedContent.BY_NEWEST);
                                          if(_loc16_ || Boolean(_loc3_))
                                          {
                                          }
                                       }
                                       §§goto(addr248);
                                    }
                                    §§goto(addr233);
                                 }
                                 var _loc11_:Object = new Object();
                                 _loc11_["mode"] = _loc3_;
                                 _loc11_["page"] = _loc4_;
                                 _loc11_["perpage"] = _loc5_;
                                 if(!(_loc17_ && Boolean(param2)))
                                 {
                                    _loc11_["data"] = !!_loc8_ ? "y" : "n";
                                    _loc11_["thumbs"] = !!_loc9_ ? "y" : "n";
                                    if(_loc16_)
                                    {
                                    }
                                    §§goto(addr298);
                                 }
                                 _loc11_["datemin"] = _loc6_;
                                 addr298:
                                 _loc11_["datemax"] = _loc7_;
                                 var _loc12_:int = 0;
                                 if(_loc16_ || PlayerLevels)
                                 {
                                    if(_loc10_ != null)
                                    {
                                    }
                                    §§goto(addr368);
                                 }
                                 for(_loc13_ in _loc10_)
                                 {
                                    if(!_loc17_)
                                    {
                                       _loc11_["ckey" + _loc12_] = _loc13_;
                                       if(!(_loc16_ || Boolean(_loc3_)))
                                       {
                                          continue;
                                       }
                                       _loc11_["cdata" + _loc12_] = _loc10_[_loc13_];
                                       if(_loc17_ && PlayerLevels)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc12_++;
                                 }
                                 if(_loc16_ || PlayerLevels)
                                 {
                                    §§goto(addr368);
                                 }
                                 addr368:
                                 _loc11_["filters"] = _loc12_;
                                 if(_loc16_)
                                 {
                                    PRequest.Load(SECTION,LIST,ListComplete,param1,_loc11_);
                                 }
                                 return;
                              }
                              KongAPI.sharedContent.browse("level",KongAPI.sharedContent.BY_RATING);
                              if(!_loc17_)
                              {
                                 addr233:
                                 §§goto(addr248);
                              }
                              addr248:
                              return;
                              §§push(param2["customfilters"]);
                           }
                           §§push(Boolean(param2["thumbs"]));
                           if(!(_loc17_ && Boolean(param2)))
                           {
                              §§goto(addr178);
                           }
                           §§goto(addr179);
                        }
                        §§push(Boolean(param2["data"]));
                        if(_loc17_)
                        {
                        }
                        §§goto(addr150);
                     }
                     §§push(param2["datemax"]);
                     if(!_loc17_)
                     {
                        §§goto(addr122);
                     }
                     §§goto(addr123);
                  }
                  §§push(param2["datemin"]);
                  if(_loc16_ || Boolean(_loc3_))
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr107);
               }
               §§push(int(param2["perpage"]));
               if(_loc17_)
               {
               }
               §§goto(addr85);
            }
            §§push(int(param2["page"]));
            if(_loc17_)
            {
            }
            §§goto(addr67);
         }
         §§push(param2["mode"]);
         if(_loc16_)
         {
            §§goto(addr39);
         }
         §§goto(addr40);
      }
      
      private static function ListComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc7_:XMLList = null;
         var _loc8_:XML = null;
         var _loc9_:String = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:XML = null;
         var _loc14_:PlayerLevel = null;
         var _loc15_:XMLList = null;
         if(!_loc21_)
         {
            if(param1 == null)
            {
               if(_loc21_)
               {
               }
            }
            var _loc5_:Array = [];
            var _loc6_:* = 0;
            if(_loc20_ || Boolean(param3))
            {
               if(param4.Success)
               {
               }
               param1(_loc5_,_loc6_,param4);
               param2 = param2;
               return;
               addr326:
            }
            _loc7_ = param3["level"];
            if(_loc20_)
            {
               §§push(int(param3["numresults"]));
               if(!_loc21_)
               {
                  _loc6_ = §§pop();
               }
               addr75:
               for each(_loc13_ in _loc7_)
               {
                  _loc9_ = _loc13_["sdate"];
                  if(!(_loc21_ && PlayerLevels))
                  {
                     §§push(int(_loc9_.substring(_loc9_.lastIndexOf("/") + 1)));
                     if(_loc20_)
                     {
                        _loc10_ = §§pop();
                        if(_loc21_)
                        {
                        }
                        addr146:
                        _loc14_ = new PlayerLevel();
                        _loc14_.LevelId = _loc13_["levelid"];
                        _loc14_.PlayerId = _loc13_["playerid"];
                        _loc14_.PlayerName = _loc13_["playername"];
                        _loc14_.Name = _loc13_["name"];
                        if(!(_loc21_ && Boolean(param2)))
                        {
                           _loc14_.Score = _loc13_["score"];
                           _loc14_.Rating = _loc13_["rating"];
                           _loc14_.Votes = _loc13_["votes"];
                           if(!_loc21_)
                           {
                              _loc14_.Wins = _loc13_["wins"];
                              _loc14_.Starts = _loc13_["starts"];
                              _loc14_.Retries = _loc13_["retries"];
                              _loc14_.Quits = _loc13_["quits"];
                              if(!(_loc21_ && Boolean(param1)))
                              {
                                 _loc14_.Flags = _loc13_["flags"];
                              }
                              addr243:
                              _loc14_.RDate = _loc13_["rdate"];
                           }
                           _loc14_.SDate = new Date(_loc10_,_loc11_ - 1,_loc12_);
                           if(!_loc21_)
                           {
                              §§goto(addr243);
                           }
                           addr259:
                           _loc14_.Data = _loc13_["data"];
                           addr264:
                           _loc14_.SetThumb(_loc13_["thumb"]);
                           _loc15_ = _loc13_["custom"];
                           if(_loc15_ != null)
                           {
                              if(_loc21_ && Boolean(param3))
                              {
                                 continue;
                              }
                              var _loc18_:int = 0;
                              if(!(_loc21_ && PlayerLevels))
                              {
                                 for each(_loc8_ in _loc15_.children())
                                 {
                                    if(!_loc21_)
                                    {
                                       _loc14_.CustomData[_loc8_.name()] = _loc8_.text();
                                    }
                                 }
                              }
                              if(!_loc20_)
                              {
                                 continue;
                              }
                           }
                           _loc5_.push(_loc14_);
                           continue;
                        }
                        if(_loc13_["data"])
                        {
                           if(!(_loc21_ && PlayerLevels))
                           {
                              §§goto(addr259);
                           }
                        }
                        §§goto(addr264);
                     }
                     addr145:
                     _loc12_ = §§pop();
                     §§goto(addr146);
                  }
                  §§push(int(_loc9_.substring(0,_loc9_.indexOf("/"))));
                  if(!_loc21_)
                  {
                     _loc11_ = §§pop();
                     if(_loc20_ || PlayerLevels)
                     {
                        §§push(int(_loc9_.substring(_loc9_.indexOf("/") + 1).substring(0,2)));
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr145);
               }
               §§goto(addr326);
            }
            §§goto(addr75);
            §§push(0);
         }
      }
      
      public static function Save(param1:PlayerLevel, param2:DisplayObject = null, param3:Function = null) : void
      {
         var level:PlayerLevel;
         var thumb:DisplayObject;
         var callback:Function;
         var postdata:Object;
         var customfields:int;
         var kcallback:Function;
         var scale:Number;
         var w:int;
         var h:int;
         var scaler:Matrix;
         var image:BitmapData;
         var key:String;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         if(_loc8_ || PlayerLevels)
         {
            §§push(null);
            if(_loc8_ || Boolean(param2))
            {
               §§pop().§§slot[6] = §§pop();
               if(_loc8_)
               {
                  §§push(§§newactivation());
                  §§push(NaN);
                  if(!(_loc7_ && PlayerLevels))
                  {
                     §§pop().§§slot[7] = §§pop();
                     §§push(§§newactivation());
                     §§push(0);
                     if(_loc8_ || Boolean(param1))
                     {
                        §§pop().§§slot[8] = §§pop();
                        §§push(§§newactivation());
                        if(_loc7_ && Boolean(param3))
                        {
                        }
                        addr521:
                        §§pop().§§slot[5] = 0;
                        §§goto(addr523);
                     }
                     addr245:
                     §§pop().§§slot[8] = §§pop();
                     §§push(§§newactivation());
                     if(_loc8_ || PlayerLevels)
                     {
                        addr255:
                        addr254:
                        §§push(int(thumb.height));
                        if(!_loc7_)
                        {
                           §§pop().§§slot[9] = §§pop();
                           if(_loc8_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc7_ && Boolean(param3)))
                              {
                                 §§push(§§pop().§§slot[2].width > 100);
                                 if(!(_loc7_ && PlayerLevels))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc8_ || Boolean(param3))
                                       {
                                          §§pop();
                                          addr416:
                                          if(_loc8_ || Boolean(param2))
                                          {
                                             §§push(thumb.height > 100);
                                          }
                                          scaler = new Matrix();
                                          if(!_loc7_)
                                          {
                                             §§goto(addr423);
                                          }
                                          addr491:
                                          postdata["hash"] = Encode.MD5(postdata["image"] + postdata["arrp"]);
                                          addr520:
                                          §§push(§§newactivation());
                                          addr490:
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    addr305:
                                    if(thumb.width >= thumb.height)
                                    {
                                       addr321:
                                       addr320:
                                       §§push(§§newactivation());
                                       §§push(100);
                                       §§push(§§newactivation());
                                       if(_loc8_ || Boolean(param3))
                                       {
                                          §§push(§§pop() / §§pop().§§slot[2].width);
                                          if(!(_loc7_ && Boolean(param1)))
                                          {
                                             §§push(§§pop());
                                             if(!_loc7_)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                w = 100;
                                                if(_loc8_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc7_ && Boolean(param3)))
                                                   {
                                                      §§pop().§§slot[9] = int(Math.ceil(scale * thumb.height));
                                                      if(_loc7_ && Boolean(param3))
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr523);
                                                }
                                                §§goto(addr520);
                                             }
                                             else
                                             {
                                                addr394:
                                                §§push(§§pop());
                                             }
                                             §§goto(addr490);
                                          }
                                       }
                                       else
                                       {
                                          addr384:
                                          §§push(§§pop() / §§pop().§§slot[2].height);
                                          if(!(_loc7_ && Boolean(param3)))
                                          {
                                             §§goto(addr394);
                                          }
                                       }
                                       §§pop().§§slot[7] = §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(§§newactivation());
                                          §§push(int(Math.ceil(scale * thumb.width)));
                                       }
                                       §§goto(addr520);
                                    }
                                    else if(thumb.height > thumb.width)
                                    {
                                       addr382:
                                       §§goto(addr384);
                                       §§push(§§newactivation());
                                       §§push(100);
                                       §§push(§§newactivation());
                                    }
                                 }
                                 §§goto(addr416);
                              }
                              addr453:
                              §§pop().§§slot[11].draw(thumb,scaler,null,null,null,true);
                           }
                           postdata["image"] = Encode.Base64(Encode.PNG(image));
                           if(_loc8_)
                           {
                              §§goto(addr476);
                              §§push(§§newactivation());
                           }
                           §§goto(addr416);
                        }
                        §§pop().§§slot[8] = §§pop();
                        if(_loc8_)
                        {
                           §§push(§§newactivation());
                           if(!_loc7_)
                           {
                              §§pop().§§slot[9] = 100;
                              §§goto(addr416);
                           }
                           §§goto(addr491);
                        }
                        §§goto(addr523);
                     }
                     §§goto(addr521);
                  }
                  addr228:
                  §§pop().§§slot[7] = §§pop();
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     §§push(§§newactivation());
                     if(_loc8_)
                     {
                        §§push(int(§§pop().§§slot[2].width));
                        if(!(_loc7_ && Boolean(param3)))
                        {
                           §§goto(addr245);
                        }
                        §§goto(addr321);
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr382);
               }
               §§goto(addr153);
            }
            §§goto(addr87);
         }
         §§push(0);
         if(_loc8_ || Boolean(param2))
         {
            §§pop().§§slot[9] = §§pop();
            §§push(§§newactivation());
            if(_loc8_)
            {
               §§push(null);
               if(_loc8_)
               {
                  §§pop().§§slot[10] = §§pop();
                  §§push(§§newactivation());
                  §§push(null);
                  if(_loc8_)
                  {
                     addr87:
                     §§pop().§§slot[11] = §§pop();
                     if(!_loc7_)
                     {
                        §§push(§§newactivation());
                        if(_loc8_ || PlayerLevels)
                        {
                           addr100:
                           §§pop().§§slot[12] = null;
                           level = param1;
                           if(_loc8_ || Boolean(param3))
                           {
                              thumb = param2;
                              if(!(_loc7_ && PlayerLevels))
                              {
                                 callback = param3;
                                 if(KongAPI != null)
                                 {
                                    kcallback = function(param1:Object):void
                                    {
                                       level.LevelId = param1["id"];
                                       level.Permalink = param1["permalink"];
                                       level.Name = param1["name"];
                                       if(callback != null)
                                       {
                                          callback(level,new Response(!!param1["success"] ? 1 : 0,0));
                                       }
                                    };
                                    if(!(_loc7_ && Boolean(param2)))
                                    {
                                       KongAPI.sharedContent.save("level",level.Data,kcallback,thumb,level.Name);
                                    }
                                    addr153:
                                    return;
                                 }
                                 postdata = new Object();
                                 postdata["data"] = level.Data;
                                 postdata["playerid"] = level.PlayerId;
                                 postdata["playersource"] = level.PlayerSource;
                              }
                              §§push(§§newactivation());
                              if(_loc8_)
                              {
                                 §§pop().§§slot[4]["playername"] = level.PlayerName;
                                 §§push(§§newactivation());
                                 if(!_loc7_)
                                 {
                                    §§pop().§§slot[4]["name"] = level.Name;
                                    §§push(§§newactivation());
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       if(§§pop().§§slot[2] != null)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc7_)
                                          {
                                             §§push(1);
                                             if(!(_loc7_ && Boolean(param1)))
                                             {
                                                §§goto(addr228);
                                             }
                                             §§goto(addr321);
                                          }
                                          §§goto(addr254);
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc7_)
                                          {
                                             §§pop().§§slot[4]["nothumb"] = "y";
                                             if(!(_loc7_ && Boolean(param1)))
                                             {
                                                §§goto(addr416);
                                             }
                                             §§goto(addr528);
                                          }
                                       }
                                       §§goto(addr521);
                                    }
                                    §§goto(addr320);
                                 }
                                 §§goto(addr426);
                              }
                              §§goto(addr453);
                           }
                           §§goto(addr305);
                        }
                        §§goto(addr426);
                     }
                     addr423:
                     §§push(§§newactivation());
                     if(_loc8_)
                     {
                        addr426:
                        §§pop().§§slot[10].scale(scale,scale);
                        §§push(§§newactivation());
                        if(_loc8_ || Boolean(param1))
                        {
                           §§pop().§§slot[11] = new BitmapData(w,h,true,0);
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                           }
                        }
                        addr476:
                        §§pop().§§slot[4]["arrp"] = RandomSample(image);
                        if(_loc8_ || Boolean(param3))
                        {
                        }
                        addr523:
                        §§goto(addr524);
                     }
                     addr524:
                     if(level.CustomData != null)
                     {
                        addr528:
                        var _loc5_:int = 0;
                        var _loc6_:* = level.CustomData;
                        while(§§hasnext(_loc6_,_loc5_))
                        {
                           §§push(§§newactivation());
                           if(_loc8_)
                           {
                              §§pop().§§slot[12] = §§nextname(_loc5_,_loc6_);
                              if(!(_loc7_ && Boolean(param2)))
                              {
                                 §§push(§§newactivation());
                                 if(_loc8_ || Boolean(param2))
                                 {
                                 }
                                 addr593:
                                 §§push(§§pop().§§slot[5]);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 customfields = §§pop();
                                 continue;
                              }
                              addr592:
                              §§goto(addr593);
                              §§push(§§newactivation());
                           }
                           §§pop().§§slot[4]["ckey" + customfields] = key;
                           if(!_loc7_)
                           {
                              §§push(§§newactivation());
                              if(_loc8_)
                              {
                                 §§pop().§§slot[4]["cdata" + customfields] = level.CustomData[key];
                                 if(!(_loc8_ || Boolean(param1)))
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr593);
                           }
                           §§goto(addr592);
                        }
                        if(_loc7_ && Boolean(param1))
                        {
                        }
                        §§goto(addr626);
                     }
                     postdata["customfields"] = customfields;
                     if(!_loc7_)
                     {
                        §§goto(addr626);
                     }
                     addr626:
                     PRequest.Load(SECTION,SAVE,SaveComplete,callback,postdata);
                     return;
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr426);
         }
         §§goto(addr321);
      }
      
      private static function SaveComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:String = null;
         if(!_loc13_)
         {
            if(param1 == null)
            {
               if(_loc13_)
               {
               }
            }
            var _loc5_:PlayerLevel = new PlayerLevel();
            _loc5_.Data = param2["data"];
            if(!(_loc13_ && Boolean(param2)))
            {
               _loc5_.PlayerId = param2["playerid"];
               if(_loc12_ || Boolean(param3))
               {
                  _loc5_.PlayerSource = param2["playersource"];
                  if(_loc12_ || PlayerLevels)
                  {
                  }
                  §§goto(addr90);
               }
            }
            _loc5_.PlayerName = param2["playername"];
            if(!(_loc13_ && Boolean(param3)))
            {
               _loc5_.Name = param2["name"];
            }
            addr90:
            var _loc10_:* = 0;
            var _loc11_:* = param2;
            for(_loc10_ in _loc11_)
            {
               §§push(_loc10_);
               if(_loc12_ || Boolean(param1))
               {
                  _loc6_ = §§pop();
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     if(§§pop().indexOf("ckey") != 0)
                     {
                        continue;
                     }
                     if(_loc12_ || PlayerLevels)
                     {
                        §§push(_loc6_);
                        if(_loc13_ && Boolean(param2))
                        {
                        }
                        addr164:
                        _loc8_ = §§pop();
                        if(!_loc13_)
                        {
                           addr173:
                           _loc9_ = param2["cdata" + _loc7_];
                           if(!_loc12_)
                           {
                              continue;
                           }
                        }
                        _loc5_.CustomData[_loc8_] = _loc9_;
                        continue;
                     }
                     addr156:
                     §§push(param2["ckey" + _loc7_]);
                     if(!_loc13_)
                     {
                        §§goto(addr164);
                     }
                     §§goto(addr173);
                  }
                  addr148:
                  _loc7_ = §§pop();
                  if(_loc12_ || Boolean(param3))
                  {
                     §§goto(addr156);
                  }
                  §§goto(addr173);
               }
               §§push(§§pop().substring(4));
               if(_loc12_ || Boolean(param1))
               {
                  §§goto(addr148);
               }
               §§goto(addr164);
            }
            if(_loc12_)
            {
               param2["data"] = _loc5_.Data;
               param2["playerid"] = _loc5_.PlayerId;
               if(_loc12_)
               {
                  param2["playersource"] = _loc5_.PlayerSource;
               }
               param2["playername"] = _loc5_.PlayerName;
               param2["name"] = _loc5_.Name;
               §§push(param4.Success);
               if(!_loc13_)
               {
                  §§push(§§pop());
                  if(_loc12_ || Boolean(param1))
                  {
                     if(!§§pop())
                     {
                        if(_loc12_ || PlayerLevels)
                        {
                        }
                     }
                  }
                  addr240:
                  if(§§pop())
                  {
                     _loc5_.LevelId = param3["levelid"];
                     _loc5_.SDate = new Date();
                     _loc5_.RDate = "Just now";
                  }
               }
               §§pop();
               §§goto(addr240);
               §§push(param4.ErrorCode == 406);
            }
            param1(_loc5_,param4);
            return;
         }
      }
      
      private static function KongLevelLoaded(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:PlayerLevel = new PlayerLevel();
         if(_loc3_ || Boolean(param1))
         {
            _loc2_.Data = param1["content"];
            _loc2_.Permalink = param1["permalink"];
            _loc2_.Name = param1["name"];
            _loc2_.LevelId = param1["id"];
            if(KongLevelReceiver != null)
            {
            }
            §§goto(addr64);
         }
         KongLevelReceiver(_loc2_);
         addr64:
      }
      
      private static function RandomSample(param1:BitmapData) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc2_:Array = new Array();
         loop0:
         do
         {
            if(_loc2_.length >= 10)
            {
               break;
            }
            §§push(Math.random() * param1.width);
            if(!_loc7_)
            {
               §§push(§§pop());
               if(_loc6_ || PlayerLevels)
               {
                  _loc3_ = §§pop();
                  addr80:
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     §§push(Math.random() * param1.height);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr95:
                     while(§§pop().length < 6)
                     {
                        §§push("0" + _loc5_);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                     _loc5_ = §§pop();
                  }
               }
               addr55:
               _loc4_ = §§pop();
               §§push(param1.getPixel32(_loc3_,_loc4_).toString(16));
               if(!_loc7_)
               {
                  _loc5_ = §§pop();
                  if(_loc7_ && PlayerLevels)
                  {
                     continue;
                  }
                  §§goto(addr80);
               }
               §§goto(addr95);
            }
            §§goto(addr55);
            §§push(§§pop());
         }
         while(_loc2_.push(_loc3_ + "/" + _loc4_ + "/" + _loc5_), !_loc7_);
         
         return _loc2_.join(",");
      }
   }
}

