package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.ui.Mouse;
   import wingGame.data.*;
   
   public class MiniGameBlast extends MiniGame
   {
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var whichDifficulty:Number = 1;
      
      public var gameTimer:Number = 0;
      
      public var delayStartTimer:Number = 90;
      
      public var revealStartTimer:Number = 30;
      
      public var revealPadding:Number = 5;
      
      public var introRevealed:Number = 0;
      
      public var whichBread:String = "pancake";
      
      public var needToHit:Number = 5;
      
      public var totalHit:Number = 0;
      
      public var maxToHit:Number = 10;
      
      public var maxShots:Number = 5;
      
      public var shotsPerRound:Number = 3;
      
      public var shotsRemaining:Number = 5;
      
      public var whichRound:Number = 1;
      
      public var maxRounds:Number = 5;
      
      public var isIntro:Boolean = true;
      
      public var isOutro:Boolean = false;
      
      public var isBetweenRounds:Boolean = false;
      
      public var delayBetweenRounds:Number = 30;
      
      public var delayBetweenTimer:Number = 0;
      
      public var isFinished:Boolean = false;
      
      public var hasFiredBread:Boolean = false;
      
      public var missedOne:Boolean = false;
      
      public var totalBreads:Number = 2;
      
      public var breads:Array;
      
      public var shadows:Array;
      
      public var speeds:Array;
      
      public var jumpspeeds:Array;
      
      public var sidewayspeeds:Array;
      
      public var finished:Array;
      
      public var delayBeforeFiring:Array;
      
      public var delayTimers:Array;
      
      public var maxDelayBeforeFiring:Number = 60;
      
      public var minDelayBeforeFiring:Number = 20;
      
      public var gravity:Number = 1.5;
      
      public var baseSpeed:Number = 50;
      
      public var baseJumpSpeed:Number = 20;
      
      public var baseJumpRandomizer:Number = 15;
      
      public var tiltAmount:Number = 1.2;
      
      public var baseSidewaySpeed:Number = 30;
      
      public var speedBoostRange:Number = 10;
      
      public var groundLevel:Number = 406;
      
      public var switchContainerZ:Number = 2700;
      
      public var mouseIsHidden:Boolean = false;
      
      public var crosshairSpeed:Number = 1;
      
      public var foodiniClip:MovieClip;
      
      public function MiniGameBlast(param1:MiniGameScreen, param2:MovieClip)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.prizeSKUs = ["poster_pancakeria","furni_cabin2_small","belt_04","shirt_03","furni_cabin2_fence","jacket_09","furni_cabin2_medium","pants_05","floor29","body_backbag01","wall22","furni_cabin2_large","hat19","furni_cabin2_fireplace"];
         this.prizeIsClothing = [false,false,true,true,false,true,false,true,false,true,false,false,true,false];
         this.prizeClothingMode = ["","","gender","gender","","gender","","gender","","","","","hat",""];
         this.allowedForRandom = [1,1,0,0,1,0,1,0,0,0,0,1,0,1];
         if(!(_loc4_ && Boolean(this)))
         {
            this.breads = [];
            if(!(_loc4_ && Boolean(param1)))
            {
               this.shadows = [];
            }
            §§goto(addr140);
         }
         this.speeds = [];
         this.jumpspeeds = [];
         this.sidewayspeeds = [];
         if(_loc3_ || _loc3_)
         {
            this.finished = [];
            this.delayBeforeFiring = [];
            this.delayTimers = [];
         }
         addr140:
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:MiniGameBlast = this;
         if(_loc4_ || Boolean(this))
         {
            _loc1_.clip = new minigameBlastMC();
            if(!_loc3_)
            {
               _loc1_.container.addChild(_loc1_.clip);
               if(_loc4_)
               {
               }
               addr43:
               _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
               _loc1_.decideDifficulty();
               _loc2_ = 0;
            }
            _loc1_.screen.setTitle("Breakfast Blast");
            §§goto(addr43);
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() >= _loc1_.totalBreads)
               {
                  _loc1_.foodiniClip = new minigame_foodini();
                  _loc1_.clip.popup.inside.addChild(_loc1_.foodiniClip);
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr165:
                  _loc1_.clip.shadowholder.mask = _loc1_.clip.shadowmask;
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
                     addr179:
                     if(_loc4_)
                     {
                     }
                     §§goto(addr197);
                  }
               }
               else
               {
                  §§push(_loc1_.breads);
                  if(!_loc3_)
                  {
                     §§pop().push(_loc1_.clip["bread" + (_loc2_ + 1)]);
                     addr90:
                     if(_loc4_)
                     {
                        §§push(_loc1_.shadows);
                     }
                     _loc1_.clip.shadowholder.addChild(_loc1_.shadows[_loc2_]);
                     _loc1_.clip.topholder.addChild(_loc1_.breads[_loc2_]);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     if(!(_loc4_ || Boolean(_loc2_)))
                     {
                        continue;
                     }
                     §§push(§§pop() + 1);
                     if(_loc3_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        continue;
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
                  §§pop().push(_loc1_.clip["shadow" + (_loc2_ + 1)]);
                  §§goto(addr90);
               }
               _loc1_.startIntro();
               addr197:
               return;
            }
            _loc1_.foodiniClip.gotoAndStop(1);
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr165);
            }
            §§goto(addr179);
         }
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:MovieClip = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc2_:MiniGameBlast = this;
         §§push(!_loc2_.isIntro);
         if(_loc13_ || Boolean(this))
         {
            §§push(§§pop());
            if(!_loc14_)
            {
               if(§§pop())
               {
                  if(_loc13_)
                  {
                     §§pop();
                     if(_loc13_)
                     {
                        §§push(_loc2_.isOutro);
                        if(!(_loc14_ && Boolean(param1)))
                        {
                           §§push(!§§pop());
                           if(_loc13_ || Boolean(_loc3_))
                           {
                           }
                           addr86:
                           §§push(!§§pop());
                           if(!_loc14_)
                           {
                              addr89:
                              §§push(§§pop());
                              if(!_loc14_)
                              {
                                 addr92:
                                 if(!§§pop())
                                 {
                                 }
                                 addr97:
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc13_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                           }
                           §§pop();
                        }
                        §§pop();
                        addr179:
                        §§push(_loc2_.shotsRemaining);
                        if(_loc13_ || Boolean(_loc3_))
                        {
                           addr169:
                           §§push(0);
                           if(_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                           }
                           if(§§pop() == §§pop())
                           {
                              _loc2_.clip.shots_txt.text = "1 shot";
                              if(_loc14_)
                              {
                              }
                              addr180:
                              loop0:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc2_.shotsPerRound);
                                 if(_loc13_ || Boolean(_loc3_))
                                 {
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc13_ || Boolean(this))
                                          {
                                             §§push(0);
                                             if(_loc13_)
                                             {
                                                _loc3_ = §§pop();
                                                addr255:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                }
                                             }
                                             else
                                             {
                                                addr656:
                                                if(§§pop() == 0)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr665);
                                       }
                                       §§push(_loc3_);
                                       §§push(_loc2_.shotsRemaining);
                                       if(!_loc13_)
                                       {
                                          continue;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc14_ && Boolean(param1)))
                                          {
                                             _loc2_.clip["shot_" + _loc3_].visible = true;
                                             if(!(_loc13_ || Boolean(this)))
                                             {
                                                addr630:
                                                §§push(!_loc2_.isOutro);
                                                if(_loc13_)
                                                {
                                                   addr636:
                                                   if(§§pop())
                                                   {
                                                      if(_loc13_ || Boolean(_loc2_))
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr656);
                                                }
                                                §§pop();
                                                §§goto(addr656);
                                                §§push(_loc2_.shotsRemaining);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr255);
                                          }
                                       }
                                       else
                                       {
                                          _loc2_.clip["shot_" + _loc3_].visible = false;
                                          if(_loc14_ && Boolean(_loc2_))
                                          {
                                             break;
                                          }
                                       }
                                       §§push(_loc3_);
                                       if(_loc13_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_.totalBreads);
                                          break loop0;
                                       }
                                    }
                                    _loc2_.screen.gameObj.soundManager.playSound("minigame_noammo.wav");
                                    addr665:
                                    return;
                                 }
                                 break;
                                 _loc3_ = §§pop() + 1;
                              }
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    _loc4_ = _loc2_.breads[_loc3_];
                                    _loc5_ = _loc4_.parent.local3DToGlobal(new Vector3D(_loc4_.x,_loc4_.y,_loc4_.z));
                                    if(!(_loc14_ && Boolean(this)))
                                    {
                                       _loc6_ = _loc2_.clip.reticule.x - _loc5_.x;
                                       _loc7_ = _loc2_.clip.reticule.y - _loc5_.y;
                                       if(_loc13_ || Boolean(_loc2_))
                                       {
                                          _loc8_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
                                          if(!_loc14_)
                                          {
                                             §§push(5);
                                             if(_loc13_ || Boolean(param1))
                                             {
                                                §§push(15 * (5800 - _loc4_.z));
                                                if(!(_loc14_ && Boolean(_loc2_)))
                                                {
                                                   §§push(§§pop() / 5800);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc13_ || Boolean(_loc3_))
                                                {
                                                   §§push(§§pop());
                                                   §§push(§§pop());
                                                   if(!(_loc14_ && Boolean(param1)))
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc13_)
                                                      {
                                                      }
                                                      addr603:
                                                      §§push(§§pop() + 1);
                                                      if(!_loc14_)
                                                      {
                                                         addr606:
                                                         §§push(§§pop());
                                                      }
                                                      _loc3_ = §§pop();
                                                      §§goto(addr608);
                                                   }
                                                   addr407:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(!(_loc14_ && Boolean(param1)))
                                                      {
                                                         addr427:
                                                         §§push(true);
                                                         if(_loc13_ || Boolean(_loc3_))
                                                         {
                                                            _loc10_ = §§pop();
                                                            if(_loc13_)
                                                            {
                                                            }
                                                            addr506:
                                                            var _loc11_:* = _loc2_;
                                                            §§push(_loc11_.totalHit);
                                                            if(_loc13_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            if(_loc13_)
                                                            {
                                                               _loc11_.totalHit = _loc12_;
                                                            }
                                                            §§push(_loc2_.finished);
                                                            if(_loc13_ || Boolean(param1))
                                                            {
                                                               addr583:
                                                               §§push(_loc3_);
                                                               if(!(_loc14_ && Boolean(this)))
                                                               {
                                                                  §§pop()[§§pop()] = true;
                                                                  _loc4_.y = _loc2_.groundLevel;
                                                                  addr544:
                                                                  _loc4_.z = -200;
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc4_.x = 1000;
                                                                     addr602:
                                                                     if(!(_loc14_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§push(_loc2_.shadows);
                                                                        if(_loc13_ || Boolean(this))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!(_loc14_ && Boolean(param1)))
                                                                           {
                                                                              §§pop()[§§pop()].z = _loc4_.z;
                                                                              §§push(_loc2_.shadows);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr603);
                                                                     §§push(_loc3_);
                                                                  }
                                                               }
                                                               §§pop()[§§pop()].x = _loc4_.x;
                                                               if(_loc13_ || Boolean(this))
                                                               {
                                                               }
                                                               §§goto(addr608);
                                                            }
                                                            §§goto(addr583);
                                                            §§push(_loc3_);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc14_ && Boolean(this)))
                                                            {
                                                               _loc2_.clip["break" + (_loc3_ + 1)].x = _loc5_.x;
                                                            }
                                                            addr496:
                                                            _loc2_.clip["break" + (_loc3_ + 1)].gotoAndPlay(1);
                                                            §§goto(addr506);
                                                         }
                                                         §§goto(addr602);
                                                      }
                                                      _loc2_.updateBreadIcons();
                                                      _loc2_.screen.gameObj.soundManager.playSound("landburger2.wav");
                                                      §§goto(addr602);
                                                   }
                                                   §§goto(addr427);
                                                   §§push(_loc10_);
                                                }
                                                §§push(20);
                                                if(_loc13_ || Boolean(_loc2_))
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push(20);
                                                      if(!_loc14_)
                                                      {
                                                         _loc9_ = §§pop();
                                                      }
                                                      addr401:
                                                      §§push(false);
                                                      if(!_loc14_)
                                                      {
                                                         _loc10_ = §§pop();
                                                      }
                                                      §§goto(addr427);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc9_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(5);
                                                      }
                                                   }
                                                   §§goto(addr606);
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc13_ || Boolean(_loc3_))
                                                   {
                                                      §§push(5);
                                                   }
                                                   §§goto(addr544);
                                                }
                                                §§goto(addr401);
                                             }
                                             _loc9_ = §§pop();
                                             §§goto(addr401);
                                          }
                                          addr464:
                                          _loc2_.clip["break" + (_loc3_ + 1)].scaleX = Math.min(1,_loc9_ / 10);
                                          if(!_loc14_)
                                          {
                                             _loc2_.clip["break" + (_loc3_ + 1)].scaleY = Math.min(1,_loc9_ / 10);
                                             §§goto(addr496);
                                          }
                                          §§goto(addr506);
                                       }
                                       §§goto(addr407);
                                       §§push(_loc8_);
                                       §§push(_loc9_);
                                    }
                                    _loc2_.clip["break" + (_loc3_ + 1)].y = _loc5_.y;
                                    if(!(_loc14_ && Boolean(this)))
                                    {
                                       §§goto(addr464);
                                    }
                                    §§goto(addr496);
                                 }
                                 §§goto(addr255);
                              }
                           }
                           §§push(0);
                        }
                        _loc3_ = §§pop();
                        §§goto(addr180);
                     }
                     §§goto(addr97);
                     §§push(_loc2_.hasFiredBread);
                  }
                  if(§§pop())
                  {
                     _loc11_ = _loc2_;
                     §§push(_loc11_.shotsRemaining);
                     if(_loc13_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc12_ = §§pop();
                     if(_loc13_ || Boolean(param1))
                     {
                        _loc11_.shotsRemaining = _loc12_;
                     }
                     if(_loc13_)
                     {
                        _loc2_.clip.flasher.gotoAndPlay("flash");
                        if(!_loc14_)
                        {
                           _loc2_.screen.gameObj.soundManager.playSound("minigame_shootgun.wav");
                           _loc2_.clip.shots_txt.text = _loc2_.shotsRemaining + " shots";
                           §§push(_loc2_.shotsRemaining);
                           if(_loc13_)
                           {
                              §§goto(addr169);
                              §§push(1);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr180);
                  }
                  else
                  {
                     §§push(_loc2_.isIntro);
                     if(_loc13_)
                     {
                        §§push(!§§pop());
                        if(_loc13_ || Boolean(this))
                        {
                           §§push(§§pop());
                           if(_loc13_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§goto(addr630);
                              }
                           }
                        }
                        §§goto(addr636);
                     }
                  }
                  §§goto(addr630);
               }
            }
            addr73:
            if(§§pop())
            {
               if(_loc13_ || Boolean(_loc2_))
               {
                  §§pop();
                  §§push(_loc2_.isBetweenRounds);
                  if(_loc13_)
                  {
                  }
                  §§goto(addr97);
               }
               §§goto(addr86);
            }
            §§goto(addr89);
         }
         §§push(§§pop());
         if(_loc13_)
         {
            §§goto(addr73);
         }
         §§goto(addr92);
      }
      
      public function updateBreadIcons() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MiniGameBlast = this;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_.needToHit)
            {
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  break;
               }
               return;
            }
            §§goto(addr85);
         }
         _loc1_.clip.hit_txt.text = "Hit " + _loc1_.totalHit;
         addr85:
         if(_loc1_.totalHit > _loc2_)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.clip["icon_" + _loc2_].gotoAndStop(_loc1_.whichBread + "_earned");
               if(!(_loc3_ || Boolean(_loc2_)))
               {
                  continue loop0;
               }
            }
         }
         _loc2_++;
         if(_loc4_)
         {
            break loop0;
         }
         continue loop0;
      }
      
      public function startIntro() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:MiniGameBlast = this;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(_loc1_.maxToHit);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || Boolean(_loc1_))
                                 {
                                    §§push(_loc1_.maxShots);
                                    if(_loc4_)
                                    {
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          _loc1_.clip.shots_txt.text = _loc1_.shotsPerRound + " shots";
                                          _loc1_.clip.round_txt.text = "Round 1 of " + _loc1_.maxRounds;
                                          if(!_loc3_)
                                          {
                                             _loc1_.clip.hit_txt.text = "Hit 0";
                                             addr227:
                                             _loc1_.isIntro = true;
                                             if(!(_loc3_ && Boolean(_loc2_)))
                                             {
                                                _loc1_.gameTimer = 0;
                                             }
                                             _loc1_.clip.panel.inside.gotoAndStop(_loc1_.whichBread);
                                             if(_loc4_)
                                             {
                                                _loc1_.clip.panel.inside.amount_txt.text = String(_loc1_.needToHit);
                                                if(_loc3_)
                                                {
                                                }
                                                §§goto(addr275);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc1_.breads);
                                          if(!_loc3_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                §§pop()[§§pop()].top.gotoAndStop(_loc1_.whichBread);
                                                if(!_loc3_)
                                                {
                                                   §§push(_loc1_.breads);
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                   }
                                                   addr182:
                                                   §§push(_loc2_);
                                                }
                                                else
                                                {
                                                   §§goto(addr227);
                                                }
                                             }
                                             §§pop()[§§pop()].gotoAndStop(_loc1_.whichBread);
                                             addr188:
                                             §§push(_loc2_);
                                             while(true)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                }
                                                addr201:
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                                §§pop()[§§pop()].gotoAndStop(_loc1_.whichBread);
                                             }
                                             addr188:
                                          }
                                          §§push(_loc2_);
                                          if(!(_loc3_ && Boolean(_loc2_)))
                                          {
                                             §§pop()[§§pop()].bottom.gotoAndStop(_loc1_.whichBread);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr182);
                                                §§push(_loc1_.shadows);
                                             }
                                          }
                                          §§goto(addr183);
                                       }
                                       addr268:
                                       _loc1_.clip.panel.gotoAndPlay("show");
                                       break;
                                    }
                                    §§goto(addr273);
                                 }
                                 addr197:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr201);
                                       }
                                       addr200:
                                    }
                                    §§goto(addr273);
                                 }
                              }
                              addr115:
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    break loop0;
                                 }
                                 §§goto(addr197);
                                 addr112:
                              }
                              §§goto(addr188);
                           }
                           addr109:
                        }
                        addr129:
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr200);
                  }
                  else
                  {
                     _loc1_.clip["icon_" + _loc2_].gotoAndStop(_loc1_.whichBread + "_unearned");
                     _loc1_.clip["icon_" + _loc2_].visible = false;
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc2_ = §§pop();
                              if(_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr227);
                           }
                           else
                           {
                              §§goto(addr188);
                           }
                        }
                        else
                        {
                           §§goto(addr112);
                        }
                        §§goto(addr197);
                     }
                  }
                  addr128:
                  §§goto(addr129);
                  §§push(0);
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§goto(addr128);
                  }
                  else
                  {
                     _loc1_.clip["shot_" + _loc2_].visible = false;
                     §§goto(addr109);
                  }
                  return;
               }
               §§goto(addr188);
            }
            break;
         }
         while(true)
         {
            _loc2_ = §§pop();
            §§goto(addr115);
         }
      }
      
      public function startRound() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MiniGameBlast = this;
         var _loc2_:* = 0;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            _loc1_.hasFiredBread = false;
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               _loc1_.missedOne = false;
               if(!_loc4_)
               {
                  _loc1_.shotsRemaining = _loc1_.shotsPerRound;
                  if(!_loc4_)
                  {
                     _loc2_ = 0;
                  }
               }
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < _loc1_.shotsPerRound)
            {
               _loc1_.clip["shot_" + _loc2_].visible = true;
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(!(_loc4_ && Boolean(this)))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            _loc1_.clip.shots_txt.text = _loc1_.shotsPerRound + " shots";
            if(_loc3_ || _loc3_)
            {
               _loc1_.clip.round_txt.text = "Round " + _loc1_.whichRound + " of " + _loc1_.maxRounds;
               _loc1_.screen.gameObj.soundManager.playSound("minigame_reloadgun.wav");
               if(!_loc4_)
               {
                  _loc1_.resetBreads();
               }
            }
            return;
            _loc2_ = §§pop();
         }
      }
      
      public function decideDifficulty() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:MiniGameBlast = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(_loc5_)
         {
            if(_loc2_ < this.prizeSKUs.length)
            {
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  §§push(_loc2_);
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().whichDifficulty = §§pop();
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               _loc1_.whichDifficulty = this.prizeSKUs.length;
            }
            addr56:
            var _loc3_:Array = ["pancake","frenchtoast","waffle"];
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               §§push(_loc1_.whichDifficulty);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop() == 1)
                  {
                     _loc1_.baseSpeed = 100;
                     _loc1_.baseJumpSpeed = 40;
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc1_.baseJumpRandomizer = 15;
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc1_.baseSidewaySpeed = 5;
                           _loc1_.speedBoostRange = 0;
                           addr230:
                           §§push(_loc1_.whichDifficulty);
                           §§push(1);
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              addr240:
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    _loc1_.shotsPerRound = 5;
                                    _loc1_.needToHit = 5;
                                 }
                                 addr252:
                              }
                              else
                              {
                                 §§push(_loc1_.whichDifficulty);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    if(§§pop() == 2)
                                    {
                                       if(_loc5_)
                                       {
                                          _loc1_.shotsPerRound = 4;
                                          if(!_loc4_)
                                          {
                                             _loc1_.needToHit = 6;
                                             if(_loc5_)
                                             {
                                                _loc1_.whichBread = "frenchtoast";
                                                addr286:
                                             }
                                          }
                                          addr311:
                                       }
                                       else
                                       {
                                          addr349:
                                          _loc1_.needToHit = 6;
                                          if(!(_loc4_ && Boolean(_loc3_)))
                                          {
                                             addr359:
                                             _loc1_.whichBread = "pancake";
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr434:
                                             _loc1_.whichBread = "frenchtoast";
                                             if(_loc4_ && Boolean(_loc1_))
                                             {
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc1_.whichDifficulty);
                                       §§push(3);
                                       if(!_loc4_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                _loc1_.shotsPerRound = 4;
                                                _loc1_.needToHit = 6;
                                                _loc1_.whichBread = "pancake";
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr311);
                                                }
                                                else
                                                {
                                                   §§goto(addr434);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr359);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc1_.whichDifficulty);
                                             if(_loc5_ || Boolean(_loc3_))
                                             {
                                                §§push(4);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      _loc1_.shotsPerRound = 4;
                                                      _loc1_.needToHit = 6;
                                                      _loc1_.whichBread = "waffle";
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc1_.whichDifficulty);
                                                   }
                                                }
                                             }
                                             addr374:
                                             §§push(6);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   _loc1_.shotsPerRound = 4;
                                                   _loc1_.needToHit = 7;
                                                   if(_loc5_)
                                                   {
                                                      _loc1_.whichBread = "frenchtoast";
                                                   }
                                                   else
                                                   {
                                                      addr416:
                                                      _loc1_.whichBread = "waffle";
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc1_.whichDifficulty);
                                                   §§push(7);
                                                }
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   _loc1_.shotsPerRound = 4;
                                                   if(_loc5_)
                                                   {
                                                      _loc1_.needToHit = 7;
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         §§goto(addr416);
                                                      }
                                                      else
                                                      {
                                                         addr497:
                                                         _loc1_.shotsPerRound = 4;
                                                         if(!_loc4_)
                                                         {
                                                            addr502:
                                                            _loc1_.needToHit = 10;
                                                            _loc1_.whichBread = _loc3_[Math.floor(Math.random() * _loc3_.length)];
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr479:
                                                      _loc1_.shotsPerRound = 4;
                                                      addr482:
                                                      _loc1_.needToHit = 9;
                                                      _loc1_.whichBread = "waffle";
                                                      if(_loc5_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr426:
                                                   _loc1_.shotsPerRound = 4;
                                                   if(!_loc4_)
                                                   {
                                                      _loc1_.needToHit = 8;
                                                      §§goto(addr434);
                                                   }
                                                   else
                                                   {
                                                      addr458:
                                                      _loc1_.shotsPerRound = 4;
                                                      _loc1_.needToHit = 8;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr449:
                                                §§push(_loc1_.whichDifficulty);
                                                if(!_loc4_)
                                                {
                                                   §§push(8);
                                                }
                                                if(§§pop() == 9)
                                                {
                                                   if(_loc5_ || Boolean(_loc1_))
                                                   {
                                                      §§goto(addr458);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr482);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc1_.whichDifficulty);
                                                }
                                             }
                                          }
                                       }
                                       addr478:
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr479);
                                       }
                                       else
                                       {
                                          addr493:
                                          if(_loc1_.whichDifficulty > 10)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr497);
                                             }
                                             §§goto(addr502);
                                          }
                                       }
                                    }
                                 }
                                 if(§§pop() == 5)
                                 {
                                    if(_loc5_ || Boolean(_loc1_))
                                    {
                                       _loc1_.shotsPerRound = 4;
                                       §§goto(addr349);
                                    }
                                    else
                                    {
                                       §§goto(addr416);
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc1_.whichDifficulty);
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr374);
                                    }
                                    §§goto(addr493);
                                 }
                              }
                              §§goto(addr523);
                           }
                        }
                        addr444:
                        §§goto(addr523);
                     }
                     _loc1_.whichBread = "pancake";
                     addr523:
                     return;
                  }
                  §§push(_loc1_.whichDifficulty);
                  §§push(4);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           _loc1_.baseSpeed = 100;
                           if(_loc5_ || Boolean(_loc1_))
                           {
                              _loc1_.baseJumpSpeed = 40;
                              _loc1_.baseJumpRandomizer = 15;
                              _loc1_.baseSidewaySpeed = 30;
                              if(_loc5_ || Boolean(_loc1_))
                              {
                                 _loc1_.speedBoostRange = 0;
                                 §§goto(addr230);
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr426);
                        }
                        §§goto(addr444);
                     }
                     else
                     {
                        §§push(_loc1_.whichDifficulty);
                        if(_loc5_)
                        {
                           §§push(7);
                           if(!_loc4_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 _loc1_.baseSpeed = 150;
                                 _loc1_.baseJumpSpeed = 45;
                                 if(!_loc4_)
                                 {
                                    _loc1_.baseJumpRandomizer = 15;
                                    _loc1_.baseSidewaySpeed = 40;
                                    _loc1_.speedBoostRange = 10;
                                 }
                                 §§goto(addr286);
                              }
                              else
                              {
                                 if(_loc1_.whichDifficulty <= 10)
                                 {
                                    _loc1_.baseSpeed = 200;
                                    if(!(_loc4_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.baseJumpSpeed = 50;
                                       if(!_loc4_)
                                       {
                                          _loc1_.baseJumpRandomizer = 15;
                                          if(!_loc4_)
                                          {
                                             _loc1_.baseSidewaySpeed = 60;
                                             _loc1_.speedBoostRange = 20;
                                          }
                                       }
                                       §§goto(addr286);
                                    }
                                    §§goto(addr479);
                                 }
                                 else
                                 {
                                    _loc1_.baseSpeed = 150;
                                 }
                                 _loc1_.speedBoostRange = 80;
                                 _loc1_.baseJumpSpeed = 60;
                                 _loc1_.baseJumpRandomizer = 30;
                                 _loc1_.baseSidewaySpeed = 65;
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr240);
                        }
                     }
                     §§goto(addr230);
                  }
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr426);
                  }
                  else
                  {
                     §§push(_loc1_.whichDifficulty);
                     if(_loc5_)
                     {
                        §§goto(addr449);
                     }
                  }
                  §§goto(addr240);
               }
               §§push(10);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§goto(addr478);
               }
               §§goto(addr493);
            }
            _loc1_.whichBread = "waffle";
            §§goto(addr252);
         }
         §§goto(addr56);
      }
      
      public function checkSuccess() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameBlast = this;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            if(_loc1_.totalHit >= _loc1_.needToHit)
            {
               if(_loc6_ || Boolean(this))
               {
                  if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
                  {
                     if(!_loc5_)
                     {
                        _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
                        if(!_loc5_)
                        {
                           _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                           if(_loc6_)
                           {
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc2_ = [];
                     if(!(_loc5_ && Boolean(this)))
                     {
                        _loc3_ = 0;
                     }
                     while(_loc3_ < _loc1_.prizeSKUs.length)
                     {
                        if(_loc1_.allowedForRandom[_loc3_] == 1)
                        {
                           _loc2_.push(_loc1_.prizeSKUs[_loc3_]);
                        }
                        _loc3_++;
                     }
                     if(_loc6_)
                     {
                        _loc4_ = Math.floor(Math.random() * _loc2_.length);
                        _loc1_.skuToWin = _loc2_[_loc4_];
                        _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                     }
                     _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                  }
                  addr170:
                  _loc1_.amountToWin = 1;
                  if(!(_loc6_ || Boolean(_loc3_)))
                  {
                     addr203:
                     _loc1_.skuClothingMode = "";
                  }
               }
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            else if(_loc1_.totalHit == 0)
            {
               if(_loc6_ || Boolean(_loc1_))
               {
                  _loc1_.skuToWin = null;
                  if(_loc6_)
                  {
                     _loc1_.amountToWin = 0;
                     _loc1_.skuIsClothing = false;
                     §§goto(addr203);
                  }
               }
               §§goto(addr203);
            }
            else
            {
               _loc1_.skuToWin = "tips";
               §§push(_loc1_);
               §§push(_loc1_.totalHit);
               if(_loc6_ || Boolean(this))
               {
                  §§push(§§pop() * 25);
               }
               §§pop().amountToWin = §§pop();
               _loc1_.skuIsClothing = false;
               _loc1_.skuClothingMode = "";
            }
            return;
         }
         §§goto(addr170);
      }
      
      override public function updateScreen() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc1_:MiniGameBlast = this;
         var _loc5_:* = _loc1_;
         §§push(_loc5_.gameTimer);
         if(_loc8_ || Boolean(_loc1_))
         {
            §§push(§§pop() + 1);
         }
         var _loc6_:* = §§pop();
         if(_loc8_)
         {
            _loc5_.gameTimer = _loc6_;
         }
         if(!_loc7_)
         {
            §§push(_loc1_.isIntro);
            §§push(_loc1_.isIntro);
            if(!(_loc7_ && Boolean(_loc1_)))
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(_loc1_.gameTimer);
                  §§push(_loc1_.delayStartTimer);
                  if(_loc8_ || Boolean(this))
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc7_)
                     {
                     }
                     addr181:
                     §§push(!§§pop());
                     if(!(_loc7_ && _loc2_))
                     {
                        addr196:
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              _loc1_.updateBreads();
                           }
                           else
                           {
                              addr217:
                              Mouse.show();
                              _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 _loc1_.isFinished = true;
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc1_.isOutro);
                           if(!_loc7_)
                           {
                              addr206:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr214:
                                    §§push(_loc1_.isFinished);
                                 }
                                 §§goto(addr217);
                              }
                           }
                        }
                        addr249:
                        var _loc2_:Number = _loc1_.clip.mouseX - _loc1_.clip.reticule.x;
                        addr240:
                        §§push(_loc1_.clip.mouseY - _loc1_.clip.reticule.y);
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        if(_loc8_)
                        {
                           _loc1_.clip.reticule.x += _loc2_ / _loc1_.crosshairSpeed;
                           if(!_loc7_)
                           {
                              _loc1_.clip.reticule.y += _loc3_ / _loc1_.crosshairSpeed;
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 §§push(_loc1_.isOutro);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                    }
                                    §§goto(addr380);
                                 }
                                 §§goto(addr372);
                              }
                              §§push(_loc1_.clip.mouseY < 430);
                              §§push(_loc1_.clip.mouseY < 430);
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc1_.mouseIsHidden);
                                    if(_loc8_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    addr372:
                                    if(§§pop())
                                    {
                                    }
                                    §§goto(addr380);
                                 }
                                 if(§§pop())
                                 {
                                    Mouse.hide();
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       _loc1_.mouseIsHidden = true;
                                       if(_loc7_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc1_.clip.mouseY >= 430);
                                    §§push(_loc1_.clip.mouseY >= 430);
                                 }
                                 §§goto(addr380);
                              }
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    if(_loc7_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr380);
                                 }
                              }
                              §§goto(addr372);
                           }
                           Mouse.show();
                           if(_loc8_)
                           {
                              _loc1_.mouseIsHidden = false;
                           }
                           addr380:
                           return;
                        }
                        §§goto(addr372);
                        §§push(_loc1_.mouseIsHidden);
                     }
                     if(!§§pop())
                     {
                        §§goto(addr217);
                     }
                     §§goto(addr240);
                  }
                  addr144:
                  §§push(§§pop() < §§pop());
                  §§push(§§pop() < §§pop());
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                     }
                     addr156:
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           _loc1_.clip["icon_" + (_loc4_ - 1)].visible = true;
                           if(_loc7_)
                           {
                              §§goto(addr214);
                           }
                           §§goto(addr240);
                        }
                        else
                        {
                           addr179:
                           §§goto(addr181);
                           §§push(_loc1_.isOutro);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr240);
                  }
                  §§goto(addr196);
               }
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     _loc1_.isIntro = false;
                     _loc1_.startRound();
                     if(!_loc8_)
                     {
                        §§goto(addr214);
                     }
                     §§goto(addr196);
                  }
                  else
                  {
                     addr113:
                     §§push(Math.ceil((_loc1_.gameTimer - _loc1_.revealStartTimer) / _loc1_.revealPadding));
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        _loc4_ = §§pop();
                        if(_loc8_ || _loc3_)
                        {
                           §§push(_loc1_.introRevealed);
                           §§push(_loc4_);
                           if(_loc8_)
                           {
                              §§goto(addr144);
                           }
                           addr153:
                           §§push(§§pop() <= §§pop());
                           if(_loc8_)
                           {
                              §§goto(addr156);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr249);
               }
               else
               {
                  §§push(_loc1_.isIntro);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              §§pop();
                              if(!_loc7_)
                              {
                                 §§push(_loc1_.gameTimer);
                                 if(!_loc7_)
                                 {
                                    §§push(_loc1_.revealStartTimer);
                                    if(_loc8_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop() >= §§pop());
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr144);
                        }
                        if(§§pop())
                        {
                           §§goto(addr113);
                        }
                        else
                        {
                           §§push(!_loc1_.isIntro);
                           if(_loc8_)
                           {
                              §§push(§§pop());
                           }
                        }
                        §§goto(addr206);
                     }
                  }
               }
               §§goto(addr196);
            }
            if(§§pop())
            {
               §§pop();
               §§goto(addr179);
            }
            §§goto(addr196);
         }
         §§goto(addr153);
         §§push(_loc4_);
         §§push(_loc1_.needToHit);
      }
      
      public function resetBreads(param1:Number = -1) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc2_:MiniGameBlast = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.totalBreads)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(-1);
               if(_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ && Boolean(_loc3_))
                        {
                        }
                     }
                     addr53:
                     if(§§pop())
                     {
                        §§push(_loc2_.speeds);
                        §§push(_loc3_);
                        §§push(_loc2_.baseSpeed);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           §§pop()[§§pop()] = §§pop() + Math.ceil(Math.random() * _loc2_.speedBoostRange);
                           §§push(_loc2_.jumpspeeds);
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              §§push(_loc2_.baseJumpSpeed);
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 §§push((§§pop() + Math.ceil(Math.random() * _loc2_.baseJumpRandomizer)) * -1);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    if(!_loc6_)
                                    {
                                       addr202:
                                       §§push(_loc2_.finished);
                                       if(_loc5_ || Boolean(this))
                                       {
                                          §§pop()[_loc3_] = false;
                                          _loc2_.breads[_loc3_].y = _loc2_.groundLevel;
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             addr203:
                                             §§push(_loc2_.breads);
                                             §§push(_loc3_);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§pop()[§§pop()].z = -200;
                                                addr192:
                                                §§push(_loc2_.breads);
                                                if(_loc5_)
                                                {
                                                   §§pop()[_loc3_].x = Math.ceil(Math.random() * 640);
                                                   §§push(Math.abs(_loc2_.breads[_loc3_].x - 320) / 320);
                                                   if(!(_loc6_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                }
                                                §§push(_loc3_);
                                             }
                                             if(§§pop()[§§pop()].x > 320)
                                             {
                                                if(_loc6_ && Boolean(this))
                                                {
                                                   break;
                                                }
                                                addr287:
                                                addr305:
                                                addr288:
                                                §§push(_loc2_.sidewayspeeds);
                                                if(_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc6_ && Boolean(param1)))
                                                   {
                                                      §§push(_loc2_.sidewayspeeds[_loc3_] * -1);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   addr313:
                                                   §§push(_loc2_.minDelayBeforeFiring);
                                                }
                                                §§pop()[_loc3_].x = _loc2_.breads[_loc3_].x;
                                                _loc2_.clip.topholder.addChild(_loc2_.breads[_loc3_]);
                                                §§push(_loc2_.delayBeforeFiring);
                                                §§push(_loc3_);
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr313);
                                                }
                                                §§pop()[§§pop()] = 0;
                                                if(_loc6_ && Boolean(this))
                                                {
                                                   continue;
                                                }
                                             }
                                             §§push(_loc2_.breads);
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                §§pop()[§§pop()].rotationZ = 45 - 90 * (_loc2_.breads[_loc3_].x / 640);
                                             }
                                             §§goto(addr313);
                                          }
                                          addr266:
                                          _loc2_.shadows[_loc3_].z = _loc2_.breads[_loc3_].z;
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             §§push(_loc2_.shadows);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr287);
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr287);
                                          §§push(_loc2_.delayTimers);
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr203);
                                       §§push(_loc3_);
                                    }
                                    §§push(_loc2_.breads);
                                    §§push(_loc3_);
                                    if(!_loc6_)
                                    {
                                       §§pop()[§§pop()].rotationX = -90;
                                       §§goto(addr266);
                                    }
                                    §§goto(addr288);
                                 }
                              }
                              §§pop()[§§pop()] = §§pop();
                              §§goto(addr203);
                           }
                           §§pop()[§§pop()] = Math.round(_loc4_ * _loc2_.baseSidewaySpeed);
                           §§goto(addr202);
                           §§push(_loc2_.breads);
                        }
                        §§pop()[§§pop()] = §§pop() + Math.ceil(Math.random() * (_loc2_.maxDelayBeforeFiring - _loc2_.minDelayBeforeFiring));
                        §§goto(addr266);
                     }
                     _loc3_++;
                     continue;
                  }
                  §§pop();
                  if(_loc6_)
                  {
                     continue;
                  }
                  §§push(param1);
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(_loc3_);
                  }
               }
               §§goto(addr53);
               §§push(§§pop() == §§pop());
            }
            _loc4_ = §§pop();
            §§push(_loc2_.sidewayspeeds);
            if(_loc5_)
            {
               §§goto(addr192);
            }
            §§goto(addr203);
         }
      }
      
      public function updateBreads() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:MiniGameBlast = this;
         var _loc2_:* = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_.totalBreads)
            {
               §§push(true);
               break;
            }
            §§push(_loc1_.delayTimers);
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               var _loc6_:* = §§pop();
               var _loc7_:*;
               var _loc8_:* = _loc6_[_loc7_ = _loc2_] + 1;
               if(!(_loc9_ && _loc3_))
               {
                  _loc6_[_loc7_] = _loc8_;
               }
               if(_loc10_)
               {
                  addr142:
                  §§push(_loc1_.finished);
                  if(!_loc9_)
                  {
                     addr128:
                     §§push(_loc2_);
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(§§pop()[§§pop()] == false);
                        if(!_loc9_)
                        {
                           if(§§pop())
                           {
                              if(_loc10_ || Boolean(_loc2_))
                              {
                              }
                           }
                           addr112:
                           if(!§§pop())
                           {
                              continue;
                           }
                        }
                        §§pop();
                        §§push(_loc1_.delayTimers);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(_loc2_);
                           if(!_loc9_)
                           {
                              §§push(§§pop()[§§pop()] >= _loc1_.delayBeforeFiring[_loc2_]);
                              if(!(_loc10_ || _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr112);
                           }
                           addr143:
                           _loc4_ = §§pop()[§§pop()];
                           _loc5_ = _loc1_.shadows[_loc2_];
                           §§push(_loc1_.jumpspeeds);
                           if(!_loc9_)
                           {
                              §§push(_loc2_);
                              if(!_loc9_)
                              {
                                 §§pop()[§§pop()] = _loc1_.jumpspeeds[_loc2_] + _loc1_.gravity;
                                 if(_loc10_)
                                 {
                                    _loc4_.y += _loc1_.jumpspeeds[_loc2_];
                                    _loc4_.z += _loc1_.speeds[_loc2_];
                                    _loc4_.x += _loc1_.sidewayspeeds[_loc2_];
                                    _loc4_.rotationX += _loc1_.tiltAmount;
                                    if(_loc10_ || Boolean(_loc1_))
                                    {
                                       if(_loc4_.rotationX > -40)
                                       {
                                          _loc4_.rotationX = -40;
                                       }
                                       _loc5_.z = _loc4_.z / 3;
                                    }
                                    _loc5_.x = _loc4_.x;
                                    _loc5_.scaleX = Math.max(0.5,Math.min(1,_loc4_.y / _loc1_.groundLevel));
                                    _loc5_.scaleY = Math.max(0.5,Math.min(1,_loc4_.y / _loc1_.groundLevel));
                                    §§push(_loc4_.z >= _loc1_.switchContainerZ);
                                    if(!(_loc9_ && Boolean(_loc1_)))
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc9_ && Boolean(_loc1_)))
                                          {
                                             §§pop();
                                             addr308:
                                             if(!(_loc9_ && Boolean(_loc2_)))
                                             {
                                                §§push(Boolean(_loc1_.clip.topholder.contains(_loc4_)));
                                             }
                                             §§push(_loc1_.finished);
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       _loc1_.clip.backholder.addChild(_loc4_);
                                    }
                                    if(_loc4_.y > _loc1_.groundLevel)
                                    {
                                       if(_loc10_)
                                       {
                                          §§goto(addr308);
                                       }
                                       addr313:
                                       _loc4_.y = _loc1_.groundLevel;
                                       _loc4_.z = -200;
                                       if(_loc9_)
                                       {
                                       }
                                       addr335:
                                       _loc1_.missedOne = true;
                                    }
                                    continue;
                                 }
                                 _loc4_.x = 1000;
                                 if(!_loc9_)
                                 {
                                    _loc5_.z = _loc4_.z;
                                 }
                                 _loc5_.x = _loc4_.x;
                                 §§goto(addr335);
                              }
                              addr311:
                              §§pop()[§§pop()] = true;
                              §§goto(addr313);
                           }
                           §§goto(addr311);
                           §§push(_loc2_);
                        }
                     }
                     if(§§pop()[§§pop()] == _loc1_.delayBeforeFiring[_loc2_])
                     {
                        _loc1_.screen.gameObj.soundManager.playSound("minigame_launchbread.wav");
                     }
                     §§push(_loc1_.breads);
                  }
                  §§goto(addr143);
                  §§push(_loc2_);
               }
               _loc1_.hasFiredBread = true;
               §§push(_loc1_.delayTimers);
               if(_loc10_ || Boolean(this))
               {
               }
               §§goto(addr142);
            }
            §§push(_loc2_);
            if(_loc10_)
            {
               §§goto(addr128);
            }
            §§goto(addr143);
            _loc2_++;
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc9_)
         {
            _loc2_ = §§pop();
            if(_loc10_ || Boolean(_loc1_))
            {
               while(true)
               {
                  §§push(_loc2_);
                  _loc2_++;
               }
            }
            addr474:
            §§push(_loc1_.delayBetweenTimer);
            if(_loc10_)
            {
               §§push(_loc1_.delayBetweenRounds);
               if(!(_loc9_ && Boolean(_loc1_)))
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc1_.totalHit);
                     if(_loc10_ || Boolean(_loc2_))
                     {
                        §§push(_loc1_.needToHit);
                        if(_loc9_ && _loc3_)
                        {
                        }
                        addr521:
                        if(§§pop() < §§pop())
                        {
                           _loc6_ = _loc1_;
                           §§push(_loc6_.whichRound);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc7_ = §§pop();
                           if(!_loc9_)
                           {
                              _loc6_.whichRound = _loc7_;
                           }
                           if(!(_loc9_ && Boolean(_loc1_)))
                           {
                              addr544:
                              _loc1_.startRound();
                           }
                           addr566:
                           _loc1_.isBetweenRounds = false;
                           addr546:
                        }
                        else
                        {
                           _loc1_.checkSuccess();
                           if(_loc10_ || Boolean(_loc2_))
                           {
                              addr563:
                              _loc1_.isOutro = true;
                              §§goto(addr566);
                           }
                        }
                     }
                  }
                  §§goto(addr569);
               }
               if(§§pop() >= §§pop())
               {
                  if(!_loc9_)
                  {
                     _loc1_.checkSuccess();
                     if(_loc10_)
                     {
                        _loc1_.isOutro = true;
                     }
                  }
                  else
                  {
                     §§goto(addr546);
                  }
                  §§goto(addr566);
               }
               else
               {
                  §§push(_loc1_.whichRound);
               }
               §§goto(addr569);
            }
            §§goto(addr521);
            §§push(_loc1_.maxRounds);
         }
         while(true)
         {
            if(§§pop() >= _loc1_.totalBreads)
            {
               if(_loc10_)
               {
                  §§push(_loc3_);
                  if(_loc10_ || Boolean(_loc2_))
                  {
                     if(§§pop() == true)
                     {
                        §§push(_loc1_.isBetweenRounds);
                        if(_loc10_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr569);
                  }
                  if(!§§pop())
                  {
                     _loc1_.isBetweenRounds = true;
                     if(_loc10_)
                     {
                        _loc1_.delayBetweenTimer = 0;
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§push(_loc1_.missedOne);
                        }
                        else
                        {
                           §§goto(addr563);
                        }
                     }
                  }
                  else
                  {
                     _loc6_ = _loc1_;
                     §§push(_loc6_.delayBetweenTimer);
                     if(_loc10_ || Boolean(_loc1_))
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc7_ = §§pop();
                     if(_loc10_ || Boolean(this))
                     {
                        _loc6_.delayBetweenTimer = _loc7_;
                     }
                     if(_loc10_ || Boolean(_loc1_))
                     {
                     }
                  }
                  §§goto(addr569);
               }
               §§goto(addr474);
               if(§§pop())
               {
                  if(_loc10_ || _loc3_)
                  {
                     _loc1_.clip.popup.gotoAndPlay("popup");
                     _loc1_.foodiniClip.gotoAndPlay("lose");
                  }
                  else
                  {
                     §§goto(addr544);
                  }
               }
               addr569:
            }
            if(_loc1_.finished[_loc2_] == false)
            {
               if(!(_loc9_ && Boolean(this)))
               {
                  §§push(false);
                  if(_loc10_ || Boolean(_loc1_))
                  {
                     _loc3_ = §§pop();
                  }
               }
               break;
            }
            _loc2_++;
            continue;
            return;
         }
         §§goto(addr566);
      }
      
      override public function destroy() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MiniGameBlast = this;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.foodiniClip.parent.removeChild(_loc1_.foodiniClip);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.foodiniClip = null;
               if(_loc2_ || _loc3_)
               {
               }
               §§goto(addr84);
            }
            addr81:
            _loc1_.clip = null;
            §§goto(addr84);
         }
         _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.container.removeChild(_loc1_.clip);
            if(_loc2_)
            {
            }
            addr84:
            return;
         }
         §§goto(addr81);
      }
   }
}

