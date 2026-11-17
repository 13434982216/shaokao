package mochi.as3
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.ObjectEncoding;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   
   public class MochiUserData extends EventDispatcher
   {
      public var _loader:URLLoader;
      
      public var key:String = null;
      
      public var data:* = null;
      
      public var error:Event = null;
      
      public var operation:String = null;
      
      public var callback:Function = null;
      
      public function MochiUserData(param1:String = "", param2:Function = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this.key = param1;
               if(_loc3_ && _loc3_)
               {
               }
            }
            §§goto(addr47);
         }
         this.callback = param2;
         addr47:
      }
      
      public static function get(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MochiUserData = new MochiUserData(param1,param2);
         if(_loc4_)
         {
            _loc3_.getEvent();
         }
      }
      
      public static function put(param1:String, param2:*, param3:Function) : void
      {
         var _loc4_:MochiUserData = new MochiUserData(param1,param3);
         _loc4_.putEvent(param2);
      }
      
      public function serialize(param1:*) : ByteArray
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc3_)
         {
            _loc2_.objectEncoding = ObjectEncoding.AMF3;
            if(_loc4_)
            {
               _loc2_.writeObject(param1);
               if(_loc3_)
               {
               }
            }
            §§goto(addr47);
         }
         _loc2_.compress();
         addr47:
         return _loc2_;
      }
      
      public function deserialize(param1:ByteArray) : *
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1.objectEncoding = ObjectEncoding.AMF3;
            if(_loc2_ && _loc3_)
            {
            }
            §§goto(addr48);
         }
         param1.uncompress();
         addr48:
         return param1.readObject();
      }
      
      public function request(param1:String, param2:ByteArray) : void
      {
         var _operation:String;
         var _data:ByteArray;
         var api_url:String;
         var api_token:String;
         var args:URLVariables;
         var req:URLRequest;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         §§push(param1);
         if(!_loc5_)
         {
            §§pop().§§slot[1] = §§pop();
            if(_loc6_ || _loc3_)
            {
               _data = param2;
               this.operation = _operation;
               §§push(§§newactivation());
               if(_loc6_ || _loc3_)
               {
                  §§push(MochiSocial.getAPIURL());
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc6_ || Boolean(this))
                     {
                     }
                  }
                  addr78:
                  §§pop().§§slot[4] = §§pop();
                  §§push(§§newactivation());
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     §§push(§§pop().§§slot[3]);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§push(null);
                        if(!_loc5_)
                        {
                           §§goto(addr120);
                        }
                        addr119:
                        addr120:
                        §§push(§§pop() == §§pop());
                        if(_loc6_ || Boolean(param2))
                        {
                           if(!§§pop())
                           {
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§pop();
                                 §§push(api_token);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              this.errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"not logged in"));
                              if(_loc5_)
                              {
                                 addr197:
                                 req.method = URLRequestMethod.POST;
                                 req.contentType = "application/x-mochi-userdata";
                                 addr206:
                                 req.requestHeaders = [new URLRequestHeader("x-mochi-services-version",MochiServices.getVersion()),new URLRequestHeader("x-mochi-api-token",api_token)];
                                 addr196:
                              }
                           }
                           else
                           {
                              addr153:
                              §§push(§§newactivation());
                           }
                           addr219:
                           req.data = _data;
                           if(!_loc5_)
                           {
                              this._loader.dataFormat = URLLoaderDataFormat.BINARY;
                              this._loader.addEventListener(Event.COMPLETE,this.completeHandler);
                              addr238:
                              this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
                              this._loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
                           }
                        }
                        else
                        {
                           this._loader = new URLLoader();
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§goto(addr153);
                           }
                        }
                        try
                        {
                           addr252:
                           this._loader.load(req);
                        }
                        catch(e:SecurityError)
                        {
                           errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"security error: " + e.toString()));
                        }
                        return;
                        §§push(§§pop() == §§pop());
                     }
                     §§goto(addr119);
                     §§push(null);
                  }
                  §§pop().§§slot[5] = new URLVariables();
                  if(!_loc5_)
                  {
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        §§pop().§§slot[5].op = _operation;
                        if(_loc6_ || _loc3_)
                        {
                           args.key = this.key;
                           §§push(§§newactivation());
                        }
                        §§goto(addr252);
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr219);
               }
               §§pop().§§slot[6] = new URLRequest(MochiSocial.getAPIURL() + "/" + "MochiUserData?" + args.toString());
               if(!_loc5_)
               {
                  §§goto(addr196);
               }
               §§goto(addr206);
            }
            return;
         }
         §§pop().§§slot[3] = §§pop();
         if(_loc6_)
         {
            §§push(§§newactivation());
            if(_loc6_)
            {
               §§push(MochiSocial.getAPIToken());
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop());
               }
               §§goto(addr78);
            }
            §§goto(addr197);
         }
         §§goto(addr238);
      }
      
      public function completeHandler(param1:Event) : void
      {
         var event:Event;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         event = param1;
         try
         {
            if(this._loader.data.length)
            {
               if(_loc4_)
               {
                  this.data = this.deserialize(this._loader.data);
                  if(this.callback != null)
                  {
                     if(_loc4_)
                     {
                        this.performCallback();
                     }
                     addr102:
                     this.close();
                  }
                  else
                  {
                     dispatchEvent(event);
                     if(!_loc5_)
                     {
                        §§goto(addr102);
                     }
                  }
                  addr52:
               }
            }
            else
            {
               this.data = null;
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr52);
               }
            }
         }
         catch(e:Error)
         {
            errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"deserialize error: " + e.toString()));
            return;
         }
      }
      
      public function errorHandler(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.data = null;
            this.error = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.callback != null)
               {
                  if(_loc2_)
                  {
                     this.performCallback();
                  }
               }
               else
               {
                  dispatchEvent(param1);
                  if(_loc2_ || Boolean(this))
                  {
                  }
               }
               §§goto(addr63);
            }
         }
         this.close();
         addr63:
      }
      
      public function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.errorHandler(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"security error: " + param1.toString()));
         }
      }
      
      public function performCallback() : void
      {
         try
         {
            this.callback(this);
         }
         catch(e:Error)
         {
            trace("[MochiUserData] exception during callback: " + e);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this._loader)
         {
            if(!_loc2_)
            {
               this._loader.removeEventListener(Event.COMPLETE,this.completeHandler);
               if(!_loc2_)
               {
                  this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
                     this._loader.close();
                  }
               }
            }
            this._loader = null;
            if(_loc1_ || _loc1_)
            {
            }
            §§goto(addr80);
         }
         this.error = null;
         if(!_loc2_)
         {
            §§goto(addr80);
         }
         addr80:
         this.callback = null;
      }
      
      public function getEvent() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.request("get",this.serialize(null));
         }
      }
      
      public function putEvent(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.request("put",this.serialize(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[MochiUserData operation=" + this.operation + " key=\"" + this.key);
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop() + "\" data=" + this.data);
         }
         §§push(§§pop() + " error=\"");
         if(_loc1_ || Boolean(this))
         {
            §§push(§§pop() + this.error);
         }
         return §§pop() + "\"]";
      }
   }
}

