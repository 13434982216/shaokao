package Playtomic
{
   import flash.external.ExternalInterface;
   
   public final class Leaderboards
   {
      public static const TODAY:String = "today";
      
      public static const LAST7DAYS:String = "last7days";
      
      public static const LAST30DAYS:String = "last30days";
      
      public static const ALLTIME:String = "alltime";
      
      private static var SECTION:String;
      
      private static var CREATEPRIVATELEADERBOARD:String;
      
      private static var LOADPRIVATELEADERBOARD:String;
      
      private static var SAVEANDLIST:String;
      
      private static var SAVE:String;
      
      private static var LIST:String;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(_loc1_)
      {
         TODAY = "today";
         if(!(_loc2_ && Leaderboards))
         {
            LAST7DAYS = "last7days";
            if(!_loc2_)
            {
               LAST30DAYS = "last30days";
               if(_loc1_ || _loc1_)
               {
               }
               §§goto(addr62);
            }
         }
         ALLTIME = "alltime";
         if(_loc1_)
         {
         }
         §§goto(addr62);
      }
      
      public static const NEWEST:String = "newest";
      
      addr62:
      
      public function Leaderboards()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      internal static function Initialise(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            SECTION = Encode.MD5("leaderboards-" + param1);
            CREATEPRIVATELEADERBOARD = Encode.MD5("leaderboards-createprivateleaderboard-" + param1);
            LOADPRIVATELEADERBOARD = Encode.MD5("leaderboards-loadprivateleaderboard-" + param1);
            SAVEANDLIST = Encode.MD5("leaderboards-saveandlist-" + param1);
            if(_loc3_ || _loc2_)
            {
               SAVE = Encode.MD5("leaderboards-save-" + param1);
               LIST = Encode.MD5("leaderboards-list-" + param1);
            }
         }
      }
      
      public static function CreatePrivateLeaderboard(param1:String, param2:String, param3:Function = null, param4:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Object = new Object();
         _loc5_["table"] = param1;
         if(_loc7_)
         {
            _loc5_["highest"] = param4 ? "y" : "n";
            if(!(_loc6_ && Leaderboards))
            {
               _loc5_["permalink"] = param2;
               if(_loc6_ && Leaderboards)
               {
               }
            }
            §§goto(addr73);
         }
         PRequest.Load(SECTION,CREATEPRIVATELEADERBOARD,CreatePrivateLeaderboardComplete,param3,_loc5_);
         addr73:
      }
      
      private static function CreatePrivateLeaderboardComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && Leaderboards))
         {
            if(param1 == null)
            {
               if(_loc7_ && Boolean(param1))
               {
               }
            }
            var _loc5_:PrivateLeaderboard = null;
            if(_loc6_)
            {
               if(param4.Success)
               {
                  if(_loc6_ || Leaderboards)
                  {
                  }
                  §§goto(addr90);
               }
               §§goto(addr84);
            }
            _loc5_ = new PrivateLeaderboard(param3["tableid"],param3["name"],param3["bitly"],param3["permalink"],param3["highest"] == "true",param3["realname"]);
            addr84:
            param1(_loc5_,param4);
            addr90:
            param2 = param2;
            return;
         }
      }
      
      public static function LoadPrivateLeaderboard(param1:String, param2:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = new Object();
         if(_loc4_ || Leaderboards)
         {
            _loc3_["tableid"] = param1;
            if(_loc5_)
            {
            }
            §§goto(addr51);
         }
         PRequest.Load(SECTION,LOADPRIVATELEADERBOARD,LoadPrivateLeaderboardComplete,param2,_loc3_);
         addr51:
      }
      
      private static function LoadPrivateLeaderboardComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(param1 == null)
            {
               if(_loc6_ || Boolean(param1))
               {
               }
            }
            var _loc5_:PrivateLeaderboard = null;
            if(_loc6_ || Leaderboards)
            {
               if(param4.Success)
               {
                  if(_loc6_ || Boolean(param2))
                  {
                     _loc5_ = new PrivateLeaderboard(param3["tableid"],param3["name"],param3["bitly"],param3["permalink"],param3["highest"] == "true",param3["realname"]);
                  }
               }
               param1(_loc5_,param4);
            }
            param2 = param2;
            return;
         }
      }
      
      public static function GetLeaderboardFromUrl() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(!_loc5_)
         {
            if(ExternalInterface.available)
            {
               try
               {
                  _loc1_ = String(ExternalInterface.call("window.location.href.toString"));
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(_loc1_);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop().indexOf("?") == -1)
                        {
                           §§goto(addr60);
                        }
                        _loc2_ = _loc1_.substring(_loc1_.indexOf("leaderboard=") + 12);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc2_);
                        }
                     }
                     if(§§pop().indexOf("&") > -1)
                     {
                        if(!_loc5_)
                        {
                           §§push(_loc2_);
                           §§push(0);
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 _loc2_ = §§pop().substring(§§pop(),§§pop().indexOf("&"));
                              }
                              addr132:
                              _loc2_ = §§pop().substring(§§pop(),§§pop().indexOf("#"));
                              if(!_loc5_)
                              {
                                 addr140:
                                 return _loc2_;
                                 addr139:
                              }
                           }
                           addr131:
                           §§goto(addr132);
                           §§push(_loc2_);
                        }
                     }
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        if(§§pop().indexOf("#") > -1)
                        {
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              §§goto(addr131);
                              §§push(_loc2_);
                              §§push(0);
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr140);
                  }
               }
               catch(s:Error)
               {
               }
               §§goto(addr160);
            }
            s = §§pop();
            addr160:
            return null;
         }
         §§push(null);
         if(_loc4_ || Boolean(_loc2_))
         {
            return §§pop();
         }
         addr60:
         return null;
      }
      
      public static function SaveAndList(param1:PlayerScore, param2:String, param3:Function = null, param4:Object = null) : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc16_:String = null;
         var _loc17_:String = null;
         if(_loc21_)
         {
            if(param4 == null)
            {
               if(_loc21_)
               {
               }
               addr35:
               §§push(Boolean(param4["allowduplicates"]));
               if(_loc20_)
               {
               }
               addr46:
               var _loc5_:Boolean = §§pop();
               addr45:
               if(_loc21_)
               {
                  addr74:
                  if(!param4.hasOwnProperty("global"))
                  {
                     §§push(true);
                     if(!(_loc20_ && Leaderboards))
                     {
                        addr73:
                        §§push(§§pop());
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc21_)
                  {
                     if(!param4.hasOwnProperty("highest"))
                     {
                        §§push(true);
                        if(_loc21_)
                        {
                           addr96:
                           §§push(§§pop());
                        }
                     }
                     var _loc7_:* = §§pop();
                     if(_loc21_ || Boolean(param1))
                     {
                        addr117:
                        addr118:
                        if(!param4.hasOwnProperty("mode"))
                        {
                           §§push("alltime");
                        }
                        var _loc8_:String = §§pop();
                        if(_loc21_)
                        {
                           addr132:
                           if(!param4.hasOwnProperty("customfilters"))
                           {
                              §§push({});
                           }
                           var _loc9_:Object = §§pop();
                           if(_loc21_)
                           {
                              if(!param4.hasOwnProperty("page"))
                              {
                                 §§push(1);
                                 if(!_loc20_)
                                 {
                                    addr155:
                                    §§push(§§pop());
                                 }
                              }
                              var _loc10_:* = §§pop();
                              if(!_loc20_)
                              {
                                 if(!param4.hasOwnProperty("perpage"))
                                 {
                                    §§push(20);
                                    if(_loc21_ || Leaderboards)
                                    {
                                       addr178:
                                       §§push(§§pop());
                                    }
                                 }
                                 var _loc11_:* = §§pop();
                                 if(_loc21_)
                                 {
                                    addr194:
                                    if(!param4.hasOwnProperty("friendslist"))
                                    {
                                       §§push(new Array());
                                    }
                                    var _loc12_:Array = §§pop();
                                    var _loc13_:Object = new Object();
                                    _loc13_["url"] = Log.SourceUrl;
                                    if(!(_loc20_ && Boolean(param1)))
                                    {
                                       _loc13_["table"] = param2;
                                       if(!_loc20_)
                                       {
                                          _loc13_["highest"] = !!_loc7_ ? "y" : "n";
                                          if(!(_loc20_ && Boolean(param1)))
                                          {
                                             _loc13_["name"] = param1.Name;
                                             if(_loc21_ || Boolean(param2))
                                             {
                                             }
                                             addr272:
                                             var _loc14_:int = 0;
                                             if(_loc21_ || Boolean(param1))
                                             {
                                                if(param1.CustomData != null)
                                                {
                                                }
                                                §§goto(addr341);
                                             }
                                             for(_loc16_ in param1.CustomData)
                                             {
                                                if(_loc21_ || Leaderboards)
                                                {
                                                   _loc13_["ckey" + _loc14_] = _loc16_;
                                                   if(!(_loc20_ && Boolean(param1)))
                                                   {
                                                      _loc13_["cdata" + _loc14_] = param1.CustomData[_loc16_];
                                                      if(!_loc20_)
                                                      {
                                                         _loc14_++;
                                                      }
                                                   }
                                                }
                                             }
                                             if(!(_loc20_ && Boolean(param3)))
                                             {
                                                addr341:
                                                _loc13_["numfields"] = _loc14_;
                                                if(!(_loc20_ && Boolean(param1)))
                                                {
                                                   _loc13_["global"] = !!_loc6_ ? "y" : "n";
                                                   addr352:
                                                   if(_loc21_)
                                                   {
                                                      _loc13_["mode"] = _loc8_;
                                                      if(_loc21_ || Leaderboards)
                                                      {
                                                         _loc13_["page"] = _loc10_;
                                                         if(_loc21_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   _loc13_["perpage"] = _loc11_;
                                                }
                                                var _loc15_:int = 0;
                                                if(_loc9_ != null)
                                                {
                                                   var _loc18_:int = 0;
                                                   if(_loc21_ || Boolean(param3))
                                                   {
                                                      var _loc19_:* = _loc9_;
                                                      if(!_loc20_)
                                                      {
                                                         for(_loc17_ in _loc19_)
                                                         {
                                                            if(_loc21_)
                                                            {
                                                               _loc13_["lkey" + _loc15_] = _loc17_;
                                                               if(_loc20_ && Boolean(param1))
                                                               {
                                                               }
                                                            }
                                                            _loc13_["ldata" + _loc15_] = _loc9_[_loc17_];
                                                            if(_loc20_ && Leaderboards)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         addr442:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc15_++;
                                                         §§goto(addr442);
                                                      }
                                                   }
                                                }
                                                _loc13_["numfilters"] = _loc15_;
                                                §§push(param1.FBUserId);
                                                if(_loc21_)
                                                {
                                                   §§push(§§pop() == null);
                                                   if(!(_loc20_ && Leaderboards))
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc20_ && Leaderboards)
                                                      {
                                                      }
                                                      §§goto(addr488);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc20_ && Boolean(param1)))
                                                      {
                                                         §§pop();
                                                         §§push(param1.FBUserId);
                                                      }
                                                   }
                                                   §§goto(addr488);
                                                }
                                                §§push(§§pop() == "");
                                                if(!_loc20_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                addr488:
                                                if(§§pop())
                                                {
                                                   if(_loc12_.length > 0)
                                                   {
                                                      _loc13_["friendslist"] = _loc12_.join(",");
                                                      if(_loc20_ && Leaderboards)
                                                      {
                                                      }
                                                      §§goto(addr527);
                                                   }
                                                   _loc13_["fbuserid"] = param1.FBUserId;
                                                   if(_loc20_)
                                                   {
                                                   }
                                                   §§goto(addr527);
                                                }
                                                PRequest.Load(SECTION,SAVEANDLIST,SaveAndListComplete,param3,_loc13_);
                                                addr527:
                                                return;
                                             }
                                             §§goto(addr352);
                                          }
                                       }
                                       _loc13_["allowduplicates"] = _loc5_ ? "y" : "n";
                                       addr255:
                                       §§goto(addr272);
                                    }
                                    _loc13_["points"] = param1.Points.toString();
                                    if(!_loc20_)
                                    {
                                       §§goto(addr255);
                                    }
                                    §§goto(addr272);
                                 }
                                 §§goto(addr194);
                                 §§push(param4["friendslist"]);
                              }
                              §§push(int(param4["perpage"]));
                              if(_loc21_)
                              {
                              }
                              §§goto(addr178);
                           }
                           §§push(int(param4["page"]));
                           if(_loc20_ && Boolean(param1))
                           {
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr132);
                        §§push(param4["customfilters"]);
                     }
                     §§push(param4["mode"]);
                     if(_loc21_)
                     {
                        §§goto(addr117);
                     }
                     §§goto(addr118);
                  }
                  §§push(Boolean(param4["highest"]));
                  if(_loc20_ && Leaderboards)
                  {
                  }
                  §§goto(addr96);
               }
               §§push(Boolean(param4["global"]));
               if(!(_loc20_ && Boolean(param2)))
               {
                  §§goto(addr73);
               }
               §§goto(addr74);
            }
            addr31:
            if(param4.hasOwnProperty("allowduplicates"))
            {
               §§goto(addr35);
            }
            else
            {
               §§push(false);
               if(_loc21_)
               {
                  §§goto(addr45);
               }
            }
            §§goto(addr46);
         }
         param4 = new Object();
         §§goto(addr31);
      }
      
      private static function SaveAndListComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && Boolean(param2)))
         {
            §§push(param1);
            if(!(_loc5_ && Leaderboards))
            {
               if(§§pop() == null)
               {
                  if(_loc5_)
                  {
                  }
               }
               else if(param4.Success)
               {
                  if(!_loc5_)
                  {
                     ProcessScores(param3,param4,param1);
                     if(_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param1);
               }
               §§goto(addr70);
            }
            §§pop()([],0,param4);
            addr70:
            param2 = param2;
            return;
         }
      }
      
      public static function Save(param1:PlayerScore, param2:String, param3:Function = null, param4:Object = null) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc10_:String = null;
         if(!(_loc13_ && Boolean(param2)))
         {
            if(param4 == null)
            {
               if(_loc14_ || Boolean(param3))
               {
               }
               addr42:
               §§push(Boolean(param4["allowduplicates"]));
               if(_loc14_)
               {
               }
               addr53:
               var _loc5_:Boolean = §§pop();
               addr52:
               if(!(_loc13_ && Boolean(param1)))
               {
                  if(!param4.hasOwnProperty("highest"))
                  {
                     §§push(true);
                     if(_loc14_ || Leaderboards)
                     {
                        addr80:
                        §§push(§§pop());
                     }
                  }
                  var _loc6_:* = §§pop();
                  var _loc7_:* = param1.Points.toString();
                  §§push(_loc7_);
                  if(!_loc13_)
                  {
                     addr116:
                     if(§§pop().indexOf(".") > -1)
                     {
                        if(_loc14_ || Leaderboards)
                        {
                           §§push(_loc7_);
                           if(_loc14_ || Leaderboards)
                           {
                              §§push(§§pop().substring(0,_loc7_.indexOf(".")));
                           }
                        }
                     }
                     var _loc8_:Object = new Object();
                     var _loc9_:int = 0;
                     if(!_loc13_)
                     {
                        if(param1.CustomData != null)
                        {
                        }
                        addr184:
                        _loc8_["url"] = Log.BaseUrl;
                        _loc8_["table"] = param2;
                        if(_loc14_)
                        {
                           _loc8_["highest"] = !!_loc6_ ? "y" : "n";
                           if(!(_loc13_ && Boolean(param2)))
                           {
                              _loc8_["name"] = param1.Name;
                              if(!_loc13_)
                              {
                                 _loc8_["points"] = _loc7_;
                              }
                              addr280:
                              PRequest.Load(SECTION,SAVE,SaveComplete,param3,_loc8_);
                           }
                           return;
                        }
                        _loc8_["allowduplicates"] = _loc5_ ? "y" : "n";
                        _loc8_["auth"] = Encode.MD5(Log.BaseUrl + _loc7_);
                        _loc8_["fb"] = param1.FBUserId != "" && param1.FBUserId != null ? "y" : "n";
                        _loc8_["fbuserid"] = param1.FBUserId;
                        _loc8_["customfields"] = _loc9_;
                        §§goto(addr280);
                     }
                     for(_loc10_ in param1.CustomData)
                     {
                        if(!(_loc13_ && Boolean(param2)))
                        {
                           _loc8_["ckey" + _loc9_] = _loc10_;
                           if(_loc14_ || Leaderboards)
                           {
                              _loc8_["cdata" + _loc9_] = param1.CustomData[_loc10_];
                              if(!_loc13_)
                              {
                                 _loc9_++;
                              }
                           }
                        }
                     }
                     §§goto(addr184);
                  }
                  _loc7_ = §§pop();
                  §§goto(addr116);
               }
               §§push(Boolean(param4["highest"]));
               if(_loc14_)
               {
               }
               §§goto(addr80);
            }
            addr38:
            if(param4.hasOwnProperty("allowduplicates"))
            {
               §§goto(addr42);
            }
            else
            {
               §§push(false);
               if(!_loc13_)
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr53);
         }
         param4 = new Object();
         §§goto(addr38);
      }
      
      private static function SaveComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && Leaderboards))
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         param3 = param3;
         param2 = param2;
         if(!(_loc5_ && Leaderboards))
         {
            param1(param4);
         }
      }
      
      public static function List(param1:String, param2:Function, param3:Object = null) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc14_:String = null;
         if(!_loc17_)
         {
            if(param3 == null)
            {
               if(_loc17_ && Boolean(param1))
               {
               }
               addr37:
               §§push(Boolean(param3["global"]));
               if(_loc17_ && Boolean(param2))
               {
               }
               addr53:
               var _loc4_:Boolean = §§pop();
               addr52:
               if(!_loc17_)
               {
                  if(!param3.hasOwnProperty("highest"))
                  {
                     §§push(true);
                     if(!_loc17_)
                     {
                        addr75:
                        §§push(§§pop());
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(_loc18_)
                  {
                     addr96:
                     addr97:
                     if(!param3.hasOwnProperty("mode"))
                     {
                        §§push("alltime");
                     }
                     var _loc6_:String = §§pop();
                     if(_loc18_)
                     {
                        addr112:
                        if(!param3.hasOwnProperty("customfilters"))
                        {
                           §§push(new Object());
                        }
                        var _loc7_:Object = §§pop();
                        if(!(_loc17_ && Boolean(param3)))
                        {
                           addr141:
                           if(!param3.hasOwnProperty("page"))
                           {
                              §§push(1);
                              if(_loc18_)
                              {
                                 addr140:
                                 §§push(§§pop());
                              }
                           }
                           var _loc8_:* = §§pop();
                           if(!_loc17_)
                           {
                              addr164:
                              if(!param3.hasOwnProperty("perpage"))
                              {
                                 §§push(20);
                                 if(!_loc17_)
                                 {
                                    addr163:
                                    §§push(§§pop());
                                 }
                              }
                              var _loc9_:* = §§pop();
                              if(_loc18_ || Boolean(param1))
                              {
                                 if(!param3.hasOwnProperty("facebook"))
                                 {
                                    §§push(false);
                                    if(!(_loc17_ && Boolean(param3)))
                                    {
                                       addr198:
                                       §§push(§§pop());
                                    }
                                 }
                                 var _loc10_:* = §§pop();
                                 if(_loc18_ || Boolean(param3))
                                 {
                                    addr219:
                                    if(!param3.hasOwnProperty("friendslist"))
                                    {
                                       §§push(new Array());
                                    }
                                    var _loc11_:Array = §§pop();
                                    var _loc12_:Object = new Object();
                                    var _loc13_:int = 0;
                                    for(_loc14_ in _loc7_)
                                    {
                                       if(!_loc17_)
                                       {
                                          _loc12_["ckey" + _loc13_] = _loc14_;
                                          if(_loc17_)
                                          {
                                             continue;
                                          }
                                          _loc12_["cdata" + _loc13_] = _loc7_[_loc14_];
                                          if(!_loc18_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc13_++;
                                    }
                                    _loc12_["url"] = _loc4_ || Log.BaseUrl == null ? "global" : Log.BaseUrl;
                                    _loc12_["mode"] = _loc6_;
                                    _loc12_["page"] = _loc8_;
                                    if(!_loc17_)
                                    {
                                       _loc12_["perpage"] = _loc9_;
                                       _loc12_["highest"] = !!_loc5_ ? "y" : "n";
                                       _loc12_["filters"] = _loc13_;
                                       _loc12_["table"] = param1;
                                       if(!(_loc17_ && Boolean(param3)))
                                       {
                                          §§push(_loc10_);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop());
                                             if(_loc18_ || Boolean(param3))
                                             {
                                             }
                                             addr337:
                                             §§pop();
                                          }
                                          if(!§§pop())
                                          {
                                             if(!_loc17_)
                                             {
                                                §§goto(addr337);
                                             }
                                          }
                                          §§goto(addr342);
                                       }
                                       addr342:
                                       if(§§pop())
                                       {
                                          if(_loc17_ && Boolean(param1))
                                          {
                                          }
                                          addr356:
                                          trace(_loc12_["friendslist"]);
                                          if(_loc17_)
                                          {
                                          }
                                          §§goto(addr377);
                                       }
                                       PRequest.Load(SECTION,LIST,ListComplete,param2,_loc12_);
                                       addr377:
                                       return;
                                       §§push(_loc11_.length > 0);
                                    }
                                    _loc12_["friendslist"] = _loc11_.join(",");
                                    §§goto(addr356);
                                 }
                                 §§goto(addr219);
                                 §§push(param3["friendslist"]);
                              }
                              §§push(Boolean(param3["facebook"]));
                              if(_loc18_)
                              {
                              }
                              §§goto(addr198);
                           }
                           §§push(int(param3["perpage"]));
                           if(_loc18_ || Leaderboards)
                           {
                              §§goto(addr163);
                           }
                           §§goto(addr164);
                        }
                        §§push(int(param3["page"]));
                        if(_loc18_ || Boolean(param3))
                        {
                           §§goto(addr140);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr112);
                     §§push(param3["customfilters"]);
                  }
                  §§push(param3["mode"]);
                  if(_loc18_ || Boolean(param1))
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr97);
               }
               §§push(Boolean(param3["highest"]));
               if(_loc18_ || Boolean(param1))
               {
               }
               §§goto(addr75);
            }
            addr33:
            if(param3.hasOwnProperty("global"))
            {
               §§goto(addr37);
            }
            else
            {
               §§push(true);
               if(!_loc17_)
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr53);
         }
         param3 = new Object();
         §§goto(addr33);
      }
      
      private static function ListComplete(param1:Function, param2:Object, param3:XML = null, param4:Response = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(param2))
         {
            §§push(param1);
            if(_loc5_ || Boolean(param2))
            {
               if(§§pop() == null)
               {
                  if(!_loc6_)
                  {
                     return;
                  }
               }
               else if(param4.Success)
               {
                  if(_loc5_)
                  {
                     ProcessScores(param3,param4,param1);
                     if(_loc5_ || Leaderboards)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param1);
               }
               §§goto(addr74);
            }
            §§pop()([],0,param4);
            §§goto(addr74);
         }
         addr74:
         param2 = param2;
      }
      
      private static function ProcessScores(param1:XML, param2:Response, param3:Function) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:XML = null;
         var _loc12_:PlayerScore = null;
         var _loc13_:XMLList = null;
         var _loc14_:XML = null;
         var _loc4_:int = parseInt(param1["numscores"]);
         var _loc5_:Array = new Array();
         var _loc6_:XMLList = param1["score"];
         for each(_loc11_ in _loc6_)
         {
            _loc7_ = _loc11_["sdate"];
            if(!_loc19_)
            {
               §§push(int(_loc7_.substring(_loc7_.lastIndexOf("/") + 1)));
               if(!(_loc19_ && Boolean(param2)))
               {
                  _loc8_ = §§pop();
                  if(!(_loc19_ && Leaderboards))
                  {
                     §§push(int(_loc7_.substring(0,_loc7_.indexOf("/"))));
                     if(_loc19_)
                     {
                     }
                     addr127:
                     _loc10_ = §§pop();
                  }
                  _loc12_ = new PlayerScore();
                  _loc12_.SDate = new Date(_loc8_,_loc9_ - 1,_loc10_);
                  _loc12_.RDate = _loc11_["rdate"];
                  _loc12_.Name = _loc11_["name"];
                  addr128:
                  if(_loc20_)
                  {
                     _loc12_.Points = _loc11_["points"];
                  }
                  _loc12_.Website = _loc11_["website"];
                  if(!(_loc19_ && Boolean(param2)))
                  {
                     _loc12_.Rank = _loc11_["rank"];
                  }
                  if(_loc11_["submittedorbest"] != null)
                  {
                     if(_loc20_)
                     {
                        _loc12_.SubmittedOrBest = _loc11_["submittedorbest"] == "true";
                     }
                     addr199:
                     _loc12_.FBUserId = _loc11_["fbuserid"];
                     if(!_loc19_)
                     {
                        addr206:
                        if(_loc11_["custom"])
                        {
                           _loc13_ = _loc11_["custom"];
                           if(!(_loc19_ && Leaderboards))
                           {
                              var _loc17_:int = 0;
                              if(_loc20_)
                              {
                                 for each(_loc14_ in _loc13_.children())
                                 {
                                    if(!_loc19_)
                                    {
                                       _loc12_.CustomData[_loc14_.name()] = _loc14_.text();
                                    }
                                 }
                              }
                           }
                        }
                        _loc5_.push(_loc12_);
                     }
                     continue;
                  }
                  if(_loc11_["fbuserid"])
                  {
                     §§goto(addr199);
                  }
                  §§goto(addr206);
               }
               _loc9_ = §§pop();
               if(_loc20_ || Boolean(param1))
               {
               }
               §§goto(addr128);
            }
            §§goto(addr127);
            §§push(int(_loc7_.substring(_loc7_.indexOf("/") + 1).substring(0,2)));
         }
         if(_loc20_)
         {
            param3(_loc5_,_loc4_,param2);
         }
      }
   }
}

