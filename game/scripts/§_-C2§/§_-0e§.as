package §_-C2§
{
   public class §_-0e§
   {
      public static const §_-9S§:uint = 1;
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      if(_loc2_ || _loc2_)
      {
         §_-9S§ = 1;
      }
      
      public function §_-0e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || Boolean(param3))
         {
            §§push(param1);
            if(_loc7_ || Boolean(param1))
            {
               §§push(param4);
               if(_loc7_ || Boolean(param1))
               {
                  §§push(§§pop() / §§pop());
                  if(_loc7_)
                  {
                  }
                  addr76:
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || Boolean(param2))
                  {
                  }
                  §§goto(addr93);
               }
               addr49:
               var _loc5_:* = §§pop();
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc7_ || Boolean(param3))
                  {
                     param1 = §§pop();
                     §§push(_loc5_);
                  }
               }
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     §§push(param1);
                     if(_loc6_ && §_-0e§)
                     {
                     }
                     addr92:
                     §§push(§§pop() + §§pop());
                  }
                  addr93:
                  return §§pop();
               }
               §§goto(addr76);
            }
            §§goto(addr49);
            §§push(§§pop());
         }
         §§goto(addr92);
         §§push(param2);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!(_loc6_ && Boolean(param3)))
         {
            §§push(-§§pop());
            if(_loc7_ || Boolean(param3))
            {
               §§push(param1);
               if(!(_loc6_ && Boolean(param3)))
               {
                  §§push(param4);
                  if(_loc7_)
                  {
                     addr68:
                     §§push(§§pop() / §§pop());
                     if(!(_loc6_ && §_-0e§))
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && Boolean(param3)))
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                        }
                        addr88:
                        §§push(§§pop() * §§pop());
                        if(_loc6_ && §_-0e§)
                        {
                        }
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc7_)
                     {
                     }
                     addr65:
                     if(!_loc6_)
                     {
                        §§goto(addr68);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  param1 = §§pop();
                  §§goto(addr65);
                  §§push(_loc5_);
               }
               §§push(§§pop() - 2);
               if(_loc7_ || Boolean(param1))
               {
                  §§goto(addr88);
               }
               §§goto(addr65);
            }
            return §§pop();
         }
         §§goto(addr65);
         §§push(param2);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            §§push(param4);
            §§push(0.5);
            if(_loc6_ || Boolean(param2))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§push(§§pop() / §§pop());
                  §§push(§§pop() / §§pop());
                  if(_loc6_)
                  {
                     var _loc5_:* = §§pop();
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                     }
                     if(_loc6_ || Boolean(param3))
                     {
                        if(§§pop() < 1)
                        {
                           if(!_loc7_)
                           {
                              §§push(param3);
                              if(_loc7_)
                              {
                              }
                              §§goto(addr154);
                           }
                           addr112:
                           §§push(param1);
                           if(_loc6_ || Boolean(param3))
                           {
                              addr120:
                              §§push(§§pop() - 1);
                              §§push(§§pop() - 1);
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_ || Boolean(param3))
                                 {
                                 }
                                 addr145:
                                 §§push(§§pop() * §§pop() - 1);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc7_)
                                    {
                                       addr152:
                                       §§push(param2);
                                    }
                                    §§goto(addr154);
                                 }
                                 addr154:
                                 return §§pop();
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           §§push(param1);
                           if(!_loc7_)
                           {
                              §§push(§§pop() - 2);
                           }
                           §§goto(addr145);
                        }
                     }
                     addr66:
                     §§push(§§pop() * 0.5);
                     if(!_loc7_)
                     {
                        §§push(param1);
                     }
                     §§push(§§pop() * param1);
                     if(_loc6_ || Boolean(param3))
                     {
                        §§push(param2);
                        if(_loc6_ || Boolean(param2))
                        {
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr66);
                  §§push(§§pop() * §§pop());
               }
               §§push(§§pop() + §§pop());
               if(_loc6_)
               {
                  return §§pop();
               }
               addr103:
               §§push(§§pop() * 0.5);
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§goto(addr112);
               }
               §§goto(addr152);
            }
            param1 = §§pop();
            §§goto(addr112);
         }
         §§push(-param3);
         if(_loc6_ || Boolean(param1))
         {
            §§goto(addr103);
         }
         §§goto(addr112);
      }
   }
}

