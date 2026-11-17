package mochi.as3
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.Timer;
   
   public class MochiServices
   {
      public static const CONNECTED:String = "onConnected";
      
      private static var _id:String;
      
      private static var _container:Object;
      
      private static var _clip:MovieClip;
      
      private static var _loader:Loader;
      
      private static var _timer:Timer;
      
      private static var _preserved:Object;
      
      private static var _servURL:String = "http://www.mochiads.com/static/lib/services/";
      
      private static var _services:String = "services.swf";
      
      private static var _mochiLC:String = "MochiLC.swf";
      
      private static var _swfVersion:String;
      
      private static var _listenChannelName:String = "__ms_";
      
      private static var _sendChannel:LocalConnection;
      
      private static var _sendChannelName:String;
      
      private static var _connecting:Boolean = false;
      
      private static var _connected:Boolean = false;
      
      public static var netupAttempted:Boolean = false;
      
      public static var onError:Object;
      
      public static var widget:Boolean = false;
      
      private static var _mochiLocalConnection:MovieClip;
      
      private static var _queue:Array;
      
      private static var _nextCallbackID:Number;
      
      private static var _callbacks:Object;
      
      private static var _dispatcher:MochiEventDispatcher;
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      if(_loc2_)
      {
         CONNECTED = "onConnected";
         _servURL = "http://www.mochiads.com/static/lib/services/";
         _services = "services.swf";
         _mochiLC = "MochiLC.swf";
         if(_loc2_)
         {
            _listenChannelName = "__ms_";
            _connecting = false;
            _connected = false;
         }
         §§goto(addr66);
      }
      
      public static var netup:Boolean = true;
      
      if(_loc2_ || _loc1_)
      {
         netupAttempted = false;
         addr66:
         widget = false;
         if(!_loc1_)
         {
            addr71:
            _dispatcher = new MochiEventDispatcher();
         }
         return;
      }
      §§goto(addr71);
      
      public function MochiServices()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get id() : String
      {
         return _id;
      }
      
      public static function get clip() : Object
      {
         return _container;
      }
      
      public static function get childClip() : Object
      {
         return _clip;
      }
      
      public static function getVersion() : String
      {
         return "3.9.3 as3";
      }
      
      public static function allowDomains(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(Security.sandboxType != "application")
         {
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
         }
         §§push(param1);
         if(_loc4_ || Boolean(_loc2_))
         {
            if(§§pop().indexOf("http://") != -1)
            {
               §§push(param1);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§push(§§pop().split("/")[2].split(":")[0]);
                  if(_loc4_)
                  {
                  }
               }
               _loc2_ = §§pop();
               if(Security.sandboxType != "application")
               {
                  Security.allowDomain(_loc2_);
                  Security.allowInsecureDomain(_loc2_);
               }
            }
            §§push(_loc2_);
         }
         return §§pop();
      }
      
      public static function isNetworkAvailable() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Security.sandboxType == "localWithFile");
         if(_loc1_ || MochiServices)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function set comChannelName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() != null)
               {
                  addr52:
                  if(_loc2_ || Boolean(param1))
                  {
                     §§push(param1);
                  }
                  _sendChannelName = param1 + "_fromgame";
                  if(!_loc3_)
                  {
                     initComChannels();
                  }
               }
            }
            if(§§pop().length > 3)
            {
               if(_loc2_ || Boolean(param1))
               {
                  §§goto(addr52);
               }
            }
         }
      }
      
      public static function get connected() : Boolean
      {
         return _connected;
      }
      
      public static function warnID(param1:String, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop().toLowerCase());
            if(!(_loc5_ && MochiServices))
            {
               param1 = §§pop();
               §§push(param1);
               if(_loc5_ && Boolean(param1))
               {
               }
               addr70:
               if(§§pop() == "1e113c7239048b3f")
               {
                  §§push(param2);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     if(§§pop())
                     {
                        trace("WARNING: Using testing board ID");
                     }
                     else
                     {
                        trace("WARNING: Using testing board ID as game ID");
                     }
                     return;
                  }
                  §§goto(addr94);
               }
               else
               {
                  §§push(param1);
               }
               var _loc3_:* = 0;
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  loop1:
                  while(§§pop() < param1.length)
                  {
                     var _loc4_:* = param1.charAt(_loc3_);
                     if("0" === _loc4_)
                     {
                        §§push(0);
                        if(!(_loc6_ || Boolean(param1)))
                        {
                           addr195:
                        }
                     }
                     else if("1" === _loc4_)
                     {
                        §§push(1);
                     }
                     else
                     {
                        if("2" === _loc4_)
                        {
                           if(_loc6_)
                           {
                              §§push(2);
                              if(_loc5_)
                              {
                                 addr233:
                              }
                           }
                        }
                        else if("3" !== _loc4_)
                        {
                           if("4" === _loc4_)
                           {
                              §§push(4);
                           }
                           else if("5" === _loc4_)
                           {
                              §§push(5);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§goto(addr195);
                              }
                           }
                           else if("6" === _loc4_)
                           {
                              §§push(6);
                           }
                           else
                           {
                              if("7" === _loc4_)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(7);
                                    if(!_loc6_)
                                    {
                                       addr267:
                                    }
                                 }
                              }
                              else
                              {
                                 if("8" === _loc4_)
                                 {
                                    if(_loc6_ || MochiServices)
                                    {
                                       §§push(8);
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          §§goto(addr233);
                                       }
                                       else
                                       {
                                          addr238:
                                       }
                                    }
                                 }
                                 else if("9" === _loc4_)
                                 {
                                    §§goto(addr238);
                                    §§push(9);
                                 }
                                 else if("a" === _loc4_)
                                 {
                                    §§push(10);
                                 }
                                 else if("b" === _loc4_)
                                 {
                                    addr248:
                                    §§push(11);
                                 }
                                 else if("c" !== _loc4_)
                                 {
                                    if("d" === _loc4_)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          §§push(13);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr267);
                                          }
                                       }
                                    }
                                    else if("e" !== _loc4_)
                                    {
                                       if("f" !== _loc4_)
                                       {
                                          §§push(16);
                                       }
                                    }
                                    §§push(14);
                                 }
                                 §§push(15);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              §§push(12);
                           }
                        }
                        §§push(3);
                        if(_loc5_)
                        {
                           §§goto(addr248);
                        }
                     }
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              continue;
                              break;
                           }
                           §§push(§§pop() + 1);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 continue;
                              }
                           }
                           _loc3_ = §§pop();
                           if(_loc5_ && Boolean(_loc3_))
                           {
                              break loop1;
                           }
                           continue loop0;
                        default:
                           trace("WARNING: Board ID contains illegal characters: " + param1);
                           return;
                     }
                  }
                  return;
               }
            }
            if(§§pop().length != 16)
            {
               trace("WARNING: " + (param2 ? "board" : "game") + " ID is not the appropriate length");
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  return;
               }
            }
            else
            {
               §§push(param1);
               if(_loc6_ || Boolean(param1))
               {
                  §§goto(addr70);
               }
            }
            §§goto(addr70);
         }
         if(§§pop() == "84993a1de4031cd8")
         {
            addr94:
            if(§§pop())
            {
               if(_loc6_)
               {
                  trace("WARNING: Using testing game ID as board ID");
               }
            }
            else
            {
               trace("WARNING: Using testing game ID");
               if(_loc5_ && MochiServices)
               {
               }
            }
            return;
            §§push(param2);
         }
         §§goto(addr70);
      }
      
      public static function connect(param1:String, param2:Object, param3:Object = null) : void
      {
         var id:String;
         var clip:Object;
         var onError:Object;
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               §§push(§§newactivation());
               if(_loc5_ || Boolean(param3))
               {
                  §§pop().§§slot[2] = param2;
                  §§push(§§newactivation());
                  if(_loc5_ || Boolean(param2))
                  {
                  }
                  addr54:
                  §§push(§§pop().§§slot[2] is DisplayObject);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        addr60:
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                        }
                        §§goto(addr123);
                     }
                     else
                     {
                        trace("Error, MochiServices requires a Sprite, Movieclip or instance of the stage.");
                     }
                     addr122:
                     addr123:
                     if(§§pop().§§slot[3] != null)
                     {
                        MochiServices.onError = onError;
                        if(_loc6_ && MochiServices)
                        {
                           addr156:
                           MochiServices.onError = function(param1:String):void
                           {
                              trace(param1);
                           };
                        }
                     }
                     else if(MochiServices.onError == null)
                     {
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           §§goto(addr156);
                        }
                     }
                     return;
                     §§push(§§newactivation());
                  }
                  §§pop();
                  if(_loc5_)
                  {
                     addr98:
                     if(_clip == null)
                     {
                        trace("MochiServices Connecting...");
                        _connecting = true;
                        if(!(_loc6_ && Boolean(param3)))
                        {
                           init(id,clip);
                        }
                     }
                  }
                  §§goto(addr156);
               }
               §§pop().§§slot[3] = param3;
               warnID(id,false);
               if(!_loc6_)
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§goto(addr54);
                  }
                  §§goto(addr123);
               }
               §§goto(addr60);
            }
            §§goto(addr122);
         }
         if(§§pop().§§slot[2].stage == null)
         {
            trace("MochiServices connect requires the containing clip be attached to the stage");
         }
         §§push(_connected);
         if(!_loc6_)
         {
            §§push(!§§pop());
            if(_loc6_)
            {
            }
            §§goto(addr54);
         }
         if(§§pop())
         {
            if(_loc5_ || Boolean(param2))
            {
               §§goto(addr54);
            }
         }
         §§goto(addr98);
      }
      
      public static function disconnect() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(_connected);
         if(!_loc3_)
         {
            §§push(§§pop());
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                  }
                  §§goto(addr66);
               }
               addr45:
               if(§§pop())
               {
                  if(_clip != null)
                  {
                     if(!_loc3_)
                     {
                        if(_clip.parent != null)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr66:
                              if(§§pop())
                              {
                                 Sprite(_clip.parent).removeChild(_clip);
                                 if(_loc2_ || MochiServices)
                                 {
                                    addr87:
                                    _clip = null;
                                 }
                              }
                              addr90:
                              var _loc1_:*;
                              _connected = _loc1_ = false;
                              _connecting = _loc1_;
                              flush(true);
                              try
                              {
                                 addr102:
                                 _mochiLocalConnection.close();
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr123:
                                    if(_timer != null)
                                    {
                                       if(_loc2_)
                                       {
                                          try
                                          {
                                             _timer.stop();
                                             if(_loc2_ || _loc1_)
                                             {
                                             }
                                             addr144:
                                             _timer = null;
                                          }
                                          catch(error:Error)
                                          {
                                          }
                                       }
                                       addr147:
                                    }
                                 }
                                 _timer.removeEventListener(TimerEvent.TIMER,connectWait);
                                 if(_loc2_)
                                 {
                                    §§goto(addr144);
                                 }
                                 §§goto(addr147);
                              }
                              catch(error:Error)
                              {
                                 _loc1_ = error;
                                 §§goto(addr123);
                              }
                              return;
                              §§push(_clip.parent is Sprite);
                           }
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr90);
               }
               §§goto(addr123);
            }
         }
         §§pop();
         §§push(_connecting);
         if(_loc2_ || _loc3_)
         {
            §§push(§§pop());
            if(_loc2_ || _loc2_)
            {
               §§goto(addr45);
            }
         }
         §§goto(addr66);
      }
      
      public static function stayOnTop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            _container.addEventListener(Event.ENTER_FRAME,MochiServices.bringToTop,false,0,true);
            if(!(_loc2_ && _loc2_))
            {
               if(_clip != null)
               {
                  if(_loc1_)
                  {
                  }
               }
               §§goto(addr58);
            }
         }
         _clip.visible = true;
         addr58:
      }
      
      public static function doClose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            _container.removeEventListener(Event.ENTER_FRAME,MochiServices.bringToTop);
         }
      }
      
      public static function bringToTop(param1:Event = null) : void
      {
         var e:Event;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         e = param1;
         if(!_loc5_)
         {
            §§push(MochiServices.clip == null);
            if(_loc4_ || _loc2_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                     }
                  }
               }
               §§pop();
               if(_loc4_)
               {
                  §§push(MochiServices.childClip == null);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(!§§pop());
                  }
               }
            }
            if(!§§pop())
            {
            }
            §§goto(addr118);
         }
         try
         {
            if(MochiServices.clip.numChildren > 1)
            {
               if(_loc4_)
               {
                  MochiServices.clip.setChildIndex(MochiServices.childClip,MochiServices.clip.numChildren - 1);
               }
            }
         }
         catch(errorObject:Error)
         {
            if(_loc4_)
            {
               trace("Warning: Depth sort error.");
               if(_loc4_)
               {
               }
               addr116:
            }
            _container.removeEventListener(Event.ENTER_FRAME,MochiServices.bringToTop);
            §§goto(addr116);
         }
         addr118:
      }
      
      private static function init(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            _id = param1;
            if(_loc3_)
            {
               if(param2 != null)
               {
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr58);
            }
            _container = param2;
            if(_loc4_ && Boolean(param1))
            {
            }
            §§goto(addr58);
         }
         loadCommunicator(param1,_container);
         addr58:
      }
      
      public static function setContainer(param1:Object = null, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(_clip.parent)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  _clip.parent.removeChild(_clip);
               }
               addr50:
               _container = param1;
               if(!_loc4_)
               {
                  addr55:
                  §§push(param2);
                  if(_loc3_)
                  {
                     §§goto(addr82);
                  }
                  §§goto(addr62);
               }
            }
            if(param1 != null)
            {
               §§push(param1 is DisplayObjectContainer);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     §§goto(addr50);
                  }
               }
               addr62:
               if(§§pop())
               {
                  if(_loc3_ || Boolean(param1))
                  {
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr55);
         }
         DisplayObjectContainer(_container).addChild(_clip);
         addr82:
         if(§§pop())
         {
            §§push(_container is DisplayObjectContainer);
         }
      }
      
      private static function loadCommunicator(param1:String, param2:Object) : MovieClip
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(_clip != null)
            {
               if(_loc7_)
               {
                  return _clip;
               }
            }
            else if(!MochiServices.isNetworkAvailable())
            {
               return null;
            }
            if(urlOptions(param2).servURL)
            {
               if(_loc7_ || Boolean(param1))
               {
                  _servURL = urlOptions(param2).servURL;
               }
            }
         }
         §§push(_servURL);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() + _services);
         }
         var _loc3_:* = §§pop();
         if(urlOptions(param2).servicesURL)
         {
            if(_loc7_ || _loc3_)
            {
               _loc3_ = urlOptions(param2).servicesURL;
               if(_loc7_ || Boolean(param1))
               {
               }
               addr168:
               _loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
               addr174:
               var _loc4_:URLRequest = new URLRequest(_loc3_);
               var _loc5_:URLVariables = new URLVariables();
               _loc5_.listenLC = _listenChannelName;
               _loc5_.mochiad_options = param2.loaderInfo.parameters.mochiad_options;
               if(!(_loc6_ && Boolean(param2)))
               {
                  _loc5_.api_version = getVersion();
                  if(!_loc6_)
                  {
                     if(widget)
                     {
                        _loc5_.widget = true;
                     }
                     _loc4_.data = _loc5_;
                     _loader.load(_loc4_);
                     if(_loc6_ && MochiServices)
                     {
                     }
                     _timer.addEventListener(TimerEvent.TIMER,connectWait);
                     addr249:
                     if(_loc7_)
                     {
                        _timer.start();
                     }
                  }
                  return _clip;
               }
               _clip.addChild(_loader);
               _sendChannel = new LocalConnection();
               if(!_loc6_)
               {
                  _queue = [];
               }
               _nextCallbackID = 0;
               _callbacks = {};
               if(!_loc6_)
               {
                  _timer = new Timer(10000,1);
               }
               §§goto(addr249);
            }
            addr112:
            MochiServices.allowDomains(_loc3_);
            if(_loc7_)
            {
               _clip = new MovieClip();
               if(_loc7_ || Boolean(param1))
               {
                  loadLCBridge(_clip);
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     _loader = new Loader();
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        addr156:
                        _loader.contentLoaderInfo.addEventListener(Event.COMPLETE,detach);
                     }
                  }
                  §§goto(addr174);
               }
               _loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,detach);
            }
            §§goto(addr168);
         }
         §§push(§§findproperty(_listenChannelName));
         §§push(_listenChannelName);
         §§push(Math.floor(new Date().time) + "_");
         if(_loc7_ || Boolean(_loc3_))
         {
            §§push(§§pop() + Math.floor(Math.random() * 99999));
         }
         §§pop()._listenChannelName = §§pop() + §§pop();
         if(_loc7_)
         {
            §§goto(addr112);
         }
         §§goto(addr156);
      }
      
      private static function detach(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LoaderInfo = LoaderInfo(param1.target);
         if(!_loc4_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,detach);
            if(!_loc4_)
            {
               _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,detach);
               if(_loc3_)
               {
               }
               §§goto(addr61);
            }
            §§goto(addr56);
         }
         _loc2_.removeEventListener(Event.COMPLETE,loadLCBridgeComplete);
         if(_loc3_)
         {
            addr56:
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
            §§goto(addr61);
         }
         addr61:
      }
      
      private static function loadLCBridge(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Loader = new Loader();
         §§push(_servURL);
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            §§push(§§pop() + _mochiLC);
         }
         var _loc3_:* = §§pop();
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         if(!_loc6_)
         {
            _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,detach);
            _loc2_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,detach);
            _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,loadLCBridgeComplete);
            if(!_loc6_)
            {
               _loc2_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            }
            §§goto(addr89);
         }
         _loc2_.load(_loc4_);
         if(_loc5_ || Boolean(_loc2_))
         {
            param1.addChild(_loc2_);
         }
         addr89:
      }
      
      private static function loadLCBridgeComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Loader = LoaderInfo(param1.target).loader;
         if(!_loc4_)
         {
            _mochiLocalConnection = MovieClip(_loc2_.content);
            if(!_loc4_)
            {
               listen();
            }
         }
      }
      
      private static function loadError(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            _clip._mochiad_ctr_failed = true;
            if(_loc3_)
            {
            }
            §§goto(addr49);
         }
         trace("MochiServices could not load.");
         if(!_loc2_)
         {
            MochiServices.disconnect();
            if(_loc3_ || MochiServices)
            {
               §§goto(addr49);
            }
         }
         addr49:
         MochiServices.onError("IOError");
      }
      
      public static function connectWait(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_connected)
         {
            _clip._mochiad_ctr_failed = true;
            trace("MochiServices could not load. (timeout)");
            MochiServices.disconnect();
            if(!(_loc3_ && Boolean(param1)))
            {
               MochiServices.onError("IOError");
            }
            §§goto(addr65);
         }
         else
         {
            _timer.stop();
         }
         _timer.removeEventListener(TimerEvent.TIMER,connectWait);
         if(_loc2_ || _loc3_)
         {
            _timer = null;
         }
         addr65:
      }
      
      private static function listen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            _mochiLocalConnection.connect(_listenChannelName);
            if(_loc3_ || MochiServices)
            {
               _clip.handshake = function(param1:Object):void
               {
                  MochiServices.comChannelName = param1.newChannel;
               };
               if(_loc2_)
               {
               }
               §§goto(addr57);
            }
         }
         trace("Waiting for MochiAds services to connect...");
         addr57:
      }
      
      private static function initComChannels() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!_connected)
            {
               trace("[SERVICES_API] connected!");
               _connecting = false;
               _connected = true;
               _mochiLocalConnection.send(_sendChannelName,"onReceive",{"methodName":"handshakeDone"});
               _mochiLocalConnection.send(_sendChannelName,"onReceive",{
                  "methodName":"registerGame",
                  "preserved":_preserved,
                  "id":_id,
                  "version":getVersion(),
                  "parentURL":_container.loaderInfo.loaderURL
               });
               _clip.onReceive = onReceive;
               if(!_loc2_)
               {
                  _clip.onEvent = onEvent;
               }
               _clip.onError = function():void
               {
                  MochiServices.onError("IOError");
               };
            }
            §§goto(addr105);
         }
         while(_queue.length > 0)
         {
            _mochiLocalConnection.send(_sendChannelName,"onReceive",_queue.shift());
            if(_loc2_ && _loc2_)
            {
               break;
            }
         }
         addr105:
      }
      
      private static function onReceive(param1:Object) : void
      {
         var pkg:Object;
         var cb:String;
         var cblst:Object;
         var method:*;
         var methodName:String;
         var obj:Object;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(_loc5_)
         {
            §§pop().§§slot[5] = §§pop();
            §§push(§§newactivation());
            if(!_loc4_)
            {
               §§pop().§§slot[1] = param1;
               if(!(_loc4_ && _loc2_))
               {
                  addr157:
                  §§push(§§newactivation());
                  §§push(§§newactivation());
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop().§§slot[1].callbackID);
                     if(_loc5_)
                     {
                        §§pop().§§slot[2] = §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           cblst = _callbacks[cb];
                        }
                        addr178:
                        method = obj[method];
                        addr176:
                        addr177:
                        if(_loc4_)
                        {
                        }
                        §§push(§§newactivation());
                     }
                  }
                  §§push(§§pop().§§slot[4]);
               }
               if(!cblst)
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  §§goto(addr176);
               }
               else
               {
                  §§push(§§newactivation());
                  §§push(§§newactivation());
                  if(_loc5_ || Boolean(param1))
                  {
                     §§pop().§§slot[4] = §§pop().§§slot[3].callbackMethod;
                     if(_loc5_ || Boolean(param1))
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§pop().§§slot[5] = "";
                           §§push(§§newactivation());
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 §§pop().§§slot[6] = §§pop().§§slot[3].callbackObject;
                                 §§push(§§newactivation());
                                 if(!(_loc4_ && MochiServices))
                                 {
                                    §§push(§§pop().§§slot[6]);
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || Boolean(param1))
                                          {
                                          }
                                       }
                                       addr138:
                                       if(§§pop())
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§pop();
                                    §§push(§§newactivation());
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr138);
                           §§push(typeof §§pop().§§slot[4] == "string");
                        }
                        §§push(§§newactivation());
                        if(!(_loc4_ && MochiServices))
                        {
                           §§goto(addr157);
                        }
                     }
                     §§goto(addr176);
                  }
               }
               §§goto(addr178);
            }
            if(§§pop().§§slot[4] != undefined)
            {
               try
               {
                  addr199:
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§pop().§§slot[4].apply(obj,pkg.args);
                     if(!(_loc5_ || MochiServices))
                     {
                        try
                        {
                           addr256:
                        }
                        catch(error:Error)
                        {
                           trace("Error invoking method on object: " + error.toString());
                        }
                        §§push(§§newactivation());
                     }
                     else
                     {
                        addr242:
                     }
                  }
                  else
                  {
                     addr251:
                     if(§§pop().§§slot[6] != null)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr256);
                        }
                        addr266:
                     }
                  }
                  delete _callbacks[cb];
               }
               catch(error:Error)
               {
                  trace("Error invoking callback method \'" + methodName + "\': " + error.toString());
                  §§goto(addr242);
               }
               §§goto(addr299);
            }
            else
            {
               §§push(§§newactivation());
               if(_loc5_ || MochiServices)
               {
                  §§goto(addr251);
               }
            }
            §§pop().§§slot[6](pkg.args);
            if(!_loc4_)
            {
               §§goto(addr266);
            }
            addr299:
            return;
         }
         §§pop().§§slot[5] = §§pop();
         if(_loc5_ || _loc3_)
         {
            if(obj[method] != null)
            {
               if(!_loc4_)
               {
                  §§goto(addr178);
               }
            }
            else
            {
               trace("Error: Method  " + method + " does not exist.");
            }
            §§goto(addr178);
         }
         §§goto(addr199);
      }
      
      private static function onEvent(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = param1.target;
         var _loc3_:String = param1.event;
         var _loc4_:* = _loc2_;
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            if("services" === _loc4_)
            {
               if(_loc5_ || Boolean(_loc3_))
               {
                  §§push(0);
                  if(_loc5_ || Boolean(_loc3_))
                  {
                  }
               }
            }
            else if("events" === _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(1);
                  if(_loc5_ || Boolean(_loc3_))
                  {
                  }
               }
               addr141:
            }
            else
            {
               if("coins" === _loc4_)
               {
                  if(_loc6_)
                  {
                  }
               }
               else if("social" !== _loc4_)
               {
                  §§push(4);
               }
               §§push(3);
               if(_loc5_ || Boolean(_loc2_))
               {
                  addr160:
               }
            }
            §§goto(addr165);
         }
         §§push(2);
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§goto(addr141);
         }
         else
         {
            §§goto(addr160);
         }
      }
      
      private static function flush(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            §§push(Boolean(_clip));
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     if(_loc5_ && Boolean(_loc3_))
                     {
                     }
                     addr45:
                     loop0:
                     while(true)
                     {
                        §§push(_queue);
                        while(§§pop().length > 0)
                        {
                           §§push(_queue);
                           if(_loc5_ && Boolean(_loc2_))
                           {
                              continue;
                           }
                           _loc2_ = §§pop().shift();
                           _loc3_ = null;
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           if(_loc2_ == null)
                           {
                              continue loop0;
                           }
                           if(_loc4_)
                           {
                              if(_loc2_.callbackID != null)
                              {
                              }
                              addr85:
                              §§push(delete _callbacks[_loc2_.callbackID]);
                              if(_loc4_ || param1)
                              {
                                 §§pop();
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || Boolean(_loc3_))
                                    {
                                    }
                                 }
                                 addr119:
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                    }
                                    addr118:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    handleError(_loc2_.args,_loc3_.callbackObject,_loc3_.callbackMethod);
                                 }
                                 continue loop0;
                              }
                              §§pop();
                              §§push(_loc3_ == null);
                              if(!_loc5_)
                              {
                                 §§goto(addr118);
                              }
                              §§goto(addr119);
                           }
                           _loc3_ = _callbacks[_loc2_.callbackID];
                           §§goto(addr85);
                        }
                        §§goto(addr139);
                     }
                  }
               }
            }
            §§goto(addr44);
         }
         addr44:
         if(§§pop())
         {
            §§goto(addr45);
         }
         addr139:
         Boolean(_queue);
      }
      
      private static function handleError(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(param1 != null)
         {
            if(param1.onError != null)
            {
               if(_loc5_)
               {
                  param1.onError.apply(null,["NotConnected"]);
               }
            }
            §§push(param1.options == null);
            if(!(_loc6_ && Boolean(param3)))
            {
               §§push(!§§pop());
               if(!(_loc6_ && MochiServices))
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_ || MochiServices)
                        {
                           §§push(param1.options.onError == null);
                           if(_loc6_ && Boolean(param1))
                           {
                           }
                        }
                        param1 = {};
                        addr90:
                        if(!_loc6_)
                        {
                           param1.error = true;
                           if(!_loc6_)
                           {
                              param1.errorCode = "NotConnected";
                              if(_loc5_ || Boolean(param2))
                              {
                              }
                              §§goto(addr145);
                           }
                        }
                        §§push(param2 == null);
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                           if(_loc5_ || MochiServices)
                           {
                           }
                           addr145:
                           §§goto(addr142);
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              if(_loc5_ || Boolean(param2))
                              {
                                 addr142:
                                 if(param3 is String)
                                 {
                                    try
                                    {
                                       addr146:
                                       param2[param3](param1);
                                       if(_loc6_)
                                       {
                                          try
                                          {
                                             addr176:
                                             param3.apply(param1);
                                          }
                                          catch(error:Error)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr170:
                                       }
                                    }
                                    catch(error:Error)
                                    {
                                       §§goto(addr170);
                                    }
                                 }
                                 else if(param3 != null)
                                 {
                                    if(_loc6_)
                                    {
                                    }
                                    §§goto(addr176);
                                 }
                                 return;
                              }
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr145);
                     }
                  }
               }
               addr72:
               if(§§pop())
               {
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     param1.options.onError.apply(null,["NotConnected"]);
                  }
               }
            }
            §§goto(addr72);
            §§push(!§§pop());
         }
         if(param3 != null)
         {
            §§goto(addr90);
         }
         §§goto(addr145);
      }
      
      public static function send(param1:String, param2:Object = null, param3:Object = null, param4:Object = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && MochiServices))
         {
            §§push(_connected);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  _mochiLocalConnection.send(_sendChannelName,"onReceive",{
                     "methodName":param1,
                     "args":param2,
                     "callbackID":_nextCallbackID
                  });
               }
               else
               {
                  §§push(_clip == null);
                  if(!_loc7_)
                  {
                     if(!§§pop())
                     {
                        if(_loc8_ || Boolean(param2))
                        {
                           §§pop();
                           §§push(_connecting);
                           if(_loc8_ || Boolean(param3))
                           {
                              §§push(!§§pop());
                           }
                        }
                     }
                  }
               }
               §§goto(addr99);
            }
            if(§§pop())
            {
               trace("Error: MochiServices not connected.   Please call MochiServices.connect().  Function: " + param1);
               handleError(param2,param3,param4);
               flush(true);
               return;
            }
         }
         _queue.push({
            "methodName":param1,
            "args":param2,
            "callbackID":_nextCallbackID
         });
         addr99:
         if(_clip != null)
         {
            if(_callbacks != null)
            {
               if(!_loc7_)
               {
                  _callbacks[_nextCallbackID] = {
                     "callbackObject":param3,
                     "callbackMethod":param4
                  };
               }
               var _loc5_:* = §§findproperty(_nextCallbackID);
               §§push(_loc5_._nextCallbackID);
               if(!_loc7_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc6_:* = §§pop();
               if(!(_loc7_ && MochiServices))
               {
                  _loc5_._nextCallbackID = _loc6_;
               }
            }
         }
      }
      
      private static function urlOptions(param1:Object) : Object
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Array = null;
         var _loc5_:* = NaN;
         var _loc6_:Array = null;
         var _loc2_:Object = {};
         if(!(_loc8_ && Boolean(param1)))
         {
            if(param1.stage)
            {
               if(!(_loc8_ && Boolean(param1)))
               {
                  addr86:
                  §§push(param1.stage.loaderInfo.parameters.mochiad_options);
                  if(!_loc8_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || Boolean(_loc2_))
                     {
                     }
                     addr87:
                     §§push(_loc3_);
                  }
                  if(§§pop())
                  {
                     §§goto(addr87);
                  }
                  §§goto(addr156);
               }
            }
            else
            {
               §§push(param1.loaderInfo.parameters.mochiad_options);
               if(!_loc8_)
               {
                  _loc3_ = §§pop();
                  if(_loc8_)
                  {
                  }
                  §§goto(addr87);
               }
            }
            §§goto(addr88);
         }
         §§push(_loc3_);
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            §§goto(addr86);
         }
         addr88:
         _loc4_ = §§pop().split("&");
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            _loc5_ = 0;
         }
         while(_loc5_ < _loc4_.length)
         {
            _loc6_ = _loc4_[_loc5_].split("=");
            if(!(_loc8_ && Boolean(param1)))
            {
               _loc2_[unescape(_loc6_[0])] = unescape(_loc6_[1]);
               if(_loc8_ && Boolean(_loc3_))
               {
                  continue;
               }
            }
            §§push(_loc5_);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
            }
            _loc5_ = §§pop();
         }
         addr156:
         return _loc2_;
      }
      
      public static function addLinkEvent(param1:String, param2:String, param3:DisplayObjectContainer, param4:Function = null) : void
      {
         var url:String;
         var burl:String;
         var btn:DisplayObjectContainer;
         var onClick:Function;
         var vars:Object;
         var avm1Click:DisplayObject;
         var s:String;
         var i:Number;
         var x:String;
         var req:URLRequest;
         var loader:Loader;
         var setURL:Function;
         var err:Function;
         var complete:Function;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         avm1Click = null;
         §§push(§§newactivation());
         §§push(null);
         if(!_loc8_)
         {
            §§pop().§§slot[9] = §§pop();
            if(!(_loc8_ && Boolean(param2)))
            {
               req = null;
               §§push(§§newactivation());
               if(_loc9_ || Boolean(param1))
               {
                  §§pop().§§slot[11] = null;
                  §§push(§§newactivation());
                  §§push(null);
                  if(_loc9_)
                  {
                     §§pop().§§slot[12] = §§pop();
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        addr204:
                        §§push(§§newactivation());
                        if(!_loc8_)
                        {
                           §§push(null);
                        }
                        §§pop().§§slot[5]["lang"] = Capabilities.language;
                        §§push(§§newactivation());
                        if(!(_loc8_ && MochiServices))
                        {
                           addr217:
                           §§pop().§§slot[5]["scres"] = Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY;
                           if(!(_loc8_ && Boolean(param2)))
                           {
                              addr234:
                              §§push(§§newactivation());
                              if(_loc8_ && Boolean(param2))
                              {
                              }
                           }
                           addr248:
                           var _loc6_:int = 0;
                           var _loc7_:* = vars;
                           while(§§hasnext(_loc7_,_loc6_))
                           {
                              §§push(§§newactivation());
                              if(_loc9_)
                              {
                                 §§push(§§nextname(_loc6_,_loc7_));
                                 if(_loc9_)
                                 {
                                    §§pop().§§slot[9] = §§pop();
                                    if(!(_loc8_ && MochiServices))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc8_)
                                       {
                                       }
                                       addr298:
                                       §§push(§§newactivation());
                                       if(_loc9_)
                                       {
                                          §§push(§§pop().§§slot[7]);
                                          if(_loc9_ || MochiServices)
                                          {
                                          }
                                          addr336:
                                          §§push(§§pop() + x + "=");
                                          if(!(_loc8_ && Boolean(param2)))
                                          {
                                             §§push(§§pop() + escape(vars[x]));
                                          }
                                          §§pop().§§slot[7] = §§pop();
                                          continue;
                                       }
                                       §§push(§§pop().§§slot[7]);
                                       if(_loc9_)
                                       {
                                       }
                                       §§goto(addr336);
                                    }
                                    addr295:
                                    §§push(§§newactivation());
                                    if(!_loc8_)
                                    {
                                       §§goto(addr298);
                                    }
                                    addr319:
                                    §§push(§§pop().§§slot[8]);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                    i = §§pop();
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    addr332:
                                    §§goto(addr298);
                                    §§push(§§newactivation());
                                    §§push(§§newactivation());
                                 }
                                 §§push(§§pop() + "&");
                                 if(_loc9_)
                                 {
                                    §§pop().§§slot[7] = §§pop();
                                    if(!_loc8_)
                                    {
                                       addr316:
                                       §§push(§§newactivation());
                                       if(_loc9_)
                                       {
                                          §§goto(addr319);
                                       }
                                    }
                                    §§goto(addr332);
                                 }
                                 §§goto(addr336);
                              }
                              §§push(§§pop().§§slot[8]);
                              if(_loc9_)
                              {
                                 if(§§pop() != 0)
                                 {
                                    if(_loc9_ || Boolean(param3))
                                    {
                                       §§goto(addr295);
                                    }
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr295);
                           }
                           if(!(_loc8_ && MochiServices))
                           {
                              req = new URLRequest("http://link.mochiads.com/linkping.swf");
                              if(_loc9_)
                              {
                                 loader = new Loader();
                                 setURL = function(param1:String):void
                                 {
                                    if(avm1Click)
                                    {
                                       btn.removeChild(avm1Click);
                                    }
                                    avm1Click = clickMovie(param1,onClick);
                                    var _loc2_:Rectangle = btn.getBounds(btn);
                                    btn.addChild(avm1Click);
                                    avm1Click.x = _loc2_.x;
                                    avm1Click.y = _loc2_.y;
                                    avm1Click.scaleX = 0.01 * _loc2_.width;
                                    avm1Click.scaleY = 0.01 * _loc2_.height;
                                 };
                              }
                              §§push(§§newactivation());
                              if(_loc9_)
                              {
                                 §§pop().§§slot[13] = function(param1:Object):void
                                 {
                                    netup = false;
                                    param1.target.removeEventListener(param1.type,arguments.callee);
                                    setURL(burl);
                                 };
                                 addr511:
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc8_)
                                    {
                                       §§pop().§§slot[14] = function(param1:Object):void
                                       {
                                          param1.target.removeEventListener(param1.type,arguments.callee);
                                       };
                                       if(_loc8_)
                                       {
                                       }
                                       §§goto(addr547);
                                    }
                                    addr520:
                                    §§pop().§§slot[11].contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,err);
                                    §§push(§§newactivation());
                                 }
                                 §§push(_connected);
                                 if(!_loc8_)
                                 {
                                    addr514:
                                    §§push(§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    addr516:
                                    netupAttempted = true;
                                    §§goto(addr520);
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr547);
                              }
                              §§pop().§§slot[11].contentLoaderInfo.addEventListener(Event.COMPLETE,complete);
                              loader.load(req);
                              addr547:
                              return;
                           }
                           §§push(netup);
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && Boolean(param2)))
                                 {
                                    addr473:
                                    §§push(§§newactivation());
                                    if(_loc9_ || Boolean(param3))
                                    {
                                       addr474:
                                       §§push(§§pop().§§slot[12]);
                                       if(_loc9_ || MochiServices)
                                       {
                                          §§push(global);
                                          if(_loc9_ || Boolean(param2))
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc8_ && Boolean(param1)))
                                             {
                                                §§push(§§pop().§§slot[1]);
                                                if(_loc9_ || Boolean(param3))
                                                {
                                                   §§pop()(§§pop() + s);
                                                   if(_loc9_ || MochiServices)
                                                   {
                                                   }
                                                   §§goto(addr516);
                                                }
                                             }
                                             addr476:
                                             §§pop()(§§pop());
                                          }
                                          addr475:
                                          §§goto(addr476);
                                          §§push(§§pop().§§slot[2]);
                                       }
                                       §§goto(addr475);
                                       §§push(§§newactivation());
                                    }
                                    §§goto(addr474);
                                    §§push(global);
                                 }
                                 §§push(netupAttempted);
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc8_ && Boolean(param2)))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc8_ && Boolean(param1)))
                                          {
                                             §§pop();
                                             if(_loc9_ || Boolean(param1))
                                             {
                                                §§goto(addr511);
                                             }
                                             §§goto(addr516);
                                          }
                                       }
                                    }
                                    §§goto(addr514);
                                 }
                              }
                              else
                              {
                                 §§push(§§newactivation());
                              }
                              §§goto(addr473);
                              §§push(§§pop().§§slot[12]);
                           }
                           §§goto(addr511);
                        }
                        §§pop().§§slot[8] = 0;
                        §§goto(addr248);
                     }
                     addr196:
                     §§push(§§newactivation());
                     if(!(_loc8_ && Boolean(param2)))
                     {
                        §§goto(addr204);
                     }
                     §§goto(addr217);
                  }
                  §§pop().§§slot[13] = §§pop();
                  if(!(_loc8_ && MochiServices))
                  {
                     complete = null;
                     if(_loc9_)
                     {
                        §§push(§§newactivation());
                        §§push(param1);
                        if(!(_loc8_ && Boolean(param3)))
                        {
                           §§pop().§§slot[1] = §§pop();
                           if(!(_loc8_ && Boolean(param3)))
                           {
                              addr110:
                              §§push(§§newactivation());
                              if(!(_loc8_ && Boolean(param1)))
                              {
                                 §§push(param2);
                              }
                              §§pop().§§slot[3] = param3;
                              if(!_loc8_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc9_ || MochiServices)
                                 {
                                    §§pop().§§slot[4] = param4;
                                    if(!_loc8_)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          §§pop().§§slot[5] = new Object();
                                          §§push(§§newactivation());
                                       }
                                       §§pop().§§slot[5]["mav"] = getVersion();
                                       if(_loc9_)
                                       {
                                       }
                                    }
                                    addr183:
                                    §§push(§§newactivation());
                                    if(_loc9_ || Boolean(param2))
                                    {
                                       §§pop().§§slot[5]["os"] = Capabilities.os;
                                       §§goto(addr196);
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr217);
                        }
                     }
                  }
                  §§push(§§newactivation());
                  if(!_loc8_)
                  {
                     §§pop().§§slot[5]["swfv"] = "9";
                  }
                  §§goto(addr204);
               }
               §§pop().§§slot[7] = "?";
               §§goto(addr204);
               §§push(§§newactivation());
            }
            vars["swfurl"] = btn.loaderInfo.loaderURL;
            if(!(_loc8_ && Boolean(param1)))
            {
               §§push(§§newactivation());
               if(!(_loc8_ && Boolean(param2)))
               {
                  §§pop().§§slot[5]["fv"] = Capabilities.version;
                  if(!_loc8_)
                  {
                     §§goto(addr183);
                  }
               }
               §§goto(addr204);
            }
            §§goto(addr234);
         }
         §§pop().§§slot[2] = §§pop();
         §§goto(addr110);
         §§push(§§newactivation());
      }
      
      private static function clickMovie(param1:String, param2:Function) : MovieClip
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc4_:int = 0;
         var _loc14_:Loader = null;
         var _loc3_:Array = [150,21,0,7,1,0,0,0,0,98,116,110,0,7,2,0,0,0,0,116,104,105,115,0,28,150,22,0,0,99,114,101,97,116,101,69,109,112,116,121,77,111,118,105,101,67,108,105,112,0,82,135,1,0,0,23,150,13,0,4,0,0,111,110,82,101,108,101,97,115,101,0,142,8,0,0,0,0,2,42,0,114,0,150,17,0,0,32,0,7,1,0,0,0,8,0,0,115,112,108,105,116,0,82,135,1,0,1,23,150,7,0,4,1,7,0,0,0,0,78,150,8,0,0,95,98,108,97,110,107,0,154,1,0,0,150,7,0,0,99,108,105,99,107,0,150,7,0,4,1,7,1,0,0,0,78,150,27,0,7,2,0,0,0,7,0,0,0,0,0,76,111,99,97,108,67,111,110,110,101,99,116,105,111,110,0,64,150,6,0,0,115,101,110,100,0,82,79,150,15,0,4,0,0,95,97,108,112,104,97,0,7,0,0,0,0,79,150,23,0,7,255,0,255,0,7,1,0,0,0,4,0,0,98,101,103,105,110,70,105,108,108,0,82,23,150,25,0,7,0,0,0,0,7,0,0,0,0,7,2,0,0,0,4,0,0,109,111,118,101,84,111,0,82,23,150,25,0,7,100,0,0,0,7,0,0,0,0,7,2,0,0,0,4,0,0,108,105,110,101,84,111,0,82,23,150,25,0,7,100,0,0,0,7,100,0,0,0,7,2,0,0,0,4,0,0,108,105,110,101,84,111,0,82,23,150,25,0,7,0,0,0,0,7,100,0,0,0,7,2,0,0,0,4,0,0,108
         ,105,110,101,84,111,0,82,23,150,25,0,7,0,0,0,0,7,0,0,0,0,7,2,0,0,0,4,0,0,108,105,110,101,84,111,0,82,23,150,16,0,7,0,0,0,0,4,0,0,101,110,100,70,105,108,108,0,82,23];
         var _loc5_:Array = [104,0,31,64,0,7,208,0,0,12,1,0,67,2,255,255,255,63,3];
         var _loc6_:Array = [0,64,0,0,0];
         var _loc7_:MovieClip = new MovieClip();
         var _loc8_:LocalConnection = new LocalConnection();
         §§push("_click_" + Math.floor(Math.random() * 999999));
         if(!(_loc18_ && MochiServices))
         {
            §§push(§§pop() + "_");
            if(_loc18_)
            {
            }
            addr507:
            var _loc9_:String = §§pop();
            _loc8_ = new LocalConnection();
            if(_loc17_)
            {
               _loc7_.lc = _loc8_;
               if(_loc17_ || Boolean(param2))
               {
                  _loc7_.click = param2;
                  if(!_loc18_)
                  {
                     _loc8_.client = _loc7_;
                     if(_loc17_)
                     {
                     }
                  }
               }
               _loc8_.connect(_loc9_);
            }
            var _loc10_:ByteArray = new ByteArray();
            var _loc11_:ByteArray = new ByteArray();
            _loc11_.endian = Endian.LITTLE_ENDIAN;
            if(_loc17_)
            {
               _loc11_.writeShort(1);
               if(!_loc18_)
               {
                  _loc11_.writeUTFBytes(param1 + " " + _loc9_);
                  if(!_loc18_)
                  {
                     _loc11_.writeByte(0);
                  }
               }
            }
            var _loc12_:uint = uint(_loc3_.length + _loc11_.length + 4);
            §§push(_loc12_);
            if(!_loc18_)
            {
               §§push(uint(§§pop() + 35));
            }
            var _loc13_:* = §§pop();
            if(!_loc18_)
            {
               _loc10_.endian = Endian.LITTLE_ENDIAN;
               if(_loc17_ || Boolean(param2))
               {
               }
               addr616:
               var _loc15_:* = 0;
               var _loc16_:* = _loc5_;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc16_,_loc15_));
                  if(_loc17_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc18_ && Boolean(param2)))
                        {
                           §§goto(addr778);
                        }
                        addr778:
                        if(!(_loc18_ && Boolean(_loc3_)))
                        {
                           _loc10_.writeUnsignedInt(_loc12_);
                           if(_loc17_ || MochiServices)
                           {
                              _loc10_.writeByte(136);
                              if(!_loc18_)
                              {
                                 _loc10_.writeShort(_loc11_.length);
                                 if(!_loc18_)
                                 {
                                    _loc10_.writeBytes(_loc11_);
                                    if(_loc17_ || Boolean(param1))
                                    {
                                       §§push(0);
                                       if(!(_loc18_ && MochiServices))
                                       {
                                          _loc15_ = §§pop();
                                          if(_loc17_ || Boolean(param1))
                                          {
                                             _loc16_ = _loc3_;
                                             if(_loc18_ && Boolean(param1))
                                             {
                                             }
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc16_,_loc15_));
                                                if(_loc17_ || MochiServices)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc4_ = §§nextvalue(_loc15_,_loc16_);
                                                      if(_loc17_)
                                                      {
                                                         _loc10_.writeByte(_loc4_);
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc17_ || MochiServices)
                                                   {
                                                      if(_loc17_ || MochiServices)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                         }
                                                      }
                                                      addr753:
                                                      _loc16_ = _loc6_;
                                                      if(!_loc18_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc16_,_loc15_));
                                                            break loop0;
                                                         }
                                                         addr775:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc10_.writeByte(_loc4_);
                                                         §§goto(addr775);
                                                      }
                                                      addr772:
                                                   }
                                                }
                                                break loop0;
                                             }
                                          }
                                       }
                                       addr750:
                                       _loc15_ = §§pop();
                                       if(_loc17_)
                                       {
                                          §§goto(addr753);
                                       }
                                    }
                                 }
                                 _loc14_ = new Loader();
                                 _loc14_.loadBytes(_loc10_);
                                 §§goto(addr779);
                              }
                           }
                           §§goto(addr750);
                           §§push(0);
                        }
                        addr779:
                     }
                     _loc4_ = §§nextvalue(_loc15_,_loc16_);
                     if(_loc17_)
                     {
                        _loc10_.writeByte(_loc4_);
                     }
                     continue;
                     if(!_loc18_)
                     {
                        _loc7_.addChild(_loc14_);
                     }
                     return _loc7_;
                  }
                  break;
               }
               while(§§pop())
               {
                  _loc4_ = §§nextvalue(_loc15_,_loc16_);
                  if(!(_loc17_ || Boolean(param2)))
                  {
                     continue;
                  }
                  §§goto(addr772);
               }
               §§goto(addr777);
            }
            _loc10_.writeUTFBytes("FWS");
            if(!(_loc18_ && Boolean(_loc3_)))
            {
               _loc10_.writeByte(8);
               if(!_loc18_)
               {
                  _loc10_.writeUnsignedInt(_loc13_);
               }
            }
            §§goto(addr616);
         }
         §§goto(addr507);
         §§push(§§pop() + Math.floor(new Date().time));
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param2))
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function triggerEvent(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || MochiServices)
         {
            _dispatcher.triggerEvent(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
   }
}

