package mochi.as3
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Proxy;
   import flash.utils.Timer;
   import flash.utils.flash_proxy;
   
   use namespace flash_proxy;
   
   public dynamic class MochiInventory extends Proxy
   {
      public static const WRITTEN:String = "InvWritten";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IoError";
      
      public static const VALUE_ERROR:String = "InvValueError";
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      
      private static const CONSUMER_KEY:String = "MochiConsumables";
      
      private static const KEY_SALT:String = " syncMaint\x01";
      
      public static const READY:String = "InvReady";
      
      if(_loc2_ || _loc2_)
      {
         WRITTEN = "InvWritten";
         if(!_loc1_)
         {
            ERROR = "Error";
            if(_loc2_)
            {
               IO_ERROR = "IoError";
               if(_loc2_)
               {
                  VALUE_ERROR = "InvValueError";
                  if(_loc1_ && _loc2_)
                  {
                  }
               }
               §§goto(addr76);
            }
         }
      }
      
      public static const NOT_READY:String = "InvNotReady";
      
      private static var _dispatcher:MochiEventDispatcher = new MochiEventDispatcher();
      
      addr76:
      
      private var _timer:Timer;
      
      private var _consumableProperties:Object;
      
      private var _syncPending:Boolean;
      
      private var _outstandingID:Number;
      
      private var _syncID:Number;
      
      private var _names:Array;
      
      private var _storeSync:Object;
      
      public function MochiInventory()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc2_)
            {
               MochiCoins.addEventListener(MochiCoins.ITEM_OWNED,this.itemOwned);
               MochiCoins.addEventListener(MochiCoins.ITEM_NEW,this.newItems);
               MochiSocial.addEventListener(MochiSocial.LOGGED_IN,this.loggedIn);
               if(!(_loc1_ && _loc2_))
               {
                  MochiSocial.addEventListener(MochiSocial.LOGGED_OUT,this.loggedOut);
                  if(_loc2_ || Boolean(this))
                  {
                     this._storeSync = new Object();
                  }
                  §§goto(addr104);
               }
               this._syncPending = false;
               this._outstandingID = 0;
               if(!_loc1_)
               {
                  this._syncID = 0;
                  this._timer = new Timer(1000);
                  if(!_loc1_)
                  {
                     this._timer.addEventListener(TimerEvent.TIMER,this.sync);
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr126);
         }
         if(MochiSocial.loggedIn)
         {
            if(_loc2_ || _loc1_)
            {
               addr126:
               this.loggedIn();
               if(_loc2_)
               {
               }
               §§goto(addr104);
            }
         }
         else
         {
            this.loggedOut();
         }
         addr104:
         this._timer.start();
         if(_loc2_)
         {
         }
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function triggerEvent(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            _dispatcher.triggerEvent(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
      
      public function release() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            MochiCoins.removeEventListener(MochiCoins.ITEM_NEW,this.newItems);
            if(_loc1_)
            {
               MochiSocial.removeEventListener(MochiSocial.LOGGED_IN,this.loggedIn);
               if(!_loc2_)
               {
                  MochiSocial.removeEventListener(MochiSocial.LOGGED_OUT,this.loggedOut);
               }
            }
         }
      }
      
      private function loggedOut(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this._consumableProperties = null;
         }
      }
      
      private function loggedIn(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            MochiUserData.get(CONSUMER_KEY,this.getConsumableBag);
         }
      }
      
      private function newItems(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this[param1.id + KEY_SALT])
            {
               if(!_loc3_)
               {
                  this[param1.id + KEY_SALT] = 0;
               }
               §§goto(addr153);
            }
            if(this[param1.id])
            {
            }
            addr53:
            this[param1.id + KEY_SALT] += param1.count;
            if(!_loc3_)
            {
               this[param1.id] += param1.count;
               if(_loc2_ || _loc2_)
               {
                  §§push(Boolean(param1.privateProperties));
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr109);
                  }
                  §§pop();
                  addr109:
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!this[param1.privateProperties.tag])
                        {
                           this[param1.privateProperties.tag] = 0;
                        }
                     }
                  }
                  addr153:
                  return;
                  §§push(Boolean(param1.privateProperties.consumable));
               }
            }
            this[param1.privateProperties.tag] += param1.privateProperties.inc * param1.count;
            §§goto(addr153);
         }
         this[param1.id] = 0;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§goto(addr53);
         }
         §§goto(addr153);
      }
      
      private function itemOwned(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this._storeSync[param1.id] = {
               "properties":param1.properties,
               "count":param1.count
            };
         }
      }
      
      private function getConsumableBag(param1:MochiUserData) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:* = NaN;
         if(_loc7_)
         {
            if(param1.error)
            {
               if(_loc7_ || Boolean(this))
               {
                  triggerEvent(ERROR,{
                     "type":IO_ERROR,
                     "error":param1.error
                  });
                  return;
               }
               §§goto(addr55);
            }
            else
            {
               this._consumableProperties = {};
               this._names = new Array();
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  addr55:
                  if(!param1.data)
                  {
                  }
                  §§goto(addr123);
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = param1.data;
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextname(_loc4_,_loc5_);
                  if(_loc7_ || Boolean(this))
                  {
                     this._names.push(_loc2_);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        this._consumableProperties[_loc2_] = new MochiDigits(param1.data[_loc2_]);
                     }
                  }
                  continue;
               }
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        addr123:
                        _loc4_ = 0;
                        if(_loc7_)
                        {
                           addr127:
                           _loc5_ = this._storeSync;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc5_,_loc4_));
                              addr211:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    break loop0;
                                 }
                                 _loc2_ = §§nextname(_loc4_,_loc5_);
                                 §§push(Number(this._storeSync[_loc2_].count));
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    _loc3_ = §§pop();
                                    if(this._consumableProperties[_loc2_ + KEY_SALT])
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_ && Boolean(param1))
                                       {
                                       }
                                       addr194:
                                       if(§§pop() != 0)
                                       {
                                          this.newItems({
                                             "id":_loc2_,
                                             "count":_loc3_,
                                             "properties":this._storeSync[_loc2_].properties
                                          });
                                       }
                                       else
                                       {
                                          addr196:
                                       }
                                       continue;
                                    }
                                    addr193:
                                    §§goto(addr194);
                                    §§push(_loc3_);
                                 }
                                 §§push(§§pop() - this._consumableProperties[_loc2_ + KEY_SALT].value);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                    }
                                    §§goto(addr194);
                                 }
                                 _loc3_ = §§pop();
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr193);
                                 }
                                 §§goto(addr196);
                                 continue loop0;
                              }
                           }
                        }
                        if(!(_loc6_ && Boolean(this)))
                        {
                           addr228:
                           triggerEvent(READY,{});
                        }
                        return;
                     }
                     §§goto(addr228);
                  }
               }
               §§goto(addr127);
            }
            break;
         }
         §§goto(addr211);
      }
      
      private function putConsumableBag(param1:MochiUserData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._syncPending = false;
            if(_loc2_)
            {
               if(param1.error)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     triggerEvent(ERROR,{
                        "type":IO_ERROR,
                        "error":param1.error
                     });
                     if(_loc2_)
                     {
                     }
                  }
               }
            }
            this._outstandingID = -1;
            if(_loc3_)
            {
            }
            §§goto(addr64);
         }
         triggerEvent(WRITTEN,{});
         addr64:
      }
      
      private function sync(param1:Event = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         if(!_loc6_)
         {
            §§push(this._syncPending);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                     }
                  }
               }
               §§goto(addr38);
            }
            §§pop();
            if(_loc7_)
            {
            }
            §§goto(addr46);
         }
         addr38:
         if(§§pop())
         {
            if(_loc7_ || _loc2_)
            {
               addr46:
               return;
            }
         }
         else
         {
            this._outstandingID = this._syncID;
         }
         var _loc2_:Object = {};
         for(_loc3_ in this._consumableProperties)
         {
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               _loc2_[_loc3_] = MochiDigits(this._consumableProperties[_loc3_]).value;
            }
         }
         if(_loc7_ || Boolean(_loc2_))
         {
            MochiUserData.put(CONSUMER_KEY,_loc2_,this.putConsumableBag);
            if(_loc7_)
            {
            }
            §§goto(addr122);
         }
         this._syncPending = true;
         addr122:
         this._syncID == this._outstandingID;
      }
      
      override flash_proxy function getProperty(param1:*) : *
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this._consumableProperties == null)
            {
               if(!(_loc3_ && param1))
               {
                  triggerEvent(ERROR,{"type":NOT_READY});
                  if(!_loc3_)
                  {
                     return -1;
                  }
                  §§goto(addr64);
               }
            }
            else if(this._consumableProperties[param1])
            {
               if(!(_loc3_ && param1))
               {
                  addr64:
                  return MochiDigits(this._consumableProperties[param1]).value;
               }
            }
         }
         return undefined;
      }
      
      override flash_proxy function deleteProperty(param1:*) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this._consumableProperties[param1])
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  addr73:
                  §§pop();
               }
               else
               {
                  addr55:
                  §§push(delete this._consumableProperties[param1]);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr75);
            }
            addr74:
            addr75:
            return §§pop();
            §§push(true);
         }
         this._names.splice(this._names.indexOf(param1),1);
         if(_loc2_)
         {
            §§goto(addr55);
         }
         §§goto(addr74);
      }
      
      override flash_proxy function hasProperty(param1:*) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this._consumableProperties == null)
            {
               if(!(_loc3_ && param1))
               {
                  triggerEvent(ERROR,{"type":NOT_READY});
                  if(!(_loc3_ && param1))
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  §§goto(addr72);
               }
            }
            else if(this._consumableProperties[param1] == undefined)
            {
               if(_loc2_)
               {
                  §§push(false);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               §§goto(addr72);
            }
         }
         addr72:
         true;
         return §§pop();
      }
      
      override flash_proxy function setProperty(param1:*, param2:*) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:MochiDigits = null;
         if(_loc7_)
         {
            if(this._consumableProperties == null)
            {
               if(!_loc6_)
               {
                  triggerEvent(ERROR,{"type":NOT_READY});
                  if(!(_loc6_ && Boolean(this)))
                  {
                     return;
                  }
               }
               §§goto(addr60);
            }
            else if(param2 is Number)
            {
               if(this._consumableProperties[param1])
               {
                  _loc3_ = MochiDigits(this._consumableProperties[param1]);
                  if(_loc7_)
                  {
                     if(_loc3_.value == param2)
                     {
                        if(!_loc6_)
                        {
                           return;
                        }
                     }
                  }
                  _loc3_.value = param2;
                  if(_loc6_ && Boolean(_loc3_))
                  {
                  }
                  §§goto(addr148);
               }
               else
               {
                  this._names.push(param1);
                  this._consumableProperties[param1] = new MochiDigits(param2);
               }
            }
            triggerEvent(ERROR,{
               "type":VALUE_ERROR,
               "error":"Invalid type",
               "arg":param2
            });
            addr60:
            return;
         }
         var _loc4_:* = this;
         §§push(_loc4_._syncID);
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(§§pop() + 1);
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            _loc4_._syncID = _loc5_;
         }
         addr148:
      }
      
      override flash_proxy function nextNameIndex(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop() < this._names.length)
               {
                  §§push(param1);
                  if(_loc3_ || Boolean(this))
                  {
                  }
               }
               §§goto(addr62);
            }
            addr62:
            return §§pop();
            §§push(int(§§pop() + 1));
         }
         §§push(0);
         if(_loc3_ || _loc3_)
         {
         }
         §§goto(addr62);
      }
      
      override flash_proxy function nextName(param1:int) : String
      {
         return this._names[param1 - 1];
      }
   }
}

