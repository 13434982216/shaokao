package Playtomic
{
   import flash.display.LoaderInfo;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.Timer;
   
   public final class Log
   {
      private static var Queue:Boolean = true;
      
      internal static var SWFID:int = 0;
      
      internal static var GUID:String = "";
      
      internal static var SourceUrl:String;
      
      internal static var BaseUrl:String;
      
      private static var Cookie:SharedObject;
      
      internal static var LogQueue:LogRequest;
      
      private static const PingF:Timer;
      
      private static var Pings:int = 0;
      
      private static var Plays:int = 0;
      
      private static var Frozen:Boolean = false;
      
      private static var FrozenQueue:Array;
      
      private static var Customs:Array;
      
      private static var LevelCounters:Array;
      
      private static var LevelRangeds:Array;
      
      internal static var UseSSL:Boolean = false;
      
      internal static var PEventsEnabled:Boolean = false;
      
      internal static var PData:Object;
      
      internal static var PersistantParams:Object;
      
      internal static var PTime:int = 0;
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      
      private static var Enabled:Boolean = false;
      
      if(_loc2_)
      {
         Queue = true;
         if(!_loc1_)
         {
            SWFID = 0;
            GUID = "";
            if(!_loc1_)
            {
               PingF = new Timer(1000);
               if(_loc1_ && Log)
               {
               }
            }
            §§goto(addr90);
         }
         Pings = 0;
         Plays = 0;
         Frozen = false;
         if(!(_loc1_ && _loc1_))
         {
            FrozenQueue = new Array();
            Customs = new Array();
            LevelCounters = new Array();
         }
         §§goto(addr119);
      }
      
      private static var LevelAverages:Array = new Array();
      
      if(!(_loc1_ && _loc2_))
      {
         addr90:
         LevelRangeds = new Array();
         if(_loc2_ || _loc2_)
         {
            UseSSL = false;
            addr104:
            PEventsEnabled = false;
            if(_loc2_)
            {
               PData = {};
               addr119:
               PersistantParams = {};
            }
            §§goto(addr125);
         }
         PTime = 0;
         addr125:
         return;
      }
      §§goto(addr104);
      
      public function Log()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function SetSSL() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            UseSSL = true;
            if(!_loc1_)
            {
               trace("You are now using SSL for your api requests.  This feature is for premium users only, if your account is not premium the data you send will be ignored.");
            }
         }
      }
      
      public static function SetReferrer(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            PRequest.SendReferrer(param1);
         }
      }
      
      public static function View(param1:int = 0, param2:String = "", param3:String = "", param4:LoaderInfo = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:String = null;
         if(_loc8_ || Boolean(param3))
         {
            if(!param4)
            {
               §§push(param3);
               if(!_loc7_)
               {
                  _loc5_ = §§pop();
                  param3 = "";
                  trace("Warning: It looks like you are using the Log.View method from the old version of the API.");
                  trace("Please update your Log.View call to use the new structure: ");
                  trace("Log.View(swfid, guid, apikey, root.loaderInfo.loaderURL);");
                  if(!(_loc7_ && Boolean(param3)))
                  {
                     trace("You can get or create your API key from your game\'s settings page");
                  }
                  addr195:
                  Parse.Initialise(param3);
                  GeoIP.Initialise(param3);
                  Data.Initialise(param3);
                  Leaderboards.Initialise(param3);
                  §§goto(addr348);
               }
               §§goto(addr165);
            }
            §§push(SWFID);
            if(_loc8_)
            {
               §§push(0);
               if(_loc8_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc7_)
                     {
                        return;
                     }
                     §§goto(addr226);
                  }
                  else
                  {
                     SWFID = param1;
                     if(_loc8_ || Boolean(param1))
                     {
                        GUID = param2;
                        if(_loc8_ || Boolean(param3))
                        {
                           Enabled = true;
                           if(!_loc7_)
                           {
                              §§push(SWFID);
                              if(_loc7_)
                              {
                              }
                              §§goto(addr354);
                           }
                        }
                        §§goto(addr318);
                     }
                  }
                  §§goto(addr334);
               }
               addr93:
               §§push(§§pop() == §§pop());
               §§push(§§pop() == §§pop());
               if(!(_loc7_ && Boolean(param1)))
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(_loc8_ || Boolean(param1))
                        {
                           §§push(GUID);
                           §§push("");
                           if(!(_loc7_ && Boolean(param3)))
                           {
                              §§push(§§pop() == §§pop());
                           }
                           §§goto(addr165);
                        }
                        addr137:
                        _loc5_ = param4.loaderURL;
                        SourceUrl = GetUrl(_loc5_);
                        §§push(SourceUrl);
                        if(!_loc7_)
                        {
                           §§push(§§pop() == null);
                           §§push(§§pop() == null);
                           if(_loc7_ && Boolean(param1))
                           {
                           }
                           §§goto(addr302);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr165);
                  }
                  if(§§pop())
                  {
                     Enabled = false;
                     if(_loc8_ || Boolean(param2))
                     {
                        return;
                     }
                     §§goto(addr226);
                  }
                  else
                  {
                     §§goto(addr137);
                  }
                  §§goto(addr226);
               }
               if(!§§pop())
               {
                  if(!_loc7_)
                  {
                     §§pop();
                     addr165:
                     if(§§pop() == "")
                     {
                        if(_loc8_)
                        {
                           Enabled = false;
                           return;
                        }
                        §§goto(addr289);
                     }
                     else
                     {
                        BaseUrl = SourceUrl.split("://")[1];
                     }
                     addr348:
                     if(!_loc7_)
                     {
                        GameVars.Initialise(param3);
                        if(_loc8_)
                        {
                           PlayerLevels.Initialise(param3);
                        }
                        PRequest.Initialise();
                        addr226:
                        LogQueue = LogRequest.Create();
                        Cookie = SharedObject.getLocal("playtomic");
                        Security.loadPolicyFile((UseSSL ? "https://g" : "http://g") + param2 + ".api.playtomic.com/crossdomain.xml");
                        §§push(_loc5_);
                        if(_loc8_ || Log)
                        {
                           §§push(§§pop().indexOf("http://") == 0);
                           if(_loc8_ || Boolean(param1))
                           {
                              §§push(!§§pop());
                              if(!_loc7_)
                              {
                                 addr270:
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    §§goto(addr349);
                                 }
                                 addr333:
                                 if(§§pop())
                                 {
                                    addr334:
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(Security.sandboxType != "remote");
                                    }
                                    Enabled = false;
                                    if(_loc7_)
                                    {
                                       §§goto(addr349);
                                    }
                                 }
                              }
                              §§push(§§pop());
                              if(!(_loc7_ && Boolean(param2)))
                              {
                                 addr302:
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && Boolean(param3)))
                                    {
                                       §§pop();
                                       if(!(_loc7_ && Boolean(param1)))
                                       {
                                          addr318:
                                          §§push(Security.sandboxType == "localTrusted");
                                          if(!(_loc7_ && Boolean(param3)))
                                          {
                                             §§push(!§§pop());
                                             if(_loc8_)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr334);
                                 }
                                 §§push(§§pop());
                              }
                              §§goto(addr333);
                           }
                           if(§§pop())
                           {
                              §§goto(addr334);
                           }
                           addr349:
                           §§goto(addr281);
                        }
                        addr281:
                        if(§§pop())
                        {
                           §§pop();
                           §§push(_loc5_);
                        }
                        if(§§pop())
                        {
                           if(_loc8_ || Boolean(param3))
                           {
                              addr289:
                              §§push(Security.sandboxType != "localWithNetwork");
                           }
                        }
                        §§push(GetCookie("views"));
                        if(!_loc7_)
                        {
                           addr354:
                           §§push(§§pop());
                        }
                        var _loc6_:* = §§pop();
                        Send("v/" + (_loc6_ + 1),true);
                        if(_loc8_ || Boolean(param2))
                        {
                           PingF.addEventListener(TimerEvent.TIMER,PingServer);
                           PingF.start();
                           if(!PEventsEnabled)
                           {
                              if(!(_loc7_ && Log))
                              {
                                 return;
                              }
                              addr398:
                              PData.time = 0;
                              if(_loc8_)
                              {
                              }
                              §§goto(addr412);
                           }
                           else
                           {
                              PData.source = BaseUrl;
                           }
                           §§goto(addr403);
                        }
                        PData.views = _loc6_ + 1;
                        if(!_loc7_)
                        {
                           §§goto(addr398);
                        }
                        addr403:
                        PData.eventnum = 0;
                        PData.location = "initialize";
                        PData.api = "flash";
                        addr412:
                        PData.apiversion = "3.48";
                        PData.params = {};
                        if(!(_loc7_ && Boolean(param2)))
                        {
                           SetSession();
                           SendPEvent();
                        }
                        return;
                        §§push(§§pop().indexOf("https://") != 0);
                     }
                     return;
                     §§push(SourceUrl);
                  }
                  §§goto(addr270);
               }
               §§goto(addr165);
            }
            §§goto(addr93);
            §§push(0);
         }
         BaseUrl = BaseUrl.substring(0,BaseUrl.indexOf("/"));
         if(_loc8_ || Boolean(param1))
         {
         }
         §§goto(addr195);
      }
      
      private static function SetSessionInfo(param1:String = "", param2:String = "", param3:String = "") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(null);
            if(!(_loc5_ && Log))
            {
               §§push(§§pop() != §§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(param1);
                        if(_loc5_)
                        {
                        }
                        §§goto(addr122);
                     }
                     addr65:
                     if(§§pop())
                     {
                        SaveCookieS("sessionid",param1);
                        PData.sessionid = param1;
                        if(_loc5_ && Boolean(param1))
                        {
                        }
                        addr119:
                        §§push(param2);
                        if(_loc4_)
                        {
                           addr122:
                           §§push("");
                           if(_loc4_ || Boolean(param1))
                           {
                              addr132:
                              addr131:
                              addr130:
                              if(§§pop() != §§pop())
                              {
                                 if(!(_loc5_ && Boolean(param2)))
                                 {
                                    SaveCookieS("referredby",param2);
                                    if(_loc4_ || Boolean(param2))
                                    {
                                       PData.referredby = param2;
                                    }
                                 }
                              }
                              addr166:
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr158:
                                 §§push(§§pop() == null);
                                 if(_loc4_)
                                 {
                                    addr161:
                                    §§push(!§§pop());
                                 }
                                 §§push(§§pop());
                              }
                              §§push("");
                           }
                           §§push(§§pop() == §§pop());
                           if(_loc5_)
                           {
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr166);
                     }
                     §§push(param2);
                     if(_loc4_ || Boolean(param2))
                     {
                        §§push(null);
                        if(_loc5_ && Boolean(param3))
                        {
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr163);
               }
               §§goto(addr122);
               §§push(!§§pop());
            }
            §§push(§§pop() == §§pop());
            if(!(_loc5_ && Boolean(param3)))
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                     }
                     §§goto(addr132);
                  }
                  addr163:
                  if(§§pop())
                  {
                     addr164:
                     §§pop();
                     §§goto(addr166);
                     §§push(param3);
                  }
                  addr171:
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(param3))
                     {
                        SaveCookieS("invitedby",param3);
                        if(_loc5_ && Boolean(param1))
                        {
                        }
                     }
                     PData.invitedby = param3;
                  }
                  return;
               }
               §§pop();
               §§goto(addr119);
            }
            §§goto(addr131);
         }
         §§push("");
         if(!(_loc5_ && Boolean(param2)))
         {
            §§push(§§pop() == §§pop());
            if(_loc4_ || Boolean(param1))
            {
               §§push(!§§pop());
               if(!(_loc5_ && Log))
               {
                  §§goto(addr65);
               }
               §§goto(addr164);
            }
            §§goto(addr161);
         }
         §§goto(addr130);
      }
      
      private static function SetSession() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(!_loc2_)
         {
            addr63:
            if(!PData.session)
            {
               §§push(GetCookieS("session"));
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                  }
                  §§goto(addr32);
               }
               _loc1_ = §§pop();
               addr32:
               if(§§pop() != "")
               {
                  PData.session = _loc1_;
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  PData.session = Encode.MD5(SessionID.Create() + SessionID.Create());
               }
               addr68:
               PData.invitedby = GetCookieS("invitedby");
               if(_loc3_ || Log)
               {
                  addr87:
                  if(!PData.referredby)
                  {
                     PData.referredby = GetCookieS("referredby");
                  }
               }
               return;
               §§push(_loc1_);
            }
            if(!PData.invitedby)
            {
               if(_loc3_)
               {
                  §§goto(addr68);
               }
               §§goto(addr32);
            }
            §§goto(addr87);
         }
         SaveCookieS("session",PData.session);
         if(_loc3_)
         {
            §§goto(addr63);
         }
         §§goto(addr32);
      }
      
      private static function PEvent(param1:Object, param2:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(param2 != null)
         {
            if(!(_loc6_ && _loc3_))
            {
               PData.locationbefore = PData.location;
               PData.location = param2;
               if(_loc5_ || Boolean(param1))
               {
               }
               addr48:
               PData.time = PTime;
            }
            var _loc3_:Object = PData;
            var _loc4_:* = _loc3_.eventnum + 1;
            if(_loc5_ || Boolean(param2))
            {
               _loc3_.eventnum = _loc4_;
            }
            if(_loc5_ || Boolean(param2))
            {
               PData.params = param1;
               if(_loc5_)
               {
                  SendPEvent();
               }
            }
            return;
         }
         PData.timebefore = PData.time;
         §§goto(addr48);
      }
      
      private static function PTransaction(param1:Object, param2:String, param3:Array) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(_loc10_ || Log)
            {
               _loc4_[_loc5_] = param1[_loc5_];
            }
         }
         if(_loc10_ || Log)
         {
            §§push(0);
            if(_loc10_)
            {
               §§push(§§pop());
               if(!(_loc11_ && Boolean(param2)))
               {
                  _loc6_ = §§pop();
                  §§push(0);
                  if(_loc10_ || Boolean(param2))
                  {
                     _loc7_ = §§pop();
                     if(_loc10_ || Boolean(param3))
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                        }
                        addr170:
                     }
                     §§goto(addr184);
                  }
               }
               while(true)
               {
                  _loc6_ = §§pop();
                  if(!_loc11_)
                  {
                     while(true)
                     {
                        _loc7_++;
                        if(_loc10_)
                        {
                           §§goto(addr170);
                        }
                        break;
                     }
                     addr174:
                     _loc4_.transactions = param3;
                     if(!(_loc11_ && Log))
                     {
                        §§goto(addr184);
                     }
                     addr167:
                  }
                  break;
               }
               §§goto(addr189);
               addr164:
            }
            while(true)
            {
               if(§§pop() < param3.length)
               {
                  §§push(param3);
                  if(!(_loc11_ && Log))
                  {
                     §§push(_loc7_);
                     if(_loc10_ || Boolean(param2))
                     {
                        if(!§§pop()[§§pop()].hasOwnProperty("item"))
                        {
                           trace("** PEVENT ERROR ** Transaction is missing \'item\'.\nThe transactions array must be {item: \'name\', quantity: int, price: number, ... }");
                           if(!_loc11_)
                           {
                              return;
                           }
                        }
                        else
                        {
                           §§push(param3);
                           if(_loc10_ || Log)
                           {
                           }
                           addr144:
                           §§push(_loc7_);
                        }
                        §§goto(addr167);
                     }
                     addr145:
                     if(!§§pop()[§§pop()].hasOwnProperty("price"))
                     {
                        trace("** PEVENT ERROR ** Transaction is missing \'price\'.\nThe transactions array must be {item: \'name\', quantity: int, price: number, ... }");
                        if(_loc10_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        §§push(_loc6_);
                        if(!_loc11_)
                        {
                           §§push(§§pop() + param3[_loc7_].price);
                        }
                        §§goto(addr164);
                     }
                  }
                  §§push(_loc7_);
                  if(_loc10_)
                  {
                     if(!§§pop()[§§pop()].hasOwnProperty("quantity"))
                     {
                        break;
                     }
                     §§goto(addr144);
                     §§push(param3);
                  }
                  §§goto(addr145);
               }
               §§goto(addr174);
            }
            trace("** PEVENT ERROR ** Transaction is missing \'quantity\'.\nThe transactions array must be {item: \'name\', quantity: int, price: number, ... }");
            return;
         }
         PEvent(_loc4_,param2);
         if(!_loc11_)
         {
            delete PData.transaction;
         }
         addr184:
         _loc4_.total = _loc6_;
         if(!_loc11_)
         {
            addr189:
            PData.transaction = true;
            if(_loc11_)
            {
            }
         }
      }
      
      private static function PInvitation(param1:Object, param2:String, param3:Array) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:String = null;
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(!(_loc9_ && Boolean(param2)))
            {
               _loc4_[_loc5_] = param1[_loc5_];
            }
         }
         if(!(_loc9_ && Boolean(param1)))
         {
            _loc4_.invitations = param3;
            if(_loc9_ && Log)
            {
            }
            addr95:
            PEvent(_loc4_,param2);
            if(_loc8_)
            {
               delete PData.invitation;
            }
            §§goto(addr104);
         }
         _loc4_.total = param3.length;
         if(_loc8_)
         {
            PData.invitation = true;
            if(_loc9_ && Boolean(param2))
            {
            }
            addr104:
            return;
         }
         §§goto(addr95);
      }
      
      private static function SendPEvent() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:String = null;
         for(_loc1_ in PersistantParams)
         {
            if(_loc4_ || Log)
            {
               PData.params[_loc1_] = PersistantParams[_loc1_];
            }
         }
         if(_loc4_)
         {
            PRequest.SendPEvent(PData);
         }
      }
      
      internal static function IncreaseViews() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(GetCookie("views"));
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            _loc1_++;
            if(!_loc2_)
            {
               SaveCookie("views",_loc1_);
            }
         }
      }
      
      internal static function IncreasePlays() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var _loc1_:* = §§findproperty(Plays);
            §§push(_loc1_.Plays);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_.Plays = _loc2_;
            }
         }
      }
      
      public static function Play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Log)
         {
            if(!Enabled)
            {
               if(_loc1_)
               {
                  return;
               }
            }
            §§goto(addr47);
         }
         LevelCounters = new Array();
         LevelAverages = new Array();
         addr47:
         LevelRangeds = new Array();
         if(_loc1_ || Log)
         {
            Send("p/" + (Plays + 1),true);
         }
      }
      
      private static function PingServer(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(Enabled);
         if(_loc4_ || _loc2_)
         {
            if(!§§pop())
            {
               if(!(_loc5_ && _loc2_))
               {
                  return;
               }
            }
            else
            {
               var _loc2_:* = §§findproperty(PTime);
               §§push(_loc2_.PTime);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  _loc2_.PTime = _loc3_;
               }
               §§push(PTime);
               if(!_loc5_)
               {
                  §§push(60);
                  if(_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           Pings = 1;
                           if(!(_loc5_ && Log))
                           {
                              Send("t/y/1",true);
                           }
                           else
                           {
                              addr100:
                              §§push(PTime);
                           }
                        }
                     }
                     else
                     {
                        §§push(PTime);
                        if(!_loc5_)
                        {
                           §§push(60);
                           if(_loc4_)
                           {
                           }
                           addr102:
                           if(§§pop() % §§pop() == 0)
                           {
                              _loc2_ = §§findproperty(Pings);
                              §§push(_loc2_.Pings);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc3_ = §§pop();
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc2_.Pings = _loc3_;
                              }
                              Send("t/n/" + Pings,true);
                           }
                        }
                     }
                  }
                  §§push(§§pop() > §§pop());
                  if(_loc4_ || Log)
                  {
                  }
                  addr99:
                  §§pop();
                  §§goto(addr100);
               }
               §§goto(addr102);
               §§push(30);
            }
            return;
         }
         if(§§pop())
         {
            if(_loc4_)
            {
               §§goto(addr99);
            }
         }
         §§goto(addr102);
      }
      
      public static function CustomMetric(param1:String, param2:String = null, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(Enabled);
         if(_loc5_ || Boolean(param1))
         {
            addr84:
            if(!§§pop())
            {
               if(!(_loc4_ && Log))
               {
                  return;
               }
               addr59:
               §§push(Customs);
               if(_loc5_ || Boolean(param1))
               {
                  §§goto(addr81);
               }
               addr81:
               §§push(param1);
               if(!(_loc4_ && Boolean(param2)))
               {
                  if(§§pop().indexOf(§§pop()) > -1)
                  {
                     §§goto(addr78);
                  }
                  else
                  {
                     §§push(Customs);
                  }
               }
               §§pop().push(§§pop());
               if(_loc4_)
               {
               }
               return;
               §§push(param1);
            }
            else
            {
               if(param2 == null)
               {
                  if(_loc5_ || Boolean(param1))
                  {
                     param2 = "";
                     if(_loc5_ || Boolean(param1))
                     {
                     }
                     addr78:
                     return;
                  }
                  §§goto(addr59);
               }
               §§push(param3);
            }
            §§push(§§findproperty(Send));
            §§push("c/" + Clean(param1));
            if(_loc5_)
            {
               §§push(§§pop() + "/");
               if(_loc5_ || param3)
               {
               }
               addr112:
               §§pop().Send(§§pop());
               §§goto(addr81);
            }
            §§goto(addr112);
            §§push(§§pop() + Clean(param2));
         }
         if(§§pop())
         {
            §§goto(addr59);
         }
         §§goto(addr84);
      }
      
      public static function LevelCounterMetric(param1:String, param2:*, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_ || Log)
         {
            §§push(Enabled);
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  return;
               }
               §§push(param3);
            }
            if(§§pop())
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() + ".");
                  if(_loc5_)
                  {
                     §§push(§§pop() + String(param2));
                  }
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               §§push(LevelCounters);
               if(!(_loc6_ && Log))
               {
                  addr74:
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop().indexOf(§§pop()) > -1)
                     {
                        if(!(_loc6_ && Log))
                        {
                           return;
                        }
                     }
                     §§push(LevelCounters);
                  }
                  §§pop().push(§§pop());
               }
               §§goto(addr74);
               §§push(_loc4_);
            }
         }
         §§push(§§findproperty(Send));
         §§push("lc/" + Clean(param1));
         if(_loc5_)
         {
            §§push(§§pop() + "/");
            if(_loc5_ || param2)
            {
               §§push(§§pop() + Clean(param2));
            }
         }
         §§pop().Send(§§pop());
      }
      
      public static function LevelRangedMetric(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         §§push(Enabled);
         if(_loc6_ || param2)
         {
            if(!§§pop())
            {
               if(!(_loc7_ && Log))
               {
                  return;
               }
            }
            else
            {
               §§push(param4);
            }
            §§goto(addr100);
         }
         if(§§pop())
         {
            §§push(param1);
            if(!(_loc7_ && Log))
            {
               §§push(§§pop() + ".");
               if(_loc6_ || Log)
               {
                  §§push(§§pop() + String(param2));
                  if(_loc6_ || Boolean(param1))
                  {
                     §§push(§§pop() + ".");
                     if(_loc6_)
                     {
                        §§push(§§pop() + param3.toString());
                     }
                  }
               }
               §§push(§§pop());
            }
            _loc5_ = §§pop();
            if(_loc6_ || param2)
            {
               §§push(LevelRangeds);
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && Log))
                  {
                     if(§§pop().indexOf(§§pop()) > -1)
                     {
                        addr100:
                        return;
                     }
                     §§push(LevelRangeds);
                  }
                  §§goto(addr110);
               }
               addr110:
               §§pop().push(§§pop());
               if(_loc6_)
               {
               }
               return;
               §§push(_loc5_);
            }
         }
         §§push(§§findproperty(Send));
         §§push("lr/" + Clean(param1));
         if(_loc6_)
         {
            §§push("/");
            if(_loc6_ || param2)
            {
               §§push(§§pop() + §§pop());
               if(_loc6_)
               {
                  §§push(§§pop() + Clean(param2));
                  if(_loc6_)
                  {
                  }
                  addr151:
                  §§pop().Send(§§pop());
                  §§goto(addr110);
               }
               §§push("/");
            }
            §§push(§§pop() + §§pop());
            if(_loc6_)
            {
            }
         }
         §§goto(addr151);
         §§push(§§pop() + param3);
      }
      
      public static function LevelAverageMetric(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         §§push(Enabled);
         if(!_loc7_)
         {
            addr77:
            if(!§§pop())
            {
               if(!(_loc7_ && Boolean(param1)))
               {
                  return;
               }
               addr62:
               §§push(LevelAverages);
               if(_loc6_)
               {
                  §§push(_loc5_);
                  if(_loc6_)
                  {
                     if(§§pop().indexOf(§§pop()) > -1)
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr73);
                        }
                     }
                     else
                     {
                        §§push(LevelAverages);
                     }
                     §§goto(addr116);
                  }
                  addr76:
                  §§pop().push(§§pop());
               }
               §§goto(addr76);
               §§push(_loc5_);
            }
            else
            {
               §§push(param4);
            }
            §§push(§§findproperty(Send));
            §§push("la/" + Clean(param1));
            if(_loc6_)
            {
               §§push("/");
               if(_loc6_ || Boolean(param3))
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     §§push(§§pop() + Clean(param2));
                     if(_loc7_)
                     {
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr110);
            }
            addr110:
            §§push(§§pop() + §§pop());
            if(_loc6_)
            {
               §§push(§§pop() + param3);
            }
            addr115:
            §§pop().Send(§§pop());
            addr116:
            return;
            §§push("/");
         }
         if(§§pop())
         {
            if(_loc6_ || Boolean(param3))
            {
               §§push(param1);
               if(_loc6_)
               {
                  §§push(§§pop() + ".");
                  if(_loc6_ || Log)
                  {
                     §§push(§§pop() + String(param2));
                  }
                  §§push(§§pop());
               }
               _loc5_ = §§pop();
               §§goto(addr62);
            }
            addr73:
            return;
         }
         §§goto(addr77);
      }
      
      internal static function Link(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(!Enabled)
            {
               if(_loc7_ && Log)
               {
               }
            }
            §§push(§§findproperty(Send));
            §§push("l/" + Clean(param2));
            §§push("/");
            if(!(_loc7_ && Boolean(param2)))
            {
               §§push(§§pop() + §§pop());
               if(!_loc7_)
               {
                  §§push(Clean(param3));
                  if(_loc8_)
                  {
                     §§push(§§pop() + §§pop());
                     §§push("/");
                     if(_loc8_)
                     {
                     }
                     addr109:
                     §§pop().Send(§§pop() + §§pop() + param6);
                     return;
                     addr107:
                  }
                  addr70:
                  §§push(§§pop() + §§pop());
                  §§push("/");
                  if(_loc8_ || Boolean(param3))
                  {
                     §§push(§§pop() + §§pop());
                     §§push(param4);
                     if(_loc8_ || Boolean(param1))
                     {
                        §§push(§§pop() + §§pop());
                        §§push("/");
                        if(_loc7_)
                        {
                        }
                        §§goto(addr107);
                     }
                     addr105:
                     §§goto(addr107);
                     §§push(§§pop() + §§pop());
                     §§push("/");
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     §§push(param5);
                     if(_loc8_)
                     {
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr109);
               }
               addr67:
               §§goto(addr70);
               §§push(Clean(param1));
            }
            §§goto(addr67);
            §§push(§§pop() + §§pop());
         }
      }
      
      public static function Heatmap(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!Enabled)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
            else
            {
               §§push(§§findproperty(Send));
               §§push("h/" + Clean(param1));
               if(_loc5_ || Boolean(param2))
               {
                  §§push("/");
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc5_ || Boolean(param3))
                     {
                        §§push(§§pop() + Clean(param2));
                        §§push("/");
                        if(_loc5_)
                        {
                        }
                        addr85:
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc5_)
                  {
                     addr87:
                     §§push(param3);
                     if(_loc5_ || Log)
                     {
                        §§goto(addr85);
                        §§push(§§pop() + §§pop());
                        §§push("/");
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().Send(§§pop());
               }
               §§goto(addr87);
               §§push(param4);
            }
         }
      }
      
      internal static function Funnel(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(param1)))
         {
            if(!Enabled)
            {
               if(!(_loc5_ && Boolean(param3)))
               {
                  return;
               }
            }
            else
            {
               §§push(§§findproperty(Send));
               §§push("f/" + Clean(param1));
               if(_loc4_)
               {
                  §§push("/");
                  if(!(_loc5_ && Boolean(param3)))
                  {
                     addr92:
                     §§push(§§pop() + §§pop());
                     if(_loc4_ || Boolean(param2))
                     {
                        §§push(§§pop() + Clean(param2));
                        if(_loc5_ && Log)
                        {
                        }
                        addr90:
                        §§push(§§pop() + param3);
                     }
                     §§pop().Send(§§pop());
                  }
                  addr87:
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr92);
               }
               §§goto(addr87);
               §§push("/");
            }
         }
      }
      
      internal static function PlayerLevelStart(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!Enabled)
            {
               if(_loc2_ || Log)
               {
                  return;
               }
            }
         }
         Send("pls/" + param1);
      }
      
      internal static function PlayerLevelWin(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Log))
         {
            if(!Enabled)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
         }
         Send("plw/" + param1);
      }
      
      internal static function PlayerLevelQuit(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!Enabled)
            {
               if(_loc2_)
               {
               }
            }
            else
            {
               Send("plq/" + param1);
            }
            return;
         }
      }
      
      internal static function PlayerLevelFlag(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!Enabled)
            {
               if(_loc2_ || Log)
               {
               }
            }
            Send("plf/" + param1);
            return;
         }
      }
      
      internal static function PlayerLevelRetry(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!Enabled)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            §§goto(addr35);
         }
         Send("plr/" + param1);
         addr35:
      }
      
      public static function Freeze() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            Frozen = true;
         }
      }
      
      public static function UnFreeze() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!Enabled)
            {
               if(_loc1_ || Log)
               {
                  return;
               }
            }
            Frozen = false;
            if(_loc1_ || _loc2_)
            {
               LogQueue.MassQueue(FrozenQueue);
            }
         }
      }
      
      public static function ForceSend() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!Enabled)
         {
            return;
         }
         §§push(LogQueue);
         if(_loc1_)
         {
            if(§§pop() == null)
            {
               LogQueue = LogRequest.Create();
               if(_loc2_ && Log)
               {
               }
               LogQueue = LogRequest.Create();
               §§goto(addr50);
            }
            §§push(LogQueue);
            if(_loc1_)
            {
            }
            §§goto(addr66);
         }
         §§pop().Send();
         if(!(_loc2_ && _loc2_))
         {
            §§goto(addr50);
         }
         addr50:
         if(FrozenQueue.length > 0)
         {
            addr66:
            LogQueue.MassQueue(FrozenQueue);
         }
      }
      
      private static function Send(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(Frozen)
            {
               FrozenQueue.push(param1);
               return;
            }
            §§push(LogQueue);
            if(_loc4_ || _loc3_)
            {
               §§pop().Queue(param1);
               §§push(LogQueue);
               if(_loc4_)
               {
               }
               addr95:
               §§pop().Send();
               if(!_loc3_)
               {
                  LogQueue = LogRequest.Create();
               }
            }
            §§push(§§pop().ready);
            if(_loc4_ || Boolean(param1))
            {
               §§push(§§pop());
            }
            §§push(§§pop());
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  §§pop();
                  addr74:
                  §§push(param2);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(§§pop());
                  }
                  §§pop();
                  §§push(Queue);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§goto(addr95);
                        §§push(LogQueue);
                     }
                  }
               }
               §§push(§§pop());
            }
            if(§§pop())
            {
            }
            §§goto(addr74);
         }
      }
      
      private static function Clean(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc3_ || Log)
            {
               while(true)
               {
                  §§push("/");
                  while(true)
                  {
                     if(§§pop().indexOf(§§pop()) <= -1)
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                        }
                        §§goto(addr99);
                     }
                     §§push(param1);
                     addr95:
                     if(_loc2_ && _loc3_)
                     {
                        break;
                     }
                     §§push("/");
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§§pop().replace(§§pop(),"\\"));
                     if(!_loc3_)
                     {
                        break;
                     }
                     param1 = §§pop();
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     addr94:
                     §§push(param1);
                     while(true)
                     {
                        §§push("~");
                        addr96:
                        loop6:
                        while(true)
                        {
                           if(§§pop().indexOf(§§pop()) > -1)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                              while(true)
                              {
                                 param1 = §§pop();
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr94);
                                 continue loop6;
                              }
                              addr84:
                           }
                           addr99:
                           return escape(param1);
                        }
                     }
                  }
               }
            }
            break;
         }
         while(true)
         {
            §§push("~");
            if(_loc3_ || Boolean(param1))
            {
               §§push(§§pop().replace(§§pop(),"-"));
               if(_loc3_)
               {
                  §§goto(addr84);
               }
               §§goto(addr95);
            }
            §§goto(addr96);
         }
      }
      
      private static function GetCookie(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(Cookie.data[param1] == undefined)
            {
               if(_loc2_ && _loc2_)
               {
               }
            }
            return int(Cookie.data[param1]);
         }
         return 0;
      }
      
      private static function GetCookieS(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(Cookie.data[param1] == undefined)
            {
               if(_loc3_ || Log)
               {
                  return "";
               }
            }
         }
         return Cookie.data[param1];
      }
      
      private static function SaveCookie(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            Cookie.data[param1] = param2.toString();
         }
         try
         {
            Cookie.flush();
         }
         catch(s:Error)
         {
         }
      }
      
      private static function SaveCookieS(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || Boolean(param1))
         {
            Cookie.data[param1] = param2.toString();
         }
         try
         {
            Cookie.flush();
         }
         catch(s:Error)
         {
         }
      }
      
      private static function GetUrl(param1:String) : String
      {
         var defaulturl:String;
         var url:String;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(_loc4_ || Boolean(param1))
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
               }
               try
               {
                  addr40:
                  §§push(§§newactivation());
                  §§push(String(ExternalInterface.call("window.location.href.toString")));
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     §§pop().§§slot[2] = §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        addr95:
                     }
                     addr208:
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        addr214:
                        addr212:
                        if(§§pop().§§slot[2] == "null")
                        {
                           addr258:
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§newactivation());
                              if(_loc4_ || Boolean(param1))
                              {
                              }
                              addr289:
                              §§pop().§§slot[2] = "http://localhost/";
                              addr290:
                              §§push(url);
                              addr288:
                           }
                           §§push(url);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr272:
                              if(§§pop().indexOf("https://") != 0)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr288);
                                    §§push(§§newactivation());
                                 }
                              }
                              §§goto(addr290);
                           }
                        }
                        addr234:
                        §§push(url);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr256:
                           §§push(§§pop().indexOf("http://") == 0);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§pop();
                              §§goto(addr258);
                           }
                        }
                        §§goto(addr272);
                     }
                     §§push("http://localhost/");
                     if(!_loc5_)
                     {
                        §§pop().§§slot[2] = §§pop();
                        §§goto(addr234);
                     }
                     §§goto(addr289);
                  }
                  else
                  {
                     addr171:
                     §§pop().§§slot[2] = §§pop();
                  }
                  addr172:
                  §§push(url);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() == null);
                     §§push(§§pop() == null);
                     if(!_loc5_)
                     {
                        if(!§§pop())
                        {
                           addr187:
                           §§pop();
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              addr191:
                              §§push(§§pop().§§slot[2]);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() == "");
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr214);
                              }
                           }
                           §§goto(addr214);
                        }
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              §§goto(addr208);
                           }
                           §§goto(addr214);
                        }
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr272);
               }
               catch(s:Error)
               {
                  var _loc3_:* = s;
                  if(_loc4_ || Log)
                  {
                     §§push(_loc2_);
                     §§push(defaulturl);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[2] = §§pop();
                  }
                  §§goto(addr95);
               }
               return §§pop();
            }
            addr34:
            §§pop().§§slot[1] = §§pop();
            if(!_loc5_)
            {
               if(!ExternalInterface.available)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§push(§§pop().§§slot[1]);
                     if(_loc4_ || Log)
                     {
                        §§push("http://");
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§push(§§pop().indexOf(§§pop()) == 0);
                           if(!_loc5_)
                           {
                              §§push(§§pop());
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(§§newactivation());
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(§§pop().§§slot[1]);
                                       §§push("https://");
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          §§push(§§pop().indexOf(§§pop()) == 0);
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr191);
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(§§newactivation());
                                       §§push(defaulturl);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr256);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr212);
                  }
               }
               §§goto(addr289);
            }
            §§goto(addr40);
         }
         §§goto(addr34);
         §§push(param1);
      }
   }
}

