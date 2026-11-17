package mochi.as3
{
   public final class MochiDigits
   {
      private var Fragment:Number;
      
      private var Sibling:MochiDigits;
      
      private var Encoder:Number;
      
      public function MochiDigits(param1:Number = 0, param2:uint = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               this.Encoder = 0;
               if(_loc4_)
               {
               }
               §§goto(addr36);
            }
         }
         this.setValue(param1,param2);
         addr36:
      }
      
      public function get value() : Number
      {
         return Number(this.toString());
      }
      
      public function set value(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.setValue(param1);
         }
      }
      
      public function addValue(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.value);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().value = §§pop();
         }
      }
      
      public function setValue(param1:Number = 0, param2:uint = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:String = param1.toString();
         if(_loc5_ || Boolean(_loc3_))
         {
            §§push(this);
            §§push(_loc3_);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!(_loc4_ && Boolean(param2)))
               {
                  §§push(§§pop() + 1);
               }
               param2 = §§pop();
            }
            §§pop().Fragment = §§pop().charCodeAt(§§pop()) ^ this.Encoder;
            if(_loc5_ || Boolean(param2))
            {
            }
            §§goto(addr100);
         }
         if(param2 < _loc3_.length)
         {
            if(_loc5_ || Boolean(_loc3_))
            {
               this.Sibling = new MochiDigits(param1,param2);
               if(_loc5_)
               {
                  addr98:
                  this.reencode();
               }
            }
         }
         else
         {
            this.Sibling = null;
            if(!(_loc4_ && Boolean(this)))
            {
               §§goto(addr98);
            }
         }
         addr100:
      }
      
      public function reencode() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:uint = uint(int(2147483647 * Math.random()));
         if(!(_loc2_ && _loc3_))
         {
            this.Fragment ^= _loc1_ ^ this.Encoder;
            if(_loc3_ || Boolean(_loc1_))
            {
            }
            §§goto(addr62);
         }
         this.Encoder = _loc1_;
         addr62:
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = String.fromCharCode(this.Fragment ^ this.Encoder);
         if(!_loc2_)
         {
            if(this.Sibling != null)
            {
               if(_loc3_)
               {
               }
            }
            §§goto(addr57);
         }
         §§push(_loc1_);
         if(_loc3_)
         {
            §§push(§§pop() + this.Sibling.toString());
            if(_loc3_)
            {
            }
            §§goto(addr57);
         }
         _loc1_ = §§pop();
         addr57:
         return _loc1_;
      }
   }
}

