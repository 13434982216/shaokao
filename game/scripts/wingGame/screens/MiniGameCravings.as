package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   
   public class MiniGameCravings extends MiniGame
   {
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var randomSeed:Number = 1;
      
      public var whichDifficulty:Number = 1;
      
      public var whichRound:Number = 1;
      
      public var maxRounds:Number = 5;
      
      public var roundsWon:Number = 0;
      
      public var ticketTweenTimer:Number = 0;
      
      public var ticketTweenMax:Number = 30;
      
      public var ticketTweenOutMax:Number = 60;
      
      public var ticketPad:Number = 110;
      
      public var ticketOffscreenPad:Number = 640;
      
      public var currentCustomer:MovieClip = null;
      
      public var previousCustomer:MovieClip = null;
      
      public var customerLineup:Array;
      
      public var correctTicketDistToCenter:Number = 0;
      
      public var offScreenRight:Number = 690;
      
      public var offScreenLeft:Number = -90;
      
      public var centerScreen:Number = 280;
      
      public var walkSpeed:Number = 8;
      
      public var isCustomerCentered:Boolean = false;
      
      public var tickets:Array;
      
      public var ticketPositions:Array;
      
      public var ticketBitmaps:Array;
      
      public var ticketBMPs:Array;
      
      public var whichTicketIsCorrect:Number = -1;
      
      public var choseWhichTicket:Number = -1;
      
      public var canClick:Boolean = false;
      
      public var ticketsEntering:Boolean = false;
      
      public var ticketsLeaving:Boolean = false;
      
      public var lastTicketLeaving:Boolean = false;
      
      public var foodiniClip:MovieClip;
      
      private var panelTicketBottom:Number = 231;
      
      private var panelTicketTop:Number = -6;
      
      private var panelWingHeight:Number = 66;
      
      private var panelSideHeight:Number = 33;
      
      private var panelDipSize:Number = 33;
      
      private var panelTicketLeft:Number = -65;
      
      public function MiniGameCravings(param1:MiniGameScreen, param2:MovieClip)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.prizeSKUs = ["poster_foodini","pants_09","furni_foodinitable_small","floor22","shirt_10","furni_foodinitable_medium","furni_foodini_balloon","bodyacc_03","belt_07","furni_velvet_rope_purple","hat17","wall35","jacket_08","furni_foodinitable_large"];
         this.prizeIsClothing = [false,true,false,false,true,false,false,true,true,false,true,false,true,false];
         this.prizeClothingMode = ["","gender","","","gender","","","gender","gender","","hat","","gender",""];
         this.allowedForRandom = [1,0,1,0,0,1,1,0,0,1,0,0,0,1];
         this.customerLineup = [1,2,3,4,5];
         this.tickets = [];
         if(_loc4_)
         {
            this.ticketPositions = [];
            this.ticketBitmaps = [];
         }
         this.ticketBMPs = [];
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MiniGameCravings = this;
         if(!_loc3_)
         {
            _loc1_.clip = new minigameCravingsMC();
         }
         _loc1_.container.addChild(_loc1_.clip);
         if(!_loc3_)
         {
            _loc1_.screen.setTitle("Customer Cravings");
            _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
            _loc1_.decideDifficulty();
            _loc1_.foodiniClip = new minigame_foodini();
            if(_loc4_)
            {
               _loc1_.foodiniClip.scaleX = -0.77;
               if(_loc3_ && _loc3_)
               {
               }
               addr85:
               _loc1_.foodiniClip.x = 95;
            }
            _loc1_.foodiniClip.scaleY = 0.77;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr85);
            }
            §§goto(addr99);
         }
         _loc1_.foodiniClip.y = 277;
         _loc1_.clip.foodiniholder.addChild(_loc1_.foodiniClip);
         addr99:
         _loc1_.foodiniClip.gotoAndPlay("stand");
         if(!_loc3_)
         {
            _loc1_.clip.talktext.visible = false;
         }
         var _loc2_:int = 1;
         while(true)
         {
            if(_loc2_ > _loc1_.maxRounds)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.createNewCustomer();
               }
               break;
            }
            _loc1_.clip["light" + _loc2_].gotoAndStop(1);
            if(_loc4_)
            {
               _loc2_++;
               if(_loc3_ && Boolean(_loc1_))
               {
                  break;
               }
            }
         }
      }
      
      public function decideDifficulty() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Number = NaN;
         var _loc1_:MiniGameCravings = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(!_loc6_)
         {
            if(_loc2_ < this.prizeSKUs.length)
            {
               if(_loc7_ || Boolean(_loc1_))
               {
               }
            }
            else
            {
               _loc1_.whichDifficulty = this.prizeSKUs.length;
            }
            var _loc3_:Array = _loc1_.screen.gameObj.userData.getCustomerPool(5,true);
            §§goto(addr63);
         }
         §§push(_loc1_);
         §§push(_loc2_);
         if(_loc7_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().whichDifficulty = §§pop();
         if(_loc7_ || Boolean(_loc3_))
         {
         }
         addr63:
         if(_loc7_ || Boolean(_loc3_))
         {
            _loc1_.customerLineup = [];
         }
         var _loc4_:int = 0;
         while(_loc4_ < 5)
         {
            _loc5_ = Math.floor(Math.random() * _loc3_.length);
            if(_loc7_ || Boolean(this))
            {
               _loc1_.customerLineup.push(_loc3_[_loc5_]);
               if(_loc6_ && Boolean(this))
               {
                  continue;
               }
               _loc3_.splice(_loc5_,1);
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc4_++;
            if(!(_loc7_ || Boolean(_loc1_)))
            {
               break;
            }
         }
      }
      
      public function checkSuccess() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameCravings = this;
         if(_loc5_ || Boolean(_loc2_))
         {
            if(_loc1_.roundsWon == 5)
            {
               if(_loc5_ || Boolean(_loc2_))
               {
                  if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
                  {
                     if(!_loc6_)
                     {
                        _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
                        if(_loc5_ || Boolean(this))
                        {
                        }
                        addr92:
                        _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                     }
                     addr102:
                  }
                  else
                  {
                     _loc2_ = [];
                     if(!_loc6_)
                     {
                        _loc3_ = 0;
                     }
                     do
                     {
                        if(_loc3_ < _loc1_.prizeSKUs.length)
                        {
                           continue;
                        }
                        _loc4_ = Math.floor(Math.random() * _loc2_.length);
                        _loc1_.skuToWin = _loc2_[_loc4_];
                        _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           break;
                        }
                     }
                     while(if(_loc1_.allowedForRandom[_loc3_] == 1)
                     {
                        _loc2_.push(_loc1_.prizeSKUs[_loc3_]);
                     }, _loc3_++, _loc5_ || Boolean(_loc2_));
                     
                     _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                  }
                  _loc1_.amountToWin = 1;
                  if(_loc5_ || Boolean(_loc1_))
                  {
                  }
                  §§goto(addr348);
               }
            }
            else
            {
               §§push(_loc1_.roundsWon);
               if(!_loc6_)
               {
                  §§push(4);
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc5_)
                        {
                           _loc1_.skuToWin = "tips";
                           _loc1_.amountToWin = 150;
                           _loc1_.skuIsClothing = false;
                           if(_loc5_)
                           {
                              _loc1_.skuClothingMode = "";
                              if(_loc6_)
                              {
                              }
                           }
                           else
                           {
                              addr276:
                              _loc1_.skuToWin = "tips";
                              _loc1_.amountToWin = 75;
                              if(!_loc6_)
                              {
                                 _loc1_.skuIsClothing = false;
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    addr294:
                                    _loc1_.skuClothingMode = "";
                                 }
                              }
                              else
                              {
                                 addr312:
                                 _loc1_.amountToWin = 50;
                                 _loc1_.skuIsClothing = false;
                                 _loc1_.skuClothingMode = "";
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    addr328:
                                 }
                              }
                              _loc1_.skuClothingMode = "";
                           }
                        }
                        else
                        {
                           addr262:
                        }
                        §§goto(addr348);
                     }
                     else
                     {
                        §§push(_loc1_.roundsWon);
                        if(!_loc6_)
                        {
                           §§push(3);
                           if(!(_loc6_ && Boolean(_loc1_)))
                           {
                              if(§§pop() == §§pop())
                              {
                                 _loc1_.skuToWin = "tips";
                                 _loc1_.amountToWin = 100;
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    _loc1_.skuIsClothing = false;
                                    _loc1_.skuClothingMode = "";
                                    if(!_loc6_)
                                    {
                                       §§goto(addr262);
                                    }
                                    else
                                    {
                                       §§goto(addr312);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr294);
                                 }
                                 addr348:
                                 return;
                              }
                              §§push(_loc1_.roundsWon);
                              if(_loc5_)
                              {
                                 §§push(2);
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr276);
                           }
                           else
                           {
                              §§push(_loc1_.roundsWon);
                           }
                        }
                     }
                     addr339:
                     _loc1_.amountToWin = 0;
                  }
                  addr301:
                  if(§§pop() == §§pop())
                  {
                     _loc1_.skuToWin = "tips";
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§goto(addr312);
                     }
                     §§goto(addr328);
                  }
                  else
                  {
                     _loc1_.skuToWin = null;
                  }
                  §§goto(addr339);
               }
               §§goto(addr301);
               §§push(1);
            }
            _loc1_.skuIsClothing = false;
            §§goto(addr276);
         }
         _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
         if(_loc5_ || Boolean(_loc3_))
         {
            §§goto(addr92);
         }
         §§goto(addr102);
      }
      
      override public function updateScreen() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:MiniGameCravings = this;
         §§push(_loc1_.previousCustomer != null);
         if(!(_loc5_ && _loc3_))
         {
            §§goto(addr80);
         }
         if(§§pop())
         {
            _loc1_.clip.previousholder.x -= _loc1_.walkSpeed;
            if(_loc1_.clip.previousholder.x <= _loc1_.offScreenLeft)
            {
               _loc1_.previousCustomer.stop();
            }
         }
         §§push(_loc1_.currentCustomer == null);
         if(!(_loc5_ && Boolean(this)))
         {
            addr80:
            §§push(§§pop());
            if(!_loc5_)
            {
               if(§§pop())
               {
                  §§pop();
                  addr209:
                  if(!_loc5_)
                  {
                     §§push(_loc1_.clip.previousholder.x > _loc1_.offScreenLeft);
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§push(_loc1_.tickets);
                        if(_loc6_)
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(_loc6_)
                              {
                                 §§push(_loc1_.ticketTweenTimer);
                                 if(_loc6_)
                                 {
                                    if(§§pop() == _loc1_.ticketTweenMax)
                                    {
                                       _loc1_.canClick = true;
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          _loc1_.ticketsEntering = false;
                                          if(_loc5_)
                                          {
                                             addr549:
                                             while(true)
                                             {
                                                §§push(_loc1_.tickets);
                                             }
                                             addr549:
                                          }
                                          §§goto(addr620);
                                       }
                                       addr617:
                                       _loc1_.lastTicketLeaving = false;
                                       §§goto(addr620);
                                    }
                                    addr285:
                                    §§goto(addr620);
                                 }
                                 else
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc1_.tickets);
                                       if(!_loc5_)
                                       {
                                          if(§§pop() >= §§pop().length)
                                          {
                                             §§push(_loc1_.ticketTweenTimer);
                                             if(_loc6_)
                                             {
                                                §§push(_loc1_.ticketTweenOutMax);
                                                if(_loc6_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      _loc1_.ticketsLeaving = false;
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc1_.ticketPositions);
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc1_.choseWhichTicket);
                                                            if(_loc6_ || Boolean(_loc2_))
                                                            {
                                                               addr465:
                                                               §§pop()[§§pop()] = _loc1_.tickets[_loc1_.choseWhichTicket].x;
                                                               addr472:
                                                               _loc1_.decideNextRound();
                                                            }
                                                            else
                                                            {
                                                               addr552:
                                                               while(true)
                                                               {
                                                                  §§pop()[§§pop()].x = §_-0e§.easeOut(_loc1_.ticketTweenTimer,_loc1_.ticketPositions[_loc2_],_loc1_.ticketOffscreenPad * -1,_loc1_.ticketTweenMax);
                                                                  addr568:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc5_ && Boolean(_loc2_)))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr549);
                                                               }
                                                               addr552:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr617);
                                                   }
                                                   addr474:
                                                   §§goto(addr620);
                                                }
                                                addr602:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc5_ && Boolean(_loc1_)))
                                                   {
                                                      §§goto(addr617);
                                                   }
                                                }
                                                §§goto(addr620);
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc6_ || Boolean(_loc1_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr587:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.tickets);
                                                         break loop11;
                                                      }
                                                   }
                                                   addr586:
                                                }
                                                break;
                                             }
                                             addr598:
                                             break loop0;
                                             addr577:
                                             §§push(_loc1_.ticketTweenTimer);
                                          }
                                          else
                                          {
                                             §§push(_loc2_);
                                             §§push(_loc1_.whichTicketIsCorrect);
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   §§push(_loc1_.tickets);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   break;
                                                }
                                                if(_loc6_)
                                                {
                                                   §§push(_loc1_.tickets);
                                                   if(!(_loc5_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc5_)
                                                      {
                                                         §§pop()[§§pop()].x = §_-0e§.easeOut(Math.min(_loc1_.ticketTweenTimer,_loc1_.ticketTweenMax),_loc1_.ticketPositions[_loc2_],_loc1_.ticketOffscreenPad * -1,_loc1_.ticketTweenMax);
                                                         while(true)
                                                         {
                                                            addr423:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_ + 1);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr577);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr587);
                                                         }
                                                         addr388:
                                                      }
                                                      §§goto(addr552);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr472);
                                             }
                                             addr353:
                                          }
                                       }
                                       break;
                                    }
                                    addr432:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr552);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr432);
                              }
                              addr431:
                           }
                           else
                           {
                              §§push(_loc1_.tickets);
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 §§push(_loc2_);
                                 if(!_loc5_)
                                 {
                                    §§pop()[§§pop()].x = §_-0e§.easeOut(_loc1_.ticketTweenTimer,_loc1_.ticketPositions[_loc2_],_loc1_.ticketOffscreenPad * -1,_loc1_.ticketTweenMax);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc2_ + 1);
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       _loc2_ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr388);
                                 }
                                 §§goto(addr552);
                              }
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc6_ || _loc3_)
                              {
                                 §§pop()[§§pop()].x = §_-0e§.easeOut(Math.min(_loc1_.ticketTweenTimer,_loc1_.ticketTweenMax / 2),_loc1_.ticketPositions[_loc2_],_loc1_.correctTicketDistToCenter,_loc1_.ticketTweenMax / 2);
                                 §§goto(addr423);
                              }
                              break;
                           }
                           §§goto(addr465);
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(_loc6_ || Boolean(_loc1_))
                              {
                              }
                              §§goto(addr620);
                           }
                           else
                           {
                              §§push(_loc2_);
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 if(§§pop() == _loc1_.choseWhichTicket)
                                 {
                                    §§goto(addr549);
                                 }
                                 §§goto(addr568);
                              }
                              §§goto(addr576);
                           }
                        }
                     }
                     break;
                  }
                  §§goto(addr602);
                  §§push(_loc1_.ticketTweenMax);
               }
            }
            if(§§pop())
            {
               §§pop();
               §§goto(addr157);
            }
            if(§§pop())
            {
               _loc1_.clip.customerholder.x -= _loc1_.walkSpeed;
               if(_loc6_ || Boolean(_loc3_))
               {
                  if(_loc1_.clip.customerholder.x <= _loc1_.centerScreen)
                  {
                     _loc1_.clip.customerholder.x = _loc1_.centerScreen;
                     _loc1_.currentCustomer.gotoAndPlay("stand");
                     _loc1_.isCustomerCentered = true;
                     if(!_loc5_)
                     {
                        _loc1_.createTickets();
                        if(_loc6_)
                        {
                        }
                        §§goto(addr172);
                     }
                     _loc1_.ticketsEntering = true;
                     if(_loc6_)
                     {
                        _loc1_.foodiniClip.gotoAndPlay("talk");
                        if(_loc6_ || Boolean(this))
                        {
                           §§goto(addr157);
                        }
                     }
                     §§goto(addr206);
                  }
               }
               §§goto(addr209);
            }
            addr157:
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(_loc1_.clip.customerholder.x > _loc1_.centerScreen);
            }
            _loc1_.clip.talktext.visible = true;
            if(_loc1_.ticketsEntering)
            {
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  addr172:
                  §§push(_loc1_.ticketTweenTimer);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() < _loc1_.ticketTweenMax)
                     {
                        var _loc3_:* = _loc1_;
                        §§push(_loc3_.ticketTweenTimer);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!_loc5_)
                        {
                           _loc3_.ticketTweenTimer = _loc4_;
                        }
                        if(_loc5_)
                        {
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr285);
                  }
                  addr208:
                  _loc2_ = §§pop();
                  §§goto(addr209);
               }
               addr206:
               §§goto(addr208);
               §§push(0);
            }
            else
            {
               §§push(_loc1_.ticketsLeaving);
               if(_loc6_ || Boolean(_loc3_))
               {
                  if(§§pop())
                  {
                     §§push(_loc1_.ticketTweenTimer);
                     §§push(_loc1_.ticketTweenOutMax);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc6_)
                           {
                              _loc3_ = _loc1_;
                              §§push(_loc3_.ticketTweenTimer);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc4_ = §§pop();
                              if(!_loc5_)
                              {
                                 _loc3_.ticketTweenTimer = _loc4_;
                              }
                              if(!_loc5_)
                              {
                                 §§push(0);
                                 if(!(_loc5_ && Boolean(_loc1_)))
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc6_)
                                       {
                                          §§goto(addr431);
                                       }
                                       else
                                       {
                                          addr504:
                                          _loc3_ = _loc1_;
                                          §§push(_loc3_.ticketTweenTimer);
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc6_)
                                          {
                                             _loc3_.ticketTweenTimer = _loc4_;
                                          }
                                          §§push(0);
                                       }
                                    }
                                    §§goto(addr598);
                                 }
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc6_ || Boolean(this))
                                    {
                                    }
                                    §§goto(addr617);
                                 }
                                 §§goto(addr598);
                              }
                              §§goto(addr586);
                           }
                           else
                           {
                              addr485:
                              §§push(_loc1_.ticketTweenTimer);
                              §§push(_loc1_.ticketTweenMax);
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       §§goto(addr504);
                                    }
                                    §§goto(addr617);
                                 }
                              }
                           }
                           §§goto(addr602);
                        }
                        §§goto(addr474);
                     }
                     §§goto(addr353);
                  }
                  else
                  {
                     §§push(_loc1_.lastTicketLeaving);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     §§goto(addr485);
                  }
                  §§goto(addr598);
               }
            }
            addr620:
            return;
            §§push(!§§pop());
            §§push(!§§pop());
         }
         §§goto(addr157);
      }
      
      public function decideNextRound() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc1_:MiniGameCravings = this;
         var _loc2_:* = true;
         §§push(_loc1_.choseWhichTicket);
         if(_loc7_ || Boolean(_loc3_))
         {
            §§push(§§pop() == _loc1_.whichTicketIsCorrect);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§pop();
                     §§goto(addr62);
                  }
               }
               addr48:
               if(§§pop())
               {
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§push(true);
                     if(_loc7_)
                     {
                        addr59:
                        _loc2_ = §§pop();
                        if(_loc7_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr108);
               }
               else
               {
                  §§push(false);
                  if(_loc6_ && Boolean(_loc1_))
                  {
                  }
               }
               §§goto(addr62);
            }
            _loc2_ = §§pop();
            addr62:
            if(!_loc6_)
            {
               §§push(_loc1_.whichRound);
            }
            if(_loc2_)
            {
               if(_loc7_)
               {
                  var _loc4_:* = _loc1_;
                  §§push(_loc4_.whichRound);
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc4_.whichRound = _loc5_;
                  }
               }
               addr108:
               _loc1_.lastTicketLeaving = true;
               addr111:
               _loc1_.ticketTweenTimer = 0;
               _loc3_ = 1;
               while(true)
               {
                  if(_loc3_ > _loc1_.maxRounds)
                  {
                     _loc1_.createNewCustomer();
                     break;
                  }
                  §§push(_loc1_.roundsWon);
                  if(!_loc6_)
                  {
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           _loc1_.clip["light" + _loc3_].gotoAndStop(2);
                        }
                        else
                        {
                           _loc1_.clip["light" + _loc3_].gotoAndStop(1);
                        }
                        _loc3_++;
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           continue;
                        }
                     }
                     _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
                     addr184:
                     break;
                  }
                  addr164:
                  §§push(5);
                  if(§§pop() == §§pop())
                  {
                     if(_loc7_ || Boolean(this))
                     {
                     }
                     break;
                  }
                  §§goto(addr184);
               }
               §§goto(addr202);
            }
            else
            {
               _loc1_.checkSuccess();
               if(!_loc6_)
               {
                  §§goto(addr164);
                  §§push(_loc1_.roundsWon);
               }
            }
            _loc1_.foodiniClip.gotoAndPlay("wintostand");
            if(!(_loc6_ && _loc2_))
            {
               §§goto(addr184);
            }
            addr202:
            return;
         }
         §§push(§§pop() < 5);
         if(_loc7_)
         {
            §§goto(addr48);
         }
         §§goto(addr59);
      }
      
      override public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MiniGameCravings = this;
         try
         {
            if(_loc1_.foodiniClip != null)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.clip.foodiniholder.removechild(_loc1_.foodiniClip);
                  if(_loc4_)
                  {
                  }
                  addr120:
                  _loc1_.previousCustomer.parent.removeChild(_loc1_.previousCustomer);
                  addr126:
                  _loc1_.previousCustomer = null;
               }
               _loc1_.foodiniClip = null;
            }
            try
            {
               addr51:
               _loc1_.clearTickets();
            }
            catch(err:Error)
            {
               var _loc2_:* = err;
            }
            if(_loc1_.currentCustomer != null)
            {
               if(!_loc3_)
               {
                  try
                  {
                     _loc1_.clearCustomer(_loc1_.currentCustomer);
                     _loc1_.currentCustomer.parent.removeChild(_loc1_.currentCustomer);
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_.currentCustomer = null;
                     }
                     §§goto(addr126);
                  }
                  catch(err:Error)
                  {
                  }
               }
               §§goto(addr126);
            }
            if(_loc1_.previousCustomer != null)
            {
               if(_loc4_)
               {
                  try
                  {
                     _loc1_.clearCustomer(_loc1_.previousCustomer);
                     §§goto(addr120);
                  }
                  catch(err:Error)
                  {
                  }
               }
               §§goto(addr120);
            }
         }
         catch(err:Error)
         {
            _loc2_ = err;
            §§goto(addr51);
         }
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
      
      public function buildCustomer(param1:Number, param2:Boolean = false) : MovieClip
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc31_:Class = null;
         var _loc32_:MovieClip = null;
         var _loc3_:MiniGameCravings = this;
         var _loc4_:MovieClip = new customerMC();
         var _loc5_:String = _loc3_.screen.gameObj.customerData.getCustomerClipName(param1);
         var _loc6_:Class = getDefinitionByName("customer_" + _loc5_ + "_body") as Class;
         var _loc7_:MovieClip = new _loc6_();
         _loc7_.name = "clip";
         if(_loc34_)
         {
            _loc4_.body.addChild(_loc7_);
         }
         var _loc8_:Class = getDefinitionByName("customer_" + _loc5_ + "_head") as Class;
         var _loc9_:MovieClip = new _loc8_();
         _loc9_.name = "clip";
         if(!(_loc35_ && Boolean(this)))
         {
            _loc4_.head.addChild(_loc9_);
         }
         var _loc10_:Class = getDefinitionByName("customer_" + _loc5_ + "_eyes") as Class;
         var _loc11_:MovieClip = new _loc10_();
         _loc11_.name = "clip";
         if(!(_loc35_ && Boolean(param1)))
         {
            _loc4_.eyes.addChild(_loc11_);
         }
         var _loc12_:Class = getDefinitionByName("customer_" + _loc5_ + "_mouth") as Class;
         var _loc13_:MovieClip = new _loc12_();
         _loc13_.name = "clip";
         if(!(_loc35_ && param2))
         {
            _loc4_.mouth.addChild(_loc13_);
         }
         var _loc14_:Class = getDefinitionByName("customer_" + _loc5_ + "_neck") as Class;
         var _loc15_:MovieClip = new _loc14_();
         _loc15_.name = "clip";
         if(_loc34_ || Boolean(param1))
         {
            _loc4_.neck.addChild(_loc15_);
         }
         try
         {
            _loc29_ = getDefinitionByName("customer_" + _loc5_ + "_hair") as Class;
            _loc30_ = new _loc29_();
            _loc30_.name = "clip";
            if(!_loc35_)
            {
               _loc4_.hair.addChild(_loc30_);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc31_ = getDefinitionByName("customer_" + _loc5_ + "_back_hair") as Class;
            _loc32_ = new _loc31_();
            _loc32_.name = "clip";
            if(!(_loc35_ && Boolean(param1)))
            {
               _loc4_.back_hair.addChild(_loc32_);
            }
         }
         catch(err:Error)
         {
         }
         var _loc16_:Class = getDefinitionByName("customer_" + _loc5_ + "_foot") as Class;
         var _loc17_:MovieClip = new _loc16_();
         _loc17_.name = "clip";
         if(_loc34_ || Boolean(param1))
         {
            _loc4_.front_shoe.addChild(_loc17_);
         }
         var _loc18_:MovieClip = new _loc16_();
         _loc18_.name = "clip";
         if(!_loc35_)
         {
            _loc4_.back_shoe.addChild(_loc18_);
         }
         var _loc19_:Class = getDefinitionByName("customer_" + _loc5_ + "_hand") as Class;
         var _loc20_:MovieClip = new _loc19_();
         _loc20_.name = "clip";
         if(!(_loc35_ && Boolean(_loc3_)))
         {
            _loc4_.fronthand.addChild(_loc20_);
         }
         var _loc21_:Class = getDefinitionByName("customer_" + _loc5_ + "_hand2") as Class;
         var _loc22_:MovieClip = new _loc21_();
         _loc22_.name = "clip";
         if(!(_loc35_ && param2))
         {
            _loc4_.backhand.addChild(_loc22_);
         }
         var _loc23_:Class = getDefinitionByName("customer_" + _loc5_ + "_upperarm") as Class;
         var _loc24_:MovieClip = new _loc23_();
         _loc24_.name = "clip";
         if(!_loc35_)
         {
            _loc4_.front_upperarm.addChild(_loc24_);
         }
         var _loc25_:MovieClip = new _loc23_();
         _loc25_.name = "clip";
         if(!(_loc35_ && Boolean(this)))
         {
            _loc4_.back_upperarm.addChild(_loc25_);
         }
         var _loc26_:Class = getDefinitionByName("customer_" + _loc5_ + "_forearm") as Class;
         var _loc27_:MovieClip = new _loc26_();
         _loc27_.name = "clip";
         if(!(_loc35_ && param2))
         {
            _loc4_.front_forearm.addChild(_loc27_);
         }
         var _loc28_:MovieClip = new _loc26_();
         _loc28_.name = "clip";
         _loc4_.back_forearm.addChild(_loc28_);
         if(param2)
         {
            _loc17_.visible = false;
            _loc18_.visible = false;
            _loc7_.visible = false;
            _loc20_.visible = false;
            _loc22_.visible = false;
            _loc24_.visible = false;
            _loc25_.visible = false;
            _loc27_.visible = false;
            _loc28_.visible = false;
            if(_loc34_)
            {
               _loc15_.visible = false;
               _loc4_.gotoAndStop("stand");
            }
         }
         else
         {
            _loc4_.gotoAndPlay("stand");
         }
         return _loc4_;
      }
      
      public function clearCustomer(param1:MovieClip) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MiniGameCravings = this;
         try
         {
            param1.stop();
            param1.head.removeChildAt(0);
            param1.eyes.removeChildAt(0);
            if(_loc4_)
            {
               param1.mouth.removeChildAt(0);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            param1.body.removeChildAt(0);
            param1.neck.removeChildAt(0);
            if(!_loc5_)
            {
               param1.front_shoe.removeChildAt(0);
               param1.back_shoe.removeChildAt(0);
               param1.fronthand.removeChildAt(0);
            }
            param1.backhand.removeChildAt(0);
            param1.front_upperarm.removeChildAt(0);
            param1.back_upperarm.removeChildAt(0);
            param1.front_forearm.removeChildAt(0);
            if(!_loc5_)
            {
               param1.back_forearm.removeChildAt(0);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            param1.hair.removeChildAt(0);
            if(_loc4_ || Boolean(param1))
            {
               try
               {
                  addr130:
                  param1.back_hair.removeChildAt(0);
               }
               catch(err:Error)
               {
               }
               §§goto(addr153);
            }
         }
         catch(err:Error)
         {
            §§goto(addr130);
         }
         addr153:
      }
      
      public function createNewCustomer() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MiniGameCravings = this;
         §§push(_loc1_.customerLineup);
         §§push(_loc1_.whichRound);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() - 1);
         }
         var _loc2_:Number = Number(§§pop()[§§pop()]);
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc1_.previousCustomer != null)
            {
               if(_loc4_ || Boolean(this))
               {
                  _loc1_.clearCustomer(_loc1_.previousCustomer);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc1_.clip.previousholder.removeChild(_loc1_.previousCustomer);
                     _loc1_.previousCustomer = null;
                  }
                  addr78:
                  _loc1_.clip.previousholder.addChild(_loc1_.previousCustomer);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                  }
                  §§goto(addr153);
               }
               _loc1_.previousCustomer.gotoAndPlay("walk");
               _loc1_.clip.previousholder.x = _loc1_.centerScreen;
               _loc1_.currentCustomer = null;
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr118:
                  _loc1_.currentCustomer = _loc1_.buildCustomer(_loc2_);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc1_.clip.customerholder.addChild(_loc1_.currentCustomer);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.currentCustomer.gotoAndPlay("walk");
                     }
                  }
                  _loc1_.clip.customerholder.x = _loc1_.offScreenRight;
               }
               addr153:
               _loc1_.isCustomerCentered = false;
               _loc1_.clip.talktext.customername_txt.text = _loc1_.screen.gameObj.customerData.getCustomerName(_loc2_);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.clip.talktext.visible = false;
                  if(_loc4_ || _loc3_)
                  {
                  }
               }
               return;
            }
            if(_loc1_.currentCustomer != null)
            {
               _loc1_.previousCustomer = _loc1_.currentCustomer;
               §§goto(addr78);
            }
            §§goto(addr118);
         }
         _loc1_.foodiniClip.gotoAndPlay("okaytostand");
         §§goto(addr78);
      }
      
      public function createTickets() : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc12_:* = NaN;
         var _loc17_:MovieClip = null;
         var _loc18_:CustomerOrder = null;
         var _loc1_:MiniGameCravings = this;
         §§push(_loc1_.customerLineup);
         §§push(_loc1_.whichRound);
         if(!_loc20_)
         {
            §§push(§§pop() - 1);
         }
         var _loc2_:Number = Number(§§pop()[§§pop()]);
         var _loc3_:CustomerOrder = _loc1_.getCorrectOrder(_loc2_);
         var _loc4_:CustomerOrder = _loc1_.getCompleteOrder(_loc2_);
         var _loc5_:* = 0;
         if(!_loc20_)
         {
            §§push(_loc1_.whichDifficulty);
            if(_loc19_)
            {
               §§push(2);
               if(!(_loc20_ && Boolean(_loc3_)))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc19_)
                  {
                     if(§§pop())
                     {
                        if(_loc19_ || Boolean(_loc1_))
                        {
                           §§pop();
                           addr252:
                           if(!(_loc20_ && Boolean(_loc2_)))
                           {
                              §§push(_loc1_.whichDifficulty);
                              §§push(4);
                              if(!_loc20_)
                              {
                                 §§push(§§pop() <= §§pop());
                                 if(_loc19_ || Boolean(_loc1_))
                                 {
                                 }
                                 addr300:
                                 addr212:
                                 §§push(§§pop());
                                 if(_loc19_)
                                 {
                                    addr215:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       addr319:
                                       if(_loc19_ || Boolean(_loc2_))
                                       {
                                          addr297:
                                          §§push(_loc1_.whichRound);
                                          if(_loc19_)
                                          {
                                             addr228:
                                             §§push(3);
                                             if(_loc19_ || Boolean(_loc3_))
                                             {
                                             }
                                             addr298:
                                             §§push(§§pop() > §§pop());
                                             §§push(§§pop() > §§pop());
                                          }
                                          §§goto(addr298);
                                          §§push(8);
                                       }
                                       var _loc6_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,1 + _loc5_,_loc2_);
                                       var _loc7_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,2 + _loc5_,_loc2_);
                                       var _loc8_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,3 + _loc5_,_loc2_);
                                       var _loc9_:CustomerOrder = _loc1_.createWrongOrder(_loc3_,_loc4_,4 + _loc5_,_loc2_);
                                       var _loc10_:Array = [_loc6_,_loc7_,_loc8_,_loc9_];
                                       var _loc11_:* = 2;
                                       §§push(_loc1_.whichDifficulty);
                                       if(!_loc20_)
                                       {
                                          §§push(5);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop() < §§pop());
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc20_)
                                                {
                                                   §§pop();
                                                   if(_loc19_ || Boolean(_loc3_))
                                                   {
                                                      addr643:
                                                      §§push(_loc1_.whichRound);
                                                      §§push(3);
                                                      if(!(_loc20_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                      }
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr646:
                                                         _loc11_ = 5;
                                                         addr644:
                                                         if(_loc19_ || Boolean(_loc2_))
                                                         {
                                                         }
                                                         addr662:
                                                         var _loc13_:int = 0;
                                                         §§goto(addr661);
                                                      }
                                                   }
                                                   §§goto(addr654);
                                                }
                                                addr512:
                                                §§pop();
                                                §§push(_loc1_.whichRound);
                                                if(!_loc20_)
                                                {
                                                   §§push(3);
                                                   if(_loc20_ && Boolean(this))
                                                   {
                                                   }
                                                   addr543:
                                                   §§push(§§pop() >= §§pop());
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc19_ || Boolean(_loc1_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc20_ && Boolean(_loc3_)))
                                                         {
                                                            §§pop();
                                                            addr584:
                                                            if(!(_loc20_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(_loc1_.whichDifficulty);
                                                               if(!(_loc20_ && Boolean(_loc3_)))
                                                               {
                                                                  addr588:
                                                                  addr587:
                                                                  §§push(11);
                                                                  if(_loc19_)
                                                                  {
                                                                     addr580:
                                                                     §§push(§§pop() <= §§pop());
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!(_loc20_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr596:
                                                                        §§push(4);
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc20_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              if(_loc19_)
                                                                              {
                                                                              }
                                                                              §§goto(addr644);
                                                                           }
                                                                           §§goto(addr654);
                                                                        }
                                                                        §§goto(addr637);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr620:
                                                                        §§push(_loc1_.whichDifficulty);
                                                                     }
                                                                     §§push(11);
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr626:
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           if(_loc19_)
                                                                           {
                                                                              addr630:
                                                                              §§pop();
                                                                              §§push(_loc1_.whichRound);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr643);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc1_.whichDifficulty);
                                                                     if(_loc19_ || Boolean(this))
                                                                     {
                                                                        §§push(§§pop() >= 9);
                                                                        §§push(§§pop() >= 9);
                                                                     }
                                                                  }
                                                                  addr642:
                                                                  §§goto(addr643);
                                                                  §§push(11);
                                                               }
                                                               §§push(§§pop() >= 3);
                                                            }
                                                            §§push(_loc1_.whichRound);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr637:
                                                            _loc11_ = §§pop();
                                                            addr654:
                                                            _loc1_.clearTickets();
                                                            if(_loc19_)
                                                            {
                                                               _loc1_.tickets = [];
                                                            }
                                                            addr661:
                                                            while(_loc13_ < _loc11_)
                                                            {
                                                               _loc17_ = new ticketMC();
                                                               _loc17_.number_txt.text = "0" + _loc1_.whichRound;
                                                               _loc17_.scaleX = 0.65;
                                                               _loc17_.scaleY = 0.65;
                                                               _loc17_.x = 0 + 100 * _loc13_;
                                                               _loc17_.y = 90;
                                                               if(_loc19_)
                                                               {
                                                                  _loc17_.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTicket);
                                                                  _loc17_.buttonMode = true;
                                                               }
                                                               _loc17_.useHandCursor = true;
                                                               _loc17_.mouseChildren = false;
                                                               _loc18_ = _loc3_;
                                                               if(!(_loc20_ && Boolean(_loc3_)))
                                                               {
                                                                  if(_loc13_ > 0)
                                                                  {
                                                                     if(!(_loc19_ || Boolean(_loc2_)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc18_ = _loc10_[_loc13_ - 1];
                                                                  }
                                                                  _loc1_.createOrderPanels(_loc18_,_loc17_);
                                                                  if(_loc20_ && Boolean(_loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc13_++;
                                                            }
                                                            var _loc14_:MovieClip = _loc1_.tickets.shift();
                                                            var _loc15_:Number = Math.floor(this.randomize() * (_loc1_.tickets.length + 1));
                                                            if(_loc19_)
                                                            {
                                                               _loc1_.tickets.splice(_loc15_,0,_loc14_);
                                                               if(_loc20_)
                                                               {
                                                               }
                                                               §§goto(addr780);
                                                            }
                                                            _loc1_.whichTicketIsCorrect = _loc15_;
                                                            addr780:
                                                            §§push(640 - _loc1_.tickets.length * _loc1_.ticketPad);
                                                            if(!(_loc20_ && Boolean(_loc1_)))
                                                            {
                                                               §§push(§§pop() / 2);
                                                               if(!(_loc20_ && Boolean(this)))
                                                               {
                                                                  §§push(_loc1_.ticketPad);
                                                                  if(_loc19_ || Boolean(_loc1_))
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc20_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                               }
                                                            }
                                                            var _loc16_:* = §§pop();
                                                            §§push(0);
                                                            if(_loc19_ || Boolean(this))
                                                            {
                                                               _loc12_ = §§pop();
                                                               addr922:
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_);
                                                               }
                                                               addr922:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() >= _loc1_.tickets.length)
                                                               {
                                                                  _loc1_.ticketTweenTimer = 0;
                                                                  if(_loc19_ || Boolean(_loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr955);
                                                               }
                                                               §§push(_loc1_.tickets);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§pop()[§§pop()].x = _loc16_ + _loc1_.ticketPad * _loc12_;
                                                                     §§push(_loc1_.tickets);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(_loc12_);
                                                                     }
                                                                  }
                                                                  §§pop()[§§pop()].x = _loc1_.tickets[_loc12_].x + _loc1_.ticketOffscreenPad;
                                                                  if(_loc19_ || Boolean(this))
                                                                  {
                                                                     §§push(_loc1_.ticketPositions);
                                                                  }
                                                                  §§goto(addr922);
                                                               }
                                                               §§pop().push(_loc1_.tickets[_loc12_].x);
                                                               _loc1_.clip.holder.addChild(_loc1_.tickets[_loc12_]);
                                                               §§push(_loc12_);
                                                               if(_loc19_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc19_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc19_ || Boolean(_loc2_)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                               _loc12_ = §§pop();
                                                               if(_loc20_ && Boolean(_loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr922);
                                                            }
                                                            _loc1_.canClick = false;
                                                            if(!_loc20_)
                                                            {
                                                               _loc1_.screen.gameObj.soundManager.playSound("trayslide.wav");
                                                            }
                                                            addr955:
                                                            return;
                                                            §§push(5);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr642);
                                                            §§push(_loc1_.whichDifficulty);
                                                         }
                                                         §§goto(addr654);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr583:
                                                         §§pop();
                                                         §§goto(addr584);
                                                      }
                                                      §§goto(addr588);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      addr619:
                                                      §§pop();
                                                      §§goto(addr620);
                                                   }
                                                   §§goto(addr626);
                                                }
                                                _loc11_ = §§pop();
                                                §§goto(addr654);
                                             }
                                             if(§§pop())
                                             {
                                                §§push(3);
                                                if(!(_loc20_ && Boolean(_loc1_)))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc20_ && Boolean(this)))
                                                   {
                                                      _loc11_ = §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr637);
                                                }
                                                §§goto(addr654);
                                             }
                                             else
                                             {
                                                §§push(_loc1_.whichDifficulty >= 3);
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc20_ && Boolean(_loc3_)))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(_loc1_.whichDifficulty);
                                                         §§push(8);
                                                         if(_loc19_ || Boolean(this))
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                            if(_loc20_ && Boolean(this))
                                                            {
                                                            }
                                                            §§goto(addr630);
                                                         }
                                                         §§goto(addr580);
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc20_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               §§pop();
                                                               §§push(_loc1_.whichRound < 3);
                                                            }
                                                            §§goto(addr619);
                                                         }
                                                      }
                                                      §§goto(addr626);
                                                   }
                                                   addr511:
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr512);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         §§push(4);
                                                         if(_loc19_ || Boolean(_loc1_))
                                                         {
                                                            §§goto(addr512);
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr662);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr596);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr543);
                                                      §§push(_loc1_.whichDifficulty);
                                                      §§push(9);
                                                   }
                                                   §§goto(addr626);
                                                }
                                                if(§§pop())
                                                {
                                                   §§push(3);
                                                   if(_loc19_)
                                                   {
                                                      _loc11_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr646);
                                                   }
                                                   §§goto(addr646);
                                                }
                                                else
                                                {
                                                   §§push(_loc1_.whichDifficulty);
                                                   §§push(4);
                                                   if(!(_loc20_ && Boolean(this)))
                                                   {
                                                      addr503:
                                                      §§push(§§pop() >= §§pop() && 8);
                                                      §§push(§§pop() >= §§pop() && 8);
                                                      if(_loc19_ || Boolean(_loc1_))
                                                      {
                                                         §§goto(addr511);
                                                      }
                                                      §§goto(addr626);
                                                   }
                                                   §§push(§§pop() <= §§pop());
                                                   if(!(_loc20_ && Boolean(_loc2_)))
                                                   {
                                                      §§goto(addr503);
                                                   }
                                                   §§goto(addr583);
                                                }
                                             }
                                             §§goto(addr588);
                                          }
                                          §§goto(addr511);
                                          §§push(§§pop() >= §§pop());
                                       }
                                       §§goto(addr587);
                                       §§push(3);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc20_)
                                    {
                                       addr303:
                                       §§pop();
                                       addr318:
                                       §§push(_loc1_.whichRound);
                                       if(!(_loc20_ && Boolean(this)))
                                       {
                                          addr313:
                                          §§push(2);
                                       }
                                       _loc5_ = §§pop();
                                       §§goto(addr319);
                                    }
                                 }
                                 addr315:
                                 if(§§pop())
                                 {
                                    addr316:
                                    §§goto(addr318);
                                    §§push(2);
                                 }
                                 §§goto(addr319);
                              }
                              §§goto(addr315);
                              §§push(§§pop() == §§pop());
                           }
                           §§goto(addr319);
                        }
                        addr128:
                        §§pop();
                        if(_loc19_)
                        {
                           §§push(_loc1_.whichDifficulty);
                           if(!_loc20_)
                           {
                              §§push(8);
                              if(_loc19_ || Boolean(_loc3_))
                              {
                                 addr144:
                                 §§push(§§pop() <= §§pop());
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc19_ || Boolean(_loc2_))
                                    {
                                       §§pop();
                                       §§push(_loc1_.whichRound);
                                       §§push(2);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc19_)
                                          {
                                          }
                                          §§goto(addr315);
                                       }
                                       addr259:
                                       §§push(§§pop() > §§pop());
                                       §§push(§§pop() > §§pop());
                                       if(!_loc20_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc20_ && Boolean(_loc3_)))
                                             {
                                                §§pop();
                                                §§push(_loc1_.whichRound);
                                                if(_loc19_ || Boolean(_loc3_))
                                                {
                                                   §§push(3);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                   }
                                                   §§goto(addr298);
                                                }
                                                addr291:
                                                _loc5_ = §§pop();
                                                §§goto(addr319);
                                             }
                                             §§goto(addr315);
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc19_)
                                             {
                                                §§push(3);
                                                if(!_loc20_)
                                                {
                                                   addr290:
                                                   §§goto(addr291);
                                                   §§push(§§pop());
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr316);
                                             }
                                             §§goto(addr316);
                                          }
                                          else
                                          {
                                             §§push(_loc1_.whichDifficulty);
                                             if(!_loc20_)
                                             {
                                                §§goto(addr297);
                                             }
                                             §§goto(addr313);
                                          }
                                       }
                                       §§goto(addr300);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    §§push(1);
                                    if(_loc19_)
                                    {
                                       addr166:
                                       §§push(§§pop());
                                       if(!(_loc20_ && Boolean(_loc1_)))
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc19_ || Boolean(_loc3_))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr290);
                                    }
                                    §§goto(addr319);
                                 }
                                 else
                                 {
                                    §§push(_loc1_.whichDifficulty);
                                    if(_loc19_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop() > 4);
                                       if(!_loc20_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc19_ || Boolean(this))
                                             {
                                                §§pop();
                                                §§push(_loc1_.whichDifficulty);
                                             }
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr303);
                                    }
                                 }
                                 _loc5_ = §§pop();
                                 if(_loc19_ || Boolean(this))
                                 {
                                    §§goto(addr252);
                                 }
                                 else
                                 {
                                    §§goto(addr316);
                                 }
                              }
                              addr209:
                              §§push(§§pop() <= §§pop());
                              if(_loc19_)
                              {
                              }
                              §§goto(addr300);
                           }
                           §§goto(addr209);
                           §§push(8);
                        }
                        §§goto(addr303);
                     }
                     §§push(§§pop());
                     if(_loc19_ || Boolean(_loc1_))
                     {
                        if(§§pop())
                        {
                           §§pop();
                        }
                        addr110:
                        if(§§pop())
                        {
                           §§push(1);
                           if(_loc19_ || Boolean(_loc1_))
                           {
                              _loc5_ = §§pop();
                           }
                           else
                           {
                              §§goto(addr166);
                           }
                           §§goto(addr319);
                        }
                        else
                        {
                           §§push(_loc1_.whichDifficulty > 4);
                           if(_loc1_.whichDifficulty > 4)
                           {
                              §§goto(addr128);
                           }
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr215);
                  }
                  addr239:
                  if(§§pop())
                  {
                     §§push(2);
                     if(!_loc20_)
                     {
                        §§goto(addr144);
                        §§push(§§pop());
                     }
                     else
                     {
                        §§goto(addr290);
                     }
                  }
                  else
                  {
                     §§push(_loc1_.whichDifficulty);
                     if(_loc19_)
                     {
                     }
                     §§goto(addr313);
                  }
                  §§goto(addr319);
               }
               §§push(§§pop() >= §§pop());
               if(_loc19_)
               {
                  §§goto(addr239);
               }
            }
            §§goto(addr259);
            §§push(8);
         }
         §§push(_loc1_.whichRound);
         if(!_loc20_)
         {
            §§goto(addr110);
            §§push(§§pop() >= 3);
         }
         §§goto(addr228);
      }
      
      public function doOrdersMatch(param1:CustomerOrder, param2:CustomerOrder) : Boolean
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc3_:MiniGameCravings = this;
         var _loc4_:* = true;
         if(_loc13_ || Boolean(param2))
         {
            if(param1.dips.length != param2.dips.length)
            {
               if(_loc12_)
               {
               }
               addr54:
            }
            else
            {
               _loc7_ = [];
               if(_loc13_)
               {
                  _loc5_ = 0;
               }
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc12_)
                  {
                     §§push(param1.dips);
                     if(_loc13_)
                     {
                        if(§§pop() < §§pop().length)
                        {
                           continue;
                        }
                        §§push(0);
                        if(!(_loc12_ && Boolean(param2)))
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(param2.dips);
                        }
                        addr112:
                     }
                     while(true)
                     {
                        if(§§pop() < §§pop().length)
                        {
                           if(_loc7_.indexOf(param2.dips[_loc5_][0]) == -1)
                           {
                              addr105:
                              _loc4_ = false;
                           }
                           else
                           {
                              _loc5_++;
                              if(!_loc12_)
                              {
                                 while(true)
                                 {
                                    §§goto(addr112);
                                 }
                                 addr111:
                              }
                              addr120:
                              §§push(param1.sides);
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 if(§§pop().length != param2.sides.length)
                                 {
                                    §§push(false);
                                    if(!(_loc12_ && Boolean(this)))
                                    {
                                       _loc4_ = §§pop();
                                       addr278:
                                       §§push(_loc4_);
                                       if(_loc13_)
                                       {
                                          addr281:
                                          §§push(false);
                                          if(!_loc12_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §§goto(addr489);
                                             }
                                             if(param1.wings.length == param2.wings.length)
                                             {
                                                §§push(0);
                                                if(_loc13_ || Boolean(_loc3_))
                                                {
                                                   _loc5_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr484:
                                                      while(true)
                                                      {
                                                         §§push(param1.wings);
                                                      }
                                                   }
                                                   addr483:
                                                }
                                             }
                                             loop19:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   §§push(param1.wings);
                                                   if(!(_loc12_ && Boolean(_loc3_)))
                                                   {
                                                      if(§§pop() < §§pop().length)
                                                      {
                                                         §§push(param1.wings);
                                                         if(!_loc12_)
                                                         {
                                                            addr418:
                                                            §§push(_loc6_);
                                                            if(_loc13_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop()[§§pop()][0] == param2.wings[_loc5_][0]);
                                                                  addr353:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr455:
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§pop();
                                                                           §§push(param1.wings);
                                                                           break loop13;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc13_ || Boolean(param1))
                                                                              {
                                                                                 §§push(false);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    do
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                    }
                                                                                    while(!(_loc13_ || Boolean(param2)));
                                                                                    
                                                                                    §§goto(addr488);
                                                                                    addr466:
                                                                                 }
                                                                                 §§goto(addr489);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc5_++;
                                                                           }
                                                                           §§goto(addr483);
                                                                        }
                                                                        addr455:
                                                                     }
                                                                  }
                                                               }
                                                               addr343:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop()[§§pop()][3] == param2.wings[_loc5_][3]);
                                                               if(_loc13_ || Boolean(_loc3_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        _loc6_++;
                                                                        continue loop13;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc11_ = true;
                                                                        addr438:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  addr435:
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                            addr418:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr455);
                                                         }
                                                         §§goto(addr489);
                                                      }
                                                   }
                                                   continue loop19;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop()[_loc6_][1] == param2.wings[_loc5_][1]);
                                                   if(_loc13_ || Boolean(param2))
                                                   {
                                                   }
                                                   addr410:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr411:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               §§pop();
                                                               §§goto(addr418);
                                                               §§push(param1.wings);
                                                               §§push(_loc6_);
                                                            }
                                                            §§goto(addr489);
                                                         }
                                                         §§goto(addr435);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr333);
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc13_ || Boolean(param1))
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(param1.wings);
                                                   }
                                                }
                                             }
                                             §§goto(addr410);
                                          }
                                          addr381:
                                       }
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          §§push(0);
                                          if(_loc13_ || Boolean(this))
                                          {
                                             addr333:
                                             §§push(false);
                                             if(_loc13_)
                                             {
                                                _loc4_ = §§pop();
                                                addr304:
                                                §§goto(addr488);
                                             }
                                             addr489:
                                             if(_loc13_ || Boolean(_loc3_))
                                             {
                                                addr488:
                                                §§push(_loc4_);
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr484);
                                       }
                                       addr324:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc12_)
                                       {
                                          §§goto(addr381);
                                       }
                                       §§goto(addr411);
                                    }
                                 }
                                 else
                                 {
                                    _loc5_ = 0;
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       §§push(param1.sides);
                                       if(_loc13_ || Boolean(_loc3_))
                                       {
                                          if(§§pop() < §§pop().length)
                                          {
                                             _loc10_ = false;
                                             _loc6_ = 0;
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                §§push(param1.sides);
                                                if(!_loc12_)
                                                {
                                                   if(§§pop() >= §§pop().length)
                                                   {
                                                      if(_loc13_ || Boolean(this))
                                                      {
                                                         addr247:
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               §§push(false);
                                                               if(_loc13_)
                                                               {
                                                                  addr254:
                                                                  _loc4_ = §§pop();
                                                                  if(_loc13_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr410);
                                                            }
                                                            §§goto(addr438);
                                                         }
                                                         else
                                                         {
                                                            _loc5_++;
                                                            if(!(_loc12_ && Boolean(_loc3_)))
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         §§goto(addr390);
                                                      }
                                                      §§goto(addr436);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1.sides);
                                                      §§push(_loc6_);
                                                      if(_loc13_ || Boolean(param2))
                                                      {
                                                         §§push(§§pop()[§§pop()][0] == param2.sides[_loc5_][0]);
                                                         if(§§pop()[§§pop()][0] == param2.sides[_loc5_][0])
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               §§pop();
                                                               §§push(param1.sides);
                                                               §§push(_loc6_);
                                                               if(_loc13_ || Boolean(this))
                                                               {
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         addr201:
                                                         if(!(§§pop() && param1.sides[_loc6_][2] == param2.sides[_loc5_][2]))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(true);
                                                         if(!_loc12_)
                                                         {
                                                            _loc10_ = §§pop();
                                                            if(_loc13_)
                                                            {
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§push(§§pop()[§§pop()][1] == param2.sides[_loc5_][1]);
                                                      if(_loc13_)
                                                      {
                                                         §§goto(addr201);
                                                      }
                                                   }
                                                   §§goto(addr353);
                                                }
                                                break;
                                                _loc6_++;
                                             }
                                          }
                                          §§goto(addr278);
                                       }
                                    }
                                 }
                                 while(§§pop() < §§pop().length)
                                 {
                                    §§push(false);
                                    if(_loc13_ || Boolean(param1))
                                    {
                                       §§goto(addr324);
                                    }
                                    §§goto(addr455);
                                 }
                                 §§goto(addr488);
                              }
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc12_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr410);
                                    §§push(§§pop()[§§pop()][2] == param2.wings[_loc5_][2]);
                                 }
                                 §§goto(addr418);
                              }
                              addr392:
                           }
                        }
                     }
                  }
                  break;
                  _loc7_.push(param1.dips[_loc5_][0]);
                  _loc5_++;
               }
               _loc5_ = §§pop();
               if(!_loc12_)
               {
                  §§goto(addr111);
               }
               §§goto(addr105);
            }
            if(_loc4_ == false)
            {
               §§goto(addr278);
            }
            else
            {
               §§goto(addr120);
            }
         }
         _loc4_ = false;
         §§goto(addr54);
      }
      
      public function createOrderPanels(param1:CustomerOrder, param2:MovieClip) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = NaN;
         var _loc10_:* = null;
         var _loc11_:MovieClip = null;
         var _loc12_:* = null;
         var _loc13_:* = NaN;
         var _loc14_:* = null;
         var _loc15_:MovieClip = null;
         var _loc16_:* = null;
         var _loc17_:MovieClip = null;
         var _loc3_:MiniGameCravings = this;
         var _loc4_:MovieClip = new MovieClip();
         var _loc5_:Vector.<MovieClip> = new Vector.<MovieClip>();
         if(_loc19_ || Boolean(param2))
         {
            _loc6_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(_loc19_ || Boolean(param1))
            {
               §§push(param1.wings);
               if(_loc19_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     §§push(0);
                     if(!(_loc18_ && Boolean(param1)))
                     {
                        _loc6_ = §§pop();
                        if(!(_loc18_ && Boolean(this)))
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              if(_loc19_)
                              {
                                 §§push(param1.sides);
                                 if(_loc19_ || Boolean(this))
                                 {
                                 }
                                 loop3:
                                 for(; §§pop() < §§pop().length; break loop0)
                                 {
                                    §§push(param1.dips);
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr398:
                                       while(true)
                                       {
                                          §§push(§§pop()[§§pop()][0]);
                                          addr402:
                                          while(true)
                                          {
                                             _loc16_ = §§pop();
                                             addr403:
                                             while(true)
                                             {
                                                _loc17_ = new ticket_panel_dip();
                                                _loc17_.gotoAndStop(_loc16_);
                                                if(!(_loc18_ && Boolean(_loc3_)))
                                                {
                                                   _loc17_.y = _loc3_.panelTicketTop;
                                                   if(_loc19_ || Boolean(param2))
                                                   {
                                                   }
                                                   addr447:
                                                   _loc5_.push(_loc17_);
                                                   if(!(_loc18_ && Boolean(param1)))
                                                   {
                                                      _loc4_.addChild(_loc17_);
                                                      if(_loc19_)
                                                      {
                                                         _loc6_++;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      continue loop3;
                                                   }
                                                   addr463:
                                                }
                                                _loc17_.x = 0 - param1.dips.length * _loc3_.panelDipSize / 2 + _loc6_ * _loc3_.panelDipSize;
                                                if(_loc19_)
                                                {
                                                   §§goto(addr447);
                                                }
                                                §§goto(addr463);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr475:
                                 param2.addChild(_loc4_);
                                 §§push(_loc3_.tickets);
                                 addr473:
                              }
                              break;
                           }
                           addr390:
                           _loc6_ = §§pop();
                           if(_loc19_)
                           {
                              §§goto(addr447);
                           }
                           §§goto(addr403);
                           addr368:
                        }
                        while(true)
                        {
                           _loc15_ = new ticket_panel_side();
                           _loc15_.gotoAndStop(_loc12_);
                           if(_loc19_)
                           {
                              _loc15_.num_txt.text = String(_loc13_);
                              _loc15_.distro.gotoAndStop(_loc14_);
                              if(!(_loc18_ && Boolean(param1)))
                              {
                                 _loc15_.x = _loc3_.panelTicketLeft;
                                 if(_loc19_ || Boolean(_loc3_))
                                 {
                                    _loc15_.y = _loc3_.panelTicketTop + _loc3_.panelSideHeight * (param1.sides.length - 1) - _loc6_ * _loc3_.panelSideHeight;
                                    if(param1.dips.length > 0)
                                    {
                                    }
                                 }
                                 addr367:
                                 _loc6_++;
                                 §§goto(addr368);
                              }
                              addr361:
                              _loc5_.push(_loc15_);
                              _loc4_.addChild(_loc15_);
                              §§goto(addr367);
                           }
                           _loc15_.y += _loc3_.panelDipSize;
                           if(_loc19_)
                           {
                           }
                           §§goto(addr361);
                        }
                        addr293:
                     }
                     break;
                  }
                  §§push(param1.wings);
                  if(_loc19_)
                  {
                     §§push(§§pop()[_loc6_][0]);
                     if(!_loc18_)
                     {
                        _loc7_ = §§pop();
                        if(_loc19_)
                        {
                           §§push(param1.wings);
                           if(_loc19_)
                           {
                              §§push(_loc6_);
                              if(!(_loc18_ && Boolean(param2)))
                              {
                                 §§push(§§pop()[§§pop()][3]);
                                 if(!_loc18_)
                                 {
                                    _loc8_ = §§pop();
                                    §§push(param1.wings);
                                    §§push(_loc6_);
                                    if(!_loc18_)
                                    {
                                       §§push(Number(§§pop()[§§pop()][1]));
                                       if(_loc19_ || Boolean(param2))
                                       {
                                          _loc9_ = §§pop();
                                          §§push(param1.wings[_loc6_][2]);
                                          if(_loc19_ || Boolean(_loc3_))
                                          {
                                             _loc10_ = §§pop();
                                             _loc11_ = new ticket_panel_wings();
                                             _loc11_.gotoAndStop(_loc7_);
                                             _loc11_.num_txt.text = String(_loc9_);
                                             _loc11_.distro.gotoAndStop(_loc10_);
                                             if(_loc19_)
                                             {
                                                _loc11_.sauce.gotoAndStop(_loc8_);
                                                _loc11_.x = _loc3_.panelTicketLeft;
                                                if(_loc18_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc11_.y = _loc3_.panelTicketBottom - _loc3_.panelWingHeight * (_loc6_ + 1);
                                             if(_loc19_ || Boolean(param1))
                                             {
                                                _loc5_.push(_loc11_);
                                                _loc5_.push(_loc11_.sauce);
                                             }
                                             _loc4_.addChild(_loc11_);
                                             continue;
                                          }
                                          §§goto(addr402);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             _loc13_ = §§pop();
                                             if(_loc19_ || Boolean(param2))
                                             {
                                                §§push(param1.sides);
                                                if(_loc18_)
                                                {
                                                }
                                                §§goto(addr397);
                                             }
                                             addr382:
                                             §§push(0);
                                             if(!(_loc18_ && Boolean(param1)))
                                             {
                                                §§goto(addr390);
                                             }
                                             break loop0;
                                          }
                                          addr266:
                                       }
                                       §§goto(addr403);
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop()[§§pop()][2]);
                                       if(!(_loc19_ || Boolean(param2)))
                                       {
                                          break;
                                          addr290:
                                       }
                                       while(true)
                                       {
                                          _loc14_ = §§pop();
                                          if(_loc19_)
                                          {
                                             §§goto(addr293);
                                          }
                                          §§goto(addr403);
                                       }
                                    }
                                    §§goto(addr402);
                                    addr279:
                                 }
                              }
                              §§goto(addr398);
                           }
                           while(true)
                           {
                              §§goto(addr279);
                           }
                           addr278:
                        }
                        while(true)
                        {
                           §§push(param1.sides);
                           if(_loc19_ || Boolean(this))
                           {
                              §§goto(addr266);
                              §§push(Number(§§pop()[_loc6_][1]));
                           }
                        }
                        addr252:
                     }
                     while(true)
                     {
                        _loc12_ = §§pop();
                        if(_loc19_)
                        {
                           §§goto(addr252);
                        }
                        §§goto(addr475);
                     }
                     addr249:
                  }
                  §§pop().push(param2);
                  return;
               }
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     §§push(param1.sides);
                     if(!_loc18_)
                     {
                        §§push(§§pop()[_loc6_][0]);
                        if(_loc19_ || Boolean(_loc3_))
                        {
                           §§goto(addr249);
                        }
                        §§goto(addr290);
                     }
                     §§goto(addr278);
                  }
                  §§goto(addr382);
               }
            }
            break;
            _loc6_++;
         }
         while(true)
         {
            §§goto(addr473);
         }
      }
      
      public function clearTickets() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MiniGameCravings = this;
         var _loc2_:int = 0;
         for(; _loc2_ < _loc1_.tickets.length; §§pop()[§§pop()] = null,_loc2_++)
         {
            §§push(_loc1_.tickets);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  continue;
               }
               §§pop()[§§pop()].removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTicket);
               _loc1_.clip.holder.removeChild(_loc1_.tickets[_loc2_]);
               §§push(_loc1_.tickets);
            }
            §§push(_loc2_);
         }
         _loc1_.tickets = null;
         if(!_loc4_)
         {
            _loc1_.tickets = [];
            _loc1_.ticketPositions = [];
         }
      }
      
      public function clickTicket(param1:MouseEvent) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:MiniGameCravings = this;
         if(!(_loc9_ && Boolean(param1)))
         {
            if(_loc2_.canClick)
            {
               if(_loc8_)
               {
                  §§push(-1);
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     _loc3_ = §§pop();
                     if(_loc8_)
                     {
                     }
                  }
                  addr47:
                  _loc4_ = §§pop();
               }
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc9_)
                  {
                     §§push(_loc2_.tickets);
                     if(!_loc9_)
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              addr91:
                              _loc2_.choseWhichTicket = _loc3_;
                              _loc2_.clip.talktext.visible = false;
                              if(_loc8_)
                              {
                                 _loc2_.screen.gameObj.soundManager.playSound("grabticket.wav");
                                 if(!(_loc9_ && Boolean(_loc3_)))
                                 {
                                    §§push(_loc3_);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() == _loc2_.whichTicketIsCorrect)
                                       {
                                          _loc2_.clip["light" + _loc2_.whichRound].gotoAndStop(2);
                                          _loc2_.currentCustomer.gotoAndPlay("happy");
                                       }
                                       else
                                       {
                                          _loc2_.clip["light" + _loc2_.whichRound].gotoAndStop(3);
                                          if(_loc8_ || Boolean(this))
                                          {
                                          }
                                       }
                                       addr324:
                                       _loc2_.ticketTweenTimer = 0;
                                    }
                                    addr200:
                                    addr201:
                                    if(§§pop() == 5)
                                    {
                                       addr202:
                                       _loc2_.screen.gameObj.soundManager.playSound("customer_happy.wav");
                                       if(_loc9_ && Boolean(this))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       _loc2_.screen.gameObj.soundManager.playSound("getstar.wav");
                                       if(_loc9_ && Boolean(_loc2_))
                                       {
                                       }
                                       addr274:
                                       _loc2_.clip.holder.setChildIndex(_loc2_.tickets[_loc2_.whichTicketIsCorrect],_loc2_.clip.holder.numChildren - 1);
                                       §§push(0);
                                       if(_loc8_)
                                       {
                                          _loc5_ = §§pop();
                                          addr292:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             break loop0;
                                          }
                                          addr319:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_.tickets);
                                       }
                                       §§goto(addr324);
                                       addr320:
                                    }
                                    §§goto(addr274);
                                 }
                                 _loc2_.currentCustomer.gotoAndPlay("pissed");
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    _loc2_.foodiniClip.gotoAndPlay("lose");
                                    if(!(_loc9_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.screen.gameObj.soundManager.playSound("customer_pissed.wav");
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr274);
                              }
                              addr198:
                              §§goto(addr200);
                              §§push(_loc2_.roundsWon);
                           }
                           §§push(_loc2_.whichRound);
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              addr142:
                              §§push(5);
                              if(_loc8_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       _loc2_.foodiniClip.gotoAndPlay("win");
                                       addr176:
                                       var _loc6_:* = _loc2_;
                                       §§push(_loc6_.roundsWon);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          _loc6_.roundsWon = _loc7_;
                                       }
                                       if(!(_loc9_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr198);
                                       }
                                    }
                                    §§goto(addr202);
                                 }
                                 else
                                 {
                                    _loc2_.foodiniClip.gotoAndPlay("okay");
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr176);
                                    }
                                 }
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr200);
                        }
                        else if(MovieClip(param1.currentTarget) == _loc2_.tickets[_loc4_])
                        {
                           §§push(_loc4_);
                           if(!_loc9_)
                           {
                              §§push(§§pop());
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 _loc3_ = §§pop();
                                 §§goto(addr91);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr320);
                        }
                        else
                        {
                           _loc4_++;
                           if(!_loc9_)
                           {
                              continue;
                           }
                        }
                        _loc2_.ticketsLeaving = true;
                        _loc2_.ticketsEntering = false;
                        if(_loc8_ || Boolean(this))
                        {
                           _loc2_.canClick = false;
                        }
                     }
                     while(true)
                     {
                        if(§§pop() < §§pop().length)
                        {
                           _loc2_.ticketPositions[_loc5_] = _loc2_.tickets[_loc5_].x;
                           §§push(_loc5_);
                           if(!_loc9_)
                           {
                              break loop0;
                           }
                           continue;
                        }
                        §§goto(addr324);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() == _loc2_.whichTicketIsCorrect)
                  {
                     _loc2_.correctTicketDistToCenter = 320 - _loc2_.tickets[_loc5_].x;
                  }
                  _loc5_++;
                  §§goto(addr319);
               }
            }
            return;
         }
         §§goto(addr47);
         §§push(0);
      }
      
      public function createWrongOrder(param1:CustomerOrder, param2:CustomerOrder, param3:Number, param4:Number) : CustomerOrder
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc6_:* = 0;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = NaN;
         var _loc17_:* = null;
         var _loc18_:* = NaN;
         var _loc25_:* = NaN;
         var _loc5_:MiniGameCravings = this;
         var _loc7_:UserData = _loc5_.screen.gameObj.userData;
         var _loc8_:CustomerData = _loc5_.screen.gameObj.customerData;
         if(!_loc26_)
         {
            §§push(_loc5_);
            §§push(param3);
            if(!_loc26_)
            {
               §§push(_loc5_.whichDifficulty);
               if(_loc27_ || Boolean(param3))
               {
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || Boolean(param2))
                  {
                     §§push(param4);
                  }
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setRandomSeed(§§pop());
         }
         var _loc9_:* = 0;
         var _loc10_:Number = 7;
         var _loc11_:Array = [];
         var _loc12_:Array = [];
         var _loc13_:CustomerOrder = new CustomerOrder();
         var _loc19_:Array = param1.getOrderAsArray();
         var _loc20_:Array = param2.getOrderAsArray();
         if(_loc27_ || Boolean(param1))
         {
            _loc6_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(!(_loc27_ || Boolean(param2)))
            {
               break;
            }
            if(§§pop() >= _loc19_.length)
            {
               §§push(0);
               if(_loc27_ || Boolean(param1))
               {
                  _loc6_ = §§pop();
                  if(_loc26_)
                  {
                  }
                  while(true)
                  {
                     §§push(_loc6_);
                     break loop0;
                  }
               }
               break;
            }
            _loc11_.push(_loc19_[_loc6_][0]);
            _loc6_++;
         }
         while(§§pop() < _loc20_.length)
         {
            if(_loc11_.indexOf(_loc20_[_loc6_][0]) == -1)
            {
               if(_loc27_)
               {
                  _loc12_.push(_loc20_[_loc6_][0]);
                  if(_loc26_ && Boolean(param2))
                  {
                  }
                  break;
               }
               continue;
            }
            _loc6_++;
            if(!_loc27_)
            {
               break;
            }
         }
         var _loc21_:Array = _loc5_.getMeatsAvailable(_loc11_.concat(_loc12_));
         var _loc22_:Array = _loc5_.getSaucesAvailable(_loc11_.concat(_loc12_));
         var _loc23_:Array = _loc5_.getSidesAvailable(_loc11_.concat(_loc12_));
         var _loc24_:Array = _loc5_.getDipsAvailable(_loc11_.concat(_loc12_));
         §§push(param3);
         §§push(1);
         if(!(_loc26_ && Boolean(param1)))
         {
            §§push(§§pop() == §§pop());
            if(!(_loc26_ && Boolean(param1)))
            {
               §§push(§§pop());
               if(_loc27_)
               {
                  addr240:
                  if(!§§pop())
                  {
                     if(_loc27_)
                     {
                        §§pop();
                        §§push(param3);
                        §§push(2);
                        if(_loc26_ && Boolean(this))
                        {
                        }
                        addr901:
                        §§push(§§pop() == §§pop());
                     }
                  }
                  if(§§pop())
                  {
                     §§push(_loc8_);
                     §§push(param3);
                     if(!_loc26_)
                     {
                        §§push(_loc5_.whichDifficulty);
                        if(_loc27_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc26_ && Boolean(param2)))
                           {
                              §§push(param4);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     _loc13_ = §§pop().getFoodCriticOrder(§§pop());
                     if(_loc27_ || Boolean(param3))
                     {
                     }
                     loop43:
                     do
                     {
                        _loc13_ = _loc8_.getFoodCriticOrder(Math.floor(_loc5_.randomize() * 1000));
                        addr1419:
                        while(true)
                        {
                           if(!_loc5_.doOrdersMatch(_loc13_,param1))
                           {
                              if(!(_loc26_ && Boolean(param1)))
                              {
                                 §§push(§_-5i§);
                                 §§push("Create Wrong Order " + param3 + ": ");
                                 §§push(_loc13_.wings);
                                 if(!(_loc26_ && Boolean(param3)))
                                 {
                                    §§push(§§pop() + §§pop().length);
                                    if(_loc27_ || Boolean(param3))
                                    {
                                       §§push(§§pop() + " Wings + ");
                                       §§push(_loc13_.sides);
                                       if(_loc26_)
                                       {
                                       }
                                       addr1483:
                                       §§pop().§_-CE§(§§pop() + §§pop().length + " Dips.");
                                       addr1481:
                                       break loop43;
                                    }
                                    addr1470:
                                    §§goto(addr1481);
                                    §§push(§§pop() + " Sides + ");
                                    §§push(_loc13_.dips);
                                 }
                                 §§push(§§pop() + §§pop().length);
                                 if(!(_loc26_ && Boolean(param2)))
                                 {
                                    §§goto(addr1470);
                                 }
                                 §§goto(addr1483);
                              }
                              break loop43;
                           }
                           continue loop43;
                        }
                     }
                     while(§_-5i§.§_-CE§("The orders matched!  Generate a new one to get around this.."), !(_loc26_ && Boolean(param1)));
                     
                     return _loc13_;
                  }
                  §§push(param3);
                  if(!_loc26_)
                  {
                     addr493:
                     §§push(3);
                     if(!(_loc26_ && Boolean(param3)))
                     {
                        if(§§pop() == §§pop())
                        {
                           §§push(0);
                           if(!_loc26_)
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(_loc26_)
                                 {
                                 }
                                 break;
                                 _loc6_++;
                              }
                              addr444:
                              _loc6_ = §§pop();
                              if(!_loc26_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    addr472:
                                    loop33:
                                    while(true)
                                    {
                                       §§push(param1.dips);
                                       addr474:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop().length)
                                          {
                                             break loop4;
                                          }
                                          addr459:
                                          §§push(_loc24_[Math.floor(_loc5_.randomize() * _loc24_.length)]);
                                          while(true)
                                          {
                                             _loc14_ = §§pop();
                                             if(!(_loc27_ || Boolean(param3)))
                                             {
                                                continue loop33;
                                             }
                                             _loc13_.addDip(_loc14_);
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 addr471:
                                 if(_loc26_ && Boolean(param3))
                                 {
                                    addr905:
                                    §§push(param1.clone());
                                    if(_loc27_)
                                    {
                                       addr909:
                                       _loc13_ = §§pop();
                                       §§push(_loc21_[Math.floor(_loc5_.randomize() * _loc21_.length)]);
                                       if(_loc27_ || Boolean(param2))
                                       {
                                          _loc14_ = §§pop();
                                          §§push(_loc22_[Math.floor(_loc5_.randomize() * _loc22_.length)]);
                                       }
                                       _loc15_ = §§pop();
                                       if(_loc27_)
                                       {
                                          §§push(Math.floor(Math.random() * _loc13_.wings.length));
                                          if(_loc27_)
                                          {
                                             _loc25_ = §§pop();
                                             if(_loc27_ || Boolean(this))
                                             {
                                                §§push(param3);
                                             }
                                          }
                                          if(§§pop() == 5)
                                          {
                                             if(_loc27_)
                                             {
                                             }
                                             addr991:
                                          }
                                          addr987:
                                          _loc13_.wings[_loc25_][3] = _loc15_;
                                          addr984:
                                          §§goto(addr991);
                                       }
                                       §§push(_loc13_.wings);
                                       if(!_loc26_)
                                       {
                                          §§push(_loc25_);
                                          if(_loc27_)
                                          {
                                             §§pop()[§§pop()][0] = _loc14_;
                                             if(_loc27_ || Boolean(param1))
                                             {
                                                §§goto(addr984);
                                             }
                                             §§goto(addr991);
                                          }
                                       }
                                       §§goto(addr987);
                                    }
                                    else
                                    {
                                       addr997:
                                       _loc13_ = §§pop();
                                       §§push(0);
                                       if(_loc27_ || Boolean(param2))
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc27_ || Boolean(param1))
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc27_ || Boolean(param2))
                                                {
                                                   §§push(_loc13_.wings);
                                                   if(_loc27_)
                                                   {
                                                      if(§§pop() >= §§pop().length)
                                                      {
                                                         addr1237:
                                                         if(!_loc26_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc26_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc13_.sides);
                                                            }
                                                            addr1393:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc18_);
                                                            §§push(0.5);
                                                            if(_loc27_)
                                                            {
                                                            }
                                                            addr1348:
                                                            while(true)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(!(_loc26_ && Boolean(param2)))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc13_.sides);
                                                                        §§push(_loc6_);
                                                                        if(_loc27_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()][2] = FoodData.DISTRO_RIGHT;
                                                                              if(_loc26_ && Boolean(param3))
                                                                              {
                                                                              }
                                                                           }
                                                                           addr1361:
                                                                        }
                                                                        addr1377:
                                                                        while(true)
                                                                        {
                                                                           §§pop()[§§pop()][2] = FoodData.DISTRO_LEFT;
                                                                           if(_loc27_ || Boolean(this))
                                                                           {
                                                                              addr1389:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_++;
                                                                                 if(_loc27_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr1389);
                                                                              }
                                                                              addr1389:
                                                                              addr1275:
                                                                           }
                                                                           addr1392:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr1393);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr1356:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1389);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc13_.sides);
                                                               }
                                                               addr1376:
                                                               while(true)
                                                               {
                                                                  §§goto(addr1377);
                                                               }
                                                            }
                                                         }
                                                         addr1237:
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc5_.randomize());
                                                         if(_loc27_)
                                                         {
                                                            _loc18_ = §§pop();
                                                            if(!(_loc26_ && Boolean(param3)))
                                                            {
                                                               if(_loc13_.wings[_loc6_][2] == FoodData.DISTRO_LEFT)
                                                               {
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(_loc18_);
                                                                  }
                                                               }
                                                               else if(_loc13_.wings[_loc6_][2] == FoodData.DISTRO_RIGHT)
                                                               {
                                                                  §§push(_loc18_);
                                                                  if(_loc27_ || Boolean(param2))
                                                                  {
                                                                     §§push(0.5);
                                                                     if(_loc27_ || Boolean(param1))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(_loc13_.wings);
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(_loc27_ || Boolean(param3))
                                                                              {
                                                                                 §§pop()[§§pop()][2] = FoodData.DISTRO_LEFT;
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    addr1186:
                                                                                    _loc6_++;
                                                                                    addr1143:
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop()[§§pop()][2] == FoodData.DISTRO_LEFT)
                                                                                 {
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§goto(addr1237);
                                                                                    }
                                                                                    §§goto(addr1392);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc13_.sides);
                                                                                    if(_loc27_ || Boolean(param3))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr1319:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§pop()[§§pop()][2] = FoodData.DISTRO_ALL;
                                                                                       addr1327:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr1389);
                                                                                       }
                                                                                       addr1327:
                                                                                    }
                                                                                    §§goto(addr1377);
                                                                                 }
                                                                              }
                                                                              addr1229:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop()[_loc6_][2] == FoodData.DISTRO_RIGHT)
                                                                              {
                                                                                 §§push(_loc18_);
                                                                                 if(!(_loc26_ && Boolean(param2)))
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          §§push(_loc13_.sides);
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§pop()[§§pop()][2] = FoodData.DISTRO_LEFT;
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr1333:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop()[§§pop()][2] == FoodData.DISTRO_ALL)
                                                                                                {
                                                                                                   if(_loc27_ || Boolean(this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                      }
                                                                                                      addr1346:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr1333:
                                                                                          }
                                                                                          §§goto(addr1389);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc13_.sides);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§goto(addr1319);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr1347:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc13_.sides);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§goto(addr1333);
                                                                                    §§push(_loc6_);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc13_.wings);
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc26_ && Boolean(this)))
                                                                              {
                                                                                 §§pop()[§§pop()][2] = FoodData.DISTRO_ALL;
                                                                                 §§goto(addr1143);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1333);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§goto(addr1229);
                                                                           }
                                                                           addr1263:
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()][2] = FoodData.DISTRO_ALL;
                                                                              if(!(_loc26_ && Boolean(param1)))
                                                                              {
                                                                                 §§goto(addr1275);
                                                                              }
                                                                              §§goto(addr1327);
                                                                           }
                                                                        }
                                                                        addr1226:
                                                                     }
                                                                     §§goto(addr1348);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1158:
                                                                     §§push(0.5);
                                                                     if(_loc27_ || Boolean(param1))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           _loc13_.wings[_loc6_][2] = FoodData.DISTRO_RIGHT;
                                                                           addr1175:
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc13_.wings[_loc6_][2] = FoodData.DISTRO_LEFT;
                                                                           if(_loc26_)
                                                                           {
                                                                              §§goto(addr1346);
                                                                           }
                                                                        }
                                                                        §§goto(addr1186);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc13_.wings);
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr1149:
                                                                     if(§§pop()[_loc6_][2] == FoodData.DISTRO_ALL)
                                                                     {
                                                                        if(_loc27_)
                                                                        {
                                                                           §§goto(addr1158);
                                                                           §§push(_loc18_);
                                                                        }
                                                                        §§goto(addr1389);
                                                                     }
                                                                     §§goto(addr1186);
                                                                  }
                                                               }
                                                               §§goto(addr1376);
                                                            }
                                                            §§goto(addr1356);
                                                         }
                                                         §§push(0.5);
                                                         if(_loc27_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               _loc13_.wings[_loc6_][2] = FoodData.DISTRO_RIGHT;
                                                               if(!(_loc27_ || Boolean(this)))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1389);
                                                                     §§pop()[_loc6_][2] = FoodData.DISTRO_RIGHT;
                                                                  }
                                                                  addr1257:
                                                               }
                                                               else
                                                               {
                                                                  addr1079:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc13_.wings);
                                                               §§push(_loc6_);
                                                               if(!(_loc26_ && Boolean(param1)))
                                                               {
                                                                  §§pop()[§§pop()][2] = FoodData.DISTRO_ALL;
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§goto(addr1079);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1175);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1149);
                                                               }
                                                            }
                                                            §§goto(addr1186);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc13_.sides);
                                                            if(_loc27_ || Boolean(param3))
                                                            {
                                                               §§pop()[_loc6_][2] = FoodData.DISTRO_RIGHT;
                                                               §§goto(addr1257);
                                                            }
                                                            §§goto(addr1376);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc13_.sides);
                                                            §§push(_loc6_);
                                                            if(_loc27_)
                                                            {
                                                               §§goto(addr1263);
                                                            }
                                                         }
                                                         §§goto(addr1361);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop().length)
                                                      {
                                                         §§push(_loc5_.randomize());
                                                         if(_loc27_)
                                                         {
                                                            _loc18_ = §§pop();
                                                            if(_loc27_)
                                                            {
                                                               §§push(_loc13_.sides);
                                                               if(!(_loc26_ && Boolean(param3)))
                                                               {
                                                                  §§goto(addr1226);
                                                               }
                                                               §§goto(addr1319);
                                                            }
                                                            §§goto(addr1237);
                                                         }
                                                         §§goto(addr1347);
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr1327);
                                          }
                                       }
                                       _loc6_ = §§pop();
                                       §§goto(addr1392);
                                    }
                                 }
                                 else
                                 {
                                    addr483:
                                 }
                                 addr471:
                              }
                              while(true)
                              {
                                 _loc6_++;
                                 §§goto(addr471);
                              }
                              addr343:
                           }
                           loop31:
                           while(true)
                           {
                              §§push(param1.wings);
                              if(_loc27_ || Boolean(this))
                              {
                                 if(§§pop() >= §§pop().length)
                                 {
                                    if(!_loc26_)
                                    {
                                       §§push(0);
                                       if(!(_loc26_ && Boolean(param3)))
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc27_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc27_)
                                                {
                                                   §§push(param1.sides);
                                                   if(_loc27_ || Boolean(this))
                                                   {
                                                      if(§§pop() >= §§pop().length)
                                                      {
                                                         §§push(0);
                                                         if(_loc27_)
                                                         {
                                                            §§goto(addr444);
                                                         }
                                                         break;
                                                      }
                                                      §§push(_loc23_[Math.floor(_loc5_.randomize() * _loc23_.length)]);
                                                      if(!(_loc27_ || Boolean(param3)))
                                                      {
                                                         §§goto(addr459);
                                                      }
                                                      §§goto(addr905);
                                                   }
                                                   break loop31;
                                                }
                                                break;
                                             }
                                             addr427:
                                          }
                                          while(true)
                                          {
                                             _loc6_++;
                                             if(_loc27_ || Boolean(param3))
                                             {
                                                §§goto(addr427);
                                             }
                                             else
                                             {
                                                addr892:
                                                §§push(param3);
                                                §§push(7);
                                                if(_loc27_ || Boolean(param3))
                                                {
                                                   §§goto(addr901);
                                                }
                                             }
                                          }
                                          addr419:
                                       }
                                       §§goto(addr472);
                                    }
                                    §§goto(addr471);
                                 }
                                 else
                                 {
                                    §§push(_loc21_[Math.floor(_loc5_.randomize() * _loc21_.length)]);
                                    if(!_loc26_)
                                    {
                                       _loc14_ = §§pop();
                                       §§push(_loc22_[Math.floor(_loc5_.randomize() * _loc22_.length)]);
                                       if(!(_loc26_ && Boolean(param3)))
                                       {
                                          _loc15_ = §§pop();
                                          _loc13_.addWings(_loc14_,_loc15_,param1.wings[_loc6_][1],param1.wings[_loc6_][2]);
                                          if(!(_loc26_ && Boolean(param1)))
                                          {
                                             _loc6_++;
                                             §§goto(addr343);
                                          }
                                          §§goto(addr905);
                                       }
                                       §§goto(addr483);
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc14_ = §§pop();
                                    if(!(_loc26_ && Boolean(param2)))
                                    {
                                       _loc13_.addSide(_loc14_,param1.sides[_loc6_][1],param1.sides[_loc6_][2]);
                                       if(!(_loc26_ && Boolean(param2)))
                                       {
                                          §§goto(addr419);
                                       }
                                       break;
                                    }
                                    §§goto(addr483);
                                 }
                                 §§goto(addr905);
                              }
                              break;
                           }
                           §§goto(addr474);
                        }
                        else
                        {
                           §§push(param3);
                        }
                        addr994:
                        if(§§pop() == §§pop())
                        {
                           addr995:
                           §§goto(addr997);
                           §§push(param1.clone());
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        §§push(param1.clone());
                        if(!_loc26_)
                        {
                           _loc13_ = §§pop();
                           §§push(0);
                           if(!(_loc26_ && Boolean(this)))
                           {
                              _loc6_ = §§pop();
                              if(_loc27_ || Boolean(param3))
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc26_ && Boolean(param1))
                                    {
                                    }
                                    break;
                                    _loc6_++;
                                 }
                                 addr552:
                                 _loc6_ = §§pop();
                                 if(_loc27_)
                                 {
                                 }
                                 addr598:
                                 §§push(_loc5_.randomize());
                                 if(!(_loc26_ && Boolean(param3)))
                                 {
                                    addr608:
                                    §§push(§§pop());
                                    if(_loc27_)
                                    {
                                       _loc18_ = §§pop();
                                       if(_loc27_ || Boolean(param1))
                                       {
                                          §§push(0.5);
                                          if(_loc26_)
                                          {
                                          }
                                          addr745:
                                          if(§§pop() < §§pop())
                                          {
                                             §§push(param1.sides);
                                             if(!_loc26_)
                                             {
                                                addr822:
                                                if(§§pop().length > 0)
                                                {
                                                   if(!_loc26_)
                                                   {
                                                      §§push(param1.sides);
                                                      if(!(_loc26_ && Boolean(param1)))
                                                      {
                                                         §§push(0);
                                                         if(!_loc26_)
                                                         {
                                                            addr767:
                                                            _loc16_ = Number(§§pop()[§§pop()][1]);
                                                            if(_loc26_ && Boolean(this))
                                                            {
                                                            }
                                                            addr844:
                                                            _loc14_ = _loc23_[Math.floor(_loc5_.randomize() * _loc23_.length)];
                                                            _loc13_.addSide(_loc14_,_loc16_,_loc17_);
                                                            addr834:
                                                            addr803:
                                                         }
                                                      }
                                                   }
                                                   §§push(param1.sides);
                                                }
                                                else
                                                {
                                                   addr806:
                                                   §§push(param1.wings);
                                                   §§push(0);
                                                   if(_loc27_ || Boolean(param1))
                                                   {
                                                      addr814:
                                                      _loc16_ = Number(§§pop()[§§pop()][1]);
                                                      §§push(param1.wings);
                                                      §§push(0);
                                                   }
                                                }
                                                §§push(§§pop()[§§pop()][2]);
                                                if(_loc27_ || Boolean(this))
                                                {
                                                   addr833:
                                                   _loc17_ = §§pop();
                                                   §§goto(addr834);
                                                }
                                                §§goto(addr844);
                                             }
                                             §§push(0);
                                             if(!_loc26_)
                                             {
                                                §§push(§§pop()[§§pop()][2]);
                                                if(!(_loc26_ && Boolean(param1)))
                                                {
                                                   addr795:
                                                   _loc17_ = §§pop();
                                                   if(_loc27_ || Boolean(param1))
                                                   {
                                                      §§goto(addr803);
                                                   }
                                                   §§goto(addr844);
                                                }
                                                else
                                                {
                                                   §§goto(addr833);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr814);
                                             }
                                             §§goto(addr844);
                                          }
                                          else
                                          {
                                             §§push(_loc8_);
                                             §§push(param3);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc5_.whichDifficulty);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc27_)
                                                   {
                                                   }
                                                   addr864:
                                                   _loc13_ = §§pop().getFoodCriticOrder(§§pop());
                                                }
                                                addr863:
                                                §§goto(addr864);
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr863);
                                             §§push(param4);
                                          }
                                       }
                                    }
                                    §§push(§§pop() < §§pop());
                                    if(_loc27_ || Boolean(this))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc27_ || Boolean(param1))
                                          {
                                          }
                                       }
                                       addr654:
                                       if(§§pop())
                                       {
                                          §§push(param1.wings);
                                          if(!_loc26_)
                                          {
                                             §§push(0);
                                             if(!(_loc26_ && Boolean(param2)))
                                             {
                                                §§push(Number(§§pop()[§§pop()][1]));
                                             }
                                             §§goto(addr767);
                                          }
                                          else
                                          {
                                             §§goto(addr806);
                                          }
                                       }
                                       else
                                       {
                                          addr744:
                                          §§goto(addr745);
                                          §§push(_loc9_);
                                          §§push(_loc10_);
                                       }
                                       §§goto(addr745);
                                    }
                                    §§pop();
                                    §§push(_loc10_);
                                    if(!_loc26_)
                                    {
                                       addr643:
                                       §§push(_loc9_);
                                       if(!(_loc26_ && Boolean(param3)))
                                       {
                                          addr653:
                                          §§goto(addr654);
                                          §§push(§§pop() - §§pop() >= 2);
                                       }
                                       §§goto(addr745);
                                    }
                                    §§goto(addr744);
                                 }
                                 _loc16_ = §§pop();
                                 §§push(param1.wings);
                                 §§push(0);
                                 if(_loc27_ || Boolean(param2))
                                 {
                                    §§push(§§pop()[§§pop()][2]);
                                    if(!_loc26_)
                                    {
                                       _loc17_ = §§pop();
                                       §§push(_loc21_[Math.floor(_loc5_.randomize() * _loc21_.length)]);
                                       if(!_loc27_)
                                       {
                                          §§goto(addr833);
                                       }
                                       §§goto(addr767);
                                    }
                                    _loc14_ = §§pop();
                                    §§push(_loc22_[Math.floor(_loc5_.randomize() * _loc22_.length)]);
                                    if(_loc27_ || Boolean(this))
                                    {
                                       _loc15_ = §§pop();
                                       if(!(_loc26_ && Boolean(param3)))
                                       {
                                          _loc13_.addWings(_loc14_,_loc15_,_loc16_,_loc17_);
                                          if(_loc26_)
                                          {
                                          }
                                       }
                                       §§goto(addr745);
                                    }
                                    else
                                    {
                                       §§goto(addr795);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr767);
                                 }
                                 §§goto(addr767);
                                 addr535:
                              }
                              loop39:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 addr580:
                                 loop41:
                                 while(true)
                                 {
                                    §§push(_loc13_.sides);
                                    addr582:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop().length)
                                       {
                                          §§push(_loc9_);
                                          if(_loc27_)
                                          {
                                             §§push(1);
                                             if(_loc27_ || Boolean(param2))
                                             {
                                                _loc9_ = §§pop() + §§pop();
                                                _loc6_++;
                                                if(!(_loc26_ && Boolean(param1)))
                                                {
                                                   continue loop41;
                                                }
                                             }
                                             §§goto(addr655);
                                          }
                                          break loop39;
                                       }
                                       if(_loc13_.dips.length > 0)
                                       {
                                          §§push(_loc9_);
                                          §§push(1);
                                          if(!_loc26_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc26_)
                                             {
                                                _loc9_ = §§pop();
                                             }
                                             §§goto(addr608);
                                          }
                                       }
                                       §§goto(addr598);
                                       §§goto(addr653);
                                    }
                                    continue loop39;
                                 }
                              }
                              §§goto(addr744);
                           }
                           while(true)
                           {
                              §§push(_loc13_.wings);
                              if(_loc27_)
                              {
                                 if(§§pop() >= §§pop().length)
                                 {
                                    §§push(0);
                                    if(_loc27_)
                                    {
                                       §§goto(addr552);
                                    }
                                    §§goto(addr580);
                                 }
                                 else
                                 {
                                    §§push(_loc9_);
                                    §§push(2);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc27_ || Boolean(param3))
                                       {
                                          _loc9_ = §§pop();
                                          if(!_loc26_)
                                          {
                                             _loc6_++;
                                             §§goto(addr535);
                                          }
                                          §§goto(addr844);
                                       }
                                       §§goto(addr643);
                                    }
                                 }
                                 §§goto(addr653);
                              }
                              break;
                           }
                           §§goto(addr582);
                        }
                        else
                        {
                           §§goto(addr909);
                        }
                     }
                     else
                     {
                        §§push(param3);
                        if(!_loc26_)
                        {
                           §§push(5);
                           if(!(_loc26_ && Boolean(param2)))
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc26_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr994);
                        }
                        addr993:
                        §§goto(addr994);
                        §§push(6);
                     }
                  }
                  §§push(4);
                  if(!(_loc26_ && Boolean(param3)))
                  {
                     §§goto(addr493);
                  }
                  §§goto(addr994);
                  addr1397:
                  §§goto(addr1419);
               }
               if(!§§pop())
               {
                  if(_loc27_ || Boolean(param1))
                  {
                     §§pop();
                     §§goto(addr892);
                  }
               }
            }
            addr902:
            if(§§pop())
            {
               if(!_loc26_)
               {
                  §§goto(addr905);
               }
               else
               {
                  §§goto(addr995);
               }
            }
            else
            {
               §§goto(addr993);
               §§push(param3);
            }
            §§goto(addr1397);
         }
         §§push(§§pop() == §§pop());
         if(!(_loc26_ && Boolean(param3)))
         {
            §§goto(addr240);
         }
         §§goto(addr902);
      }
      
      public function getMeatsAvailable(param1:Array = null) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:* = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         if(!_loc7_)
         {
            §§push(param1);
            if(_loc8_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     param1 = [];
                  }
                  _loc3_.push(FoodData.MEAT_STRIPS);
                  addr101:
                  addr105:
                  if(_loc4_.hasTopping(FoodData.MEAT_SHRIMP))
                  {
                     _loc3_.push(FoodData.MEAT_SHRIMP);
                     if(_loc7_ && Boolean(param1))
                     {
                     }
                     addr121:
                     _loc5_ = 0;
                     §§goto(addr123);
                  }
                  addr90:
                  §§push(param1);
                  addr90:
               }
               §§push(_loc4_.hasTopping(FoodData.MEAT_WING));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        _loc3_.push(FoodData.MEAT_WING);
                     }
                     addr123:
                     do
                     {
                        if(_loc5_ >= param1.length)
                        {
                           if(_loc8_)
                           {
                           }
                           break;
                        }
                        addr174:
                        §§push(Number(_loc3_.indexOf(param1[_loc5_])));
                        §§goto(addr196);
                     }
                     while(_loc5_++, !(_loc7_ && Boolean(_loc3_)));
                     
                     _loc3_.push(FoodData.MEAT_WING);
                     addr196:
                     if(_loc8_ || Boolean(param1))
                     {
                        _loc6_ = §§pop();
                        §§push(_loc6_);
                     }
                     if(§§pop() > -1)
                     {
                        if(_loc8_ || Boolean(this))
                        {
                           _loc3_.splice(_loc6_,1);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              continue loop0;
                           }
                        }
                        if(_loc3_.length == 0)
                        {
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              break loop0;
                           }
                        }
                        return _loc3_;
                     }
                     continue loop0;
                  }
               }
               addr66:
               if(§§pop())
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     _loc3_.push(FoodData.MEAT_BONELESS);
                  }
                  §§goto(addr90);
               }
               §§push(_loc4_.hasTopping(FoodData.MEAT_STRIPS));
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  if(§§pop())
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr101);
               }
               §§goto(addr105);
            }
            if(§§pop().length > 0)
            {
               §§goto(addr121);
            }
            §§goto(addr174);
         }
         §§push(_loc4_.hasTopping(FoodData.MEAT_BONELESS));
         if(_loc8_)
         {
            §§goto(addr66);
         }
         §§goto(addr101);
      }
      
      public function getSaucesAvailable(param1:Array = null) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:* = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         if(_loc8_)
         {
            §§push(param1);
            if(_loc8_)
            {
               if(§§pop() == null)
               {
                  param1 = [];
               }
               if(_loc4_.hasTopping(FoodData.SAUCE_ATOMIC))
               {
                  _loc3_.push(FoodData.SAUCE_ATOMIC);
                  if(_loc8_ || Boolean(param1))
                  {
                  }
                  addr140:
                  addr144:
                  if(_loc4_.hasTopping(FoodData.SAUCE_PARMESAN))
                  {
                     §§goto(addr218);
                  }
                  §§push(_loc4_.hasTopping(FoodData.SAUCE_SPICYGARLIC));
                  if(_loc8_)
                  {
                     addr164:
                     if(§§pop())
                     {
                        addr165:
                        _loc3_.push(FoodData.SAUCE_SPICYGARLIC);
                     }
                     addr173:
                     if(_loc4_.hasTopping(FoodData.SAUCE_TERIYAKI))
                     {
                        _loc3_.push(FoodData.SAUCE_TERIYAKI);
                     }
                     if(_loc4_.hasTopping(FoodData.SAUCE_WASABI))
                     {
                        if(_loc8_)
                        {
                           _loc3_.push(FoodData.SAUCE_WASABI);
                        }
                     }
                     §§push(_loc4_.hasTopping(FoodData.SAUCE_WILDONION));
                  }
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        _loc3_.push(FoodData.SAUCE_WILDONION);
                        if(_loc7_ && Boolean(param1))
                        {
                        }
                        §§goto(addr218);
                     }
                  }
                  §§goto(addr212);
               }
               if(_loc4_.hasTopping(FoodData.SAUCE_BBQ))
               {
                  if(_loc8_)
                  {
                     _loc3_.push(FoodData.SAUCE_BBQ);
                  }
                  §§goto(addr140);
               }
               if(_loc4_.hasTopping(FoodData.SAUCE_BUFFALO))
               {
                  if(_loc8_)
                  {
                     _loc3_.push(FoodData.SAUCE_BUFFALO);
                  }
                  §§goto(addr165);
               }
               §§push(_loc4_.hasTopping(FoodData.SAUCE_CALYPSO));
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  if(§§pop())
                  {
                     _loc3_.push(FoodData.SAUCE_CALYPSO);
                  }
                  §§push(_loc4_.hasTopping(FoodData.SAUCE_HONEYMUSTARD));
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        _loc3_.push(FoodData.SAUCE_HONEYMUSTARD);
                     }
                     §§push(_loc4_.hasTopping(FoodData.SAUCE_MEDIUM));
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        if(!§§pop())
                        {
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr173);
               }
               §§goto(addr144);
            }
            if(§§pop().length > 0)
            {
               _loc5_ = 0;
               addr218:
               if(_loc8_ || Boolean(_loc3_))
               {
                  _loc3_.push(FoodData.SAUCE_PARMESAN);
                  if(_loc8_)
                  {
                  }
                  addr212:
                  §§push(param1);
               }
               do
               {
                  if(_loc5_ >= param1.length)
                  {
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        addr259:
                        if(_loc3_.length == 0)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                     }
                     §§goto(addr276);
                  }
                  §§push(Number(_loc3_.indexOf(param1[_loc5_])));
                  if(_loc8_ || Boolean(param1))
                  {
                     _loc6_ = §§pop();
                     §§push(_loc6_);
                  }
                  if(§§pop() > -1)
                  {
                     if(_loc8_)
                     {
                        _loc3_.splice(_loc6_,1);
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                  }
                  _loc5_++;
               }
               while(!_loc7_);
               
               _loc3_.push(FoodData.SAUCE_BBQ);
               addr276:
               return _loc3_;
            }
            §§goto(addr259);
         }
         _loc3_.push(FoodData.SAUCE_MEDIUM);
         if(_loc7_ && Boolean(_loc2_))
         {
         }
         §§goto(addr140);
      }
      
      public function getSidesAvailable(param1:Array = null) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:* = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         §§push(param1);
         if(_loc8_ || Boolean(_loc3_))
         {
            if(§§pop() == null)
            {
               param1 = [];
            }
            §§push(_loc4_.hasTopping(FoodData.SIDE_CARROT));
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc3_.push(FoodData.SIDE_CARROT);
                  }
                  §§goto(addr150);
               }
               §§push(_loc4_.hasTopping(FoodData.SIDE_CELERY));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     _loc3_.push(FoodData.SIDE_CELERY);
                  }
                  §§push(_loc4_.hasTopping(FoodData.SIDE_CHEESECUBES));
                  if(_loc8_)
                  {
                  }
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     _loc3_.push(FoodData.SIDE_CHEESECUBES);
                  }
                  §§goto(addr99);
               }
               §§push(_loc4_.hasTopping(FoodData.SIDE_FRY));
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        addr99:
                        _loc3_.push(FoodData.SIDE_FRY);
                        if(_loc8_)
                        {
                           addr105:
                           §§push(_loc4_.hasTopping(FoodData.SIDE_GREENPEPPER));
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              if(§§pop())
                              {
                                 _loc3_.push(FoodData.SIDE_GREENPEPPER);
                              }
                              §§push(_loc4_.hasTopping(FoodData.SIDE_REDPEPPER));
                           }
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr105);
               }
            }
            if(§§pop())
            {
               addr133:
               _loc3_.push(FoodData.SIDE_REDPEPPER);
               if(!(_loc7_ && Boolean(this)))
               {
                  addr144:
                  §§push(param1);
               }
               §§goto(addr150);
            }
            §§goto(addr144);
         }
         if(§§pop().length > 0)
         {
            if(!_loc7_)
            {
               addr150:
               _loc5_ = 0;
               §§goto(addr152);
            }
            addr152:
            do
            {
               if(_loc5_ >= param1.length)
               {
                  if(!_loc7_)
                  {
                     addr203:
                     if(_loc3_.length == 0)
                     {
                        if(_loc7_ && Boolean(_loc2_))
                        {
                        }
                     }
                     break;
                  }
                  _loc3_.push(FoodData.SIDE_CELERY);
               }
               §§push(Number(_loc3_.indexOf(param1[_loc5_])));
               if(_loc8_ || Boolean(this))
               {
                  _loc6_ = §§pop();
                  §§push(_loc6_);
               }
               if(§§pop() > -1)
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc3_.splice(_loc6_,1);
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        continue;
                     }
                  }
                  break;
               }
            }
            while(_loc5_++, _loc8_ || Boolean(_loc3_));
            
            return _loc3_;
         }
         §§goto(addr203);
      }
      
      public function getDipsAvailable(param1:Array = null) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:* = NaN;
         var _loc2_:MiniGameCravings = this;
         var _loc3_:Array = [];
         var _loc4_:UserData = _loc2_.screen.gameObj.userData;
         §§push(param1);
         if(!(_loc7_ && Boolean(this)))
         {
            if(§§pop() == null)
            {
               param1 = [];
            }
            §§push(_loc4_.hasTopping(FoodData.DIP_AWESOMESAUCE));
            if(!_loc7_)
            {
               if(§§pop())
               {
                  _loc3_.push(FoodData.DIP_AWESOMESAUCE);
               }
               §§push(_loc4_.hasTopping(FoodData.DIP_BLUECHEESE));
               if(_loc8_ || Boolean(_loc2_))
               {
                  if(§§pop())
                  {
                     _loc3_.push(FoodData.DIP_BLUECHEESE);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr131);
                  }
                  §§push(_loc4_.hasTopping(FoodData.DIP_MANGOCHILI));
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           _loc3_.push(FoodData.DIP_MANGOCHILI);
                        }
                        addr115:
                        §§push(_loc4_.hasTopping(FoodData.DIP_KUNGPAO));
                        if(_loc7_)
                        {
                        }
                     }
                     §§push(_loc4_.hasTopping(FoodData.DIP_RANCH));
                     if(_loc8_)
                     {
                     }
                  }
                  if(§§pop())
                  {
                     addr122:
                     _loc3_.push(FoodData.DIP_KUNGPAO);
                  }
                  §§push(_loc4_.hasTopping(FoodData.DIP_ZESTYPESTO));
               }
               if(§§pop())
               {
                  _loc3_.push(FoodData.DIP_RANCH);
                  if(_loc8_ || Boolean(_loc3_))
                  {
                  }
                  §§goto(addr122);
               }
               §§goto(addr115);
            }
            if(§§pop())
            {
               addr131:
               _loc3_.push(FoodData.DIP_ZESTYPESTO);
               §§goto(addr145);
            }
            §§goto(addr137);
         }
         if(§§pop().length > 0)
         {
            if(_loc8_)
            {
               _loc5_ = 0;
            }
            addr145:
            if(!_loc7_)
            {
               addr137:
               §§push(param1);
            }
            do
            {
               if(_loc5_ >= param1.length)
               {
                  if(_loc8_)
                  {
                     addr191:
                     if(_loc3_.length == 0)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                  }
                  break;
               }
               §§goto(addr208);
            }
            while(_loc5_++, _loc8_ || Boolean(param1));
            
            _loc3_.push(FoodData.DIP_RANCH);
            addr208:
            §§push(Number(_loc3_.indexOf(param1[_loc5_])));
            if(!(_loc7_ && Boolean(this)))
            {
               _loc6_ = §§pop();
               §§push(_loc6_);
            }
            if(§§pop() > -1)
            {
               if(_loc7_)
               {
                  return _loc3_;
               }
               _loc3_.splice(_loc6_,1);
               if(_loc7_ && Boolean(this))
               {
                  break loop0;
               }
            }
            continue loop0;
         }
         §§goto(addr191);
      }
      
      public function getCorrectOrder(param1:Number) : CustomerOrder
      {
         var _loc2_:MiniGameCravings = this;
         return _loc2_.screen.gameObj.customerData.getCustomerOrderData(param1);
      }
      
      public function getCompleteOrder(param1:Number) : CustomerOrder
      {
         var _loc2_:MiniGameCravings = this;
         return _loc2_.screen.gameObj.customerData.getCustomerCompleteOrderData(param1);
      }
      
      public function randomize(param1:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MiniGameCravings = this;
         if(_loc4_ || Boolean(this))
         {
            if(param1)
            {
               if(_loc5_ && Boolean(this))
               {
               }
            }
            return Math.random();
         }
         §§push(_loc2_);
         §§push(_loc2_.randomSeed);
         if(_loc4_ || param1)
         {
            §§push(16807);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  §§push(2147483647);
               }
            }
            §§push(§§pop() % §§pop());
         }
         §§push(§§pop().randomSeed = §§pop());
         if(!_loc5_)
         {
            §§push(§§pop() / 2147483647);
            if(_loc4_)
            {
            }
            §§goto(addr87);
         }
         addr87:
         §§pop() + 2.33e-10;
         return §§pop();
      }
      
      public function setRandomSeed(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MiniGameCravings = this;
         if(!_loc4_)
         {
            _loc2_.randomSeed = param1;
         }
      }
   }
}

