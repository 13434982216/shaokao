package wingGame.data
{
   public class Challenge
   {
      public static const RANK:String = "rank";
      
      public static const UPGRADES:String = "upgrades";
      
      public static const FURNITURE:String = "furniture";
      
      public static const REWARDFURNI:String = "rewardfurni";
      
      public static const CLOTHING:String = "clothing";
      
      public static const REWARDCLOTHING:String = "rewardclothing";
      
      public static const REWARDANY:String = "rewardany";
      
      public static const PURCHASES:String = "purchases";
      
      public static const SEALS:String = "seals";
      
      public static const USETOPPING:String = "usetopping";
      
      public static const SCORE:String = "score";
      
      public static const RIBBON:String = "ribbon";
      
      public static const SERVICEQUALITY:String = "servicequality";
      
      public static const SERVECUSTOMERS:String = "servecustomers";
      
      public static const PAYDAY:String = "payday";
      
      public static const HAT:String = "hat";
      
      public static const METER:String = "meter";
      
      public static const MINIGAME:String = "minigame";
      
      public static const PRIZE:String = "prize";
      
      public static const MULTIPRIZE:String = "multiprize";
      
      public static const TAGGED:String = "tagged";
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      if(_loc2_ || Challenge)
      {
         RANK = "rank";
         UPGRADES = "upgrades";
         if(!_loc1_)
         {
            FURNITURE = "furniture";
            REWARDFURNI = "rewardfurni";
            if(!_loc1_)
            {
               CLOTHING = "clothing";
               if(_loc2_)
               {
                  REWARDCLOTHING = "rewardclothing";
                  if(_loc2_)
                  {
                  }
               }
               addr100:
               HAT = "hat";
               §§goto(addr103);
            }
            §§goto(addr53);
         }
         REWARDANY = "rewardany";
         PURCHASES = "purchases";
         addr53:
         SEALS = "seals";
         USETOPPING = "usetopping";
         SCORE = "score";
         if(_loc2_)
         {
            RIBBON = "ribbon";
            SERVICEQUALITY = "servicequality";
            SERVECUSTOMERS = "servecustomers";
            if(!(_loc1_ && _loc1_))
            {
               PAYDAY = "payday";
               if(_loc1_ && _loc2_)
               {
               }
            }
            addr103:
            METER = "meter";
            §§goto(addr106);
         }
         addr106:
         MINIGAME = "minigame";
         if(!(_loc1_ && _loc1_))
         {
            PRIZE = "prize";
         }
         MULTIPRIZE = "multiprize";
         if(!_loc1_)
         {
            TAGGED = "tagged";
         }
         return;
      }
      
      public static const UNLOCKTOPPING:String = "unlocktopping";
      
      §§goto(addr100);
      
      public var title:String = "";
      
      public var description:String = "";
      
      public var rewardMoney:Number = 0;
      
      public var tickets:Number = 0;
      
      public var challengeType:String;
      
      public var targetAmount:Number = 0;
      
      public var tally:Number = 0;
      
      public var upgrades:*;
      
      public var sealType:String = "bronze";
      
      public var topping:String = "soft";
      
      public var customer:String = "any";
      
      public var score:Number = 0;
      
      public var scoreType:String = "Waiting";
      
      public var percentQuality:Number = 100;
      
      public var customers:*;
      
      public var toppings:*;
      
      public var hat:String = "tacohat";
      
      public var machine:String = "icecream";
      
      public var tagName:String = "";
      
      public var mochiAchievementID:String = null;
      
      public var mochiAchievementPoints:Number = 0;
      
      public var hasEarnedMochiAchievement:Boolean = false;
      
      public var showTally:Boolean = false;
      
      public var params:Object;
      
      public function Challenge(param1:String, param2:Object)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(param2)))
         {
            super();
         }
         var _loc3_:Challenge = this;
         if(_loc4_)
         {
            _loc3_.challengeType = param1;
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               _loc3_.params = param2;
               §§push(param1);
               if(!(_loc5_ && Boolean(param2)))
               {
                  if(§§pop() == Challenge.RANK)
                  {
                     _loc3_.setupRank();
                  }
                  else if(param1 == Challenge.UPGRADES)
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        _loc3_.setupUpgrades();
                     }
                     else
                     {
                        addr216:
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc5_ && Boolean(param2)))
                     {
                        if(§§pop() == Challenge.FURNITURE)
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              _loc3_.setupFurniture();
                           }
                           else
                           {
                              addr318:
                              _loc3_.setupMultiPrize();
                              if(!(_loc4_ || Boolean(this)))
                              {
                                 addr342:
                                 _loc3_.setupTagged();
                              }
                              else
                              {
                                 addr327:
                              }
                           }
                        }
                        else
                        {
                           §§push(param1);
                           §§push(global);
                           if(!_loc5_)
                           {
                              if(§§pop() != §§pop().§§slot[1].PURCHASES)
                              {
                                 if(param1 == Challenge.CLOTHING)
                                 {
                                    if(!_loc5_)
                                    {
                                       _loc3_.setupClothing();
                                       if(!(_loc4_ || Boolean(param1)))
                                       {
                                          addr251:
                                       }
                                    }
                                    else
                                    {
                                       addr143:
                                    }
                                 }
                                 else if(param1 == Challenge.SEALS)
                                 {
                                    _loc3_.setupSeals();
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       if(§§pop() == Challenge.USETOPPING)
                                       {
                                          _loc3_.setupUseTopping();
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§goto(addr143);
                                          }
                                          else
                                          {
                                             §§goto(addr251);
                                          }
                                       }
                                       else
                                       {
                                          if(param1 == Challenge.SCORE)
                                          {
                                             _loc3_.setupScore();
                                             if(_loc5_ && Boolean(this))
                                             {
                                                addr183:
                                                _loc3_.setupServiceQuality();
                                                if(!(_loc4_ || Boolean(this)))
                                                {
                                                   addr224:
                                                   _loc3_.setupPayDay();
                                                   if(_loc4_ || Boolean(param1))
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                          }
                                          addr239:
                                          _loc3_.setupUnlockTopping();
                                       }
                                    }
                                    addr220:
                                    if(§§pop() == Challenge.PAYDAY)
                                    {
                                       §§goto(addr224);
                                    }
                                    else
                                    {
                                       addr236:
                                       if(param1 != Challenge.UNLOCKTOPPING)
                                       {
                                          §§push(param1);
                                          §§push(global);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() == §§pop().§§slot[1].HAT)
                                             {
                                                _loc3_.setupHat();
                                                §§goto(addr251);
                                             }
                                             else
                                             {
                                                addr253:
                                                if(param1 == Challenge.METER)
                                                {
                                                   _loc3_.setupMeter();
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   §§push(global);
                                                }
                                             }
                                          }
                                          if(§§pop() == §§pop().§§slot[1].MINIGAME)
                                          {
                                             if(!(_loc5_ && Boolean(param2)))
                                             {
                                                _loc3_.setupMinigame();
                                             }
                                             else
                                             {
                                                §§goto(addr327);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(_loc5_ && Boolean(param1))
                                             {
                                             }
                                             addr329:
                                             if(§§pop() == Challenge.TAGGED)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr342);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                              }
                           }
                           addr204:
                           if(§§pop() == §§pop().§§slot[1].SERVECUSTOMERS)
                           {
                              _loc3_.setupServeCustomers();
                              if(_loc4_ || Boolean(this))
                              {
                                 §§goto(addr216);
                              }
                              §§goto(addr346);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 §§goto(addr220);
                              }
                              §§goto(addr253);
                           }
                        }
                     }
                     if(§§pop() == Challenge.RIBBON)
                     {
                        _loc3_.setupRibbon();
                        if(_loc5_)
                        {
                           §§goto(addr318);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           if(§§pop() == Challenge.SERVICEQUALITY)
                           {
                              §§goto(addr183);
                           }
                           else
                           {
                              §§push(param1);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§push(global);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr204);
                                 }
                                 §§goto(addr236);
                              }
                              addr307:
                              §§push(global);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 addr315:
                                 if(§§pop() == §§pop().§§slot[1].MULTIPRIZE)
                                 {
                                    §§goto(addr318);
                                 }
                                 else
                                 {
                                    §§goto(addr329);
                                    §§push(param1);
                                 }
                              }
                              §§goto(addr329);
                           }
                        }
                        §§goto(addr236);
                     }
                  }
                  §§goto(addr344);
               }
               §§push(global);
               if(_loc4_ || Boolean(param1))
               {
                  if(§§pop() == §§pop().§§slot[1].PRIZE)
                  {
                     if(!_loc5_)
                     {
                        _loc3_.setupPrize();
                        if(!(_loc4_ || Boolean(this)))
                        {
                           §§goto(addr342);
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr307);
                     §§push(param1);
                  }
                  §§goto(addr344);
               }
               §§goto(addr315);
            }
            §§goto(addr344);
         }
         _loc3_.setupPurchases();
         addr344:
         _loc3_.setupTitles();
         addr346:
      }
      
      public function setupTitles() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(_loc1_.params.hasOwnProperty("title"))
         {
            _loc1_.title = _loc1_.params.title;
         }
         if(_loc1_.params.hasOwnProperty("description"))
         {
            _loc1_.description = _loc1_.params.description;
         }
         if(_loc1_.params.hasOwnProperty("rewardMoney"))
         {
            _loc1_.rewardMoney = _loc1_.params.rewardMoney;
            §§goto(addr57);
         }
         else
         {
            _loc1_.rewardMoney = 0;
            if(_loc2_ || _loc3_)
            {
               addr57:
               if(_loc1_.params.hasOwnProperty("tickets"))
               {
                  _loc1_.tickets = _loc1_.params.tickets;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr92:
                     if(!_loc1_.params.hasOwnProperty("showTally"))
                     {
                        _loc1_.showTally = false;
                     }
                     addr106:
                     if(_loc1_.params.hasOwnProperty("mochiID"))
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.mochiAchievementID = _loc1_.params.mochiID;
                           if(_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        _loc1_.mochiAchievementID = null;
                     }
                     if(_loc1_.params.hasOwnProperty("mochiPoints"))
                     {
                        if(!_loc3_)
                        {
                           _loc1_.mochiAchievementPoints = _loc1_.params.mochiPoints;
                           if(_loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        _loc1_.mochiAchievementPoints = 0;
                     }
                  }
                  _loc1_.showTally = _loc1_.params.showTally;
                  §§goto(addr106);
               }
               else
               {
                  _loc1_.tickets = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr92);
                  }
               }
               return;
            }
         }
         §§goto(addr92);
      }
      
      public function setupMinigame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(!_loc3_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
         }
      }
      
      public function setupPrize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(_loc2_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
         }
      }
      
      public function setupMultiPrize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Challenge = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
         }
      }
      
      public function setupRank() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Challenge = this;
         if(_loc3_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
         }
      }
      
      public function setupPayDay() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(_loc2_ || _loc3_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
         }
      }
      
      public function setupRibbon() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(!_loc3_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
         }
      }
      
      public function setupUpgrades() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(_loc1_.params.hasOwnProperty("upgrades"))
         {
            if(_loc1_.params.upgrades is Array)
            {
               _loc1_.upgrades = _loc1_.params.upgrades.concat();
               if(_loc3_ || _loc2_)
               {
               }
            }
            else
            {
               _loc1_.upgrades = _loc1_.params.upgrades;
            }
         }
         else
         {
            _loc1_.upgrades = "any";
         }
      }
      
      public function setupFurniture() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(_loc1_.params.hasOwnProperty("upgrades"))
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!(_loc1_.params.upgrades is Array))
                  {
                     _loc1_.upgrades = _loc1_.params.upgrades;
                  }
                  addr79:
               }
            }
            else
            {
               _loc1_.upgrades = "any";
            }
            return;
         }
         _loc1_.upgrades = _loc1_.params.upgrades.concat();
         if(_loc3_ && _loc2_)
         {
         }
         §§goto(addr79);
      }
      
      public function setupPurchases() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_.params.hasOwnProperty("upgrades"))
            {
               if(!_loc3_)
               {
                  if(_loc1_.params.upgrades is Array)
                  {
                     if(_loc2_)
                     {
                        _loc1_.upgrades = _loc1_.params.upgrades.concat();
                     }
                  }
                  else
                  {
                     _loc1_.upgrades = _loc1_.params.upgrades;
                  }
               }
            }
            else
            {
               _loc1_.upgrades = "any";
            }
            §§goto(addr73);
         }
         addr73:
      }
      
      public function setupClothing() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(_loc1_.params.hasOwnProperty("upgrades"))
         {
            if(_loc1_.params.upgrades is Array)
            {
               _loc1_.upgrades = _loc1_.params.upgrades.concat();
            }
            else
            {
               _loc1_.upgrades = _loc1_.params.upgrades;
            }
         }
         else
         {
            _loc1_.upgrades = "any";
         }
      }
      
      public function setupSeals() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(!_loc3_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(_loc2_ || _loc2_)
            {
               _loc1_.sealType = _loc1_.params.sealType;
            }
         }
      }
      
      public function setupUseTopping() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(_loc2_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(_loc2_)
            {
            }
            §§goto(addr37);
         }
         _loc1_.topping = _loc1_.params.topping;
         addr37:
      }
      
      public function setupScore() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(!_loc3_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(_loc2_)
            {
               if(_loc1_.params.hasOwnProperty("customer"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.customer = _loc1_.params.customer;
                  }
               }
               else
               {
                  _loc1_.customer = "any";
               }
               _loc1_.score = _loc1_.params.score;
               addr53:
               if(_loc3_)
               {
               }
               §§goto(addr72);
            }
            _loc1_.scoreType = _loc1_.params.scoreType;
            addr72:
            return;
         }
         §§goto(addr53);
      }
      
      public function setupMeter() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Challenge = this;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(!(_loc2_ && Boolean(this)))
            {
               if(_loc1_.params.hasOwnProperty("machine"))
               {
                  _loc1_.machine = _loc1_.params.machine;
               }
               else
               {
                  _loc1_.machine = "any";
               }
               if(_loc1_.params.hasOwnProperty("scoreType"))
               {
                  _loc1_.scoreType = _loc1_.params.scoreType;
               }
               else
               {
                  _loc1_.scoreType = "any";
               }
            }
         }
      }
      
      public function setupTagged() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(_loc2_)
            {
               _loc1_.tagName = _loc1_.params.tagName;
            }
         }
      }
      
      public function setupServiceQuality() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(_loc2_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(_loc2_)
            {
            }
            §§goto(addr37);
         }
         _loc1_.percentQuality = _loc1_.params.percentQuality;
         addr37:
      }
      
      public function setupServeCustomers() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
         }
         if(_loc1_.params.hasOwnProperty("customers"))
         {
            if(_loc1_.params.customers is Array)
            {
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.customers = _loc1_.params.customers.concat();
               }
            }
            else
            {
               _loc1_.customers = _loc1_.params.customers;
            }
         }
         else
         {
            _loc1_.customers = "all";
         }
      }
      
      public function setupUnlockTopping() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Challenge = this;
         _loc1_.targetAmount = _loc1_.params.targetAmount;
         if(_loc2_)
         {
            if(_loc1_.params.hasOwnProperty("toppings"))
            {
               if(_loc1_.params.toppings is Array)
               {
                  _loc1_.toppings = _loc1_.params.toppings.concat();
               }
               else
               {
                  _loc1_.toppings = _loc1_.params.toppings;
               }
            }
            else
            {
               _loc1_.toppings = "all";
            }
            §§goto(addr64);
         }
         addr64:
      }
      
      public function setupHat() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Challenge = this;
         if(!_loc2_)
         {
            _loc1_.targetAmount = _loc1_.params.targetAmount;
            if(_loc3_)
            {
            }
            §§goto(addr45);
         }
         _loc1_.hat = _loc1_.params.hat;
         addr45:
      }
      
      public function clearTally(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1)
            {
               if(_loc3_ && Boolean(this))
               {
               }
            }
            §§goto(addr46);
         }
         this.tally = 0;
         addr46:
      }
      
      public function setTally(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Challenge = this;
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.tally = param1;
            if(_loc4_)
            {
               if(_loc2_.tally >= _loc2_.targetAmount)
               {
                  if(_loc3_ && Boolean(_loc2_))
                  {
                  }
                  §§goto(addr60);
               }
            }
            addr60:
            return §§pop();
            §§push(false);
         }
         §§push(true);
         if(!_loc3_)
         {
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function addToTally(param1:Number = 1) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Challenge = this;
         if(_loc4_)
         {
            §§push(_loc2_);
            §§push(_loc2_.tally);
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().tally = §§pop();
            if(_loc3_)
            {
            }
            §§goto(addr60);
         }
         if(_loc2_.tally >= _loc2_.targetAmount)
         {
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(true);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            §§goto(addr60);
         }
         addr60:
         return false;
      }
      
      public function getRewardAmount() : Number
      {
         var _loc1_:Challenge = this;
         return _loc1_.rewardMoney;
      }
      
      public function getTicketAmount() : Number
      {
         var _loc1_:Challenge = this;
         return _loc1_.tickets;
      }
   }
}

