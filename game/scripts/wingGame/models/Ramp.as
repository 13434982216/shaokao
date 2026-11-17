package wingGame.models
{
   public class Ramp
   {
      public var x1:Number;
      
      public var x2:Number;
      
      public var y1:Number;
      
      public var y2:Number;
      
      public var decay:Number;
      
      public var isFloating:Boolean;
      
      public function Ramp(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         super();
         this.x1 = param1;
         this.y1 = param2;
         this.x2 = param3;
         this.y2 = param4;
         if(!(_loc8_ && Boolean(param1)))
         {
            this.decay = param5;
            this.isFloating = param6;
         }
      }
      
      public function getSlope() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.y2);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop() - this.y1);
            if(_loc5_ || _loc1_)
            {
            }
            addr34:
            var _loc1_:* = §§pop();
            §§push(this.x2);
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop() - this.x1);
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
            }
            var _loc2_:* = §§pop();
            §§push(_loc1_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() / _loc2_);
               if(_loc5_)
               {
               }
               addr71:
               var _loc3_:* = §§pop();
               if(_loc5_ || Boolean(this))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() == Number.POSITIVE_INFINITY)
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(1000000);
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                              }
                           }
                           addr128:
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              _loc3_ = §§pop();
                           }
                        }
                        addr132:
                        §§push(_loc3_);
                     }
                     else
                     {
                        §§push(_loc3_);
                        if(_loc5_ || _loc1_)
                        {
                           if(§§pop() == Number.NEGATIVE_INFINITY)
                           {
                              if(_loc5_)
                              {
                                 addr127:
                                 §§goto(addr128);
                                 §§push(-1000000);
                              }
                           }
                           §§goto(addr132);
                        }
                     }
                     §§goto(addr133);
                  }
                  _loc3_ = §§pop();
                  if(!(_loc5_ || _loc3_))
                  {
                     §§goto(addr127);
                  }
                  addr133:
                  return §§pop();
               }
               §§goto(addr132);
            }
            §§goto(addr71);
            §§push(§§pop());
         }
         §§goto(addr34);
         §§push(§§pop());
      }
      
      public function getIntercept() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.y1);
         if(_loc1_ || Boolean(this))
         {
            §§push(this.getSlope());
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§pop() * this.x1);
            }
            §§push(§§pop() - §§pop());
         }
         return §§pop();
      }
      
      public function getAngle() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.y2);
         if(_loc3_ || Boolean(this))
         {
            §§push(§§pop() - this.y1);
            if(_loc3_ || _loc2_)
            {
            }
            addr40:
            var _loc1_:* = §§pop();
            §§push(this.x2);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() - this.x1);
               if(_loc4_)
               {
               }
               §§goto(addr63);
            }
            addr63:
            var _loc2_:* = §§pop();
            return Math.atan2(_loc1_,_loc2_);
            §§push(§§pop());
         }
         §§goto(addr40);
         §§push(§§pop());
      }
      
      public function getLeftY() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.x1);
            if(!_loc2_)
            {
               if(§§pop() < this.x2)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(this.y1);
                     if(_loc2_ && Boolean(this))
                     {
                     }
                  }
                  §§goto(addr60);
               }
            }
            return §§pop();
         }
         addr60:
         this.y2;
         return §§pop();
      }
      
      public function getRightY() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§goto(addr58);
         }
         §§push(this.y1);
         if(_loc2_ || _loc2_)
         {
            addr58:
            §§push(this.x1);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop() > this.x2)
               {
                  if(_loc1_)
                  {
                  }
                  §§goto(addr61);
               }
               addr61:
               return §§pop();
               return this.y2;
            }
         }
         §§goto(addr61);
      }
      
      public function getLeftX() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.x1);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() < this.x2)
               {
                  if(!_loc1_)
                  {
                     §§push(this.x1);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
               }
            }
            §§goto(addr51);
         }
         addr51:
         this.x2;
         return §§pop();
      }
      
      public function getRightX() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.x1);
            if(!_loc2_)
            {
               if(§§pop() > this.x2)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this.x1);
                     if(_loc1_ || Boolean(this))
                     {
                        return §§pop();
                     }
                  }
               }
            }
            §§goto(addr60);
         }
         addr60:
         this.x2;
         return §§pop();
      }
   }
}

