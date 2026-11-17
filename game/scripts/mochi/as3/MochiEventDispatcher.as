package mochi.as3
{
   public class MochiEventDispatcher
   {
      private var eventTable:Object;
      
      public function MochiEventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            if(!_loc2_)
            {
               this.eventTable = {};
            }
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.removeEventListener(param1,param2);
            if(_loc3_)
            {
            }
            §§goto(addr47);
         }
         this.eventTable[param1].push(param2);
         addr47:
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            if(this.eventTable[param1] == undefined)
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  this.eventTable[param1] = [];
                  if(_loc7_)
                  {
                  }
               }
            }
            for(_loc3_ in this.eventTable[param1])
            {
               if(_loc7_ || Boolean(param2))
               {
                  if(this.eventTable[param1][_loc3_] != param2)
                  {
                     if(_loc6_ && Boolean(_loc3_))
                     {
                     }
                  }
                  else
                  {
                     this.eventTable[param1].splice(Number(_loc3_),1);
                  }
               }
            }
            return;
         }
      }
      
      public function triggerEvent(param1:String, param2:Object) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         if(!_loc8_)
         {
            if(this.eventTable[param1] == undefined)
            {
               if(_loc7_ || Boolean(_loc3_))
               {
               }
            }
            for(_loc3_ in this.eventTable[param1])
            {
               if(_loc7_)
               {
                  this.eventTable[param1][_loc3_](param2);
               }
            }
            return;
         }
      }
   }
}

