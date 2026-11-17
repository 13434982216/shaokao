package Playtomic
{
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   internal final class PRequest extends URLLoader
   {
      private static var Pool:Vector.<PRequest>;
      
      private static var Queue:Vector.<PRequest>;
      
      private static var URLStub:String;
      
      private static var URLTail:String;
      
      private static var URL:String;
      
      private var urlRequest:URLRequest;
      
      private var complete:Function;
      
      private var callback:Function;
      
      private var handled:Boolean;
      
      private var logging:Boolean;
      
      private var postdata:Object;
      
      private var time:int;
      
      public function PRequest()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.urlRequest = new URLRequest();
            if(_loc1_)
            {
               super();
               if(!_loc2_)
               {
                  addEventListener("ioError",Fail);
                  addEventListener("networkError",Fail);
               }
               §§goto(addr74);
            }
            addEventListener("verifyError",Fail);
            if(!(_loc2_ && Boolean(this)))
            {
               addEventListener("diskError",Fail);
            }
         }
         addEventListener("securityError",Fail);
         addEventListener("httpStatus",HTTPStatusIgnore);
         addEventListener("complete",Complete);
         addr74:
      }
      
      public static function Initialise() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            Pool = new Vector.<PRequest>();
            if(!_loc3_)
            {
               Queue = new Vector.<PRequest>();
               if(_loc4_ || PRequest)
               {
               }
               §§goto(addr95);
            }
            addr81:
            §§push(§§findproperty(URL));
            §§push(URLStub + "/v3/api.aspx?");
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(§§pop() + URLTail);
            }
            §§pop().URL = §§pop();
            §§goto(addr95);
         }
         §§push(§§findproperty(URLStub));
         if(!_loc3_)
         {
            addr53:
            if(!Log.UseSSL)
            {
               §§push("http://g");
            }
            §§pop().URLStub = §§pop() + Log.GUID + ".api.playtomic.com";
            if(_loc4_ || Boolean(_loc2_))
            {
               URLTail = "swfid=" + Log.SWFID;
               if(_loc3_)
               {
               }
               addr95:
               var _loc1_:Timer = new Timer(500);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.addEventListener("timer",TimeoutHandler);
                  if(_loc4_)
                  {
                     _loc1_.start();
                  }
               }
               var _loc2_:int = 0;
               while(_loc2_ < 20)
               {
                  Pool.push(new PRequest());
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc2_++;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr53);
         §§push("https://g");
      }
      
      public static function SendStatistics(param1:Function, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            addr28:
            if(Pool.length <= 0)
            {
               §§push(new PRequest());
            }
            var _loc3_:PRequest = §§pop();
            _loc3_.time = 0;
            if(_loc5_)
            {
               _loc3_.handled = false;
               if(!_loc4_)
               {
                  _loc3_.complete = param1;
                  _loc3_.callback = null;
                  if(!_loc4_)
                  {
                     _loc3_.logging = true;
                     _loc3_.urlRequest.url = URLStub + param2 + (param2.indexOf("?") > -1 ? "&" : "?") + URLTail + "&" + Math.random() + "Z";
                     _loc3_.urlRequest.method = "GET";
                     _loc3_.urlRequest.data = null;
                     if(_loc5_)
                     {
                     }
                     addr105:
                     _loc3_.load(_loc3_.urlRequest);
                  }
                  §§goto(addr112);
               }
               Queue.push(_loc3_);
               addr112:
               return;
            }
            _loc3_.postdata = null;
            §§goto(addr105);
         }
         §§goto(addr28);
         §§push(Pool.pop());
      }
      
      public static function SendReferrer(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || Boolean(param1))
         {
            trace("Referral traffic logging is for premium users only, if your account is not premium the data you send will be ignored.");
            if(_loc5_)
            {
               addr38:
               if(Pool.length <= 0)
               {
                  §§push(new PRequest());
               }
               var _loc2_:PRequest = §§pop();
               if(_loc5_)
               {
                  _loc2_.time = 0;
                  _loc2_.handled = false;
                  _loc2_.complete = null;
                  _loc2_.callback = null;
                  _loc2_.logging = true;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc2_.urlRequest.url = URLStub + "/tracker/r.aspx?" + URLTail + "&" + Math.random() + "Z";
                  }
                  _loc2_.urlRequest.method = "POST";
               }
               var _loc3_:URLVariables = new URLVariables();
               if(!_loc4_)
               {
                  _loc3_["referrer"] = Escape(param1);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr115);
               }
               _loc2_.urlRequest.data = _loc3_;
               if(_loc5_ || Boolean(_loc3_))
               {
                  addr115:
                  _loc2_.load(_loc2_.urlRequest);
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     addr133:
                     Queue.push(_loc2_);
                  }
                  return;
               }
               §§goto(addr133);
            }
         }
         §§goto(addr38);
         §§push(Pool.pop());
      }
      
      public static function SendPEvent(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§goto(addr27);
         }
         addr27:
         if(Pool.length <= 0)
         {
            §§push(new PRequest());
         }
         var _loc2_:PRequest = §§pop();
         _loc2_.time = 0;
         _loc2_.handled = false;
         if(_loc5_)
         {
            _loc2_.complete = null;
            if(!_loc6_)
            {
               _loc2_.callback = null;
               _loc2_.logging = true;
               if(_loc6_ && _loc3_)
               {
               }
            }
            _loc2_.urlRequest.url = URLStub + "/tracker/p.aspx?" + URLTail + "&" + Math.random() + "Z";
            _loc2_.urlRequest.method = "POST";
         }
         var _loc3_:ByteArray = new ByteArray();
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.writeUTFBytes(new JSONEncoder(param1).getString());
            if(!_loc6_)
            {
               _loc3_.position = 0;
            }
         }
         var _loc4_:URLVariables = new URLVariables();
         _loc4_["data"] = Escape(Encode.Base64(_loc3_));
         if(_loc5_)
         {
            _loc2_.urlRequest.data = _loc4_;
            if(_loc5_)
            {
               _loc2_.load(_loc2_.urlRequest);
               if(_loc5_ || Boolean(param1))
               {
               }
            }
            Queue.push(_loc2_);
         }
         Pool.pop();
      }
      
      public static function Load(param1:String, param2:String, param3:Function, param4:Function, param5:Object = null) : void
      {
         var section:String;
         var action:String;
         var complete:Function;
         var callback:Function;
         var postdata:Object;
         var request:PRequest;
         var url:String;
         var timestamp:String;
         var nonce:String;
         var pd:Array;
         var key:String;
         var pda:ByteArray;
         var postvars:URLVariables;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(!(_loc9_ && Boolean(param2)))
         {
            §§pop().§§slot[6] = §§pop();
            §§push(§§newactivation());
            §§push(null);
            if(!(_loc9_ && Boolean(param3)))
            {
               §§pop().§§slot[11] = §§pop();
               §§push(§§newactivation());
               if(_loc10_ || Boolean(param1))
               {
                  §§push(null);
                  if(_loc10_ || Boolean(param2))
                  {
                  }
                  addr60:
                  §§pop().§§slot[13] = §§pop();
                  section = param1;
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     §§push(§§newactivation());
                     if(!_loc9_)
                     {
                        §§pop().§§slot[2] = param2;
                        §§push(§§newactivation());
                        if(!_loc9_)
                        {
                           §§push(param3);
                           if(!_loc9_)
                           {
                              §§pop().§§slot[3] = §§pop();
                              addr193:
                              §§push(§§newactivation());
                              if(!_loc9_)
                              {
                                 §§push(param4);
                              }
                              §§push(§§pop().§§slot[6]);
                              if(_loc10_ || Boolean(param1))
                              {
                                 addr181:
                                 §§pop().callback = callback;
                                 if(!_loc9_)
                                 {
                                    addr258:
                                    addr296:
                                    §§push(§§newactivation());
                                    if(_loc10_ || Boolean(param1))
                                    {
                                       addr192:
                                       §§push(§§pop().§§slot[6]);
                                    }
                                    §§pop().§§slot[10] = new Array();
                                    if(_loc10_ || Boolean(param3))
                                    {
                                       addr290:
                                       §§push(§§newactivation());
                                       if(_loc10_)
                                       {
                                          addr272:
                                          §§push(§§pop().§§slot[10]);
                                          if(_loc10_)
                                          {
                                             addr295:
                                             §§push("nonce=" + nonce);
                                             if(!_loc9_)
                                             {
                                                §§pop().push(§§pop());
                                                addr289:
                                                §§push(§§newactivation());
                                             }
                                             §§pop().push(§§pop());
                                          }
                                          addr291:
                                          §§goto(addr295);
                                          §§push("timestamp=" + timestamp);
                                       }
                                       §§goto(addr291);
                                       §§push(§§pop().§§slot[10]);
                                    }
                                    var _loc7_:int = 0;
                                    var _loc8_:* = postdata;
                                    while(§§hasnext(_loc8_,_loc7_))
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc9_)
                                       {
                                          §§pop().§§slot[11] = §§nextname(_loc7_,_loc8_);
                                          if(!_loc10_)
                                          {
                                             continue;
                                          }
                                          §§push(§§newactivation());
                                       }
                                       §§push(§§pop().§§slot[10]);
                                       §§push(key + "=");
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() + Escape(postdata[key]));
                                       }
                                       §§pop().push(§§pop());
                                    }
                                    if(_loc10_)
                                    {
                                       GenerateKey("section",section,pd);
                                       GenerateKey("action",action,pd);
                                       if(!(_loc9_ && Boolean(param2)))
                                       {
                                          GenerateKey("signature",nonce + timestamp + section + action + url + Log.GUID,pd);
                                          pda = new ByteArray();
                                          if(!_loc9_)
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc9_)
                                             {
                                                §§pop().§§slot[12].writeUTFBytes(pd.join("&"));
                                                if(_loc10_ || Boolean(param1))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc10_)
                                                   {
                                                      §§pop().§§slot[12].position = 0;
                                                      if(_loc10_ || PRequest)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc10_ || Boolean(param1))
                                                         {
                                                         }
                                                         addr468:
                                                         §§push(§§pop().§§slot[6]);
                                                         if(!(_loc9_ && PRequest))
                                                         {
                                                            §§pop().urlRequest.method = "POST";
                                                            if(_loc10_)
                                                            {
                                                               §§push(request);
                                                               if(_loc10_ || Boolean(param3))
                                                               {
                                                                  §§pop().urlRequest.data = postvars;
                                                                  if(_loc10_)
                                                                  {
                                                                  }
                                                               }
                                                               addr515:
                                                               §§pop().load(request.urlRequest);
                                                               addr560:
                                                               Queue.push(request);
                                                               return;
                                                               addr518:
                                                               addr514:
                                                            }
                                                         }
                                                         addr500:
                                                         §§push(§§newactivation());
                                                         if(_loc10_)
                                                         {
                                                            §§pop().postdata = §§pop().§§slot[5];
                                                            if(_loc10_ || PRequest)
                                                            {
                                                            }
                                                            §§goto(addr518);
                                                         }
                                                         §§goto(addr515);
                                                      }
                                                   }
                                                   §§pop().§§slot[13] = new URLVariables();
                                                   postvars["data"] = Escape(Encode.Base64(pda));
                                                   if(_loc9_)
                                                   {
                                                   }
                                                   §§goto(addr515);
                                                }
                                                §§push(request);
                                                if(_loc10_)
                                                {
                                                   §§goto(addr500);
                                                }
                                                §§goto(addr514);
                                             }
                                             addr441:
                                             §§push(§§pop().§§slot[6]);
                                             if(!(_loc9_ && Boolean(param2)))
                                             {
                                                §§pop().urlRequest.url = url;
                                                if(!(_loc9_ && Boolean(param2)))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc10_ || Boolean(param3))
                                                   {
                                                      §§goto(addr468);
                                                   }
                                                   addr513:
                                                   §§goto(addr515);
                                                   §§push(§§pop().§§slot[6]);
                                                }
                                                §§goto(addr515);
                                             }
                                             §§goto(addr468);
                                          }
                                       }
                                       try
                                       {
                                          §§goto(addr513);
                                       }
                                       catch(s:Error)
                                       {
                                          if(_loc10_ || PRequest)
                                          {
                                             request.complete(request.callback,request.postdata,null,new Response(0,1));
                                          }
                                       }
                                       §§goto(addr560);
                                       §§push(§§newactivation());
                                    }
                                    §§goto(addr441);
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr258);
                                 §§push(§§newactivation());
                              }
                              §§pop().logging = false;
                              if(_loc10_ || PRequest)
                              {
                                 §§push(§§newactivation());
                              }
                           }
                           §§pop().§§slot[4] = §§pop();
                           postdata = param5;
                           §§push(§§newactivation());
                           if(_loc10_ || PRequest)
                           {
                           }
                           §§goto(addr272);
                        }
                        addr112:
                        §§pop().§§slot[6] = Pool.pop();
                        addr105:
                        §§push(request);
                        if(_loc10_ || PRequest)
                        {
                           §§pop().time = 0;
                           §§push(§§newactivation());
                           if(!(_loc9_ && Boolean(param2)))
                           {
                              §§push(§§pop().§§slot[6]);
                              if(_loc10_ || PRequest)
                              {
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr192);
                        }
                        §§push(false);
                        if(_loc10_ || Boolean(param3))
                        {
                           §§pop().handled = §§pop();
                           §§push(§§newactivation());
                           if(_loc10_)
                           {
                              §§push(§§pop().§§slot[6]);
                              if(!_loc9_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc10_)
                                 {
                                    §§push(§§pop().§§slot[3]);
                                    if(!_loc9_)
                                    {
                                       §§pop().complete = §§pop();
                                       §§push(§§newactivation());
                                       if(!(_loc9_ && Boolean(param1)))
                                       {
                                          §§goto(addr193);
                                       }
                                       §§goto(addr290);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr272);
                        }
                        §§goto(addr193);
                     }
                     §§push(URL + "&r=");
                     if(!(_loc9_ && PRequest))
                     {
                        §§push(§§pop() + Math.random());
                        if(_loc10_)
                        {
                        }
                        addr220:
                        §§pop().§§slot[7] = §§pop();
                        §§push(§§newactivation());
                        §§push(String(new Date().time).substring(0,10));
                        if(!_loc9_)
                        {
                           §§pop().§§slot[8] = §§pop();
                           if(_loc10_ || Boolean(param1))
                           {
                           }
                           §§goto(addr289);
                        }
                        §§pop().§§slot[9] = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr181);
                        }
                        §§goto(addr296);
                     }
                     §§goto(addr220);
                     §§push(§§pop() + "Z");
                  }
                  §§goto(addr220);
                  §§push(§§newactivation());
                  §§push(Encode.MD5(new Date().time * Math.random() + Log.GUID));
               }
               if(Pool.length > 0)
               {
                  §§goto(addr105);
               }
               else
               {
                  §§push(new PRequest());
               }
               §§goto(addr112);
            }
         }
         §§pop().§§slot[12] = §§pop();
         §§goto(addr60);
         §§push(§§newactivation());
         §§push(null);
      }
      
      public static function Escape(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() == null)
               {
                  if(!_loc3_)
                  {
                     return "";
                  }
                  addr167:
                  §§push(param1.split("$").join("%24"));
                  if(!(_loc3_ && _loc3_))
                  {
                     param1 = §§pop();
                     if(_loc2_ || Boolean(param1))
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr251:
                           §§push(§§pop().split(",").join("%2C"));
                           if(!(_loc3_ && _loc3_))
                           {
                              addr208:
                              param1 = §§pop();
                              addr220:
                              if(!_loc3_)
                              {
                                 §§push(param1);
                              }
                              §§push(param1);
                           }
                           §§push(§§pop().split("<").join("%3C"));
                           if(_loc2_)
                           {
                              param1 = §§pop();
                              addr229:
                              §§push(param1);
                              if(_loc2_)
                              {
                                 param1 = §§pop().split(">").join("%3E");
                                 §§push(param1);
                              }
                           }
                           param1 = §§pop();
                        }
                        §§goto(addr253);
                     }
                     addr252:
                     addr253:
                     return §§pop();
                     §§push(param1);
                  }
                  §§goto(addr251);
                  §§push(§§pop().split("~").join("%7E"));
               }
               else
               {
                  §§push(param1.split("%").join("%25"));
                  if(!(_loc3_ && _loc3_))
                  {
                     param1 = §§pop();
                     §§push(param1.split(";").join("%3B"));
                     if(!_loc3_)
                     {
                        param1 = §§pop();
                        param1 = param1.split("?").join("%3F");
                        if(!_loc3_)
                        {
                           §§push(param1.split("/").join("%2F"));
                           if(_loc3_ && _loc2_)
                           {
                           }
                           addr131:
                           param1 = §§pop().split("&").join("%26");
                           param1 = param1.split("=").join("%3D");
                           if(_loc3_ && Boolean(param1))
                           {
                           }
                           §§goto(addr252);
                        }
                        addr89:
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop().split(":").join("%3A"));
                           if(_loc2_)
                           {
                              param1 = §§pop();
                              if(_loc2_)
                              {
                                 §§push(param1.split("#").join("%23"));
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    param1 = §§pop();
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       §§goto(addr131);
                                       §§push(param1);
                                    }
                                 }
                                 §§goto(addr251);
                              }
                              §§goto(addr220);
                           }
                           addr217:
                           param1 = §§pop();
                           if(_loc2_)
                           {
                              §§goto(addr220);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr251);
                  }
               }
               §§goto(addr217);
               §§push(§§pop().split(" ").join("%20"));
            }
            param1 = §§pop();
            if(_loc2_ || PRequest)
            {
               §§goto(addr89);
            }
            §§goto(addr229);
         }
         §§push(param1.split("+").join("%2B"));
         if(_loc2_ || _loc3_)
         {
            param1 = §§pop();
            if(!_loc3_)
            {
               §§goto(addr167);
            }
            §§goto(addr252);
         }
         §§goto(addr167);
      }
      
      private static function GenerateKey(param1:String, param2:String, param3:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param3);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§pop().sort();
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(param3);
               }
            }
            §§push(param1 + "=");
            if(_loc5_)
            {
               §§push(§§pop() + Encode.MD5(param3.join("&") + param2));
            }
            §§pop().push(§§pop());
         }
      }
      
      private static function TimeoutHandler(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:PRequest = null;
         var _loc3_:* = int(Queue.length - 1);
         while(_loc3_ > -1)
         {
            _loc2_ = Queue[_loc3_];
            if(!_loc7_)
            {
               §§push(_loc2_.handled);
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     var _loc4_:* = _loc2_;
                     §§push(_loc4_.time);
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        _loc4_.time = _loc5_;
                     }
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  addr110:
                  Queue.splice(_loc3_,1);
                  Dispose(_loc2_);
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
                  continue;
                  addr114:
               }
               addr80:
               if(§§pop())
               {
                  if(_loc6_ || PRequest)
                  {
                     _loc2_.complete(false);
                     if(_loc6_ || Boolean(param1))
                     {
                     }
                  }
                  §§goto(addr114);
               }
               else
               {
                  _loc2_.complete(_loc2_.callback,_loc2_.postdata,null,new Response(0,3));
               }
               §§goto(addr110);
            }
            §§push(_loc2_.time);
            if(_loc6_)
            {
               if(§§pop() < 40)
               {
                  if(_loc6_)
                  {
                  }
                  §§goto(addr110);
               }
               else
               {
                  §§goto(addr80);
                  §§push(_loc2_.logging);
               }
            }
            §§goto(addr110);
         }
      }
      
      private static function Complete(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:PRequest = param1.target as PRequest;
         §§push(_loc2_.handled);
         if(!(_loc6_ && PRequest))
         {
            if(§§pop())
            {
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  return;
               }
            }
            else
            {
               _loc2_.handled = true;
               if(_loc2_.complete == null)
               {
                  if(_loc7_)
                  {
                     return;
                  }
               }
               §§push(_loc2_.logging);
            }
            §§goto(addr75);
         }
         if(§§pop())
         {
            if(!(_loc6_ && PRequest))
            {
               _loc2_.complete(true);
               addr75:
               return;
            }
         }
         var _loc3_:XML = XML(_loc2_.data);
         var _loc4_:int = parseInt(_loc3_["status"]);
         var _loc5_:int = parseInt(_loc3_["errorcode"]);
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loc2_.complete(_loc2_.callback,_loc2_.postdata,_loc3_,new Response(_loc4_,_loc5_));
         }
      }
      
      private static function Fail(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:PRequest = param1.target as PRequest;
         §§push(_loc2_.handled);
         if(_loc4_)
         {
            if(§§pop())
            {
               return;
            }
            _loc2_.handled = true;
            if(_loc2_.complete == null)
            {
               if(_loc4_)
               {
                  return;
               }
            }
            else
            {
               §§push(_loc2_.logging);
            }
            §§goto(addr68);
         }
         if(§§pop())
         {
            _loc2_.complete(false);
         }
         else
         {
            _loc2_.complete(_loc2_.callback,_loc2_.postdata,null,new Response(0,1));
         }
         addr68:
      }
      
      private static function HTTPStatusIgnore(param1:Event) : void
      {
      }
      
      private static function Dispose(param1:PRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1.handled)
            {
               if(_loc3_)
               {
                  param1.handled = true;
                  if(!_loc2_)
                  {
                     param1.close();
                     if(_loc3_)
                     {
                     }
                  }
               }
            }
            Pool.push(param1);
         }
      }
   }
}

