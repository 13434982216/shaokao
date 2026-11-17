package wingGame.data
{
   public class CustomerOrder
   {
      public var wings:Array;
      
      public var sides:Array;
      
      public var dips:Array;
      
      public function CustomerOrder()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.wings = [];
            if(!_loc1_)
            {
               this.sides = [];
               if(_loc2_ || Boolean(this))
               {
                  this.dips = [];
                  if(_loc1_)
                  {
                  }
               }
               super();
            }
         }
      }
      
      public function getOrderAsArray() : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc1_:CustomerOrder = this;
         var _loc2_:Array = [];
         if(_loc4_)
         {
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(_loc1_.wings);
               if(!_loc5_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr149:
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                 }
                                 break;
                                 _loc3_ = §§pop();
                              }
                              addr108:
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 _loc3_ = §§pop();
                                 addr165:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                 }
                                 addr165:
                              }
                              addr166:
                              while(true)
                              {
                                 §§push(_loc1_.dips);
                                 break loop1;
                              }
                           }
                           addr149:
                        }
                        addr125:
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr133:
                           _loc3_ = §§pop();
                           §§goto(addr165);
                        }
                        while(true)
                        {
                           §§goto(addr149);
                        }
                        addr148:
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           §§goto(addr148);
                        }
                        §§goto(addr166);
                     }
                     addr145:
                  }
                  else
                  {
                     _loc2_.push([_loc1_.wings[_loc3_][0]]);
                     _loc2_.push([_loc1_.wings[_loc3_][3]]);
                     §§push(_loc3_);
                     if(_loc4_)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc1_.sides);
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr125);
                              §§push(0);
                           }
                           §§goto(addr165);
                        }
                        else
                        {
                           _loc2_.push([_loc1_.sides[_loc3_][0]]);
                           §§push(_loc3_);
                           if(!(_loc4_ || Boolean(this)))
                           {
                              continue;
                           }
                           §§push(§§pop() + 1);
                           if(_loc4_)
                           {
                              §§push(§§pop());
                              if(_loc5_ && Boolean(_loc1_))
                              {
                                 §§goto(addr133);
                              }
                              §§goto(addr165);
                           }
                           _loc3_ = §§pop();
                           §§goto(addr108);
                        }
                     }
                     break loop1;
                  }
               }
               break;
            }
            while(§§pop() < §§pop().length)
            {
               _loc2_.push([_loc1_.dips[_loc3_][0]]);
               §§goto(addr145);
            }
            return _loc2_;
            _loc3_ = §§pop();
         }
      }
      
      public function addWings(param1:String, param2:String, param3:Number, param4:String = "distroall") : void
      {
         var _loc5_:CustomerOrder = this;
         _loc5_.wings.push([param1,param3,param4,param2]);
      }
      
      public function addSide(param1:String, param2:Number, param3:String = "distroall") : void
      {
         var _loc4_:CustomerOrder = this;
         _loc4_.sides.push([param1,param2,param3]);
      }
      
      public function addDip(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CustomerOrder = this;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.dips.push([param1]);
         }
      }
      
      public function getAmountForDistro(param1:String, param2:Boolean = false) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = 0;
         var _loc3_:CustomerOrder = this;
         var _loc4_:* = 0;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loc5_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc6_ && Boolean(param1)))
            {
               §§push(_loc3_.wings);
               if(_loc7_ || Boolean(param1))
               {
                  if(§§pop() >= §§pop().length)
                  {
                     §§push(0);
                     if(_loc7_)
                     {
                        _loc5_ = §§pop();
                     }
                     break;
                  }
                  §§push(_loc3_.wings);
                  if(!_loc6_)
                  {
                     §§push(_loc5_);
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        if(§§pop()[§§pop()][2] == param1)
                        {
                           if(_loc7_ || param2)
                           {
                              _loc4_ += Number(_loc3_.wings[_loc5_][1]);
                           }
                        }
                        else
                        {
                           §§push(param2);
                           §§push(param2);
                           if(_loc7_ || Boolean(this))
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc3_.wings);
                                    if(_loc6_)
                                    {
                                    }
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          if(§§pop()[§§pop()][2] == param1)
                                          {
                                             addr248:
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_);
                                                while(true)
                                                {
                                                   §§push(§§pop() + Number(_loc3_.sides[_loc5_][1]));
                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                         }
                                                      }
                                                      addr197:
                                                   }
                                                   addr219:
                                                   while(true)
                                                   {
                                                      §§push(Number(_loc3_.sides[_loc5_][1]) / 2);
                                                      addr229:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               _loc4_ = §§pop();
                                                            }
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                   }
                                                }
                                                addr180:
                                             }
                                             while(true)
                                             {
                                                _loc5_++;
                                             }
                                             addr255:
                                             return §§pop();
                                             addr248:
                                          }
                                          else
                                          {
                                             §§push(param2);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop());
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             addr207:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_.sides);
                                             addr210:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                             }
                                          }
                                       }
                                    }
                                    addr164:
                                 }
                              }
                              addr99:
                              if(§§pop())
                              {
                                 §§push(_loc4_);
                                 if(_loc7_)
                                 {
                                    §§push(Number(_loc3_.wings[_loc5_][1]) / 2);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc6_ && param2)
                                          {
                                             §§goto(addr248);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr180);
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr207);
                              }
                              addr217:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr219);
                                    §§push(_loc4_);
                                 }
                                 §§goto(addr248);
                              }
                           }
                        }
                        _loc5_++;
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr217);
                     }
                     addr211:
                  }
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     §§goto(addr99);
                     §§push(§§pop()[§§pop()][2] == FoodData.DISTRO_ALL);
                  }
                  §§goto(addr211);
                  while(true)
                  {
                     §§push(_loc5_);
                     break loop0;
                     _loc5_++;
                  }
               }
               while(true)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     §§push(_loc4_);
                  }
                  else
                  {
                     §§push(_loc3_.sides);
                     if(!_loc6_)
                     {
                        §§goto(addr164);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr255);
               }
               addr252:
            }
            break;
         }
         while(true)
         {
            §§goto(addr252);
         }
      }
      
      public function getTypeAmountForDistro(param1:String) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         var _loc2_:CustomerOrder = this;
         var _loc3_:* = 0;
         if(_loc5_ || Boolean(param1))
         {
            _loc4_ = 0;
         }
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(_loc2_.wings);
               if(!_loc6_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc2_.sides);
                        }
                        addr141:
                     }
                     addr146:
                     return _loc3_;
                     addr145:
                  }
                  else
                  {
                     §§push(_loc2_.wings);
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           if(§§pop()[§§pop()][2] == param1)
                           {
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§push(_loc3_);
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc5_ || Boolean(this))
                                             {
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc6_ && Boolean(_loc2_)))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc4_++;
                                                         addr140:
                                                         while(true)
                                                         {
                                                            §§goto(addr141);
                                                         }
                                                      }
                                                      addr139:
                                                   }
                                                   §§goto(addr145);
                                                }
                                                addr124:
                                             }
                                          }
                                          addr116:
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       §§goto(addr116);
                                    }
                                    §§goto(addr124);
                                 }
                                 addr113:
                              }
                              while(true)
                              {
                                 §§goto(addr113);
                              }
                              addr111:
                           }
                           _loc4_++;
                           continue;
                        }
                        while(true)
                        {
                           if(§§pop()[§§pop()][2] == param1)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr111);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr139);
                        }
                        addr104:
                     }
                  }
                  while(true)
                  {
                     §§goto(addr104);
                  }
                  §§goto(addr146);
                  addr103:
               }
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     §§goto(addr103);
                     §§push(_loc2_.sides);
                  }
                  §§goto(addr146);
               }
            }
            break;
         }
         _loc4_ = §§pop();
         if(_loc6_)
         {
         }
         §§goto(addr140);
      }
      
      public function clone() : CustomerOrder
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc1_:CustomerOrder = this;
         var _loc2_:CustomerOrder = new CustomerOrder();
         if(!_loc4_)
         {
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(this))
            {
               §§push(_loc1_.wings);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  addr154:
                  if(§§pop() >= §§pop().length)
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                           }
                           §§goto(addr162);
                        }
                        break;
                     }
                     loop4:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           §§push(_loc1_.sides);
                           if(!_loc4_)
                           {
                              if(§§pop() >= §§pop().length)
                              {
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    break loop0;
                                 }
                                 break;
                              }
                              _loc2_.addSide(_loc1_.sides[_loc3_][0],_loc1_.sides[_loc3_][1],_loc1_.sides[_loc3_][2]);
                              if(_loc5_)
                              {
                                 continue;
                              }
                              addr137:
                              addr157:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 break loop4;
                              }
                           }
                        }
                        break;
                        _loc3_++;
                     }
                     while(true)
                     {
                        §§push(_loc1_.dips);
                     }
                  }
                  else
                  {
                     _loc2_.addWings(_loc1_.wings[_loc3_][0],_loc1_.wings[_loc3_][3],_loc1_.wings[_loc3_][1],_loc1_.wings[_loc3_][2]);
                     _loc3_++;
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  while(true)
                  {
                     _loc3_++;
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr157);
                  }
                  addr162:
                  return _loc2_;
                  addr154:
               }
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     _loc2_.addDip(_loc1_.dips[_loc3_][0]);
                     §§goto(addr154);
                  }
                  §§goto(addr162);
               }
            }
            break;
         }
         _loc3_ = §§pop();
         if(_loc5_ || Boolean(_loc1_))
         {
            §§goto(addr137);
         }
         §§goto(addr154);
      }
   }
}

