package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.filters.DropShadowFilter;
   import flash.geom.*;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   import wingGame.models.Ramp;
   
   public class MiniGamePachinko extends MiniGame
   {
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var isDonePlaying:Boolean = false;
      
      public var whichDifficulty:Number = 1;
      
      public var lastPlayedSoundOnFrame:Number = 0;
      
      public var gameTimer:Number = 0;
      
      public var totalBalls:Number = 1;
      
      public var usingWhichBall:Number = 1;
      
      public var landedWhichHole:Array;
      
      public var prizeAmounts:Array;
      
      public var didLaunch:Boolean = false;
      
      public var ballSpeed:Number = 10;
      
      public var ballDirection:Number = 1;
      
      public var ballRadius:Number = 17;
      
      public var ballStartY:Number = 80;
      
      public var defaultRampDecay:Number = 0.5;
      
      public var ball:MovieClip;
      
      public var gravity:Number = 1;
      
      public var terminalVelocity:Number = 20;
      
      public var ballSpeedX:Number = 0;
      
      public var ballSpeedY:Number = 0;
      
      public var bumperTypes:Array;
      
      public var bumperRadii:Array;
      
      public var bumperBounce:Array;
      
      public var bottomBounds:Number = 430;
      
      public var didDropBelow:Boolean = false;
      
      public var dropBelowTimer:Number = 0;
      
      public var dropBelowTimerMax:Number = 15;
      
      public var endDelayTimer:Number = 0;
      
      public var endDelayTimerMax:Number = 40;
      
      public var rampCoords:Array;
      
      public var barCoords:Array;
      
      public var bumperCoords:Array;
      
      public var ramps:Array;
      
      public var bumpers:Array;
      
      public var banks:Array;
      
      public function MiniGamePachinko(param1:MiniGameScreen, param2:MovieClip)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3786
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MiniGamePachinko = this;
         _loc1_.clip = new minigamePachinkoMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Pizza Pachinko");
         if(_loc2_)
         {
            _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.decideDifficulty();
               _loc1_.ball = _loc1_.clip.ball;
               _loc1_.usingWhichBall = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.resetBall();
                  _loc1_.setupWalls();
                  _loc1_.setupBumpers();
                  if(_loc3_)
                  {
                  }
               }
               _loc1_.clip.reload.visible = false;
               _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
               addr89:
            }
            return;
         }
         _loc1_.clip.reload.gotoAndPlay("sliding1");
         §§goto(addr89);
      }
      
      public function setupWalls() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Ramp = null;
         var _loc6_:* = NaN;
         var _loc7_:Ramp = null;
         var _loc8_:MovieClip = null;
         var _loc9_:DropShadowFilter = null;
         var _loc1_:MiniGamePachinko = this;
         if(!_loc10_)
         {
            _loc1_.ramps = null;
            if(_loc11_ || Boolean(_loc3_))
            {
            }
            addr56:
            _loc2_ = 0;
            loop0:
            while(true)
            {
               §§push(_loc2_);
               §§push(_loc1_.banks);
               if(_loc11_ || Boolean(_loc1_))
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(_loc11_ || Boolean(_loc2_))
                     {
                        addr132:
                        _loc1_.banks = null;
                        _loc1_.banks = [];
                        §§push(0);
                        if(_loc11_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc10_)
                           {
                              addr145:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc10_)
                                 {
                                    §§push(_loc1_.rampCoords);
                                    if(!(_loc10_ && Boolean(_loc1_)))
                                    {
                                       if(§§pop() >= §§pop().length - 1)
                                       {
                                          §§push(0);
                                       }
                                       else
                                       {
                                          §§push(_loc1_.rampCoords);
                                          if(!(_loc10_ && Boolean(_loc2_)))
                                          {
                                             §§push(_loc2_);
                                             if(_loc11_)
                                             {
                                                _loc3_ = §§pop()[§§pop()];
                                                §§push(_loc1_.rampCoords);
                                                §§push(_loc2_);
                                                if(!(_loc10_ && Boolean(_loc2_)))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc4_ = §§pop()[§§pop()];
                                                _loc5_ = new Ramp(_loc3_[0],_loc3_[1],_loc4_[0],_loc4_[1],_loc1_.defaultRampDecay);
                                                if(!(_loc10_ && Boolean(this)))
                                                {
                                                   _loc1_.ramps.push(_loc5_);
                                                   if(_loc10_ && Boolean(_loc2_))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§push(_loc2_);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                }
                                                _loc2_ = §§pop();
                                                continue;
                                             }
                                             addr284:
                                             loop2:
                                             while(true)
                                             {
                                                _loc6_ = Number(§§pop()[§§pop()][_loc2_][4]);
                                                if(_loc11_)
                                                {
                                                   addr282:
                                                   loop3:
                                                   while(true)
                                                   {
                                                      _loc7_ = new Ramp(_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][0],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][1],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][2],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][3],_loc6_,true);
                                                      if(_loc11_ || Boolean(this))
                                                      {
                                                         _loc1_.ramps.push(_loc7_);
                                                      }
                                                      _loc8_ = new pachinko_anchovy();
                                                      _loc8_.x = _loc7_.x1;
                                                      if(_loc11_)
                                                      {
                                                         _loc8_.y = _loc7_.y1;
                                                         if(!_loc10_)
                                                         {
                                                            _loc8_.rotation = this.radsToDegrees(_loc7_.getAngle());
                                                         }
                                                      }
                                                      _loc9_ = new DropShadowFilter(5,90,9726215,1,2,2,0.71);
                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                      {
                                                         _loc8_.filters = [_loc9_];
                                                         if(!_loc10_)
                                                         {
                                                            _loc1_.clip.holder.addChild(_loc8_);
                                                            if(_loc10_)
                                                            {
                                                            }
                                                         }
                                                         _loc1_.banks.push(_loc8_);
                                                         addr430:
                                                         if(_loc10_ && Boolean(_loc1_))
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            do
                                                            {
                                                               §§push(_loc1_.barCoords);
                                                               break loop0;
                                                               §§push(_loc1_.defaultRampDecay);
                                                            }
                                                            while(_loc10_ && Boolean(_loc1_));
                                                            
                                                            addr258:
                                                            _loc6_ = §§pop();
                                                            §§push(_loc1_.barCoords);
                                                            if(_loc10_)
                                                            {
                                                            }
                                                            break loop3;
                                                         }
                                                         addr430:
                                                      }
                                                      §§push(_loc2_);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc11_ || Boolean(this))
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      _loc2_ = §§pop();
                                                      §§goto(addr430);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr293:
                                                   addr282:
                                                }
                                             }
                                             addr284:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc1_.whichDifficulty);
                                             if(_loc11_ || Boolean(_loc1_))
                                             {
                                                if(§§pop()[§§pop()][_loc2_].length == 5)
                                                {
                                                   if(_loc10_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr284);
                                          }
                                       }
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              addr245:
                              _loc2_ = §§pop();
                              §§goto(addr430);
                           }
                           while(true)
                           {
                              §§goto(addr282);
                           }
                        }
                        §§goto(addr245);
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     _loc1_.clip.holder.removeChild(_loc1_.banks[_loc2_]);
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        §§push(_loc1_.banks);
                        if(_loc11_ || Boolean(this))
                        {
                           §§push(_loc2_);
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              §§pop()[§§pop()] = null;
                              if(!(_loc10_ && Boolean(this)))
                              {
                                 _loc2_++;
                                 if(_loc11_ || Boolean(_loc3_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr284);
                        }
                        §§goto(addr282);
                     }
                  }
                  §§goto(addr438);
               }
               break;
            }
            while(true)
            {
               if(§§pop() < §§pop()[_loc1_.whichDifficulty].length)
               {
                  §§push(_loc1_.defaultRampDecay);
                  if(_loc10_ && Boolean(_loc1_))
                  {
                     continue;
                  }
                  §§goto(addr258);
               }
               addr438:
               return;
            }
         }
         _loc1_.ramps = [];
         if(_loc11_)
         {
         }
         §§goto(addr56);
      }
      
      public function setupBumpers() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc5_:DropShadowFilter = null;
         var _loc1_:MiniGamePachinko = this;
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               loop1:
               while(true)
               {
                  §§push(_loc1_.bumpers);
                  if(_loc6_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           _loc1_.bumpers = null;
                           _loc1_.bumpers = [];
                        }
                     }
                     else
                     {
                        _loc1_.clip.holder.removeChild(_loc1_.bumpers[_loc2_]);
                        if(_loc7_ && Boolean(_loc1_))
                        {
                           continue loop0;
                        }
                        _loc1_.bumpers[_loc2_] = null;
                        if(!_loc7_)
                        {
                           §§push(_loc2_);
                           if(_loc7_ && Boolean(this))
                           {
                              break loop0;
                           }
                           §§push(§§pop() + 1);
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              §§push(§§pop());
                              if(_loc6_ || Boolean(_loc1_))
                              {
                                 _loc2_ = §§pop();
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    continue loop0;
                                 }
                              }
                              break loop0;
                           }
                           continue;
                        }
                     }
                     §§push(0);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        §§push(_loc1_.bumperCoords);
                        break loop1;
                     }
                     addr266:
                     return;
                     addr259:
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() < §§pop()[_loc1_.whichDifficulty].length)
                  {
                     _loc3_ = getDefinitionByName("pachinko_" + _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][2]) as Class;
                     _loc4_ = new _loc3_() as MovieClip;
                     _loc4_.x = _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][0];
                     if(_loc6_ || Boolean(this))
                     {
                        _loc4_.y = _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][1];
                        if(!_loc7_)
                        {
                           _loc4_.rotation = Math.floor(Math.random() * 360);
                        }
                     }
                     _loc5_ = new DropShadowFilter(5,90,9726215,1,2,2,0.71);
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        _loc4_.filters = [_loc5_];
                        addr258:
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           _loc1_.clip.holder.addChild(_loc4_);
                           if(_loc6_)
                           {
                           }
                        }
                        while(true)
                        {
                           §§goto(addr259);
                        }
                        addr258:
                     }
                     _loc1_.bumpers.push(_loc4_);
                     if(!_loc7_)
                     {
                        §§push(_loc2_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc6_)
                           {
                           }
                           addr257:
                           _loc2_ = §§pop();
                        }
                        §§goto(addr257);
                        §§push(§§pop());
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr266);
               }
            }
            break;
         }
         _loc2_ = §§pop();
         §§goto(addr258);
      }
      
      public function clickScreen(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MiniGamePachinko = this;
         if(!_loc4_)
         {
            §§push(_loc2_.didLaunch);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                  }
                  addr40:
                  §§push(_loc2_.usingWhichBall);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(1);
                     if(_loc3_ || Boolean(param1))
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc3_)
                        {
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        §§pop();
                        addr79:
                        if(_loc3_)
                        {
                           addr74:
                           §§push(_loc2_.usingWhichBall);
                        }
                        _loc2_.clip.reload.gotoAndPlay("drop" + (_loc2_.usingWhichBall + 1));
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr103:
                           _loc2_.ballSpeedX = 0;
                        }
                     }
                     addr77:
                     §§push(§§pop() == §§pop());
                  }
                  §§goto(addr77);
                  §§push(2);
               }
               return;
            }
            if(§§pop())
            {
               §§goto(addr79);
            }
            §§goto(addr103);
         }
         _loc2_.didLaunch = true;
         if(_loc3_ || Boolean(param1))
         {
            §§goto(addr40);
         }
         §§goto(addr74);
      }
      
      public function resetBall() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:MiniGamePachinko = this;
         §§push(_loc1_.usingWhichBall);
         if(_loc5_)
         {
            §§push(§§pop() == _loc1_.totalBalls);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                     }
                     §§goto(addr130);
                  }
                  addr44:
                  if(§§pop())
                  {
                     _loc1_.isDonePlaying = true;
                     _loc1_.checkSuccess();
                     if(!_loc5_)
                     {
                        §§goto(addr167);
                     }
                  }
                  else
                  {
                     _loc1_.ball.x = _loc1_.ballRadius;
                     if(!_loc4_)
                     {
                        _loc1_.ball.y = _loc1_.ballStartY;
                        if(!_loc4_)
                        {
                           _loc1_.ballSpeedY = 0;
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              _loc1_.ballSpeedX = 0;
                              if(_loc5_)
                              {
                              }
                              §§goto(addr167);
                           }
                        }
                        addr94:
                        _loc1_.ballDirection = 1;
                        if(_loc5_)
                        {
                           addr99:
                           _loc1_.didLaunch = false;
                           var _loc2_:* = _loc1_;
                           §§push(_loc2_.usingWhichBall);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_ || Boolean(_loc1_))
                           {
                              _loc2_.usingWhichBall = _loc3_;
                           }
                           §§push(_loc1_.usingWhichBall);
                           if(!_loc4_)
                           {
                              addr149:
                              §§push(1);
                              if(_loc5_)
                              {
                                 addr130:
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                 }
                                 addr153:
                                 if(!§§pop())
                                 {
                                    addr154:
                                    §§pop();
                                    §§push(_loc1_.usingWhichBall == 3);
                                 }
                                 if(§§pop())
                                 {
                                    addr167:
                                    _loc1_.clip.reload.gotoAndPlay("sliding" + _loc1_.usingWhichBall);
                                 }
                                 return;
                                 §§push(§§pop() == §§pop());
                              }
                              §§push(§§pop() == §§pop());
                              if(!_loc4_)
                              {
                                 addr152:
                                 §§goto(addr153);
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr154);
                        }
                     }
                     _loc1_.gravity = 1;
                     if(_loc5_)
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr130);
               }
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(_loc1_.usingWhichBall);
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr154);
               }
               §§goto(addr152);
            }
            §§pop();
            §§goto(addr44);
            §§push(_loc1_.landedWhichHole[2] > 0);
         }
         §§push(2);
         if(_loc5_ || Boolean(_loc2_))
         {
            §§goto(addr149);
         }
         §§goto(addr154);
      }
      
      public function getBallSlope() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MiniGamePachinko = this;
         §§push(_loc1_.ballSpeedY);
         if(_loc3_)
         {
            §§push(§§pop() / _loc1_.ballSpeedX);
            if(_loc3_ || Boolean(this))
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == Number.POSITIVE_INFINITY)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(1000000);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc3_ || _loc2_))
                           {
                              addr94:
                              §§push(-1000000);
                           }
                        }
                        else
                        {
                           addr77:
                           if(§§pop() == Number.NEGATIVE_INFINITY)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr94);
                              }
                           }
                        }
                     }
                     §§push(§§pop());
                     if(_loc3_)
                     {
                     }
                  }
                  addr99:
                  §§push(_loc2_);
               }
               else
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr77);
                  }
               }
               return §§pop();
            }
            _loc2_ = §§pop();
         }
         §§goto(addr99);
      }
      
      public function decideDifficulty() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MiniGamePachinko = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(_loc4_)
         {
            if(_loc2_ < this.prizeSKUs.length)
            {
               if(_loc3_ && Boolean(_loc1_))
               {
               }
               addr74:
            }
            else
            {
               _loc1_.whichDifficulty = Math.ceil(Math.random() * 14);
            }
            §§goto(addr83);
         }
         §§push(_loc1_);
         §§push(_loc2_);
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(§§pop() + 1);
         }
         §§pop().whichDifficulty = §§pop();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            §§goto(addr74);
         }
         addr83:
      }
      
      public function checkSuccess() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGamePachinko = this;
         if(!_loc5_)
         {
            if(_loc1_.landedWhichHole[2] > 0)
            {
               if(_loc6_)
               {
                  if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
                  {
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
                        if(!(_loc5_ && Boolean(_loc3_)))
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
                     if(_loc6_)
                     {
                        _loc3_ = 0;
                     }
                     do
                     {
                        if(_loc3_ >= _loc1_.prizeSKUs.length)
                        {
                           if(!(_loc5_ && Boolean(this)))
                           {
                              _loc4_ = Math.floor(Math.random() * _loc2_.length);
                              break;
                           }
                        }
                        else
                        {
                           if(_loc1_.allowedForRandom[_loc3_] != 1)
                           {
                              continue;
                           }
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              _loc2_.push(_loc1_.prizeSKUs[_loc3_]);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        addr179:
                        _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                     }
                     while(_loc3_++, !_loc5_);
                     
                     _loc1_.skuToWin = _loc2_[_loc4_];
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                     }
                     §§goto(addr179);
                  }
                  addr189:
                  _loc1_.amountToWin = 1;
                  _loc1_.screen.gameObj.soundManager.playSound("customer_happy.wav");
               }
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
            }
            else
            {
               _loc1_.skuToWin = "tips";
               if(_loc6_ || Boolean(this))
               {
                  _loc1_.skuIsClothing = false;
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     _loc1_.skuClothingMode = "";
                     if(!_loc5_)
                     {
                        _loc1_.amountToWin = 0;
                        if(_loc5_ && Boolean(_loc2_))
                        {
                        }
                        addr348:
                        _loc1_.screen.gameObj.soundManager.playSound("customer_decent.wav");
                     }
                     addr255:
                     §§push(_loc1_);
                     §§push(_loc1_.amountToWin);
                     if(_loc6_ || Boolean(this))
                     {
                        §§push(§§pop() + _loc1_.landedWhichHole[1] * _loc1_.prizeAmounts[1]);
                     }
                     §§pop().amountToWin = §§pop();
                     if(_loc5_)
                     {
                     }
                     addr299:
                     §§push(_loc1_);
                     §§push(_loc1_.amountToWin);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() + _loc1_.landedWhichHole[4] * _loc1_.prizeAmounts[4]);
                     }
                     §§pop().amountToWin = §§pop();
                     if(_loc1_.amountToWin == 0)
                     {
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           _loc1_.skuToWin = null;
                           if(_loc5_ && Boolean(this))
                           {
                           }
                        }
                     }
                     §§goto(addr348);
                  }
                  §§push(_loc1_);
                  §§push(_loc1_.amountToWin);
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(§§pop() + _loc1_.landedWhichHole[3] * _loc1_.prizeAmounts[3]);
                  }
                  §§pop().amountToWin = §§pop();
                  §§goto(addr299);
               }
               §§push(_loc1_);
               §§push(_loc1_.amountToWin);
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  §§push(§§pop() + _loc1_.landedWhichHole[0] * _loc1_.prizeAmounts[0]);
               }
               §§pop().amountToWin = §§pop();
               §§goto(addr255);
            }
            return;
         }
         §§goto(addr189);
      }
      
      override public function updateScreen() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:MiniGamePachinko = this;
         if(_loc6_ || Boolean(_loc1_))
         {
            §§push(_loc1_.isDonePlaying);
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  var _loc3_:* = _loc1_;
                  §§push(_loc3_.gameTimer);
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     _loc3_.gameTimer = _loc4_;
                  }
                  if(!_loc1_.didLaunch)
                  {
                     _loc1_.ball.x += _loc1_.ballSpeed * _loc1_.ballDirection;
                     §§push(_loc1_.ball.x > 640 - _loc1_.ballRadius);
                     §§push(_loc1_.ball.x > 640 - _loc1_.ballRadius);
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           addr126:
                           §§push(_loc1_.ballDirection);
                           §§push(1);
                           if(_loc6_)
                           {
                              §§push(§§pop() == §§pop());
                           }
                           §§push(§§pop() == §§pop());
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              addr134:
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    _loc1_.ball.x = _loc1_.ballRadius;
                                    if(!(_loc7_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.ballDirection = 1;
                                       if(_loc7_)
                                       {
                                          addr351:
                                          §§push(1);
                                          if(!_loc7_)
                                          {
                                             addr354:
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                addr400:
                                                _loc3_ = _loc1_.landedWhichHole;
                                                var _loc5_:* = _loc3_[_loc4_ = _loc2_] + 1;
                                                if(_loc6_)
                                                {
                                                   _loc3_[_loc4_] = _loc5_;
                                                }
                                                if(!(_loc7_ && Boolean(_loc2_)))
                                                {
                                                   addr426:
                                                   _loc1_.clip.fireworks.x = _loc1_.ball.x;
                                                   addr433:
                                                   _loc1_.clip.fireworks.y = _loc1_.ball.y;
                                                   _loc1_.clip.fireworks.gotoAndPlay(1);
                                                   addr445:
                                                   _loc1_.screen.gameObj.soundManager.playSound("getstar.wav");
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr372:
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                §§goto(addr400);
                                             }
                                          }
                                          addr507:
                                          if(§§pop() == _loc1_.endDelayTimerMax)
                                          {
                                             if(_loc6_)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr528);
                                    }
                                    addr453:
                                    _loc1_.resetBall();
                                    if(_loc6_)
                                    {
                                    }
                                    §§goto(addr528);
                                 }
                                 addr270:
                                 _loc3_ = _loc1_;
                                 §§push(_loc3_.dropBelowTimer);
                                 if(!(_loc7_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    _loc3_.dropBelowTimer = _loc4_;
                                 }
                                 addr295:
                                 §§push(_loc1_.dropBelowTimer);
                                 if(_loc6_)
                                 {
                                    addr299:
                                    §§push(_loc1_.dropBelowTimerMax);
                                    if(_loc7_)
                                    {
                                    }
                                    §§goto(addr507);
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc6_)
                                 {
                                    if(_loc1_.ball.x < 161)
                                    {
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          _loc2_ = §§pop();
                                          addr345:
                                          §§goto(addr400);
                                       }
                                       else
                                       {
                                          §§goto(addr354);
                                       }
                                    }
                                    else if(_loc1_.ball.x < 280)
                                    {
                                       §§goto(addr351);
                                    }
                                    else
                                    {
                                       if(_loc1_.ball.x < 347)
                                       {
                                          §§push(2);
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr372);
                                          }
                                       }
                                       else if(_loc1_.ball.x < 450)
                                       {
                                          if(_loc6_ || Boolean(_loc3_))
                                          {
                                             addr389:
                                             §§push(3);
                                             if(_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                §§goto(addr400);
                                             }
                                             §§goto(addr528);
                                          }
                                          §§goto(addr433);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                       addr396:
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr400);
                                       }
                                       §§goto(addr528);
                                    }
                                    §§goto(addr351);
                                 }
                                 §§goto(addr453);
                              }
                              addr154:
                           }
                           else
                           {
                              addr201:
                              §§pop();
                              §§push(_loc1_.didDropBelow);
                              if(_loc6_ || Boolean(this))
                              {
                                 addr212:
                                 if(!§§pop())
                                 {
                                    _loc1_.didDropBelow = true;
                                    if(_loc6_ || Boolean(this))
                                    {
                                    }
                                    §§goto(addr426);
                                 }
                                 else
                                 {
                                    §§push(_loc1_.ball.y < _loc1_.bottomBounds);
                                 }
                              }
                              if(§§pop())
                              {
                                 _loc1_.didDropBelow = false;
                                 if(!_loc7_)
                                 {
                                    _loc1_.dropBelowTimer = 0;
                                    if(_loc7_ && Boolean(_loc2_))
                                    {
                                       §§goto(addr351);
                                    }
                                    §§goto(addr528);
                                 }
                                 §§goto(addr445);
                              }
                              else if(_loc1_.didDropBelow)
                              {
                                 §§goto(addr270);
                              }
                           }
                           _loc1_.clip.shadowball.x = _loc1_.clip.ball.x;
                           if(!(_loc7_ && Boolean(this)))
                           {
                              addr472:
                              _loc1_.clip.shadowball.y = _loc1_.clip.ball.y;
                              §§goto(addr426);
                           }
                           §§goto(addr528);
                        }
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              _loc1_.ball.x = 640 - _loc1_.ballRadius;
                              if(_loc6_)
                              {
                                 _loc1_.ballDirection = -1;
                                 §§goto(addr154);
                              }
                              §§goto(addr472);
                           }
                           else
                           {
                              §§goto(addr295);
                           }
                        }
                        else
                        {
                           §§push(_loc1_.ball.x < _loc1_.ballRadius);
                           §§push(_loc1_.ball.x < _loc1_.ballRadius);
                           if(!_loc7_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc1_.ballDirection);
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    §§goto(addr126);
                                    §§push(-1);
                                 }
                                 §§goto(addr299);
                              }
                              §§goto(addr134);
                           }
                        }
                     }
                     addr305:
                     if(§§pop())
                     {
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§pop();
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              §§push(_loc1_.ball.y > _loc1_.bottomBounds);
                           }
                           §§goto(addr389);
                        }
                     }
                     if(§§pop())
                     {
                        §§push(-1);
                        if(_loc6_)
                        {
                           §§goto(addr270);
                           §§push(§§pop());
                        }
                        §§goto(addr396);
                     }
                     §§goto(addr126);
                  }
                  else
                  {
                     §§push(_loc1_);
                     §§push(_loc1_.ballSpeedY);
                     if(_loc6_)
                     {
                        §§push(§§pop() + _loc1_.gravity);
                     }
                     §§pop().ballSpeedY = §§pop();
                     §§push(_loc1_.ballSpeedY);
                     §§push(_loc1_.terminalVelocity);
                     if(_loc6_)
                     {
                        if(§§pop() > §§pop())
                        {
                           _loc1_.ballSpeedY = _loc1_.terminalVelocity;
                           if(_loc6_ || Boolean(_loc2_))
                           {
                           }
                           §§goto(addr345);
                        }
                        _loc1_.checkForCollisions();
                        §§push(_loc1_.ball.y > _loc1_.bottomBounds);
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr201);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr305);
                        }
                        §§goto(addr212);
                     }
                  }
                  §§goto(addr305);
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
               }
               else
               {
                  _loc3_ = _loc1_;
                  §§push(_loc3_.endDelayTimer);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc4_ = §§pop();
                  if(_loc6_)
                  {
                     _loc3_.endDelayTimer = _loc4_;
                  }
                  if(_loc6_ || Boolean(this))
                  {
                     §§goto(addr351);
                     §§push(_loc1_.endDelayTimer);
                  }
               }
               _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
               addr528:
               return;
            }
            §§push(§§pop());
            if(!(_loc7_ && Boolean(_loc1_)))
            {
               if(§§pop())
               {
                  §§pop();
                  §§goto(addr201);
                  §§push(_loc1_.didDropBelow);
               }
               §§goto(addr201);
            }
            §§goto(addr305);
         }
         §§goto(addr126);
      }
      
      public function checkForCollisions() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:MiniGamePachinko = this;
         §§push(_loc1_.checkIntersectingRamps());
         if(_loc4_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.checkIntersectingBumpers());
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                     }
                  }
                  §§goto(addr64);
               }
               addr63:
               addr64:
               if(§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr72:
                     _loc1_.ball.x += _loc1_.ballSpeedX;
                     if(_loc4_)
                     {
                     }
                  }
               }
               return;
               §§push(!§§pop());
            }
            §§pop();
            if(_loc4_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§goto(addr63);
               }
               §§goto(addr64);
            }
            §§goto(addr72);
         }
         _loc1_.ball.y += _loc1_.ballSpeedY;
         §§goto(addr64);
      }
      
      public function checkIntersectingBumpers() : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1672
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function getSingleRampIntersectionArray(param1:Number, param2:Number, param3:Number, param4:Number, param5:Ramp) : Array
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = false;
         var _loc16_:Boolean = false;
         var _loc17_:Point = null;
         var _loc18_:Point = null;
         var _loc6_:MiniGamePachinko = this;
         var _loc7_:Array = [];
         §§push(param5.x2);
         if(!(_loc19_ && Boolean(param1)))
         {
            §§push(param5.x1);
            if(_loc20_)
            {
               §§push(§§pop() - §§pop());
               if(_loc20_ || Boolean(this))
               {
                  addr87:
                  §§push(param5.x2);
                  if(_loc20_)
                  {
                     addr96:
                     §§push(param5.x1);
                     if(_loc20_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc19_)
                        {
                        }
                        addr80:
                        §§push(param5.y1);
                        if(!_loc19_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc19_)
                           {
                           }
                           addr100:
                           §§push(§§pop() + §§pop());
                           if(!_loc19_)
                           {
                              addr103:
                              §§push(§§pop());
                           }
                           var _loc8_:* = §§pop();
                           §§push(2);
                           §§push(param5.x2);
                           if(!_loc19_)
                           {
                              §§push(param5.x1);
                              if(_loc20_ || Boolean(param1))
                              {
                                 addr189:
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc19_ && Boolean(param1)))
                                 {
                                    §§push(param5.x1);
                                    if(_loc20_ || Boolean(param2))
                                    {
                                    }
                                    addr159:
                                    §§push(param5.y1);
                                    if(!(_loc19_ && Boolean(param1)))
                                    {
                                       addr188:
                                       §§push(§§pop() - §§pop());
                                       if(_loc20_ || Boolean(param3))
                                       {
                                          §§push(param5.y1);
                                          if(_loc20_ || Boolean(param2))
                                          {
                                             addr185:
                                             §§push(§§pop() - param2);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr188);
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc19_ && Boolean(param1)))
                                 {
                                    §§push(§§pop());
                                 }
                                 var _loc9_:* = §§pop();
                                 §§push(param1);
                                 §§push(param1);
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    §§push(param2);
                                    if(_loc20_)
                                    {
                                       §§push(param2);
                                       if(_loc20_)
                                       {
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(!(_loc19_ && Boolean(this)))
                                          {
                                             §§push(param5.x1);
                                             if(!(_loc19_ && Boolean(param1)))
                                             {
                                                §§push(param5.x1);
                                                if(_loc19_ && Boolean(param3))
                                                {
                                                }
                                                addr303:
                                                addr252:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc19_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc20_)
                                                   {
                                                      §§push(2);
                                                      §§push(param1);
                                                      if(!(_loc19_ && Boolean(param3)))
                                                      {
                                                         §§push(param5.x1);
                                                         if(_loc20_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc19_ && Boolean(param3)))
                                                            {
                                                               §§push(param2);
                                                               if(_loc20_ || Boolean(param3))
                                                               {
                                                                  §§push(§§pop() * param5.y1);
                                                               }
                                                            }
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(§§pop() - §§pop() * §§pop());
                                                   }
                                                   §§push(this.ballRadius);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(_loc20_)
                                                {
                                                }
                                                addr307:
                                                var _loc10_:* = §§pop();
                                                §§push(_loc9_);
                                                if(_loc20_ || Boolean(this))
                                                {
                                                   §§push(_loc9_);
                                                   if(_loc20_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         §§push(4 * _loc8_);
                                                         if(_loc20_ || Boolean(param1))
                                                         {
                                                            §§push(§§pop() * _loc10_);
                                                            if(_loc20_)
                                                            {
                                                            }
                                                         }
                                                         addr346:
                                                         var _loc11_:* = §§pop();
                                                         §§push(0);
                                                         if(!_loc19_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               _loc12_ = Math.sqrt(_loc11_);
                                                               if(_loc20_)
                                                               {
                                                                  addr512:
                                                                  §§push(-_loc9_);
                                                                  if(_loc20_ || Boolean(param3))
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(_loc20_ || Boolean(this))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc20_ || Boolean(param2))
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc20_ || Boolean(param3))
                                                                              {
                                                                                 addr496:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    _loc13_ = §§pop() / §§pop();
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr430:
                                                                                       _loc14_ = §§pop();
                                                                                       _loc15_ = false;
                                                                                       _loc16_ = false;
                                                                                       addr498:
                                                                                       addr500:
                                                                                       addr514:
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                       }
                                                                                       §§push(_loc13_ < 0);
                                                                                       if(!(_loc13_ < 0))
                                                                                       {
                                                                                          if(_loc20_ || Boolean(param2))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(!(_loc19_ && Boolean(param2)))
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(_loc20_ || Boolean(param3))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr691:
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr631:
                                                                                                                  §§push(1);
                                                                                                               }
                                                                                                               _loc18_ = Point.interpolate(new Point(param5.x1,param5.y1),new Point(param5.x2,param5.y2),1 - _loc13_);
                                                                                                               if(_loc20_ || Boolean(param1))
                                                                                                               {
                                                                                                                  _loc7_.push(_loc18_);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr635:
                                                                                                      addr642:
                                                                                                      if(§§pop() && _loc16_)
                                                                                                      {
                                                                                                         _loc17_ = Point.interpolate(new Point(param5.x1,param5.y1),new Point(param5.x2,param5.y2),1 - _loc14_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            _loc7_.push(_loc17_);
                                                                                                         }
                                                                                                      }
                                                                                                      addr669:
                                                                                                      addr668:
                                                                                                      §§push(0 < _loc13_);
                                                                                                      if(_loc20_ || Boolean(this))
                                                                                                      {
                                                                                                         addr690:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                            }
                                                                                                            addr685:
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr688:
                                                                                                            §§push(!_loc16_);
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr691);
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      §§push(_loc13_);
                                                                                                   }
                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§goto(addr635);
                                                                                                   }
                                                                                                   §§goto(addr690);
                                                                                                }
                                                                                                addr555:
                                                                                                §§push(§§pop() > 1);
                                                                                                if(_loc19_ && Boolean(param2))
                                                                                                {
                                                                                                }
                                                                                                addr625:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      addr629:
                                                                                                      §§pop();
                                                                                                      §§goto(addr631);
                                                                                                      §§push(_loc14_);
                                                                                                   }
                                                                                                   §§goto(addr685);
                                                                                                }
                                                                                                §§goto(addr635);
                                                                                             }
                                                                                             addr599:
                                                                                             _loc7_.push(new Point(param5.x2,param5.y2));
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr609:
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc20_ || Boolean(param3))
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(§§pop() < §§pop());
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§goto(addr625);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr669);
                                                                                                   }
                                                                                                   §§goto(addr668);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr638);
                                                                                          }
                                                                                          §§push(!§§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§goto(addr642);
                                                                                          }
                                                                                          §§goto(addr635);
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(_loc20_ || Boolean(param3))
                                                                                          {
                                                                                             _loc15_ = §§pop();
                                                                                             if(!(_loc19_ && Boolean(param3)))
                                                                                             {
                                                                                                §§goto(addr609);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr625);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc16_ = true;
                                                                                          if(!(_loc19_ && Boolean(this)))
                                                                                          {
                                                                                             _loc7_.push(new Point(param5.x1,param5.y1));
                                                                                             §§goto(addr599);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr688);
                                                                                    }
                                                                                    §§push(1);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 §§push(2);
                                                                                 if(_loc20_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§goto(addr498);
                                                                                 }
                                                                                 §§goto(addr609);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        §§push(0);
                                                                        if(!(_loc19_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           if(!(§§pop() < §§pop()))
                                                                           {
                                                                              if(_loc20_ || Boolean(this))
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(_loc13_);
                                                                                 if(!(_loc19_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(_loc19_ && Boolean(this))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr637);
                                                                                    }
                                                                                    §§goto(addr500);
                                                                                 }
                                                                                 §§goto(addr555);
                                                                              }
                                                                              §§goto(addr629);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              §§push(_loc14_ < 0);
                                                                              if(!(_loc14_ < 0))
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(_loc14_);
                                                                                    §§push(1);
                                                                                    if(!(_loc19_ && Boolean(param1)))
                                                                                    {
                                                                                       §§goto(addr496);
                                                                                    }
                                                                                    addr513:
                                                                                    §§goto(addr514);
                                                                                    §§push(§§pop() < §§pop());
                                                                                 }
                                                                                 §§goto(addr637);
                                                                              }
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                     }
                                                                     §§goto(addr430);
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  §§goto(addr513);
                                                                  §§push(0);
                                                               }
                                                               §§push(_loc14_);
                                                               if(!(_loc19_ && Boolean(param1)))
                                                               {
                                                                  §§goto(addr512);
                                                               }
                                                               §§goto(addr631);
                                                            }
                                                            return _loc7_;
                                                         }
                                                         §§goto(addr685);
                                                         §§push(§§pop() <= §§pop());
                                                      }
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc19_ && Boolean(param3))
                                                   {
                                                   }
                                                   addr345:
                                                   §§goto(addr346);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr345);
                                                §§push(§§pop());
                                             }
                                          }
                                          §§goto(addr307);
                                          §§push(§§pop());
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc20_)
                                       {
                                       }
                                       §§goto(addr303);
                                    }
                                    §§push(§§pop() + §§pop());
                                    §§push(param5.y1);
                                    §§push(param5.y1);
                                    if(_loc20_ || Boolean(param2))
                                    {
                                       §§goto(addr252);
                                    }
                                    addr302:
                                    §§goto(addr303);
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§goto(addr302);
                                 §§push(this.ballRadius);
                              }
                              §§push(param1);
                              if(_loc20_ || Boolean(param1))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc20_ || Boolean(param1))
                                    {
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr185);
                           }
                           §§push(param5.y2);
                           if(!_loc19_)
                           {
                              §§goto(addr159);
                           }
                           §§goto(addr188);
                        }
                        addr99:
                        §§goto(addr100);
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr99);
                     §§push(§§pop() - param5.y1);
                  }
                  §§push(param5.y2);
                  if(_loc20_ || Boolean(this))
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr99);
               }
            }
            §§push(§§pop() * §§pop());
            if(_loc19_ && Boolean(param2))
            {
            }
            §§goto(addr103);
         }
         §§push(param5.y2);
         if(!_loc19_)
         {
            §§goto(addr80);
         }
         §§goto(addr87);
      }
      
      public function checkIntersectingRamps() : Boolean
      {
         var _loc79_:Boolean = true;
         var _loc80_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc10_:Ramp = null;
         var _loc11_:Array = null;
         var _loc12_:Point = null;
         var _loc13_:* = false;
         var _loc14_:Boolean = false;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Ramp = null;
         var _loc24_:Array = null;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:* = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:* = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:* = NaN;
         var _loc47_:* = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:* = undefined;
         var _loc52_:Number = NaN;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:* = NaN;
         var _loc56_:* = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:* = NaN;
         var _loc59_:* = NaN;
         var _loc60_:* = NaN;
         var _loc61_:Number = NaN;
         var _loc62_:Number = NaN;
         var _loc63_:Number = NaN;
         var _loc64_:Number = NaN;
         var _loc65_:Number = NaN;
         var _loc66_:* = NaN;
         var _loc67_:Number = NaN;
         var _loc68_:* = NaN;
         var _loc69_:Number = NaN;
         var _loc70_:* = NaN;
         var _loc71_:Number = NaN;
         var _loc72_:* = NaN;
         var _loc73_:* = NaN;
         var _loc74_:Number = NaN;
         var _loc75_:Number = NaN;
         var _loc76_:* = NaN;
         var _loc77_:* = NaN;
         var _loc1_:MiniGamePachinko = this;
         var _loc2_:* = false;
         §§push(_loc1_.ballSpeedX);
         if(!_loc80_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = this.ball.x + _loc1_.ballSpeedX;
         var _loc5_:* = this.ball.y + _loc1_.ballSpeedY;
         §§push(_loc1_.getBallSlope());
         if(!_loc80_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(!(_loc80_ && Boolean(this)))
         {
            §§push(_loc6_);
            if(!(_loc80_ && _loc3_))
            {
               §§push(§§pop() * _loc4_);
            }
            §§push(§§pop() - §§pop());
            if(_loc79_ || _loc3_)
            {
            }
            addr219:
            var _loc7_:* = §§pop();
            var _loc8_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc8_);
               while(§§pop() < _loc1_.ramps.length)
               {
                  §§push(_loc8_);
                  if(!_loc79_)
                  {
                     continue;
                  }
                  §§push(§§pop());
                  if(!_loc80_)
                  {
                     _loc9_ = §§pop();
                     if(!(_loc80_ && Boolean(this)))
                     {
                        §§push(_loc3_);
                        if(!(_loc80_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc79_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc80_)
                                 {
                                    addr280:
                                    §§push(_loc1_.ramps);
                                    if(!(_loc80_ && Boolean(this)))
                                    {
                                       §§push(§§pop().length - 1);
                                       if(_loc79_)
                                       {
                                          §§push(_loc8_);
                                       }
                                    }
                                    _loc10_ = §§pop()[_loc8_];
                                    _loc11_ = _loc1_.getSingleRampIntersectionArray(_loc4_,_loc5_,_loc6_,_loc7_,_loc10_);
                                    _loc12_ = null;
                                    if(!(_loc80_ && Boolean(this)))
                                    {
                                       _loc13_ = false;
                                       if(!(_loc80_ && _loc2_))
                                       {
                                          _loc14_ = false;
                                          if(_loc79_ || Boolean(_loc1_))
                                          {
                                          }
                                          addr1569:
                                          if(_loc13_)
                                          {
                                             addr1571:
                                             §§push(_loc10_.getAngle());
                                             if(!(_loc80_ && Boolean(_loc1_)))
                                             {
                                                _loc64_ = §§pop();
                                                _loc65_ = Math.cos(_loc64_);
                                                §§push(Math.sin(_loc64_));
                                                if(_loc79_)
                                                {
                                                   addr1593:
                                                   _loc66_ = §§pop();
                                                   addr1673:
                                                   if(!(_loc80_ && _loc2_))
                                                   {
                                                      addr1601:
                                                      §§push(_loc1_.ballSpeedY);
                                                      if(_loc79_)
                                                      {
                                                         addr1605:
                                                         _loc67_ = §§pop();
                                                         addr1607:
                                                         §§push(_loc1_.ballSpeedX);
                                                         if(_loc79_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc80_)
                                                            {
                                                               _loc68_ = §§pop();
                                                               if(_loc79_ || Boolean(this))
                                                               {
                                                                  §§push(_loc67_);
                                                                  if(!(_loc80_ && Boolean(this)))
                                                                  {
                                                                     addr1630:
                                                                     §§push(_loc65_);
                                                                     if(!(_loc80_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr1640:
                                                                        §§push(§§pop() * §§pop() - _loc68_ * _loc66_);
                                                                        if(!_loc80_)
                                                                        {
                                                                           addr1645:
                                                                           _loc69_ = §§pop();
                                                                           §§push(_loc68_);
                                                                           if(_loc79_ || Boolean(this))
                                                                           {
                                                                              addr1731:
                                                                              addr1732:
                                                                              addr1655:
                                                                              §§push(§§pop() * _loc65_);
                                                                              if(!_loc80_)
                                                                              {
                                                                                 addr1660:
                                                                                 §§push(_loc67_);
                                                                                 §§push(_loc66_);
                                                                                 if(!_loc80_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                    if(_loc80_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr1707:
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              _loc75_ = §§pop();
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(!_loc80_)
                                                                                 {
                                                                                    addr1737:
                                                                                    §§push(_loc1_.ballSpeedX);
                                                                                    if(!_loc80_)
                                                                                    {
                                                                                       addr1741:
                                                                                       §§push(§§pop());
                                                                                       if(_loc80_)
                                                                                       {
                                                                                       }
                                                                                       addr1755:
                                                                                       _loc77_ = §§pop();
                                                                                       §§push(_loc1_);
                                                                                       §§push(0.9);
                                                                                       if(!_loc80_)
                                                                                       {
                                                                                          §§push(_loc76_);
                                                                                          if(_loc79_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc80_)
                                                                                             {
                                                                                             }
                                                                                             addr1782:
                                                                                             §§pop().ballSpeedX = §§pop();
                                                                                          }
                                                                                          addr1779:
                                                                                          §§goto(addr1782);
                                                                                          §§push(§§pop() + §§pop() * _loc75_);
                                                                                       }
                                                                                       §§push(0.1);
                                                                                       if(_loc79_ || Boolean(this))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr1779);
                                                                                    }
                                                                                    addr1744:
                                                                                    _loc76_ = §§pop();
                                                                                    if(!(_loc80_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc1_.ballSpeedY);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc1_.ballSpeedX = _loc75_;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr1675:
                                                                        §§push(_loc71_);
                                                                        if(_loc79_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc79_)
                                                                           {
                                                                           }
                                                                           addr1705:
                                                                           §§goto(addr1707);
                                                                           §§push(_loc73_);
                                                                           §§push(_loc66_);
                                                                        }
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc80_)
                                                                     {
                                                                        _loc74_ = §§pop();
                                                                        if(_loc79_)
                                                                        {
                                                                           §§push(_loc73_);
                                                                        }
                                                                     }
                                                                     §§goto(addr1744);
                                                                  }
                                                                  addr1716:
                                                                  §§push(§§pop() * _loc65_);
                                                                  if(!(_loc80_ && Boolean(_loc1_)))
                                                                  {
                                                                     addr1727:
                                                                     §§push(§§pop() - _loc72_ * _loc66_);
                                                                     if(!_loc80_)
                                                                     {
                                                                        §§goto(addr1731);
                                                                     }
                                                                     §§goto(addr1741);
                                                                  }
                                                                  §§goto(addr1732);
                                                               }
                                                               §§push(_loc1_);
                                                               §§push(0.9);
                                                               if(_loc79_)
                                                               {
                                                                  §§push(_loc77_);
                                                                  if(!_loc80_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc80_ && _loc3_)
                                                                     {
                                                                     }
                                                                     addr1804:
                                                                     §§pop().ballSpeedY = §§pop();
                                                                     if(_loc80_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  addr1803:
                                                                  §§goto(addr1804);
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§push(0.1);
                                                               if(_loc79_)
                                                               {
                                                                  §§push(§§pop() * _loc74_);
                                                               }
                                                               §§goto(addr1803);
                                                            }
                                                         }
                                                         addr1668:
                                                         _loc70_ = §§pop();
                                                         addr1672:
                                                         _loc71_ = _loc10_.decay;
                                                      }
                                                      §§goto(addr1755);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr1675);
                                                   §§push(-_loc69_);
                                                }
                                                §§push(§§pop());
                                                if(_loc79_)
                                                {
                                                   _loc72_ = §§pop();
                                                   §§push(_loc70_);
                                                   if(!_loc80_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr1716);
                                                }
                                                §§goto(addr1705);
                                             }
                                             _loc73_ = §§pop();
                                             if(_loc79_ || _loc2_)
                                             {
                                                addr1703:
                                                §§goto(addr1705);
                                                §§push(_loc72_ * _loc65_);
                                             }
                                             §§goto(addr1741);
                                          }
                                          _loc8_++;
                                          continue loop0;
                                       }
                                       if(_loc11_.length == 1)
                                       {
                                          _loc17_ = Math.sqrt((_loc4_ - _loc10_.x1) * (_loc4_ - _loc10_.x1) + (_loc5_ - _loc10_.y1) * (_loc5_ - _loc10_.y1));
                                          if(_loc79_ || Boolean(_loc1_))
                                          {
                                             §§push(Math.sqrt((_loc4_ - _loc10_.x2) * (_loc4_ - _loc10_.x2) + (_loc5_ - _loc10_.y2) * (_loc5_ - _loc10_.y2)));
                                             if(_loc79_)
                                             {
                                                _loc18_ = §§pop();
                                                §§push(_loc17_);
                                                if(_loc79_ || _loc2_)
                                                {
                                                   §§push(this.ballRadius);
                                                   if(!(_loc80_ && Boolean(_loc1_)))
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(_loc79_ || Boolean(_loc1_))
                                                         {
                                                            _loc15_ = new Point(_loc10_.x1,_loc10_.y1);
                                                            _loc16_ = new Point(_loc10_.x2,_loc10_.y2);
                                                            if(_loc79_)
                                                            {
                                                            }
                                                            addr469:
                                                            §§push(_loc15_.x + _loc20_ * Math.cos(_loc19_));
                                                            if(_loc79_ || Boolean(_loc1_))
                                                            {
                                                               addr485:
                                                               _loc21_ = §§pop();
                                                               addr503:
                                                               if(!(_loc80_ && Boolean(this)))
                                                               {
                                                                  §§push(_loc15_.y + _loc20_ * Math.sin(_loc19_));
                                                               }
                                                               _loc23_ = new Ramp(_loc15_.x,_loc15_.y,_loc21_,_loc22_,_loc1_.defaultRampDecay);
                                                               if((_loc24_ = _loc1_.getSingleRampIntersectionArray(_loc4_,_loc5_,_loc6_,_loc7_,_loc23_)).length == 1)
                                                               {
                                                                  if(_loc79_)
                                                                  {
                                                                     _loc25_ = _loc4_;
                                                                     _loc26_ = _loc5_;
                                                                     if(_loc79_)
                                                                     {
                                                                        _loc27_ = Number(_loc24_[0].x);
                                                                        if(!_loc80_)
                                                                        {
                                                                           §§push(Number(_loc24_[0].y));
                                                                           if(!_loc80_)
                                                                           {
                                                                              _loc28_ = §§pop();
                                                                              if(!_loc80_)
                                                                              {
                                                                                 _loc29_ = _loc27_ - _loc15_.x;
                                                                                 §§push(_loc28_);
                                                                                 if(_loc79_)
                                                                                 {
                                                                                    §§push(§§pop() - _loc15_.y);
                                                                                    if(_loc79_ || Boolean(_loc1_))
                                                                                    {
                                                                                       _loc30_ = §§pop();
                                                                                    }
                                                                                    addr821:
                                                                                    _loc42_ = §§pop();
                                                                                    if(_loc79_ || _loc2_)
                                                                                    {
                                                                                       addr834:
                                                                                       _loc43_ = Math.atan2(_loc42_,_loc41_);
                                                                                       addr829:
                                                                                    }
                                                                                    addr847:
                                                                                    §§push(_loc35_);
                                                                                    if(_loc79_)
                                                                                    {
                                                                                       addr850:
                                                                                       §§push(_loc44_);
                                                                                       if(_loc79_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc79_ || _loc2_)
                                                                                          {
                                                                                             addr963:
                                                                                             addr964:
                                                                                             addr965:
                                                                                             §§push(_loc36_);
                                                                                             if(_loc79_)
                                                                                             {
                                                                                                addr951:
                                                                                                §§push(_loc45_);
                                                                                                if(!_loc80_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             _loc50_ = §§pop() + §§pop() * _loc47_;
                                                                                             addr971:
                                                                                             _loc51_ = _loc46_ - _loc47_;
                                                                                             addr970:
                                                                                             addr968:
                                                                                             §§push(_loc50_ + _loc39_ * _loc51_);
                                                                                             §§push(_loc39_);
                                                                                             §§push(_loc40_);
                                                                                             if(!_loc80_)
                                                                                             {
                                                                                                _loc52_ = §§pop() / (§§pop() + §§pop());
                                                                                                §§push(_loc52_ - _loc46_);
                                                                                                if(!(_loc80_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§push(§§pop() + _loc47_);
                                                                                                   if(_loc79_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc80_)
                                                                                                      {
                                                                                                         _loc53_ = §§pop();
                                                                                                         if(_loc79_ || Boolean(_loc1_))
                                                                                                         {
                                                                                                            addr1045:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc79_)
                                                                                                            {
                                                                                                               _loc46_ = §§pop();
                                                                                                               addr1092:
                                                                                                               if(!_loc80_)
                                                                                                               {
                                                                                                                  §§push(_loc52_);
                                                                                                                  if(_loc79_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc79_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1072:
                                                                                                                  §§push(_loc46_);
                                                                                                                  §§push(_loc45_);
                                                                                                               }
                                                                                                               _loc1_.ballSpeedY = _loc36_;
                                                                                                               §§push(_loc1_.ballSpeedX);
                                                                                                               §§push(-0.1);
                                                                                                            }
                                                                                                            §§push(_loc48_);
                                                                                                            §§push(_loc45_);
                                                                                                            if(!(_loc80_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop() * §§pop());
                                                                                                               if(!_loc80_)
                                                                                                               {
                                                                                                                  _loc35_ = §§pop();
                                                                                                                  if(!(_loc80_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr1083:
                                                                                                                     §§push(_loc48_);
                                                                                                                     if(!_loc80_)
                                                                                                                     {
                                                                                                                        §§goto(addr1072);
                                                                                                                        §§push(§§pop() * _loc44_);
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc80_)
                                                                                                                     {
                                                                                                                        _loc36_ = §§pop();
                                                                                                                        _loc1_.ballSpeedX = _loc35_;
                                                                                                                        if(!_loc80_)
                                                                                                                        {
                                                                                                                           §§goto(addr1092);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1130:
                                                                                                               }
                                                                                                               §§goto(addr1092);
                                                                                                            }
                                                                                                         }
                                                                                                         addr1120:
                                                                                                         if(§§pop() < 0.1)
                                                                                                         {
                                                                                                            addr1125:
                                                                                                            if(_loc1_.ballSpeedX >= 0)
                                                                                                            {
                                                                                                               _loc1_.ballSpeedX = 0.1;
                                                                                                               §§goto(addr1130);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc1_.ballSpeedX = -0.1;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr1098:
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(!_loc80_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc79_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§push(_loc1_.ballSpeedX);
                                                                                                               if(_loc79_ || Boolean(_loc1_))
                                                                                                               {
                                                                                                                  §§goto(addr1120);
                                                                                                               }
                                                                                                               §§goto(addr1125);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1120);
                                                                                                   }
                                                                                                   _loc47_ = §§pop();
                                                                                                   §§push(_loc46_);
                                                                                                }
                                                                                                §§push(_loc44_);
                                                                                                if(_loc79_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr1045);
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                                §§goto(addr1120);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc79_ || Boolean(this))
                                                                                             {
                                                                                                §§goto(addr1083);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr1098);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc80_)
                                                                                       {
                                                                                          addr955:
                                                                                          _loc49_ = §§pop();
                                                                                          addr957:
                                                                                          §§push(_loc39_ * _loc46_);
                                                                                          §§push(_loc40_);
                                                                                          if(_loc79_)
                                                                                          {
                                                                                             §§goto(addr963);
                                                                                          }
                                                                                          §§goto(addr970);
                                                                                       }
                                                                                       §§goto(addr971);
                                                                                    }
                                                                                    _loc46_ = §§pop();
                                                                                    if(_loc79_ || _loc2_)
                                                                                    {
                                                                                       addr886:
                                                                                       §§push(_loc37_ * _loc44_);
                                                                                       §§push(_loc38_);
                                                                                       §§push(_loc45_);
                                                                                       if(_loc79_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                          if(!_loc80_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc79_ || _loc3_)
                                                                                             {
                                                                                                _loc47_ = §§pop();
                                                                                                §§push(_loc36_);
                                                                                                §§push(_loc44_);
                                                                                                if(!_loc80_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   §§push(_loc35_);
                                                                                                   §§push(_loc45_);
                                                                                                   if(!(_loc80_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      addr929:
                                                                                                      §§push(§§pop() - §§pop() * §§pop());
                                                                                                   }
                                                                                                   §§goto(addr964);
                                                                                                }
                                                                                                §§goto(addr965);
                                                                                             }
                                                                                             _loc48_ = §§pop();
                                                                                             if(!_loc80_)
                                                                                             {
                                                                                                addr935:
                                                                                                §§push(_loc38_);
                                                                                             }
                                                                                             §§goto(addr957);
                                                                                          }
                                                                                          §§push(§§pop() * _loc44_);
                                                                                          if(!_loc80_)
                                                                                          {
                                                                                             §§push(_loc37_);
                                                                                             if(_loc79_ || Boolean(this))
                                                                                             {
                                                                                                §§push(_loc45_);
                                                                                                if(_loc80_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr963);
                                                                                       }
                                                                                       §§goto(addr951);
                                                                                    }
                                                                                    §§goto(addr968);
                                                                                 }
                                                                                 addr594:
                                                                                 _loc31_ = §§pop();
                                                                                 §§push(_loc19_ + Math.PI);
                                                                                 if(_loc79_)
                                                                                 {
                                                                                    _loc32_ = §§pop();
                                                                                    §§push(_loc4_);
                                                                                    §§push(_loc31_);
                                                                                    if(!(_loc80_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop() * Math.cos(_loc32_));
                                                                                       if(!(_loc80_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc80_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr641:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc79_)
                                                                                       {
                                                                                          _loc34_ = §§pop();
                                                                                          if(!(_loc80_ && _loc3_))
                                                                                          {
                                                                                             this.ball.x = _loc33_;
                                                                                             this.ball.y = _loc34_;
                                                                                             §§push(true);
                                                                                             if(!(_loc80_ && Boolean(this)))
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                §§push(this.ball.x);
                                                                                                if(_loc79_ || _loc2_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   _loc5_ = this.ball.y;
                                                                                                   §§push(_loc5_);
                                                                                                }
                                                                                                §§push(_loc6_);
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc80_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                                §§goto(addr929);
                                                                                             }
                                                                                             addr712:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                try
                                                                                                {
                                                                                                   §§push(_loc1_.banks);
                                                                                                   §§push(_loc8_ - _loc1_.rampCoords.length);
                                                                                                   if(!_loc80_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   §§pop()[§§pop()].gotoAndPlay("bounce");
                                                                                                   if(!_loc80_)
                                                                                                   {
                                                                                                      addr729:
                                                                                                   }
                                                                                                   §§goto(addr829);
                                                                                                }
                                                                                                catch(err:Error)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr963);
                                                                                             }
                                                                                             _loc35_ = _loc1_.ballSpeedX;
                                                                                             §§push(_loc1_.ballSpeedY);
                                                                                             if(_loc79_ || Boolean(_loc1_))
                                                                                             {
                                                                                                _loc36_ = §§pop();
                                                                                                if(_loc80_ && Boolean(this))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr886);
                                                                                          }
                                                                                          addr802:
                                                                                          §§push(2);
                                                                                          if(_loc79_)
                                                                                          {
                                                                                             _loc40_ = §§pop();
                                                                                          }
                                                                                          §§goto(addr834);
                                                                                       }
                                                                                       §§goto(addr886);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc79_ || Boolean(this))
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc79_)
                                                                                       {
                                                                                          §§goto(addr712);
                                                                                          §§push(_loc10_.isFloating);
                                                                                       }
                                                                                       §§goto(addr729);
                                                                                    }
                                                                                    §§goto(addr955);
                                                                                 }
                                                                                 addr812:
                                                                                 _loc41_ = §§pop();
                                                                                 §§push(_loc28_);
                                                                                 if(!_loc80_)
                                                                                 {
                                                                                    addr816:
                                                                                    §§push(§§pop() - _loc5_);
                                                                                    if(!_loc80_)
                                                                                    {
                                                                                       addr820:
                                                                                       §§goto(addr821);
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§goto(addr963);
                                                                                 }
                                                                                 §§goto(addr821);
                                                                              }
                                                                              §§push(_loc27_ - _loc4_);
                                                                              if(_loc79_)
                                                                              {
                                                                                 §§goto(addr812);
                                                                              }
                                                                              §§goto(addr816);
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!(_loc80_ && _loc2_))
                                                                           {
                                                                              addr634:
                                                                              _loc33_ = §§pop();
                                                                              §§goto(addr641);
                                                                              §§push(_loc5_);
                                                                              §§push(_loc31_ * Math.sin(_loc32_));
                                                                           }
                                                                           §§goto(addr850);
                                                                        }
                                                                        §§push(Math.cos(_loc43_));
                                                                        if(!_loc80_)
                                                                        {
                                                                           _loc44_ = §§pop();
                                                                           _loc45_ = Math.sin(_loc43_);
                                                                           §§goto(addr847);
                                                                        }
                                                                        §§goto(addr963);
                                                                     }
                                                                     §§push(0);
                                                                     if(!(_loc80_ && Boolean(_loc1_)))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc80_)
                                                                        {
                                                                           _loc37_ = §§pop();
                                                                           if(_loc79_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc79_)
                                                                              {
                                                                                 _loc38_ = §§pop();
                                                                                 if(!_loc80_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc79_ || _loc2_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr802);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr935);
                                                                        }
                                                                        §§goto(addr820);
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(_loc79_ || Boolean(this))
                                                                     {
                                                                        _loc39_ = §§pop();
                                                                        §§goto(addr802);
                                                                     }
                                                                     §§goto(addr850);
                                                                  }
                                                                  _loc31_ = Math.sqrt(_loc29_ * _loc29_ + _loc30_ * _loc30_);
                                                                  §§push(_loc31_);
                                                                  if(_loc79_)
                                                                  {
                                                                     §§goto(addr594);
                                                                     §§push(§§pop() + 2);
                                                                  }
                                                                  §§goto(addr634);
                                                               }
                                                            }
                                                            _loc22_ = §§pop();
                                                            §§goto(addr503);
                                                         }
                                                         addr1140:
                                                         _loc12_ = Point.interpolate(_loc11_[0],_loc11_[1],0.5);
                                                         if(_loc12_ != null)
                                                         {
                                                            if(_loc79_)
                                                            {
                                                               §§push(-1);
                                                               if(!(_loc80_ && _loc3_))
                                                               {
                                                                  _loc54_ = §§pop() / _loc10_.getSlope();
                                                                  if(!_loc80_)
                                                                  {
                                                                     §§push(_loc12_.y - _loc54_ * _loc12_.x);
                                                                     if(!_loc80_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc80_)
                                                                        {
                                                                           _loc55_ = §§pop();
                                                                           §§push(_loc54_);
                                                                           if(!(_loc80_ && _loc3_))
                                                                           {
                                                                              if(§§pop() == Number.POSITIVE_INFINITY)
                                                                              {
                                                                                 §§push(1000000);
                                                                                 if(!_loc79_)
                                                                                 {
                                                                                    addr1217:
                                                                                    _loc54_ = §§pop();
                                                                                    if(_loc80_ && _loc2_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr1229:
                                                                                 §§push(_loc54_);
                                                                                 §§push(_loc56_);
                                                                                 if(_loc79_ || Boolean(this))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(_loc55_);
                                                                                    if(_loc80_ && _loc2_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1640);
                                                                                 }
                                                                                 _loc57_ = §§pop() + §§pop();
                                                                                 §§push(_loc12_.x - _loc56_);
                                                                                 if(!(_loc80_ && _loc3_))
                                                                                 {
                                                                                    _loc58_ = §§pop();
                                                                                    if(_loc79_)
                                                                                    {
                                                                                       §§push(_loc12_.y - _loc57_);
                                                                                       if(_loc79_)
                                                                                       {
                                                                                          _loc59_ = §§pop();
                                                                                          if(!_loc80_)
                                                                                          {
                                                                                             §§push(_loc57_);
                                                                                             if(_loc79_)
                                                                                             {
                                                                                                if(§§pop() < _loc12_.y)
                                                                                                {
                                                                                                   if(_loc79_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(_loc56_);
                                                                                                      if(!_loc80_)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc12_.x);
                                                                                                         if(!(_loc80_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            _loc58_ = §§pop();
                                                                                                         }
                                                                                                         §§goto(addr1703);
                                                                                                      }
                                                                                                      §§goto(addr1645);
                                                                                                   }
                                                                                                   §§goto(addr1737);
                                                                                                }
                                                                                             }
                                                                                             addr1409:
                                                                                             _loc58_ = §§pop();
                                                                                             if(!_loc80_)
                                                                                             {
                                                                                                §§push(_loc12_.y - _loc57_);
                                                                                                if(!(_loc80_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   addr1424:
                                                                                                   _loc59_ = §§pop();
                                                                                                   if(_loc79_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      addr1437:
                                                                                                      _loc61_ = Math.atan2(_loc59_,_loc58_);
                                                                                                      if(!_loc80_)
                                                                                                      {
                                                                                                         §§push(this.ballRadius);
                                                                                                         if(!_loc80_)
                                                                                                         {
                                                                                                            §§push(§§pop() * Math.cos(_loc61_));
                                                                                                            if(!(_loc80_ && _loc3_))
                                                                                                            {
                                                                                                               _loc62_ = §§pop();
                                                                                                               if(_loc79_)
                                                                                                               {
                                                                                                                  §§push(this.ballRadius);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1630);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1741);
                                                                                                   }
                                                                                                   §§goto(addr1673);
                                                                                                }
                                                                                                §§goto(addr1672);
                                                                                             }
                                                                                             addr1494:
                                                                                             §§push(this.ball.x);
                                                                                             if(!_loc80_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                §§push(this.ball.y);
                                                                                                if(_loc79_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc79_)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      §§push(_loc6_);
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc79_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop() * §§pop());
                                                                                                         if(!(_loc80_ && _loc3_))
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                         }
                                                                                                         §§goto(addr1593);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1727);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1727);
                                                                                          }
                                                                                          _loc59_ = _loc57_ - _loc12_.y;
                                                                                       }
                                                                                       addr1461:
                                                                                       _loc63_ = §§pop() * Math.sin(_loc61_);
                                                                                       this.ball.x = _loc12_.x + _loc62_;
                                                                                       this.ball.y = _loc12_.y + _loc63_;
                                                                                       if(!_loc80_)
                                                                                       {
                                                                                          addr1483:
                                                                                          §§push(true);
                                                                                          if(!(_loc80_ && Boolean(_loc1_)))
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc79_)
                                                                                             {
                                                                                                §§goto(addr1494);
                                                                                             }
                                                                                             §§goto(addr1601);
                                                                                          }
                                                                                          _loc13_ = §§pop();
                                                                                          if(_loc80_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1731);
                                                                                       }
                                                                                       §§goto(addr1737);
                                                                                    }
                                                                                    §§goto(addr1571);
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(_loc79_)
                                                                                 {
                                                                                    _loc59_ = §§pop();
                                                                                    if(_loc57_ < _loc12_.y)
                                                                                    {
                                                                                       if(!(_loc80_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc12_.x - _loc56_);
                                                                                          if(!_loc80_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc79_ || _loc3_)
                                                                                             {
                                                                                                §§goto(addr1409);
                                                                                             }
                                                                                             §§goto(addr1672);
                                                                                          }
                                                                                          §§goto(addr1437);
                                                                                       }
                                                                                       §§goto(addr1703);
                                                                                    }
                                                                                    §§goto(addr1437);
                                                                                 }
                                                                                 §§goto(addr1668);
                                                                              }
                                                                              else if(_loc54_ == Number.NEGATIVE_INFINITY)
                                                                              {
                                                                                 §§push(-1000000);
                                                                                 if(_loc79_)
                                                                                 {
                                                                                    §§goto(addr1217);
                                                                                 }
                                                                                 addr1227:
                                                                                 §§push(§§pop());
                                                                              }
                                                                              addr1226:
                                                                              §§goto(addr1227);
                                                                              §§push(400);
                                                                           }
                                                                           _loc56_ = §§pop();
                                                                           §§goto(addr1229);
                                                                        }
                                                                        §§goto(addr1737);
                                                                     }
                                                                     §§goto(addr1731);
                                                                  }
                                                                  §§push(_loc10_.getRightX());
                                                                  §§push(_loc10_.getLeftX());
                                                                  if(_loc79_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     §§push(this.ball.y - _loc10_.getLeftY());
                                                                     if(_loc80_)
                                                                     {
                                                                     }
                                                                     addr1344:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc80_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc80_)
                                                                        {
                                                                           _loc60_ = §§pop();
                                                                           if(§§pop() >= 0)
                                                                           {
                                                                              if(_loc79_)
                                                                              {
                                                                                 _loc58_ = _loc56_ - _loc12_.x;
                                                                                 if(!_loc80_)
                                                                                 {
                                                                                    §§push(_loc57_);
                                                                                    if(_loc79_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr1229);
                                                                                       §§push(§§pop() - _loc12_.y);
                                                                                    }
                                                                                    §§goto(addr1655);
                                                                                 }
                                                                                 §§goto(addr1409);
                                                                              }
                                                                              §§goto(addr1483);
                                                                           }
                                                                           §§goto(addr1437);
                                                                        }
                                                                        §§goto(addr1660);
                                                                     }
                                                                     §§goto(addr1461);
                                                                  }
                                                                  §§goto(addr1640);
                                                               }
                                                               §§push(§§pop());
                                                               if(!(_loc80_ && Boolean(this)))
                                                               {
                                                                  _loc54_ = §§pop();
                                                                  if(_loc80_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr1226);
                                                               }
                                                               §§goto(addr1424);
                                                            }
                                                            if(_loc10_.isFloating)
                                                            {
                                                               try
                                                               {
                                                                  §§push(_loc1_.banks);
                                                                  §§push(_loc8_ - _loc1_.rampCoords.length);
                                                                  if(!(_loc80_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  §§pop()[§§pop()].gotoAndPlay("bounce");
                                                               }
                                                               catch(err:Error)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr1483);
                                                            §§push(true);
                                                         }
                                                         §§goto(addr1569);
                                                      }
                                                      else
                                                      {
                                                         _loc15_ = new Point(_loc10_.x2,_loc10_.y2);
                                                         _loc16_ = new Point(_loc10_.x1,_loc10_.y1);
                                                      }
                                                      §§push(Math.atan2(_loc1_.ballSpeedY,_loc1_.ballSpeedX));
                                                      if(_loc79_ || Boolean(_loc1_))
                                                      {
                                                         _loc19_ = §§pop();
                                                         if(!(_loc80_ && _loc2_))
                                                         {
                                                            §§push(1000);
                                                            if(_loc79_)
                                                            {
                                                               _loc20_ = §§pop();
                                                               if(!_loc80_)
                                                               {
                                                                  §§goto(addr469);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr503);
                                                      }
                                                      §§goto(addr485);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   §§push((_loc10_.getRightY() - _loc10_.getLeftY()) * (this.ball.x - _loc10_.getLeftX()));
                                                   if(_loc79_ || _loc3_)
                                                   {
                                                      §§goto(addr1344);
                                                   }
                                                   §§goto(addr1660);
                                                }
                                                §§goto(addr1571);
                                             }
                                             §§goto(addr1605);
                                          }
                                          §§goto(addr1607);
                                       }
                                       if(_loc11_.length == 2)
                                       {
                                          if(!_loc80_)
                                          {
                                             §§goto(addr1140);
                                          }
                                          §§goto(addr1409);
                                       }
                                       §§goto(addr1140);
                                    }
                                    _loc1_.ballSpeedY = _loc74_;
                                    §§goto(addr1569);
                                 }
                                 break;
                              }
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc80_ && _loc3_)
                           {
                           }
                        }
                        addr275:
                        _loc9_ = §§pop();
                        if(_loc80_)
                        {
                           break;
                        }
                     }
                     §§goto(addr280);
                     §§push(_loc1_.ramps);
                  }
                  §§goto(addr275);
                  §§push(§§pop());
               }
               return _loc2_;
            }
         }
         §§goto(addr219);
         §§push(§§pop());
      }
      
      public function radsToDegrees(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() * 180);
            if(!_loc2_)
            {
               §§push(§§pop() / Math.PI);
            }
         }
         return §§pop();
      }
      
      public function degreesToRads(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || Boolean(param1))
         {
            §§push(§§pop() * Math.PI);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() / 180);
            }
         }
         return §§pop();
      }
      
      override public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MiniGamePachinko = this;
         if(_loc3_ || _loc2_)
         {
            _loc1_.container.removeChild(_loc1_.clip);
            if(_loc2_ && Boolean(_loc1_))
            {
            }
            §§goto(addr53);
         }
         _loc1_.clip = null;
         addr53:
      }
   }
}

