package wingGame.data
{
   public class FoodData
   {
      public static const MEAT_STRIPS:String = "strips";
      
      public static const MEAT_BONELESS:String = "boneless";
      
      public static const MEAT_WING:String = "wing";
      
      public static const SAUCE_PARMESAN:String = "parmesan";
      
      public static const SAUCE_TERIYAKI:String = "teriyaki";
      
      public static const SAUCE_BBQ:String = "bbq";
      
      public static const SAUCE_CALYPSO:String = "calypso";
      
      public static const SAUCE_ATOMIC:String = "atomic";
      
      public static const SAUCE_BUFFALO:String = "buffalo";
      
      public static const SAUCE_MEDIUM:String = "medium";
      
      public static const SAUCE_HONEYMUSTARD:String = "honeymustard";
      
      public static const SAUCE_WILDONION:String = "wildonion";
      
      public static const SAUCE_WASABI:String = "wasabi";
      
      public static const DIP_MANGOCHILI:String = "mangochili";
      
      public static const DIP_RANCH:String = "ranch";
      
      public static const DIP_KUNGPAO:String = "kungpao";
      
      public static const DIP_ZESTYPESTO:String = "zestypesto";
      
      public static const DIP_BLUECHEESE:String = "bluecheese";
      
      public static const DIP_AWESOMESAUCE:String = "awesomesauce";
      
      public static const SIDE_CARROT:String = "carrot";
      
      public static const SIDE_FRY:String = "fry";
      
      public static const SIDE_GREENPEPPER:String = "greenpepper";
      
      public static const SIDE_CELERY:String = "celery";
      
      public static const SIDE_CHEESECUBES:String = "cheesecubes";
      
      public static const SIDE_REDPEPPER:String = "redpepper";
      
      public static const DISTRO_ALL:String = "distroall";
      
      public static const DISTRO_LEFT:String = "distroleft";
      
      public static const DISTRO_RIGHT:String = "distroright";
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      
      public static const MEAT_SHRIMP:String = "shrimp";
      
      if(!(_loc1_ && FoodData))
      {
         MEAT_STRIPS = "strips";
         MEAT_BONELESS = "boneless";
         MEAT_WING = "wing";
         SAUCE_PARMESAN = "parmesan";
         SAUCE_TERIYAKI = "teriyaki";
         SAUCE_BBQ = "bbq";
         SAUCE_CALYPSO = "calypso";
         if(!(_loc1_ && _loc1_))
         {
            SAUCE_ATOMIC = "atomic";
            SAUCE_BUFFALO = "buffalo";
            SAUCE_MEDIUM = "medium";
            if(_loc2_ || _loc1_)
            {
            }
            addr158:
            SIDE_REDPEPPER = "redpepper";
            DISTRO_ALL = "distroall";
            addr171:
            DISTRO_LEFT = "distroleft";
            if(!_loc1_)
            {
               addr176:
               DISTRO_RIGHT = "distroright";
            }
            §§goto(addr179);
         }
         addr93:
         SAUCE_WASABI = "wasabi";
         DIP_MANGOCHILI = "mangochili";
         if(!(_loc1_ && _loc2_))
         {
            DIP_RANCH = "ranch";
            if(_loc2_ || _loc2_)
            {
               DIP_KUNGPAO = "kungpao";
            }
            DIP_ZESTYPESTO = "zestypesto";
            DIP_BLUECHEESE = "bluecheese";
            DIP_AWESOMESAUCE = "awesomesauce";
            if(!_loc1_)
            {
               SIDE_CARROT = "carrot";
               if(!_loc1_)
               {
                  SIDE_FRY = "fry";
                  if(_loc1_ && _loc2_)
                  {
                  }
                  addr179:
                  return;
               }
            }
            SIDE_GREENPEPPER = "greenpepper";
            SIDE_CELERY = "celery";
            if(_loc2_)
            {
               SIDE_CHEESECUBES = "cheesecubes";
               if(_loc2_)
               {
               }
               §§goto(addr176);
            }
            §§goto(addr158);
         }
         §§goto(addr171);
      }
      
      public static const SAUCE_SPICYGARLIC:String = "spicygarlic";
      
      if(!_loc1_)
      {
         SAUCE_HONEYMUSTARD = "honeymustard";
         if(!(_loc1_ && FoodData))
         {
            SAUCE_WILDONION = "wildonion";
            §§goto(addr93);
         }
      }
      §§goto(addr158);
      
      public function FoodData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function getMaxCookTime(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(FoodData.MEAT_WING);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(3600);
                        if(_loc3_ || _loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr110:
                        §§push(param1);
                     }
                     §§goto(addr119);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(FoodData.MEAT_BONELESS);
                        if(_loc3_ || Boolean(param1))
                        {
                        }
                        addr93:
                        if(§§pop() == §§pop())
                        {
                           §§push(3600);
                           if(!(_loc2_ && FoodData))
                           {
                              §§goto(addr102);
                           }
                        }
                        else
                        {
                           §§goto(addr110);
                        }
                        §§goto(addr117);
                     }
                  }
               }
               if(§§pop() == §§pop())
               {
                  §§push(3600);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               addr102:
               return §§pop();
            }
            §§goto(addr113);
         }
         §§push(param1);
         if(!_loc2_)
         {
            §§push(FoodData.MEAT_STRIPS);
            if(_loc3_)
            {
               §§goto(addr93);
            }
            §§goto(addr113);
         }
         addr113:
         if(§§pop() == FoodData.MEAT_SHRIMP)
         {
            §§push(3600);
            if(_loc3_)
            {
               addr117:
               return §§pop();
            }
         }
         else
         {
            §§push(3600);
         }
         addr119:
         return §§pop();
      }
      
      public static function getTargetCookTime(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(FoodData.getMaxCookTime(param1));
         if(_loc3_)
         {
            §§push(§§pop() / 2);
         }
         return §§pop();
      }
      
      public static function getSauceFrame(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 == FoodData.SAUCE_PARMESAN)
            {
               §§push(1);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(param1);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop() == FoodData.SAUCE_TERIYAKI)
                  {
                     §§push(2);
                     if(_loc3_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§push(param1);
                     §§push(FoodData.SAUCE_BBQ);
                     if(_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              return 3;
                           }
                           addr148:
                           §§push(param1);
                        }
                        else if(param1 == FoodData.SAUCE_CALYPSO)
                        {
                           if(!_loc2_)
                           {
                              return 4;
                           }
                           addr109:
                           §§push(param1);
                           if(_loc3_ || FoodData)
                           {
                              addr132:
                              §§push(FoodData.SAUCE_SPICYGARLIC);
                              if(_loc3_ || FoodData)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    return 8;
                                 }
                                 §§push(param1);
                              }
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr134);
                              }
                              else
                              {
                                 §§push(param1);
                                 §§push(FoodData.SAUCE_WILDONION);
                              }
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              if(§§pop() == FoodData.SAUCE_ATOMIC)
                              {
                                 return 5;
                              }
                           }
                        }
                        if(§§pop() == FoodData.SAUCE_WASABI)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§push(11);
                              if(_loc3_ || _loc2_)
                              {
                                 return §§pop();
                              }
                           }
                        }
                        §§push(1);
                     }
                     if(§§pop() == §§pop())
                     {
                        return 10;
                     }
                     §§goto(addr148);
                  }
               }
               §§goto(addr132);
               §§push(FoodData.SAUCE_HONEYMUSTARD);
            }
            return §§pop();
         }
         §§push(param1);
         if(_loc3_)
         {
            if(§§pop() == FoodData.SAUCE_BUFFALO)
            {
               §§push(6);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               if(param1 == FoodData.SAUCE_MEDIUM)
               {
                  return 7;
               }
               §§goto(addr109);
            }
            addr134:
            return 9;
         }
         §§goto(addr132);
      }
      
      public static function getSauceNumberAmount(param1:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = 12;
         var _loc3_:Number = 12;
         §§push(360 / _loc3_);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || FoodData)
         {
            §§push(param1);
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(360);
               if(_loc6_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                           §§push(360);
                           if(!(_loc7_ && FoodData))
                           {
                              §§push(§§pop() - §§pop());
                           }
                        }
                        param1 = §§pop();
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        addr81:
                        §§push(param1);
                        if(_loc6_)
                        {
                           §§push(360);
                        }
                     }
                  }
                  else
                  {
                     §§push(param1);
                     §§push(0);
                     if(_loc6_)
                     {
                     }
                  }
                  §§push(§§pop() + §§pop());
               }
               if(§§pop() < §§pop())
               {
                  if(!(_loc7_ && FoodData))
                  {
                     §§goto(addr81);
                  }
               }
            }
            param1 = §§pop();
         }
         var _loc5_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(§§pop() <= _loc3_)
            {
               §§push(param1);
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     §§push(_loc4_);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_ || FoodData)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              §§push(2);
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop() / §§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc6_)
                                    {
                                    }
                                    addr181:
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                    }
                                 }
                                 addr186:
                                 if(§§pop() >= §§pop() + §§pop())
                                 {
                                    _loc5_++;
                                    if(_loc7_ && Boolean(_loc3_))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 if(!(_loc6_ || FoodData))
                                 {
                                    continue loop0;
                                 }
                                 addr196:
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop());
                                 if(!(_loc7_ && Boolean(param1)))
                                 {
                                    addr207:
                                    _loc2_ = §§pop();
                                    if(_loc7_ && Boolean(_loc3_))
                                    {
                                    }
                                    break;
                                 }
                              }
                              addr185:
                              §§goto(addr186);
                              §§push(§§pop() / §§pop());
                           }
                           §§goto(addr185);
                           §§push(2);
                        }
                        §§push(§§pop() >= §§pop());
                        if(_loc6_ || FoodData)
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§pop();
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    §§push(param1);
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc5_);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr196);
                              }
                           }
                        }
                        §§goto(addr186);
                     }
                     addr173:
                     §§push(§§pop() * §§pop());
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§goto(addr181);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr173);
                  §§push(_loc4_);
               }
               return §§pop();
            }
            §§goto(addr235);
         }
      }
      
      public static function isMeat(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(FoodData.MEAT_WING);
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              addr118:
                              if(_loc3_ || _loc3_)
                              {
                                 addr105:
                                 §§push(param1);
                                 if(!_loc2_)
                                 {
                                    addr114:
                                    addr115:
                                    §§push(FoodData.MEAT_BONELESS);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                       }
                                       §§goto(addr123);
                                    }
                                    addr123:
                                    return §§pop();
                                    §§push(false);
                                 }
                                 §§goto(addr114);
                                 §§push(FoodData.MEAT_STRIPS);
                              }
                              §§push(true);
                              if(!_loc3_)
                              {
                                 §§goto(addr123);
                              }
                           }
                           addr76:
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                              }
                              §§goto(addr105);
                           }
                        }
                        §§push(§§pop());
                        if(_loc3_ || FoodData)
                        {
                        }
                        addr100:
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc2_)
                           {
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr115);
                     }
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr76);
                        }
                     }
                     addr99:
                     §§goto(addr100);
                     return §§pop();
                  }
               }
               addr91:
               §§push(§§pop() == §§pop());
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§goto(addr99);
               }
               §§goto(addr123);
            }
            §§push(FoodData.MEAT_SHRIMP);
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr91);
            }
            §§goto(addr114);
         }
         §§goto(addr105);
         §§push(param1);
      }
      
      public static function isSide(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || Boolean(param1))
            {
               §§push(FoodData.SIDE_CARROT);
               if(_loc3_ || Boolean(param1))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(_loc3_ || FoodData)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              §§push(param1);
                              if(_loc3_ || _loc3_)
                              {
                              }
                              addr166:
                              §§push(FoodData.SIDE_GREENPEPPER);
                              if(_loc2_)
                              {
                              }
                              addr188:
                              if(§§pop() != §§pop())
                              {
                                 return false;
                              }
                           }
                           addr172:
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                                 addr175:
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    addr186:
                                    §§goto(addr188);
                                    §§push(param1);
                                    §§push(FoodData.SIDE_REDPEPPER);
                                 }
                              }
                           }
                           §§goto(addr188);
                        }
                        addr73:
                        §§push(§§pop());
                        if(_loc3_ || _loc3_)
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              §§push(param1);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(FoodData.SIDE_CHEESECUBES);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr166);
                           }
                           §§push(§§pop());
                           if(!(_loc2_ && FoodData))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(param1);
                                       if(!(_loc2_ && Boolean(param1)))
                                       {
                                          §§push(FoodData.SIDE_FRY);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_ || Boolean(param1))
                                             {
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                                 §§goto(addr166);
                              }
                              §§push(§§pop());
                              if(_loc2_)
                              {
                              }
                           }
                        }
                        §§goto(addr172);
                     }
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§goto(addr166);
                              }
                              §§goto(addr186);
                           }
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr191);
               }
               addr170:
               §§goto(addr172);
               §§push(§§pop() == §§pop());
            }
            §§push(FoodData.SIDE_CELERY);
            if(_loc3_)
            {
               §§push(§§pop() == §§pop());
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr73);
               }
               §§goto(addr166);
            }
            §§goto(addr170);
         }
         addr191:
         true;
         return §§pop();
      }
      
      public static function isDip(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && FoodData))
         {
            addr155:
            §§push(param1);
            if(!(_loc2_ && FoodData))
            {
               §§push(FoodData.DIP_AWESOMESAUCE);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§push(§§pop());
                     if(_loc3_ || Boolean(param1))
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc3_ || Boolean(param1))
                           {
                              §§push(param1);
                              if(_loc3_ || FoodData)
                              {
                                 §§push(FoodData.DIP_BLUECHEESE);
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr141);
                           }
                           addr115:
                           §§push(param1);
                           if(_loc3_ || FoodData)
                           {
                              §§push(FoodData.DIP_MANGOCHILI);
                              if(!_loc2_)
                              {
                                 addr128:
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(!_loc2_)
                                 {
                                    addr131:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(param1);
                                       if(!(_loc2_ && FoodData))
                                       {
                                          addr141:
                                          §§push(FoodData.DIP_RANCH);
                                          if(!(_loc2_ && Boolean(param1)))
                                          {
                                             addr151:
                                             addr160:
                                             if(§§pop())
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(true);
                                                }
                                             }
                                             return false;
                                             §§push(§§pop() == §§pop());
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr157);
                           }
                        }
                        addr76:
                        §§push(§§pop());
                        if(_loc3_)
                        {
                        }
                        addr106:
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr128);
                     }
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(FoodData.DIP_KUNGPAO);
                              if(_loc3_)
                              {
                                 §§push(§§pop() == §§pop());
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr157);
                     }
                  }
                  §§push(§§pop());
                  if(!(_loc2_ && FoodData))
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr131);
               }
               §§goto(addr76);
               §§push(§§pop() == §§pop());
            }
            addr157:
            §§push(§§pop() == §§pop());
            if(_loc3_)
            {
               §§goto(addr160);
            }
            return §§pop();
            §§push(FoodData.DIP_ZESTYPESTO);
         }
         §§goto(addr155);
         §§push(param1);
      }
      
      public static function getSauces() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Array = [];
         if(_loc2_)
         {
            _loc1_.push(FoodData.SAUCE_ATOMIC,FoodData.SAUCE_BBQ,FoodData.SAUCE_TERIYAKI,FoodData.SAUCE_CALYPSO,FoodData.SAUCE_MEDIUM,FoodData.SAUCE_BUFFALO,FoodData.SAUCE_SPICYGARLIC,FoodData.SAUCE_HONEYMUSTARD,FoodData.SAUCE_WILDONION,FoodData.SAUCE_WASABI,FoodData.SAUCE_PARMESAN);
         }
         return _loc1_;
      }
   }
}

