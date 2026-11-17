package Playtomic
{
   internal final class LogRequest
   {
      private static var Pool:Array;
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      if(!(_loc1_ && _loc1_))
      {
         Pool = new Array();
      }
      
      private var _data:String = "";
      
      private var _hasView:Boolean = false;
      
      private var _hasPlay:Boolean = false;
      
      internal var ready:Boolean = false;
      
      public function LogRequest()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      internal static function Create() : LogRequest
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Pool);
            if(_loc2_)
            {
               §§goto(addr38);
            }
            addr23:
            addr38:
            if(§§pop().length <= 0)
            {
               §§push(new LogRequest());
            }
            var _loc1_:LogRequest = §§pop();
            if(_loc2_)
            {
               _loc1_._data = "";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_._hasView = false;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr72);
               }
            }
            _loc1_._hasPlay = false;
            if(_loc2_)
            {
               _loc1_.ready = false;
            }
            addr72:
            return _loc1_;
            §§push(§§pop().pop() as LogRequest);
         }
         §§goto(addr23);
         §§push(Pool);
      }
      
      internal function MassQueue(param1:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LogRequest = null;
         var _loc2_:* = int(param1.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() <= -1)
               {
                  Log.LogQueue = this;
                  return;
               }
               this.Queue(param1[_loc2_]);
               param1.splice(_loc2_,1);
               if(this.ready)
               {
                  this.Send();
                  _loc3_ = Create();
                  if(!_loc4_)
                  {
                     _loc3_.MassQueue(param1);
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        break;
                     }
                  }
                  break;
               }
               §§push(_loc2_);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            return;
            _loc2_ = §§pop();
         }
      }
      
      internal function Queue(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this._data);
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr36);
            }
            addr36:
            if(this._data != "")
            {
               §§push("~");
            }
            §§pop()._data = §§pop() + (§§pop() + param1);
            §§push(this._data);
            if(_loc3_)
            {
               if(§§pop().indexOf("v/") > -1)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     this._hasView = true;
                  }
                  §§goto(addr98);
               }
            }
            if(§§pop().length > 300)
            {
               this.ready = true;
            }
            addr98:
            return;
            §§push("");
         }
         §§push(this._data);
         if(!(_loc2_ && Boolean(param1)))
         {
            if(§§pop().indexOf("p/") > -1)
            {
               if(_loc3_)
               {
                  this._hasPlay = true;
               }
               §§goto(addr98);
            }
            §§push(this._data);
         }
         §§goto(addr36);
      }
      
      public function Send() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this._data == "")
            {
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
            else
            {
               PRequest.SendStatistics(this.Complete,"/tracker/q.aspx?q=" + this._data + "&url=" + (this._hasView ? Log.SourceUrl : Log.BaseUrl));
            }
         }
      }
      
      private function Complete(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr75);
            }
            if(§§pop())
            {
               Log.IncreaseViews();
            }
            §§goto(addr56);
         }
         Log.IncreasePlays();
         addr75:
         if(§§pop())
         {
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._hasView);
               if(_loc2_ && _loc2_)
               {
               }
               addr58:
               if(§§pop())
               {
                  if(_loc2_ && Boolean(this))
                  {
                  }
               }
            }
            addr56:
            §§goto(addr58);
            §§push(this._hasPlay);
         }
         Pool.push(this);
      }
   }
}

