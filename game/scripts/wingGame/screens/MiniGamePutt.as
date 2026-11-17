package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   import wingGame.models.Ramp;
   
   public class MiniGamePutt extends MiniGame
   {
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var currentPar:Number = 0;
      
      public var strokes:Number = 0;
      
      public var maxStrokes:Number = 8;
      
      public var aimMode:Number = 2;
      
      public var whichDifficulty:Number = 1;
      
      public var fence1Length:Number = 140;
      
      public var fence2Length:Number = 86;
      
      public var fence3Length:Number = 50;
      
      public var isSwinging:Boolean = false;
      
      public var swingTimer:Number = 0;
      
      public var swingTimerMax:Number = 14;
      
      public var swingMouseX:Number = 0;
      
      public var swingMouseY:Number = 0;
      
      public var isInHole:Boolean = false;
      
      public var isDone:Boolean = false;
      
      public var doneTimer:Number = 0;
      
      public var doneTimerMax:Number = 60;
      
      public var isMoving:Boolean = false;
      
      public var friction:Number = 0.98;
      
      public var normalFriction:Number = 0.98;
      
      public var ballSpeed:Number = 16;
      
      public var ballRadius:Number = 10;
      
      public var ballStartY:Number = 80;
      
      public var defaultRampDecay:Number = 0.5;
      
      public var ball:MovieClip;
      
      public var gravity:Number = 1;
      
      public var terminalVelocity:Number = 20;
      
      public var ballSpeedX:Number = 0;
      
      public var ballSpeedY:Number = 0;
      
      public var gameTimer:Number = 0;
      
      public var timeToLaunch:Number = 11;
      
      public var bumperTypes:Array;
      
      public var bumperRadii:Array;
      
      public var bumperBounce:Array;
      
      public var bottomBounds:Number = 430;
      
      public var didDropBelow:Boolean = false;
      
      public var dropBelowTimer:Number = 0;
      
      public var dropBelowTimerMax:Number = 30;
      
      public var holeX:Number = 400;
      
      public var holeY:Number = 240;
      
      public var startX:Number = 200;
      
      public var startY:Number = 240;
      
      public var gridWidth:Number = 10;
      
      public var gridHeight:Number = 7;
      
      public var tileWidth:Number = 64;
      
      public var tileHeight:Number = 64;
      
      public var tileGrid:Array;
      
      public var numTileRamps:Number = 0;
      
      public var rampCoords:Array;
      
      public var barCoords:Array;
      
      public var bumperCoords:Array;
      
      public var startEndCoords:Array;
      
      public var tileCoords:Array;
      
      public var pars:Array;
      
      public var ramps:Array;
      
      public var bumpers:Array;
      
      public var banks:Array;
      
      public var tiles:Array;
      
      public function MiniGamePutt(param1:MiniGameScreen, param2:MovieClip)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 5330
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MiniGamePutt = this;
         _loc1_.clip = new minigamePuttMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Freeze-Putt");
         _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         _loc1_.decideDifficulty();
         _loc1_.ball = _loc1_.clip.ball;
         _loc1_.ball.mouseEnabled = false;
         if(!_loc3_)
         {
            _loc1_.ball.mouseChildren = false;
            _loc1_.resetBall();
         }
         _loc1_.setupTiles();
         if(!_loc3_)
         {
            _loc1_.setupWalls();
            _loc1_.setupBumpers();
            if(_loc2_ || _loc3_)
            {
               _loc1_.setupPositions();
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.screen.gameObj.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
               }
            }
         }
      }
      
      public function decideDifficulty() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MiniGamePutt = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ < this.prizeSKUs.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc1_);
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().whichDifficulty = §§pop();
                  if(_loc3_ || Boolean(this))
                  {
                  }
               }
            }
            else
            {
               _loc1_.whichDifficulty = Math.ceil(Math.random() * 14);
            }
         }
      }
      
      public function setupTiles() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc1_:MiniGamePutt = this;
         if(!_loc5_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || Boolean(_loc3_))
            {
               if(§§pop() >= _loc1_.tiles.length)
               {
                  if(_loc4_)
                  {
                     _loc1_.tiles = null;
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        _loc1_.tiles = [];
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           _loc1_.tileGrid = null;
                           _loc1_.tileGrid = [];
                           §§push(0);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(§§pop());
                              if(_loc4_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc4_)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc1_.gridHeight);
                                       if(_loc4_ || Boolean(_loc3_))
                                       {
                                          loop15:
                                          while(§§pop() < §§pop())
                                          {
                                             §§push(_loc1_.tileGrid);
                                             if(!_loc5_)
                                             {
                                                addr220:
                                                while(true)
                                                {
                                                   §§pop().push([]);
                                                   if(_loc4_)
                                                   {
                                                      §§push(0);
                                                      if(_loc4_ || Boolean(_loc2_))
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   addr131:
                                                   loop19:
                                                   while(true)
                                                   {
                                                      addr177:
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         §§push(_loc1_.gridWidth);
                                                         if(!(_loc4_ || Boolean(_loc2_)))
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            _loc3_++;
                                                            if(!(_loc4_ || Boolean(this)))
                                                            {
                                                               break loop15;
                                                            }
                                                            continue loop14;
                                                         }
                                                         addr240:
                                                         §§push(_loc1_.tileGrid);
                                                         if(_loc5_ && Boolean(this))
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            break loop2;
                                                         }
                                                         continue loop19;
                                                      }
                                                      addr241:
                                                      while(true)
                                                      {
                                                         if(§§pop()[§§pop()][_loc2_] != 0)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc1_.addTile(_loc2_,_loc3_,_loc1_.tileGrid[_loc3_][_loc2_]);
                                                               if(_loc5_ && Boolean(this))
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            addr297:
                                                            return;
                                                            addr246:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_ + 1);
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc4_ || Boolean(_loc3_))
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc5_ && Boolean(_loc2_))
                                                      {
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   break loop0;
                                                }
                                                addr220:
                                                addr117:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc5_)
                                                {
                                                   addr268:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()][_loc2_] = _loc1_.tileCoords[_loc1_.whichDifficulty][_loc3_][_loc2_];
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc1_.gridWidth);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§push(_loc3_ + 1);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc4_ || Boolean(_loc2_))
                                                               {
                                                               }
                                                               break loop0;
                                                            }
                                                            _loc3_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr240);
                                                            §§push(_loc1_.tileGrid);
                                                         }
                                                      }
                                                   }
                                                   addr268:
                                                   addr152:
                                                }
                                                §§goto(addr241);
                                             }
                                          }
                                          §§push(0);
                                          if(_loc4_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                          §§goto(addr220);
                                       }
                                       addr296:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             §§goto(addr220);
                                             §§push(0);
                                          }
                                          §§goto(addr297);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              §§goto(addr131);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc2_ + 1);
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              _loc2_ = §§pop();
                              if(_loc4_)
                              {
                                 §§goto(addr177);
                              }
                           }
                           §§goto(addr268);
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     break loop0;
                  }
               }
               else
               {
                  _loc1_.clip.holder.removeChild(_loc1_.tiles[_loc2_]);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     §§push(_loc1_.tiles);
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§pop()[§§pop()] = null;
                           _loc2_++;
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr297);
                        }
                        else
                        {
                           §§goto(addr152);
                        }
                     }
                     §§goto(addr117);
                  }
               }
               while(true)
               {
                  §§goto(addr268);
                  _loc2_ = §§pop();
               }
               §§goto(addr296);
            }
            break;
         }
         while(true)
         {
            §§goto(addr296);
         }
      }
      
      public function addTile(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MiniGamePutt = this;
         var _loc5_:MovieClip = new minigame_putt_tile();
         _loc5_.x = param1 * _loc4_.tileWidth;
         _loc5_.y = param2 * _loc4_.tileHeight;
         if(!_loc6_)
         {
            _loc5_.gotoAndStop(param3);
            if(_loc6_ && Boolean(param1))
            {
            }
            §§goto(addr116);
         }
         _loc5_.mouseEnabled = false;
         _loc5_.mouseChildren = false;
         if(!_loc6_)
         {
            _loc4_.clip.holder.addChild(_loc5_);
            §§push(_loc4_.tileGrid);
            if(!(_loc6_ && Boolean(param2)))
            {
               §§push(param2);
               if(!(_loc6_ && Boolean(param3)))
               {
                  §§pop()[§§pop()][param1] = param3;
                  §§push(_loc4_.tileCoords);
                  if(_loc7_)
                  {
                  }
                  addr114:
                  §§pop().push(_loc5_);
               }
               addr92:
               §§pop()[§§pop()][param2][param1] = param3;
               if(!(_loc6_ && Boolean(param2)))
               {
                  §§goto(addr114);
                  §§push(_loc4_.tiles);
               }
            }
            §§goto(addr92);
            §§push(_loc4_.whichDifficulty);
         }
         addr116:
      }
      
      public function createOrUpdateRamp(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc11_:Ramp = null;
         var _loc5_:MiniGamePutt = this;
         var _loc6_:* = false;
         §§push(param4);
         if(!_loc15_)
         {
            §§push(§§pop() - param2);
            if(!_loc15_)
            {
               §§push(§§pop());
            }
         }
         var _loc7_:* = §§pop();
         §§push(param3);
         if(!_loc15_)
         {
            §§push(§§pop() - param1);
            if(_loc15_)
            {
            }
            addr38:
            var _loc8_:* = §§pop();
            §§push(_loc7_);
            if(!(_loc15_ && Boolean(param3)))
            {
               addr60:
               §§push(_loc8_);
               if(!_loc15_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc14_ || Boolean(param3))
                  {
                     §§push(§§pop());
                  }
               }
               var _loc9_:* = §§pop();
               if(!(_loc15_ && Boolean(param3)))
               {
                  if(§§pop() == Number.POSITIVE_INFINITY)
                  {
                     addr116:
                     if(!(_loc15_ && Boolean(param2)))
                     {
                        §§push(1000000);
                        if(_loc14_)
                        {
                           §§push(§§pop());
                           if(!_loc15_)
                           {
                              _loc9_ = §§pop();
                              if(_loc15_ && Boolean(param1))
                              {
                              }
                           }
                        }
                        addr117:
                        var _loc10_:* = §§pop();
                        while(_loc10_ < _loc5_.ramps.length)
                        {
                           _loc11_ = _loc5_.ramps[_loc10_];
                           §§push(param2);
                           if(!(_loc15_ && Boolean(this)))
                           {
                              §§push(§§pop() == param4);
                              §§push(§§pop() == param4);
                              if(!(_loc15_ && Boolean(this)))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    addr322:
                                    §§push(_loc11_.y1);
                                    §§push(param2);
                                    if(!_loc15_)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(!_loc15_)
                                    {
                                       addr325:
                                       §§push(§§pop() || §§pop() == param3);
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc14_ || Boolean(param2))
                                       {
                                          addr360:
                                          §§push(_loc11_.x2);
                                          if(!(_loc15_ && Boolean(param1)))
                                          {
                                             addr370:
                                             §§goto(addr371);
                                             §§push(§§pop() == param1);
                                          }
                                          §§goto(addr418);
                                       }
                                       §§goto(addr428);
                                    }
                                    §§goto(addr439);
                                 }
                                 addr161:
                                 if(§§pop() && _loc11_.y2)
                                 {
                                    if(_loc11_.x2 == param1)
                                    {
                                       if(!_loc15_)
                                       {
                                          _loc11_.x2 = param3;
                                          if(_loc14_ || Boolean(param2))
                                          {
                                             §§push(true);
                                             if(!(_loc15_ && Boolean(param2)))
                                             {
                                                _loc6_ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                                addr254:
                                                _loc6_ = true;
                                                break;
                                             }
                                             §§goto(addr446);
                                          }
                                          else
                                          {
                                             addr319:
                                             §§goto(addr322);
                                             §§push(_loc11_.y2);
                                             §§push(param2);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr419);
                                    }
                                    else if(_loc11_.x1 == param3)
                                    {
                                       _loc11_.x1 = param1;
                                       if(_loc14_ || Boolean(param2))
                                       {
                                          _loc6_ = true;
                                          break;
                                       }
                                       §§goto(addr436);
                                    }
                                    §§goto(addr439);
                                 }
                                 else
                                 {
                                    §§push(param1 == param3);
                                    if(!_loc15_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             §§pop();
                                             §§push(_loc11_.x1 == param1);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             §§pop();
                                             §§push(_loc11_.x2 == param1);
                                          }
                                          §§goto(addr406);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc11_.y2 == param2)
                                          {
                                             _loc11_.y2 = param4;
                                             if(!(_loc15_ && Boolean(param3)))
                                             {
                                                §§goto(addr254);
                                             }
                                          }
                                          else
                                          {
                                             if(_loc11_.y1 == param4)
                                             {
                                                if(!_loc15_)
                                                {
                                                   _loc11_.y1 = param2;
                                                   if(!(_loc15_ && Boolean(param3)))
                                                   {
                                                      §§push(true);
                                                      if(!_loc15_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr419);
                                                }
                                                else
                                                {
                                                   addr310:
                                                   §§push(_loc11_.x2 == param1);
                                                }
                                             }
                                             §§goto(addr439);
                                          }
                                          §§goto(addr436);
                                       }
                                       else
                                       {
                                          §§push(_loc11_.getSlope());
                                          §§push(_loc9_);
                                          if(!(_loc15_ && Boolean(param3)))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc15_ && Boolean(this)))
                                             {
                                                §§push(§§pop());
                                             }
                                             §§goto(addr322);
                                          }
                                       }
                                       §§goto(addr370);
                                    }
                                    §§push(§§pop());
                                    if(_loc14_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§goto(addr319);
                                       }
                                       §§goto(addr325);
                                    }
                                 }
                                 §§goto(addr379);
                              }
                              if(§§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    §§pop();
                                    if(!(_loc14_ || Boolean(param2)))
                                    {
                                       continue;
                                    }
                                    §§goto(addr310);
                                 }
                                 §§goto(addr419);
                              }
                              §§goto(addr322);
                           }
                           §§push(§§pop() == param2);
                           if(!_loc15_)
                           {
                              §§goto(addr161);
                           }
                           §§goto(addr397);
                        }
                        §§goto(addr446);
                        §§push(_loc6_);
                     }
                     §§goto(addr117);
                     §§push(0);
                  }
                  else
                  {
                     §§push(_loc9_);
                     if(_loc15_ && Boolean(param2))
                     {
                     }
                  }
                  addr115:
                  _loc9_ = §§pop();
                  §§goto(addr116);
               }
               if(§§pop() == Number.NEGATIVE_INFINITY)
               {
                  if(_loc14_ || Boolean(param2))
                  {
                     §§push(-1000000);
                     if(!_loc15_)
                     {
                        §§goto(addr115);
                        §§push(§§pop());
                     }
                     §§goto(addr117);
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr60);
            §§push(§§pop());
         }
         §§goto(addr38);
         §§push(§§pop());
      }
      
      public function setupWalls() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Ramp = null;
         var _loc10_:MovieClip = null;
         var _loc1_:MiniGamePutt = this;
         if(!_loc11_)
         {
            _loc1_.ramps = null;
            if(_loc12_)
            {
               _loc1_.ramps = [];
               if(!(_loc11_ && Boolean(_loc3_)))
               {
                  _loc2_ = 0;
               }
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc11_ && Boolean(_loc3_)))
            {
               §§push(_loc1_.banks);
               if(_loc12_)
               {
                  if(§§pop() < §§pop().length)
                  {
                     _loc1_.clip.holder.removeChild(_loc1_.banks[_loc2_]);
                     _loc1_.banks[_loc2_] = null;
                     §§push(_loc2_ + 1);
                     if(_loc12_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(_loc12_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc11_)
                           {
                              continue;
                           }
                           §§goto(addr1279);
                        }
                     }
                     break;
                  }
                  if(!_loc11_)
                  {
                     _loc1_.banks = null;
                     if(!(_loc11_ && Boolean(_loc2_)))
                     {
                        _loc1_.banks = [];
                        _loc1_.numTileRamps = 0;
                        §§push(0);
                        if(_loc12_ || Boolean(_loc3_))
                        {
                           _loc3_ = §§pop();
                           if(_loc12_)
                           {
                              loop56:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc1_.gridHeight);
                                 loop42:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          _loc1_.createOrUpdateRamp(0,46,640,46);
                                          addr1534:
                                          _loc1_.createOrUpdateRamp(0,46,0,448);
                                          if(!_loc11_)
                                          {
                                             _loc1_.createOrUpdateRamp(0,448,640,448);
                                             if(!(_loc11_ && Boolean(this)))
                                             {
                                                _loc1_.createOrUpdateRamp(640,46,640,448);
                                                if(_loc12_ || Boolean(_loc3_))
                                                {
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§push(0);
                                    if(!_loc11_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc12_ || Boolean(_loc1_))
                                       {
                                          addr1279:
                                          loop30:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             §§push(_loc1_.gridWidth);
                                             if(_loc11_)
                                             {
                                                continue loop42;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                addr1506:
                                                if(_loc1_.tileGrid[_loc3_][_loc2_] > 0)
                                                {
                                                   addr1155:
                                                   §§push(Number(_loc1_.tileGrid[_loc3_][_loc2_]));
                                                   if(_loc12_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      §§push(_loc1_.tileHeight);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() * _loc3_);
                                                         if(_loc12_)
                                                         {
                                                            addr1296:
                                                            _loc5_ = §§pop();
                                                            §§push(_loc5_);
                                                            §§push(_loc1_.tileHeight);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               addr1297:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  §§push(§§pop() < §§pop());
                                                                  if(_loc12_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc12_ || Boolean(_loc3_))
                                                                        {
                                                                           addr1309:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_.tileGrid);
                                                                                 if(!(_loc11_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    §§push(1);
                                                                                    if(!(_loc11_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr1377:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          addr1333:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop()[§§pop()][_loc2_] == 0);
                                                                                             §§push(§§pop()[§§pop()][_loc2_] == 0);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr1429:
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(_loc1_.tileGrid);
                                                                                                         §§push(_loc3_);
                                                                                                         §§push(1);
                                                                                                         if(_loc11_ && Boolean(_loc3_))
                                                                                                         {
                                                                                                         }
                                                                                                         addr1378:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               addr1381:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop()[§§pop()][_loc2_] == 5);
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr1488:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§push(_loc1_.tileGrid);
                                                                                                                     addr1491:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1381:
                                                                                                            }
                                                                                                            addr1492:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop()[§§pop()][_loc2_ + 1] == 5);
                                                                                                               addr1499:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     _loc1_.createOrUpdateRamp(_loc8_,_loc5_,_loc8_,_loc6_);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr1344:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr1430:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr1431:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  §§push(_loc1_.tileGrid[_loc3_][_loc2_ + 1] == 0);
                                                                                                                  if(_loc12_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1488);
                                                                                                               }
                                                                                                            }
                                                                                                            addr1431:
                                                                                                         }
                                                                                                         §§goto(addr1499);
                                                                                                      }
                                                                                                   }
                                                                                                   addr1429:
                                                                                                }
                                                                                             }
                                                                                             addr1487:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr1488);
                                                                                                }
                                                                                                §§goto(addr1499);
                                                                                             }
                                                                                          }
                                                                                          addr1333:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr1378);
                                                                                       }
                                                                                       addr1377:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop()[§§pop() + §§pop()][_loc2_] == 4);
                                                                                    }
                                                                                 }
                                                                                 addr1469:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop()[§§pop()][_loc2_ + 1] == 2);
                                                                                          if(!(_loc11_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr1487);
                                                                                             }
                                                                                             addr1486:
                                                                                          }
                                                                                          §§goto(addr1488);
                                                                                       }
                                                                                       addr1472:
                                                                                    }
                                                                                    §§goto(addr1492);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1534);
                                                                           addr1309:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr1363:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc12_ || Boolean(_loc1_))
                                                                                 {
                                                                                    §§pop();
                                                                                    addr1401:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr1376:
                                                                                       §§push(_loc1_.tileGrid);
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr1377);
                                                                                       }
                                                                                       addr1376:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc11_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          §§push(_loc1_.gridWidth);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue loop42;
                                                                                          }
                                                                                          §§push(§§pop() - 1);
                                                                                          if(_loc11_ && Boolean(_loc3_))
                                                                                          {
                                                                                             continue loop42;
                                                                                          }
                                                                                          §§push(§§pop() < §§pop());
                                                                                          if(_loc12_ || Boolean(this))
                                                                                          {
                                                                                             §§goto(addr1429);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop30;
                                                                                             }
                                                                                             §§push(_loc1_.tileGrid);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§goto(addr1469);
                                                                                             }
                                                                                             §§goto(addr1491);
                                                                                          }
                                                                                       }
                                                                                       addr1520:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                    }
                                                                                    addr1401:
                                                                                 }
                                                                                 §§goto(addr1431);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc1_.createOrUpdateRamp(_loc7_,_loc6_,_loc8_,_loc6_);
                                                                           }
                                                                           addr1389:
                                                                        }
                                                                        addr1395:
                                                                        while(true)
                                                                        {
                                                                           _loc1_.createOrUpdateRamp(_loc8_,_loc5_,_loc7_,_loc6_);
                                                                           §§goto(addr1401);
                                                                        }
                                                                     }
                                                                     addr1388:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc12_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr1462);
                                                                        }
                                                                        §§goto(addr1499);
                                                                     }
                                                                     §§goto(addr1486);
                                                                  }
                                                               }
                                                            }
                                                            addr1296:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            continue loop56;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc12_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc11_ && Boolean(this)))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc12_ || Boolean(_loc1_))
                                                                  {
                                                                     addr1261:
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        if(_loc11_ && Boolean(_loc2_))
                                                                        {
                                                                           break loop30;
                                                                        }
                                                                        §§push(_loc1_.tileGrid);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop()[§§pop()][_loc2_ - 1] == 0);
                                                                              §§push(§§pop()[§§pop()][_loc2_ - 1] == 0);
                                                                              if(!(_loc11_ && Boolean(_loc3_)))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc11_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§push(_loc1_.tileGrid);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr1215:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§push(§§pop()[§§pop()][_loc2_ - 1] == 3);
                                                                                                }
                                                                                             }
                                                                                             addr1215:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc12_ || Boolean(this))
                                                                                             {
                                                                                                addr1255:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop()[§§pop()][_loc2_ - 1] == 4);
                                                                                                }
                                                                                                addr1255:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1333);
                                                                                             }
                                                                                          }
                                                                                          addr1247:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1528);
                                                                                       }
                                                                                    }
                                                                                    addr1203:
                                                                                 }
                                                                              }
                                                                              §§goto(addr1363);
                                                                           }
                                                                           §§goto(addr1377);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc7_,_loc6_);
                                                                        }
                                                                     }
                                                                     addr1261:
                                                                  }
                                                                  §§goto(addr1430);
                                                               }
                                                               addr1166:
                                                            }
                                                            addr1224:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc12_ || Boolean(this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§goto(addr1312);
                                                                           }
                                                                           §§goto(addr1469);
                                                                        }
                                                                        §§goto(addr1429);
                                                                     }
                                                                     §§goto(addr1261);
                                                                  }
                                                                  addr1232:
                                                               }
                                                               §§goto(addr1430);
                                                            }
                                                         }
                                                         addr1158:
                                                      }
                                                      else
                                                      {
                                                         addr1271:
                                                         while(true)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc12_ || Boolean(_loc3_))
                                                               {
                                                                  break loop30;
                                                               }
                                                            }
                                                         }
                                                         addr1271:
                                                      }
                                                   }
                                                   addr1155:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   addr1507:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(_loc12_)
                                                      {
                                                         addr1511:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            continue loop30;
                                                         }
                                                         addr1511:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr1520);
                                                         }
                                                         addr1519:
                                                      }
                                                   }
                                                }
                                                addr1506:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr1519);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc12_ || Boolean(_loc2_))
                                             {
                                                §§push(_loc1_.gridHeight);
                                                if(_loc11_ && Boolean(_loc3_))
                                                {
                                                   continue loop42;
                                                }
                                                §§goto(addr1296);
                                             }
                                             §§goto(addr1507);
                                          }
                                          addr1279:
                                          addr1512:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc1_.tileGrid);
                                          if(_loc12_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr1247);
                                          }
                                          §§goto(addr1376);
                                       }
                                    }
                                    break;
                                 }
                              }
                           }
                           §§goto(addr1789);
                        }
                        _loc2_ = §§pop();
                        if(_loc12_ || Boolean(_loc1_))
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              §§push(_loc1_.barCoords);
                           }
                        }
                        §§goto(addr1789);
                     }
                     while(true)
                     {
                        §§push(_loc1_.tileGrid);
                        if(!_loc11_)
                        {
                           §§push(_loc3_);
                           while(true)
                           {
                              §§push(§§pop() - 1);
                              if(_loc12_ || Boolean(_loc1_))
                              {
                                 §§push(§§pop()[§§pop()][_loc2_] == 3);
                                 if(!_loc11_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc8_,_loc5_);
                                       }
                                       §§push(_loc3_);
                                       §§push(_loc1_.gridHeight);
                                       if(_loc12_ || Boolean(this))
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() < §§pop());
                                             if(§§pop() < §§pop())
                                             {
                                                §§pop();
                                                §§push(_loc1_.tileGrid);
                                                §§push(_loc3_);
                                                if(!(_loc11_ && Boolean(this)))
                                                {
                                                   §§push(1);
                                                   if(_loc12_ || Boolean(this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop()[§§pop()][_loc2_] == 0);
                                                         if(_loc12_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc1_.tileGrid);
                                                               §§push(_loc3_);
                                                               if(!(_loc11_ && Boolean(_loc1_)))
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc11_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(§§pop()[§§pop()][_loc2_] == 4);
                                                                        if(_loc11_ && Boolean(_loc3_))
                                                                        {
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§push(_loc1_.tileGrid);
                                                                           if(_loc12_ || Boolean(_loc1_))
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc12_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§push(§§pop()[§§pop()][_loc2_ + 1] == 2);
                                                                                 if(!(_loc11_ && Boolean(this)))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr812:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§push(_loc1_.tileGrid);
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc12_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                   }
                                                                                                   addr895:
                                                                                                }
                                                                                                §§goto(addr1279);
                                                                                             }
                                                                                             addr813:
                                                                                          }
                                                                                          addr838:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc1_.createOrUpdateRamp(_loc8_,_loc5_,_loc8_,_loc6_);
                                                                                             }
                                                                                             addr845:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr1506);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr811:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(_loc1_.tileGrid);
                                                                                       if(!(_loc11_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr989:
                                                                                                §§push(§§pop()[§§pop()][_loc2_] == 3);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc12_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§push(_loc1_.tileGrid);
                                                                                                         }
                                                                                                         §§goto(addr1518);
                                                                                                      }
                                                                                                      addr991:
                                                                                                   }
                                                                                                   addr1010:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_.tileGrid);
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        §§push(§§pop()[_loc3_][_loc2_ - 1] == 4);
                                                                                                                     }
                                                                                                                     addr1093:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        §§push(1);
                                                                                                                        addr1095:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              §§push(§§pop()[§§pop()][_loc2_] == 4);
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr1134:
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             §§push(_loc1_.tileGrid);
                                                                                                                                             addr1117:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr1381);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1114:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             _loc1_.createOrUpdateRamp(_loc7_,_loc6_,_loc8_,_loc6_);
                                                                                                                                          }
                                                                                                                                          addr1141:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc8_,_loc6_);
                                                                                                                                             §§push(_loc2_);
                                                                                                                                             if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr1155);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1511);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1134:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1110:
                                                                                                                              }
                                                                                                                              §§goto(addr1224);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1017:
                                                                                                               }
                                                                                                               §§goto(addr1499);
                                                                                                            }
                                                                                                            addr1028:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc12_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc7_,_loc6_);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr1512);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1044:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1506);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr1013:
                                                                                                      }
                                                                                                      §§goto(addr1232);
                                                                                                   }
                                                                                                }
                                                                                                addr989:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr989);
                                                                                             }
                                                                                             addr983:
                                                                                          }
                                                                                          §§goto(addr1333);
                                                                                       }
                                                                                       §§goto(addr1185);
                                                                                    }
                                                                                    addr940:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc8_,_loc5_);
                                                                                          if(_loc11_ && Boolean(this))
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1401);
                                                                                       }
                                                                                       _loc1_.createOrUpdateRamp(_loc8_,_loc5_,_loc7_,_loc6_);
                                                                                       §§push(_loc2_);
                                                                                       §§push(0);
                                                                                       if(_loc12_ || Boolean(this))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§goto(addr983);
                                                                                                      §§push(_loc1_.tileGrid);
                                                                                                      §§push(_loc3_);
                                                                                                   }
                                                                                                   §§goto(addr1395);
                                                                                                }
                                                                                                addr972:
                                                                                             }
                                                                                             §§goto(addr1028);
                                                                                          }
                                                                                          addr969:
                                                                                       }
                                                                                       §§goto(addr1271);
                                                                                    }
                                                                                 }
                                                                                 addr915:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr838);
                                                                              }
                                                                           }
                                                                           §§goto(addr1215);
                                                                        }
                                                                        addr779:
                                                                     }
                                                                     §§goto(addr1472);
                                                                  }
                                                                  §§goto(addr1356);
                                                               }
                                                               §§goto(addr1255);
                                                            }
                                                            §§push(§§pop());
                                                            if(!_loc11_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc1_.tileGrid);
                                                                  if(!(_loc11_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc11_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop()[§§pop()][_loc2_] == 5);
                                                                              if(_loc11_)
                                                                              {
                                                                              }
                                                                              §§goto(addr991);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop()[§§pop()][_loc2_ + 1] == 0 || _loc1_.tileGrid[_loc3_][_loc2_ + 1] == 2);
                                                                              addr598:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr620:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc12_ || Boolean(this))
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(_loc1_.tileGrid);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          addr612:
                                                                                       }
                                                                                       §§goto(addr838);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc1_.createOrUpdateRamp(_loc8_,_loc5_,_loc8_,_loc6_);
                                                                                       }
                                                                                       §§goto(addr1506);
                                                                                    }
                                                                                    addr620:
                                                                                 }
                                                                                 §§goto(addr812);
                                                                              }
                                                                           }
                                                                           addr578:
                                                                        }
                                                                        §§goto(addr1095);
                                                                     }
                                                                     §§goto(addr1255);
                                                                  }
                                                                  §§goto(addr1376);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc1_.tileGrid[_loc3_][_loc2_ - 1] == 3);
                                                               }
                                                            }
                                                            addr487:
                                                         }
                                                         addr873:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc1_.tileGrid);
                                                                  §§push(_loc3_);
                                                                  if(!(_loc11_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§goto(addr895);
                                                                  }
                                                                  §§goto(addr1381);
                                                               }
                                                               §§goto(addr1203);
                                                            }
                                                            §§goto(addr940);
                                                         }
                                                      }
                                                      addr350:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc12_ || Boolean(this))
                                                      {
                                                         §§goto(addr1134);
                                                         §§push(§§pop()[§§pop()][_loc2_] == 5);
                                                      }
                                                      §§goto(addr1255);
                                                   }
                                                   addr1121:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop()[§§pop()][_loc2_] == 0);
                                                   if(!_loc11_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(_loc1_.tileGrid);
                                                            §§push(_loc3_);
                                                            while(true)
                                                            {
                                                            }
                                                            addr909:
                                                         }
                                                         §§goto(addr915);
                                                      }
                                                      addr903:
                                                   }
                                                   §§goto(addr972);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      _loc1_.createOrUpdateRamp(_loc7_,_loc6_,_loc8_,_loc6_);
                                                   }
                                                   §§goto(addr1506);
                                                }
                                                §§push(_loc2_);
                                                if(_loc12_)
                                                {
                                                   addr1049:
                                                   §§push(0);
                                                   if(!(_loc11_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(!(_loc11_ && Boolean(_loc2_)))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc12_ || Boolean(this))
                                                            {
                                                               §§pop();
                                                               if(_loc12_)
                                                               {
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_.tileGrid);
                                                                  if(!(_loc11_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop()[_loc3_][_loc2_ - 1] == 4);
                                                                  }
                                                                  addr1069:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     §§push(1);
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(§§pop()[§§pop() + §§pop()][_loc2_] == 0);
                                                                        if(!(§§pop()[§§pop() + §§pop()][_loc2_] == 0))
                                                                        {
                                                                           if(_loc12_ || Boolean(_loc3_))
                                                                           {
                                                                              §§pop();
                                                                              §§push(_loc1_.tileGrid);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§goto(addr1093);
                                                                              }
                                                                              §§goto(addr1215);
                                                                           }
                                                                           §§goto(addr1261);
                                                                        }
                                                                        §§goto(addr1110);
                                                                     }
                                                                     §§goto(addr1121);
                                                                  }
                                                               }
                                                               addr517:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc7_,_loc6_);
                                                                  if(_loc12_ || Boolean(_loc2_))
                                                                  {
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1069);
                                                                  }
                                                                  addr1067:
                                                               }
                                                               §§goto(addr845);
                                                            }
                                                            §§push(_loc2_);
                                                            §§push(_loc1_.gridWidth - 1);
                                                         }
                                                         addr533:
                                                      }
                                                      §§goto(addr989);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§push(_loc3_);
                                                         while(true)
                                                         {
                                                            §§push(_loc1_.gridHeight);
                                                         }
                                                         addr1051:
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(5);
                                                      }
                                                      §§goto(addr1271);
                                                   }
                                                   addr1049:
                                                }
                                                addr631:
                                                while(true)
                                                {
                                                   §§push(2);
                                                   if(_loc12_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!(_loc11_ && Boolean(_loc1_)))
                                                         {
                                                            §§push(_loc3_ > 0);
                                                            if(_loc3_ > 0)
                                                            {
                                                               §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc1_.tileGrid);
                                                                  §§push(_loc3_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop()[§§pop() - 1][_loc2_] == 0);
                                                                     if(!(§§pop()[§§pop() - 1][_loc2_] == 0))
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(_loc1_.tileGrid);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(_loc3_ - 1);
                                                                                 if(_loc12_ || Boolean(_loc1_))
                                                                                 {
                                                                                    §§push(§§pop()[§§pop()][_loc2_] == 2);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1309);
                                                                                 }
                                                                                 §§goto(addr1255);
                                                                              }
                                                                              §§goto(addr1376);
                                                                           }
                                                                           §§goto(addr1141);
                                                                        }
                                                                        §§goto(addr813);
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(_loc12_ || Boolean(_loc2_))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc12_ || Boolean(_loc3_))
                                                                           {
                                                                              §§pop();
                                                                              if(_loc12_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§push(_loc1_.tileGrid);
                                                                                 §§push(_loc3_);
                                                                                 if(_loc12_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(§§pop()[§§pop()][_loc2_] == 3);
                                                                                       if(_loc11_ && Boolean(_loc3_))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr1114);
                                                                                    }
                                                                                    §§goto(addr909);
                                                                                 }
                                                                                 §§goto(addr1377);
                                                                              }
                                                                              §§goto(addr1389);
                                                                           }
                                                                           §§goto(addr1499);
                                                                        }
                                                                     }
                                                                     §§goto(addr1487);
                                                                  }
                                                                  addr653:
                                                               }
                                                               §§goto(addr1506);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc8_,_loc5_);
                                                               }
                                                               _loc1_.createOrUpdateRamp(_loc7_,_loc5_,_loc8_,_loc6_);
                                                               §§push(_loc2_);
                                                               §§push(_loc1_.gridWidth - 1);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  if(!(_loc11_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§pop();
                                                                           §§push(_loc1_.tileGrid[_loc3_][_loc2_ + 1] == 0);
                                                                           if(_loc12_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr779);
                                                                              }
                                                                              §§goto(addr811);
                                                                           }
                                                                           §§goto(addr1388);
                                                                        }
                                                                        §§goto(addr838);
                                                                     }
                                                                     addr763:
                                                                  }
                                                                  §§goto(addr1431);
                                                               }
                                                               §§goto(addr1297);
                                                            }
                                                         }
                                                         §§goto(addr1044);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(3);
                                                         if(!(_loc11_ && Boolean(_loc1_)))
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(_loc4_);
                                                               break loop0;
                                                            }
                                                            if(!(_loc11_ && Boolean(_loc1_)))
                                                            {
                                                               §§push(_loc3_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > 0);
                                                                  if(!(_loc11_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§goto(addr873);
                                                                  }
                                                                  §§goto(addr1344);
                                                               }
                                                               addr864:
                                                            }
                                                            §§goto(addr1528);
                                                         }
                                                         §§goto(addr1049);
                                                      }
                                                   }
                                                   §§goto(addr1158);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(§§pop() < §§pop())
                                                {
                                                   §§pop();
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      §§goto(addr1067);
                                                   }
                                                   §§goto(addr1534);
                                                }
                                                §§goto(addr1134);
                                             }
                                             §§goto(addr1296);
                                          }
                                       }
                                       addr553:
                                       while(true)
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(!(_loc11_ && Boolean(this)))
                                          {
                                             §§push(§§pop());
                                             if(_loc12_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(_loc1_.tileGrid);
                                                   if(_loc12_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc12_ || Boolean(this))
                                                      {
                                                         §§goto(addr578);
                                                      }
                                                      §§goto(addr653);
                                                   }
                                                   §§goto(addr1117);
                                                }
                                                §§goto(addr620);
                                             }
                                             §§goto(addr1013);
                                          }
                                          §§goto(addr903);
                                       }
                                    }
                                    addr307:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc12_ || Boolean(_loc2_))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc11_)
                                          {
                                             §§pop();
                                             if(!(_loc11_ && Boolean(_loc2_)))
                                             {
                                                §§goto(addr517);
                                             }
                                             §§goto(addr1017);
                                          }
                                          §§goto(addr1309);
                                       }
                                       §§goto(addr533);
                                    }
                                    §§goto(addr763);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr620);
                              }
                           }
                           addr292:
                        }
                        while(true)
                        {
                           §§push(§§pop()[_loc3_][_loc2_ - 1] == 3);
                           if(!_loc11_)
                           {
                              §§goto(addr1010);
                           }
                           §§goto(addr1166);
                        }
                     }
                     addr287:
                  }
                  while(true)
                  {
                     §§push(_loc1_.tileGrid);
                     if(_loc12_)
                     {
                        §§push(§§pop()[_loc3_][_loc2_ - 1] == 0);
                        if(_loc12_)
                        {
                           §§goto(addr487);
                           §§push(§§pop());
                        }
                        §§goto(addr598);
                     }
                     §§goto(addr612);
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc12_)
                     {
                        _loc6_ = §§pop();
                        §§push(_loc1_.tileWidth * _loc2_);
                        §§push(_loc1_.tileWidth * _loc2_);
                        if(_loc12_)
                        {
                           _loc7_ = §§pop();
                           §§push(§§pop() + _loc1_.tileWidth);
                           if(!(_loc11_ && Boolean(_loc1_)))
                           {
                              §§push(§§pop());
                              if(_loc12_)
                              {
                                 _loc8_ = §§pop();
                                 §§push(_loc4_);
                                 if(_loc12_ || Boolean(_loc2_))
                                 {
                                    if(§§pop() == 1)
                                    {
                                       §§push(_loc3_);
                                       if(_loc12_)
                                       {
                                          §§push(0);
                                          if(_loc12_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(§§pop() > §§pop())
                                             {
                                                §§pop();
                                                §§push(_loc1_.tileGrid);
                                                §§push(_loc3_ - 1);
                                                if(_loc12_ || Boolean(this))
                                                {
                                                   §§push(§§pop()[§§pop()][_loc2_] == 0);
                                                   if(!(§§pop()[§§pop()][_loc2_] == 0))
                                                   {
                                                      §§pop();
                                                      if(_loc12_ || Boolean(this))
                                                      {
                                                         §§push(_loc1_.tileGrid);
                                                         if(_loc12_ || Boolean(_loc1_))
                                                         {
                                                            §§push(_loc3_ - 1);
                                                            if(!(_loc11_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop()[§§pop()][_loc2_] == 2);
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         §§goto(addr1469);
                                                      }
                                                      §§goto(addr1141);
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         §§pop();
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr1429);
                                                   }
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr307);
                                          }
                                          §§goto(addr969);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       if(_loc12_)
                                       {
                                          §§goto(addr631);
                                       }
                                    }
                                    §§goto(addr1520);
                                 }
                                 §§goto(addr1051);
                              }
                              §§goto(addr864);
                           }
                           §§goto(addr1511);
                        }
                        §§goto(addr553);
                     }
                     §§goto(addr1155);
                  }
               }
               while(§§pop() < §§pop()[_loc1_.whichDifficulty].length)
               {
                  _loc9_ = new Ramp(_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][0],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][1],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][2],_loc1_.barCoords[_loc1_.whichDifficulty][_loc2_][3],_loc1_.defaultRampDecay,true);
                  if(!_loc11_)
                  {
                     §§push(_loc1_.ramps);
                     if(_loc12_ || Boolean(_loc3_))
                     {
                        §§pop().push(_loc9_);
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           §§push(_loc1_.barCoords);
                           if(_loc11_)
                           {
                           }
                           addr1691:
                           §§push(_loc1_.whichDifficulty);
                           if(_loc12_ || Boolean(_loc1_))
                           {
                              addr1700:
                              if(§§pop()[§§pop()][_loc2_][4] == "fence2")
                              {
                                 if(_loc12_)
                                 {
                                    addr1709:
                                    _loc10_ = new putt_fence2();
                                 }
                              }
                              else
                              {
                                 addr1716:
                                 §§push(_loc1_.barCoords);
                                 §§push(_loc1_.whichDifficulty);
                              }
                              addr1729:
                              _loc10_.x = _loc9_.x1;
                              if(_loc11_ && Boolean(_loc3_))
                              {
                                 continue;
                              }
                              _loc10_.y = _loc9_.y1;
                              _loc10_.rotation = this.radsToDegrees(_loc9_.getAngle());
                              if(!(_loc11_ && Boolean(this)))
                              {
                                 _loc1_.clip.holder.addChild(_loc10_);
                                 addr1762:
                                 _loc1_.banks.push(_loc10_);
                              }
                              §§push(_loc2_);
                              if(_loc12_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc12_)
                                 {
                                 }
                                 addr1780:
                                 _loc2_ = §§pop();
                                 continue;
                              }
                              §§goto(addr1780);
                              §§push(§§pop());
                           }
                           if(§§pop()[§§pop()][_loc2_][4] == "fence3")
                           {
                           }
                           §§goto(addr1729);
                        }
                        _loc10_ = new putt_fence3();
                        §§goto(addr1729);
                     }
                     §§push(_loc1_.whichDifficulty);
                     if(_loc12_ || Boolean(_loc1_))
                     {
                        if(§§pop()[§§pop()][_loc2_][4] == "fence1")
                        {
                           if(!(_loc12_ || Boolean(_loc1_)))
                           {
                              §§goto(addr1709);
                           }
                        }
                        else
                        {
                           §§push(_loc1_.barCoords);
                           if(_loc12_ || Boolean(_loc2_))
                           {
                              §§goto(addr1691);
                           }
                           §§goto(addr1716);
                        }
                        §§goto(addr1729);
                     }
                     §§goto(addr1700);
                  }
                  _loc10_ = new putt_fence1();
                  if(!(_loc11_ && Boolean(_loc1_)))
                  {
                     §§goto(addr1700);
                  }
                  §§goto(addr1762);
               }
               addr1789:
               return;
            }
            break;
         }
         while(true)
         {
            §§push(4);
            if(!_loc11_)
            {
               §§goto(addr1049);
            }
            §§goto(addr1271);
         }
      }
      
      public function setupPositions() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MiniGamePutt = this;
         if(_loc3_)
         {
            _loc1_.clip.starter.x = _loc1_.startEndCoords[_loc1_.whichDifficulty][0];
            _loc1_.clip.starter.y = _loc1_.startEndCoords[_loc1_.whichDifficulty][1];
            if(_loc3_)
            {
               _loc1_.clip.hole.x = _loc1_.startEndCoords[_loc1_.whichDifficulty][2];
               _loc1_.clip.hole.y = _loc1_.startEndCoords[_loc1_.whichDifficulty][3];
               if(_loc3_)
               {
                  _loc1_.clip.ball.x = _loc1_.clip.starter.x;
                  if(_loc3_)
                  {
                  }
               }
            }
            §§goto(addr99);
         }
         _loc1_.clip.ball.y = _loc1_.clip.starter.y;
         addr99:
      }
      
      public function setupBumpers() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         var _loc1_:MiniGamePutt = this;
         if(_loc6_ || Boolean(this))
         {
            _loc2_ = 0;
         }
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(_loc1_.bumpers);
               if(_loc6_ || Boolean(_loc3_))
               {
                  if(§§pop() < §§pop().length)
                  {
                     _loc1_.clip.holder.removeChild(_loc1_.bumpers[_loc2_]);
                     if(!_loc5_)
                     {
                        _loc1_.bumpers[_loc2_] = null;
                     }
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                           }
                        }
                        while(true)
                        {
                           §§push(_loc1_.bumperCoords);
                        }
                        addr219:
                        return;
                        addr212:
                     }
                     _loc2_ = §§pop();
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        continue;
                     }
                  }
                  _loc1_.bumpers = null;
                  if(!_loc5_)
                  {
                     _loc1_.bumpers = [];
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§push(0);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           break;
                        }
                        §§goto(addr212);
                     }
                     addr211:
                     while(true)
                     {
                        §§goto(addr212);
                     }
                     addr211:
                  }
                  §§goto(addr219);
               }
               while(true)
               {
                  if(§§pop() < §§pop()[_loc1_.whichDifficulty].length)
                  {
                     _loc3_ = getDefinitionByName("putt_" + _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][2]) as Class;
                     _loc4_ = new _loc3_() as MovieClip;
                     _loc4_.x = _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][0];
                     if(!_loc5_)
                     {
                        _loc4_.y = _loc1_.bumperCoords[_loc1_.whichDifficulty][_loc2_][1];
                        if(!(_loc5_ && Boolean(this)))
                        {
                           _loc1_.clip.holder.addChild(_loc4_);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr211);
                        }
                        addr191:
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc5_ && Boolean(_loc1_))
                           {
                           }
                           addr210:
                           _loc2_ = §§pop();
                           §§goto(addr211);
                        }
                        §§goto(addr210);
                        §§push(§§pop());
                     }
                     _loc1_.bumpers.push(_loc4_);
                     if(_loc6_)
                     {
                        §§goto(addr191);
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr219);
               }
            }
            break;
         }
         _loc2_ = §§pop();
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            §§goto(addr211);
         }
         §§goto(addr219);
      }
      
      public function clickScreen(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MiniGamePutt = this;
         §§push(_loc2_.isMoving);
         if(_loc4_)
         {
            §§push(!§§pop());
            §§push(!§§pop());
            if(!(_loc3_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§pop();
                     §§goto(addr116);
                  }
               }
               §§push(§§pop());
            }
            if(!§§pop())
            {
            }
            §§goto(addr64);
         }
         §§pop();
         addr64:
         if(§§pop())
         {
            if(_loc4_ || _loc3_)
            {
               _loc2_.swingMouseX = _loc2_.clip.mouseX;
               if(_loc4_)
               {
                  _loc2_.swingMouseY = _loc2_.clip.mouseY;
                  if(_loc4_)
                  {
                     _loc2_.swingTimer = 2;
                  }
               }
               _loc2_.isSwinging = true;
               _loc2_.clip.club.gotoAndPlay("swing");
               _loc2_.clip.club.arrow.gotoAndPlay("swing");
            }
            _loc2_.clip.club.shortarrow.gotoAndPlay("swing");
         }
         addr116:
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_.isSwinging);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
         }
         !_loc2_.isInHole;
      }
      
      public function resetBall() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MiniGamePutt = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.ball.visible = true;
            if(_loc3_)
            {
               _loc1_.clip.club.visible = true;
               _loc1_.clip.hole.gotoAndStop(1);
               _loc1_.ball.x = _loc1_.clip.starter.x;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.ball.y = _loc1_.clip.starter.y;
                  _loc1_.ballSpeedY = 0;
                  if(_loc2_)
                  {
                  }
               }
               _loc1_.ballSpeedX = 0;
               _loc1_.gravity = 1;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.isMoving = false;
                  _loc1_.gameTimer = 0;
                  _loc1_.strokes = 0;
                  if(!_loc2_)
                  {
                     _loc1_.clip.stroke_txt.text = "0";
                     if(!_loc2_)
                     {
                        _loc1_.currentPar = _loc1_.pars[_loc1_.whichDifficulty];
                        _loc1_.clip.par_txt.text = String(_loc1_.currentPar);
                        _loc1_.clip.club.gotoAndStop(1);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.clip.club.arrow.gotoAndStop(1);
                        }
                        addr162:
                        _loc1_.clip.club.shortarrow.visible = true;
                     }
                  }
               }
               addr154:
               _loc1_.clip.club.arrow.visible = false;
               if(!_loc2_)
               {
                  §§goto(addr162);
               }
            }
            addr188:
            return;
            addr168:
         }
         _loc1_.clip.club.shortarrow.gotoAndStop(1);
         if(_loc3_ || _loc2_)
         {
            if(_loc1_.whichDifficulty >= 8)
            {
               §§goto(addr154);
            }
            else
            {
               _loc1_.clip.club.arrow.visible = true;
               _loc1_.clip.club.shortarrow.visible = false;
            }
            §§goto(addr188);
         }
         §§goto(addr168);
      }
      
      public function updateClub() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:MiniGamePutt = this;
         §§push(_loc1_.clip.mouseX - _loc1_.ball.x);
         if(_loc6_ || Boolean(_loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.clip.mouseY - _loc1_.ball.y);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            addr110:
            §§push(_loc1_.aimMode);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() == 2)
               {
                  if(_loc6_)
                  {
                  }
                  addr101:
                  §§push(_loc1_.ball.y - _loc1_.clip.mouseY);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr119);
               }
               addr114:
               addr119:
               var _loc4_:* = §§pop();
               if(_loc6_ || Boolean(_loc1_))
               {
                  _loc1_.clip.club.rotation = this.radsToDegrees(_loc4_);
                  if(_loc6_)
                  {
                     _loc1_.clip.club.x = _loc1_.ball.x;
                     if(_loc5_ && _loc3_)
                     {
                     }
                  }
                  §§goto(addr164);
               }
               _loc1_.clip.club.y = _loc1_.ball.y;
               addr164:
               return;
               §§push(Math.atan2(_loc3_,_loc2_));
            }
            §§push(§§pop());
            if(!_loc5_)
            {
               _loc3_ = §§pop();
               §§goto(addr114);
            }
            §§goto(addr119);
         }
         §§push(_loc1_.ball.x - _loc1_.clip.mouseX);
         if(!_loc5_)
         {
            §§push(§§pop());
            if(_loc6_ || _loc3_)
            {
               _loc2_ = §§pop();
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr101);
               }
               §§goto(addr114);
            }
            §§goto(addr101);
         }
         §§goto(addr110);
      }
      
      public function getBallSlope() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MiniGamePutt = this;
         §§push(_loc1_.ballSpeedY);
         if(!_loc4_)
         {
            §§push(§§pop() / _loc1_.ballSpeedX);
            if(_loc3_)
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == Number.POSITIVE_INFINITY)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(1000000);
                     if(_loc3_)
                     {
                        addr98:
                        §§push(§§pop());
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              addr99:
                              §§push(_loc2_);
                           }
                        }
                        _loc2_ = §§pop();
                        §§goto(addr99);
                     }
                     addr95:
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        §§goto(addr98);
                     }
                  }
               }
               else
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() == Number.NEGATIVE_INFINITY)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                        }
                     }
                     §§goto(addr99);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr95);
         §§push(-1000000);
      }
      
      public function checkSuccess() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGamePutt = this;
         if(_loc1_.isInHole)
         {
            if(_loc5_)
            {
               if(_loc1_.strokes <= _loc1_.currentPar)
               {
                  if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) >= _loc1_.prizeSKUs.length)
                  {
                     _loc2_ = [];
                     if(!_loc6_)
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
                     _loc4_ = Math.floor(Math.random() * _loc2_.length);
                     if(!_loc6_)
                     {
                        _loc1_.skuToWin = _loc2_[_loc4_];
                        _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                        if(!_loc6_)
                        {
                           _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                        }
                     }
                  }
                  addr158:
                  _loc1_.amountToWin = 1;
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc1_.screen.gameObj.soundManager.playSound("customer_happy.wav");
                     _loc1_.screen.gameObj.challengeManager.recordTagged("putt");
                     addr346:
                     §§push(_loc1_.strokes);
                     if(_loc5_)
                     {
                     }
                     addr414:
                     addr416:
                     §§push(_loc1_.currentPar - 1);
                     if(_loc5_ || Boolean(this))
                     {
                        if(§§pop() == §§pop())
                        {
                           _loc1_.clip.score.inside.gotoAndStop(2);
                           addr431:
                        }
                        else
                        {
                           §§push(_loc1_.strokes);
                           §§push(_loc1_.currentPar);
                           if(!_loc6_)
                           {
                              addr439:
                              if(§§pop() < §§pop() - 1)
                              {
                                 if(!_loc6_)
                                 {
                                    addr442:
                                    _loc1_.clip.score.inside.gotoAndStop(3);
                                 }
                              }
                              else
                              {
                                 addr484:
                                 addr451:
                                 §§push(_loc1_.strokes);
                                 §§push(_loc1_.currentPar);
                                 §§push(1);
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    if(§§pop() == §§pop() + §§pop())
                                    {
                                       addr463:
                                       _loc1_.clip.score.inside.gotoAndStop(5);
                                       if(!(_loc5_ || Boolean(this)))
                                       {
                                          addr521:
                                          _loc1_.clip.score.inside.gotoAndStop(7);
                                          if(_loc6_ && Boolean(this))
                                          {
                                          }
                                       }
                                       §§goto(addr553);
                                    }
                                    else
                                    {
                                       addr479:
                                       §§push(_loc1_.strokes);
                                       §§push(_loc1_.currentPar);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_ || Boolean(this))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       _loc1_.clip.score.inside.gotoAndStop(6);
                                       if(_loc6_ && Boolean(_loc3_))
                                       {
                                       }
                                       §§goto(addr553);
                                    }
                                    else
                                    {
                                       §§push(_loc1_.strokes);
                                       §§push(_loc1_.currentPar);
                                    }
                                 }
                                 addr513:
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc5_ || Boolean(this))
                                    {
                                       §§goto(addr521);
                                    }
                                 }
                                 else
                                 {
                                    _loc1_.clip.score.inside.gotoAndStop(8);
                                 }
                              }
                           }
                           addr512:
                           §§goto(addr513);
                           §§push(§§pop() + 3);
                        }
                        §§goto(addr548);
                     }
                     addr321:
                     §§push(2);
                     if(_loc5_)
                     {
                        §§goto(addr484);
                     }
                     §§goto(addr512);
                     addr321:
                  }
                  §§goto(addr548);
               }
               else
               {
                  §§push(_loc1_.strokes);
                  if(!_loc6_)
                  {
                     §§push(_loc1_.currentPar);
                     if(!(_loc6_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc6_)
                        {
                           §§push(1);
                           if(_loc5_ || Boolean(this))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    _loc1_.skuToWin = "tips";
                                    _loc1_.amountToWin = 200;
                                    _loc1_.skuIsClothing = false;
                                    _loc1_.skuClothingMode = "";
                                    _loc1_.screen.gameObj.soundManager.playSound("customer_decent.wav");
                                    if(_loc5_ || Boolean(this))
                                    {
                                       §§goto(addr321);
                                    }
                                    else
                                    {
                                       addr257:
                                       _loc1_.skuToWin = "tips";
                                       if(_loc5_)
                                       {
                                          _loc1_.amountToWin = 100;
                                          _loc1_.skuIsClothing = false;
                                          _loc1_.skuClothingMode = "";
                                          _loc1_.screen.gameObj.soundManager.playSound("customer_decent.wav");
                                          if(!_loc6_)
                                          {
                                             §§goto(addr321);
                                          }
                                          else
                                          {
                                             addr327:
                                             _loc1_.amountToWin = 0;
                                             _loc1_.skuIsClothing = false;
                                             if(!_loc6_)
                                             {
                                                _loc1_.skuClothingMode = "";
                                                if(_loc6_)
                                                {
                                                }
                                                addr399:
                                                §§goto(addr548);
                                             }
                                          }
                                          §§goto(addr442);
                                       }
                                    }
                                    §§goto(addr521);
                                 }
                                 _loc1_.screen.gameObj.soundManager.playSound("customer_worried.wav");
                                 §§goto(addr346);
                              }
                              else
                              {
                                 §§push(_loc1_.strokes - _loc1_.currentPar);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push(2);
                                    if(_loc6_ && Boolean(this))
                                    {
                                    }
                                    addr392:
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc1_.strokes);
                                    }
                                    §§goto(addr548);
                                 }
                              }
                              §§goto(addr451);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr257);
                              }
                              §§goto(addr463);
                           }
                           else
                           {
                              _loc1_.skuToWin = "tips";
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 _loc1_.amountToWin = 50;
                                 _loc1_.skuIsClothing = false;
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    _loc1_.skuClothingMode = "";
                                    _loc1_.screen.gameObj.soundManager.playSound("customer_decent.wav");
                                    if(_loc5_)
                                    {
                                       §§goto(addr346);
                                    }
                                    §§goto(addr431);
                                 }
                                 §§goto(addr442);
                              }
                           }
                        }
                        if(§§pop() == _loc1_.currentPar)
                        {
                           _loc1_.clip.score.inside.gotoAndStop(1);
                        }
                        else
                        {
                           §§goto(addr414);
                           §§push(_loc1_.strokes);
                        }
                        §§goto(addr548);
                     }
                     §§goto(addr439);
                  }
               }
               §§push(_loc1_.maxStrokes);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(_loc1_.isInHole);
                              if(_loc6_ && Boolean(_loc2_))
                              {
                              }
                           }
                           §§goto(addr463);
                        }
                        §§push(!§§pop());
                     }
                  }
                  if(§§pop())
                  {
                     _loc1_.clip.score.inside.gotoAndStop(8);
                  }
                  else
                  {
                     §§push(_loc1_.strokes);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        §§goto(addr392);
                        §§push(1);
                     }
                     §§goto(addr479);
                  }
                  addr548:
                  _loc1_.clip.score.gotoAndPlay(2);
                  addr553:
                  return;
               }
               §§goto(addr416);
            }
            _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               if(!(_loc6_ && Boolean(this)))
               {
                  _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               }
            }
            §§goto(addr158);
         }
         else
         {
            _loc1_.skuToWin = null;
            if(_loc5_)
            {
               §§goto(addr327);
            }
         }
         _loc1_.clip.score.inside.gotoAndStop(4);
         §§goto(addr399);
      }
      
      override public function updateScreen() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc1_:MiniGamePutt = this;
         if(_loc1_.isDone)
         {
            var _loc8_:* = _loc1_;
            §§push(_loc8_.doneTimer);
            if(!_loc10_)
            {
               §§push(§§pop() + 1);
            }
            var _loc9_:* = §§pop();
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               _loc8_.doneTimer = _loc9_;
            }
            §§push(_loc1_.doneTimer);
            if(!_loc10_)
            {
               §§push(_loc1_.doneTimerMax);
               if(_loc11_)
               {
                  if(§§pop() == §§pop())
                  {
                     _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
                     if(_loc10_)
                     {
                        addr397:
                        _loc6_ = _loc1_.clip.hole.y - _loc1_.clip.ball.y;
                     }
                  }
                  §§goto(addr610);
               }
               addr424:
               if(§§pop() <= §§pop())
               {
                  if(!_loc10_)
                  {
                     addr427:
                     _loc1_.ball.visible = false;
                  }
                  addr431:
                  _loc1_.clip.club.visible = false;
                  addr436:
                  _loc1_.clip.hole.gotoAndPlay("hole");
                  addr441:
                  _loc1_.screen.gameObj.soundManager.playSound("minigame_putt_cup.wav");
                  if(_loc11_)
                  {
                     _loc1_.isMoving = false;
                     if(_loc11_)
                     {
                        _loc1_.isInHole = true;
                        addr457:
                        _loc1_.checkSuccess();
                        _loc1_.isDone = true;
                        if(_loc10_ && Boolean(_loc3_))
                        {
                        }
                        addr494:
                        §§push(_loc1_);
                        §§push(_loc1_.friction);
                        if(!_loc10_)
                        {
                           §§push(§§pop() - 0.005);
                        }
                        §§pop().friction = §§pop();
                        if(_loc10_ && Boolean(_loc1_))
                        {
                        }
                        _loc1_.checkSuccess();
                        _loc1_.isDone = true;
                        addr605:
                        _loc1_.clip.club.visible = false;
                        addr610:
                        return;
                        addr593:
                     }
                     §§push(Math.abs(_loc1_.ballSpeedY) < 0.2);
                     §§push(Math.abs(_loc1_.ballSpeedY) < 0.2);
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        if(§§pop())
                        {
                           §§pop();
                           addr525:
                           §§push(Math.abs(_loc1_.ballSpeedX) < 0.2);
                           if(_loc10_)
                           {
                           }
                           addr586:
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              _loc1_.isMoving = false;
                              _loc1_.clip.club.gotoAndStop(1);
                              if(_loc11_)
                              {
                              }
                              addr574:
                              addr578:
                              addr576:
                              §§push(_loc1_.strokes == _loc1_.maxStrokes);
                              if(_loc11_ || Boolean(_loc3_))
                              {
                                 §§goto(addr586);
                              }
                              if(!§§pop())
                              {
                                 §§goto(addr593);
                              }
                           }
                           _loc1_.clip.club.arrow.gotoAndStop(1);
                           if(!(_loc10_ && Boolean(this)))
                           {
                              _loc1_.clip.club.shortarrow.gotoAndStop(1);
                              if(_loc11_)
                              {
                                 addr572:
                                 _loc1_.updateClub();
                              }
                              §§goto(addr605);
                           }
                           §§goto(addr574);
                        }
                        §§goto(addr610);
                     }
                     addr587:
                     if(§§pop())
                     {
                        §§pop();
                        §§goto(addr574);
                        §§push(_loc1_.isInHole);
                     }
                     §§goto(addr574);
                  }
               }
               §§push(Math.abs(_loc1_.ballSpeedY) < 2);
               §§push(Math.abs(_loc1_.ballSpeedY) < 2);
               if(_loc11_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     addr480:
                     §§push(Math.abs(_loc1_.ballSpeedX) < 2);
                  }
                  if(§§pop())
                  {
                     if(!(_loc10_ && Boolean(this)))
                     {
                        §§goto(addr494);
                     }
                     §§goto(addr525);
                  }
                  §§goto(addr610);
               }
               §§goto(addr587);
            }
            else
            {
               addr202:
               _loc3_ = §§pop();
               if(_loc11_ || Boolean(_loc3_))
               {
                  addr210:
                  §§push(Math.atan2(_loc3_,_loc2_));
                  if(!_loc10_)
                  {
                     addr217:
                     _loc4_ = §§pop();
                     _loc1_.ballSpeedX = Math.cos(_loc4_) * _loc1_.ballSpeed;
                     if(_loc11_ || Boolean(_loc2_))
                     {
                        _loc1_.ballSpeedY = Math.sin(_loc4_) * _loc1_.ballSpeed;
                        _loc8_ = _loc1_;
                        §§push(_loc8_.strokes);
                        if(_loc11_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc9_ = §§pop();
                        if(!(_loc10_ && Boolean(this)))
                        {
                           _loc8_.strokes = _loc9_;
                        }
                     }
                     §§goto(addr427);
                  }
                  else
                  {
                     §§goto(addr397);
                  }
               }
               _loc1_.clip.stroke_txt.text = String(_loc1_.strokes);
               if(_loc11_ || Boolean(_loc2_))
               {
                  addr276:
                  _loc1_.isMoving = true;
                  if(!(_loc10_ && Boolean(_loc1_)))
                  {
                     _loc1_.isSwinging = false;
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        _loc1_.screen.gameObj.soundManager.playSound("minigame_putt_swing.wav");
                        addr309:
                     }
                     else
                     {
                        §§goto(addr494);
                     }
                     §§goto(addr610);
                  }
                  else
                  {
                     §§goto(addr441);
                  }
               }
               §§goto(addr578);
            }
         }
         else if(_loc1_.isSwinging)
         {
            if(_loc11_ || Boolean(_loc1_))
            {
               _loc8_ = _loc1_;
               §§push(_loc8_.swingTimer);
               if(!_loc10_)
               {
                  §§push(§§pop() + 1);
               }
               _loc9_ = §§pop();
               if(_loc11_ || Boolean(_loc1_))
               {
                  _loc8_.swingTimer = _loc9_;
               }
               §§push(_loc1_.swingTimer);
               if(!_loc10_)
               {
                  §§push(_loc1_.swingTimerMax);
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        _loc1_.friction = _loc1_.normalFriction;
                        §§push(_loc1_.swingMouseX);
                        if(_loc11_ || Boolean(this))
                        {
                           §§push(§§pop() - _loc1_.ball.x);
                           if(_loc11_ || Boolean(_loc1_))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 §§push(_loc1_.swingMouseY);
                              }
                              §§goto(addr276);
                           }
                           _loc3_ = §§pop() - _loc1_.ball.y;
                           if(_loc11_ || Boolean(_loc3_))
                           {
                              if(_loc1_.aimMode == 2)
                              {
                                 if(!(_loc10_ && Boolean(_loc3_)))
                                 {
                                    §§push(_loc1_.ball.x - _loc1_.swingMouseX);
                                    if(_loc11_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc11_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr202);
                                          §§push(_loc1_.ball.y - _loc1_.swingMouseY);
                                       }
                                       §§goto(addr572);
                                    }
                                    §§goto(addr576);
                                 }
                                 §§goto(addr494);
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr480);
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr309);
                  }
                  §§goto(addr424);
               }
               addr420:
               §§push(_loc1_.ballRadius);
               if(!_loc10_)
               {
                  §§goto(addr424);
               }
               §§goto(addr574);
            }
            §§goto(addr457);
         }
         else
         {
            if(!_loc1_.isMoving)
            {
               _loc8_ = _loc1_;
               §§push(_loc8_.gameTimer);
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  §§push(§§pop() + 1);
               }
               _loc9_ = §§pop();
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  _loc8_.gameTimer = _loc9_;
               }
               if(_loc11_ || Boolean(_loc2_))
               {
                  _loc1_.updateClub();
               }
               else
               {
                  §§goto(addr431);
               }
               §§goto(addr610);
            }
            else
            {
               §§push(_loc1_);
               §§push(_loc1_.ballSpeedY);
               if(_loc11_)
               {
                  §§push(§§pop() * _loc1_.friction);
               }
               §§pop().ballSpeedY = §§pop();
               §§push(_loc1_);
               §§push(_loc1_.ballSpeedX);
               if(_loc11_)
               {
                  §§push(§§pop() * _loc1_.friction);
               }
               §§pop().ballSpeedX = §§pop();
               if(!_loc10_)
               {
                  _loc1_.checkForCollisions();
                  _loc5_ = _loc1_.clip.hole.x - _loc1_.clip.ball.x;
                  if(_loc11_ || Boolean(_loc3_))
                  {
                     §§goto(addr397);
                  }
                  §§goto(addr436);
               }
            }
            §§goto(addr574);
         }
         §§push(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_));
         if(!_loc10_)
         {
            §§push(§§pop());
            if(!(_loc10_ && Boolean(this)))
            {
               _loc7_ = §§pop();
            }
            §§goto(addr424);
         }
         §§goto(addr420);
      }
      
      public function checkForCollisions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGamePutt = this;
         §§push(_loc1_.checkIntersectingRamps());
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.checkIntersectingBumpers());
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && _loc3_))
         {
            §§push(!§§pop());
            if(_loc5_)
            {
            }
            §§goto(addr74);
         }
         if(§§pop())
         {
            if(!_loc5_)
            {
               §§pop();
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     addr74:
                     §§goto(addr75);
                  }
               }
               §§goto(addr96);
            }
         }
         addr75:
         if(!§§pop())
         {
            if(_loc6_)
            {
               _loc1_.ball.x += _loc1_.ballSpeedX;
            }
            _loc1_.ball.y += _loc1_.ballSpeedY;
            addr96:
         }
         else
         {
            _loc4_ = Math.ceil(Math.random() * 3);
            _loc1_.screen.gameObj.soundManager.playSound("minigame_putt_hit" + _loc4_ + ".wav");
         }
      }
      
      public function checkIntersectingBumpers() : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1485
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function getSingleRampIntersectionArray(param1:Number, param2:Number, param3:Number, param4:Number, param5:Ramp) : Array
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Boolean = false;
         var _loc16_:* = false;
         var _loc17_:Point = null;
         var _loc18_:Point = null;
         var _loc6_:MiniGamePutt = this;
         var _loc7_:Array = [];
         §§push(param5.x2);
         if(_loc19_ || Boolean(param2))
         {
            §§push(param5.x1);
            if(!(_loc20_ && Boolean(param1)))
            {
               §§push(§§pop() - §§pop());
               if(!(_loc20_ && Boolean(param1)))
               {
                  §§push(param5.x2);
                  if(!(_loc20_ && Boolean(this)))
                  {
                     addr123:
                     §§push(param5.x1);
                     if(!(_loc20_ && Boolean(param3)))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc20_)
                        {
                        }
                        addr94:
                        §§push(param5.y1);
                        if(!(_loc20_ && Boolean(this)))
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc20_ && Boolean(param2))
                           {
                           }
                           addr124:
                           §§push(§§pop() + §§pop());
                           if(!_loc20_)
                           {
                              §§push(§§pop());
                           }
                        }
                     }
                     §§goto(addr124);
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc19_ || Boolean(param3))
                  {
                     §§push(param5.y2);
                     if(_loc19_)
                     {
                        §§goto(addr94);
                     }
                  }
               }
            }
            §§push(param5.y2);
            if(!(_loc20_ && Boolean(param3)))
            {
               §§push(§§pop() - param5.y1);
            }
            §§goto(addr123);
         }
         var _loc8_:* = §§pop();
         §§push(2);
         §§push(param5.x2);
         if(_loc19_ || Boolean(param2))
         {
            §§push(param5.x1);
            if(!_loc20_)
            {
               §§push(§§pop() - §§pop());
               if(_loc19_ || Boolean(param2))
               {
               }
               addr208:
               §§push(§§pop() * §§pop());
               if(_loc19_ || Boolean(param1))
               {
                  §§push(§§pop());
               }
               var _loc9_:* = §§pop();
               §§push(param1);
               §§push(param1);
               if(!_loc20_)
               {
                  addr249:
                  §§push(§§pop() * §§pop());
                  if(_loc19_ || Boolean(param1))
                  {
                     §§push(param2);
                  }
                  §§push(param5.y1);
                  §§push(param5.y1);
                  if(!_loc20_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc19_ || Boolean(param1))
                     {
                        §§push(2);
                        §§push(param1);
                        if(_loc19_)
                        {
                           addr283:
                           §§push(param5.x1);
                           if(!_loc20_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc20_ && Boolean(this))
                              {
                              }
                              addr287:
                              §§push(§§pop() - §§pop() * §§pop());
                              §§push(this.ballRadius);
                              §§push(this.ballRadius);
                           }
                           §§goto(addr287);
                           §§push(§§pop() + §§pop() * param5.y1);
                        }
                        §§push(param2);
                        if(_loc20_)
                        {
                        }
                        §§goto(addr283);
                     }
                     addr298:
                     var _loc10_:Number = §§pop();
                     addr297:
                     §§push(_loc9_);
                     if(!(_loc20_ && Boolean(this)))
                     {
                        §§push(_loc9_);
                        if(!(_loc20_ && Boolean(param1)))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc20_ && Boolean(param2)))
                           {
                              §§push(4 * _loc8_);
                              if(!(_loc20_ && Boolean(this)))
                              {
                                 §§push(§§pop() * _loc10_);
                                 if(_loc20_)
                                 {
                                 }
                              }
                              addr342:
                              var _loc11_:* = §§pop();
                              if(!_loc20_)
                              {
                                 if(§§pop() > 0)
                                 {
                                    _loc12_ = Math.sqrt(_loc11_);
                                    §§push(_loc9_);
                                    if(!_loc20_)
                                    {
                                       §§push(-§§pop());
                                       §§push(_loc12_);
                                       if(_loc19_ || Boolean(param3))
                                       {
                                          §§push(§§pop() + §§pop());
                                          §§push(2);
                                          §§push(_loc8_);
                                          if(!(_loc20_ && Boolean(param1)))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc20_ && Boolean(param1)))
                                             {
                                                _loc13_ = §§pop() / §§pop();
                                                addr639:
                                                if(_loc19_)
                                                {
                                                   §§push(-_loc9_);
                                                   §§push(_loc12_);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      §§push(2);
                                                      §§push(_loc8_);
                                                   }
                                                }
                                                _loc17_ = Point.interpolate(new Point(param5.x1,param5.y1),new Point(param5.x2,param5.y2),1 - _loc14_);
                                                if(_loc19_ || Boolean(param2))
                                                {
                                                   _loc7_.push(_loc17_);
                                                }
                                                addr670:
                                                §§push(0 < _loc13_);
                                                §§push(0 < _loc13_);
                                                if(!_loc20_)
                                                {
                                                   addr674:
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      addr677:
                                                      addr676:
                                                      addr678:
                                                      §§push(_loc13_ <= 1);
                                                      if(_loc19_)
                                                      {
                                                      }
                                                      addr683:
                                                      §§pop();
                                                      if(_loc19_ || Boolean(param2))
                                                      {
                                                         addr693:
                                                         if(_loc16_)
                                                         {
                                                         }
                                                      }
                                                      _loc18_ = Point.interpolate(new Point(param5.x1,param5.y1),new Point(param5.x2,param5.y2),1 - _loc13_);
                                                      if(_loc19_ || Boolean(param1))
                                                      {
                                                         _loc7_.push(_loc18_);
                                                      }
                                                   }
                                                   §§push(§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr683);
                                                }
                                                §§goto(addr693);
                                             }
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc19_ || Boolean(param1))
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc14_ = §§pop();
                                       if(_loc19_)
                                       {
                                          _loc15_ = false;
                                          if(_loc19_ || Boolean(param2))
                                          {
                                             _loc16_ = false;
                                             §§push(_loc13_);
                                             if(_loc20_)
                                             {
                                             }
                                             §§goto(addr677);
                                          }
                                          addr552:
                                          _loc15_ = true;
                                          if(!(_loc20_ && Boolean(param2)))
                                          {
                                             addr591:
                                             §§push(_loc15_);
                                             if(_loc19_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(0);
                                                   if(_loc19_ || Boolean(this))
                                                   {
                                                      §§push(_loc14_);
                                                      if(_loc19_ || Boolean(this))
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                      }
                                                   }
                                                   §§goto(addr670);
                                                }
                                             }
                                             §§push(§§pop());
                                             if(!_loc20_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(!(_loc20_ && Boolean(param1)))
                                                   {
                                                      addr626:
                                                      §§push(_loc14_ <= 1);
                                                   }
                                                   §§goto(addr676);
                                                }
                                                addr628:
                                                if(§§pop())
                                                {
                                                   addr629:
                                                   §§pop();
                                                   if(_loc19_)
                                                   {
                                                   }
                                                   §§goto(addr677);
                                                }
                                                addr638:
                                                if(!§§pop())
                                                {
                                                }
                                             }
                                             §§goto(addr639);
                                          }
                                          §§push(_loc16_);
                                          if(!_loc20_)
                                          {
                                             addr635:
                                             §§push(!§§pop());
                                             if(_loc19_)
                                             {
                                                §§goto(addr638);
                                             }
                                             §§goto(addr693);
                                          }
                                          §§goto(addr639);
                                       }
                                       addr541:
                                       if(_loc14_ > 1)
                                       {
                                          if(!(_loc20_ && Boolean(param3)))
                                          {
                                             §§goto(addr552);
                                          }
                                          else
                                          {
                                             addr566:
                                             _loc7_.push(new Point(param5.x1,param5.y1));
                                             if(!_loc20_)
                                             {
                                                _loc7_.push(new Point(param5.x2,param5.y2));
                                                if(!(_loc20_ && Boolean(param2)))
                                                {
                                                   §§goto(addr591);
                                                }
                                             }
                                          }
                                          §§goto(addr552);
                                       }
                                       else
                                       {
                                          §§push(true);
                                          if(_loc19_)
                                          {
                                             _loc16_ = §§pop();
                                             §§goto(addr566);
                                          }
                                       }
                                       §§goto(addr638);
                                    }
                                    §§push(0);
                                    if(_loc19_ || Boolean(param1))
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc19_)
                                       {
                                          §§push(§§pop() || _loc13_ > 1);
                                          if(§§pop() || _loc13_ > 1)
                                          {
                                             §§pop();
                                             if(_loc19_)
                                             {
                                                §§push(_loc14_);
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop() < 0);
                                                   §§push(§§pop() < 0);
                                                   if(!(_loc20_ && Boolean(param2)))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            §§pop();
                                                            if(!_loc20_)
                                                            {
                                                               §§push(_loc14_);
                                                            }
                                                            §§goto(addr541);
                                                         }
                                                         §§goto(addr629);
                                                      }
                                                   }
                                                   §§goto(addr674);
                                                }
                                                §§goto(addr677);
                                             }
                                             addr504:
                                             §§push(_loc14_ < 0);
                                             if(_loc19_ || Boolean(param1))
                                             {
                                                addr514:
                                                if(!§§pop())
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc20_ && Boolean(this)))
                                                      {
                                                         §§push(_loc13_);
                                                         §§push(1);
                                                         if(_loc19_ || Boolean(param3))
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(§§pop() > §§pop())
                                                            {
                                                               §§pop();
                                                               if(_loc19_)
                                                               {
                                                               }
                                                               §§goto(addr677);
                                                            }
                                                         }
                                                         §§goto(addr626);
                                                      }
                                                      §§goto(addr541);
                                                   }
                                                   §§goto(addr591);
                                                }
                                                §§goto(addr541);
                                             }
                                             §§goto(addr693);
                                          }
                                          addr474:
                                          if(§§pop())
                                          {
                                             §§push(_loc13_);
                                             §§push(0);
                                             if(!(_loc20_ && Boolean(this)))
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc20_ && Boolean(this)))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                      }
                                                      §§goto(addr514);
                                                   }
                                                   §§goto(addr628);
                                                }
                                                §§goto(addr635);
                                             }
                                             §§goto(addr541);
                                          }
                                          §§goto(addr591);
                                       }
                                       §§pop();
                                       if(_loc19_ || Boolean(param1))
                                       {
                                          §§goto(addr504);
                                       }
                                       §§goto(addr552);
                                    }
                                    §§goto(addr678);
                                 }
                                 return _loc7_;
                              }
                              §§goto(addr474);
                              §§push(§§pop() > 1);
                           }
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc19_)
                        {
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr342);
                     §§push(§§pop());
                  }
                  §§push(§§pop() - §§pop() * §§pop());
                  if(!_loc20_)
                  {
                     §§goto(addr297);
                  }
                  §§goto(addr298);
               }
               §§push(param2);
               if(_loc19_ || Boolean(param1))
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(param5.x1);
                  §§push(param5.x1);
                  if(!_loc20_)
                  {
                     §§goto(addr249);
                     §§push(§§pop() + §§pop() * §§pop());
                  }
               }
               §§goto(addr249);
            }
            addr160:
            §§push(param1);
            if(_loc19_ || Boolean(param3))
            {
               §§push(§§pop() - §§pop());
               if(_loc19_ || Boolean(this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc19_ || Boolean(param2))
                  {
                     §§push(param5.y2);
                     if(_loc19_)
                     {
                     }
                     addr195:
                     §§push(param5.y1);
                     if(!(_loc20_ && Boolean(param3)))
                     {
                        §§push(§§pop() - param2);
                     }
                  }
                  §§goto(addr208);
               }
               §§push(param5.y1);
               if(!_loc20_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc20_)
                  {
                     §§goto(addr195);
                  }
                  addr207:
                  §§goto(addr208);
                  §§push(§§pop() + §§pop());
               }
            }
            §§goto(addr207);
            §§push(§§pop() * §§pop());
         }
         §§push(param5.x1);
         if(_loc19_ || Boolean(this))
         {
            §§goto(addr160);
         }
         §§goto(addr195);
      }
      
      public function checkIntersectingRamps() : Boolean
      {
         var _loc76_:Boolean = false;
         var _loc77_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc10_:Ramp = null;
         var _loc11_:Array = null;
         var _loc12_:Point = null;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Ramp = null;
         var _loc24_:Array = null;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:* = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:* = NaN;
         var _loc39_:* = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:* = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:* = NaN;
         var _loc49_:* = NaN;
         var _loc50_:* = NaN;
         var _loc51_:* = NaN;
         var _loc52_:* = NaN;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:* = NaN;
         var _loc58_:* = NaN;
         var _loc59_:* = NaN;
         var _loc60_:* = NaN;
         var _loc61_:* = NaN;
         var _loc62_:Number = NaN;
         var _loc63_:* = NaN;
         var _loc64_:Number = NaN;
         var _loc65_:* = NaN;
         var _loc66_:* = NaN;
         var _loc67_:* = NaN;
         var _loc68_:* = NaN;
         var _loc69_:Number = NaN;
         var _loc70_:* = NaN;
         var _loc71_:* = NaN;
         var _loc72_:Number = NaN;
         var _loc73_:* = NaN;
         var _loc74_:* = NaN;
         var _loc75_:* = NaN;
         var _loc1_:MiniGamePutt = this;
         var _loc2_:* = false;
         §§push(_loc1_.ballSpeedX);
         if(_loc77_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = this.ball.x + _loc1_.ballSpeedX;
         var _loc5_:* = this.ball.y + _loc1_.ballSpeedY;
         §§push(_loc1_.getBallSlope());
         if(!(_loc76_ && Boolean(_loc1_)))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(!(_loc76_ && Boolean(_loc1_)))
         {
            §§push(_loc6_);
            if(!(_loc76_ && _loc3_))
            {
               §§push(§§pop() * _loc4_);
            }
            §§push(§§pop() - §§pop());
            if(_loc77_ || Boolean(_loc1_))
            {
               §§push(§§pop());
            }
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc8_);
            while(§§pop() < _loc1_.ramps.length)
            {
               §§push(_loc8_);
               if(!(_loc77_ || Boolean(this)))
               {
                  continue;
               }
               §§push(§§pop());
               if(!(_loc76_ && _loc3_))
               {
                  _loc9_ = §§pop();
                  if(_loc77_ || Boolean(_loc1_))
                  {
                     §§push(_loc3_);
                     if(!_loc76_)
                     {
                        §§push(0);
                        if(_loc77_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc77_)
                              {
                              }
                              break;
                           }
                           addr286:
                           _loc10_ = _loc1_.ramps[_loc8_];
                           _loc11_ = _loc1_.getSingleRampIntersectionArray(_loc4_,_loc5_,_loc6_,_loc7_,_loc10_);
                           _loc12_ = null;
                           addr284:
                           §§push(false);
                           if(_loc77_)
                           {
                              _loc13_ = §§pop();
                              if(_loc77_ || Boolean(_loc1_))
                              {
                                 §§push(false);
                                 if(!_loc76_)
                                 {
                                    _loc14_ = §§pop();
                                    if(_loc11_.length == 1)
                                    {
                                       _loc17_ = Math.sqrt((_loc4_ - _loc10_.x1) * (_loc4_ - _loc10_.x1) + (_loc5_ - _loc10_.y1) * (_loc5_ - _loc10_.y1));
                                       _loc18_ = Math.sqrt((_loc4_ - _loc10_.x2) * (_loc4_ - _loc10_.x2) + (_loc5_ - _loc10_.y2) * (_loc5_ - _loc10_.y2));
                                       if(_loc17_ <= this.ballRadius)
                                       {
                                          if(_loc77_ || Boolean(this))
                                          {
                                             _loc15_ = new Point(_loc10_.x1,_loc10_.y1);
                                             _loc16_ = new Point(_loc10_.x2,_loc10_.y2);
                                             if(_loc76_)
                                             {
                                             }
                                             addr435:
                                             §§push(1000);
                                             if(_loc77_ || _loc2_)
                                             {
                                                addr444:
                                                _loc20_ = §§pop();
                                                if(_loc77_ || _loc2_)
                                                {
                                                   addr452:
                                                   §§push(_loc15_.x + _loc20_ * Math.cos(_loc19_));
                                                   if(_loc77_ || Boolean(_loc1_))
                                                   {
                                                   }
                                                   addr480:
                                                   _loc22_ = §§pop();
                                                }
                                                addr481:
                                                _loc23_ = new Ramp(_loc15_.x,_loc15_.y,_loc21_,_loc22_,_loc1_.defaultRampDecay);
                                                _loc24_ = _loc1_.getSingleRampIntersectionArray(_loc4_,_loc5_,_loc6_,_loc7_,_loc23_);
                                                if(_loc24_.length == 1)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc77_)
                                                   {
                                                      _loc25_ = §§pop();
                                                      §§push(_loc5_);
                                                      if(!_loc76_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc77_ || _loc3_)
                                                         {
                                                            _loc26_ = §§pop();
                                                            _loc27_ = Number(_loc24_[0].x);
                                                            _loc28_ = Number(_loc24_[0].y);
                                                            addr688:
                                                            §§push(_loc27_);
                                                            if(_loc77_ || _loc2_)
                                                            {
                                                               addr833:
                                                               §§push(§§pop() - _loc15_.x);
                                                               if(_loc77_ || Boolean(this))
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               _loc45_ = §§pop();
                                                               §§push(_loc35_);
                                                               §§push(_loc44_);
                                                               if(!(_loc76_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(_loc36_);
                                                                  if(_loc77_)
                                                                  {
                                                                     addr850:
                                                                     _loc46_ = §§pop() + §§pop() * _loc45_;
                                                                     §§push(_loc37_);
                                                                     if(!(_loc76_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr860:
                                                                        addr861:
                                                                        §§push(§§pop() * _loc44_);
                                                                        §§push(_loc38_);
                                                                        if(_loc77_)
                                                                        {
                                                                           §§push(_loc45_);
                                                                           if(!_loc76_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc77_)
                                                                              {
                                                                                 _loc47_ = §§pop() + §§pop();
                                                                                 addr1012:
                                                                                 if(!_loc76_)
                                                                                 {
                                                                                    addr876:
                                                                                    §§push(_loc36_);
                                                                                    if(_loc77_)
                                                                                    {
                                                                                       addr882:
                                                                                       §§push(§§pop() * _loc44_ - _loc35_ * _loc45_);
                                                                                       if(_loc77_ || Boolean(this))
                                                                                       {
                                                                                          _loc48_ = §§pop();
                                                                                          addr1057:
                                                                                          if(_loc77_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc38_);
                                                                                          }
                                                                                          _loc1_.ballSpeedX = _loc35_;
                                                                                          _loc1_.ballSpeedY = _loc36_;
                                                                                       }
                                                                                       addr1031:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc76_ && _loc3_))
                                                                                       {
                                                                                          _loc35_ = §§pop();
                                                                                          addr1040:
                                                                                          §§push(_loc48_);
                                                                                          if(!_loc76_)
                                                                                          {
                                                                                             §§push(_loc44_);
                                                                                             if(_loc76_)
                                                                                             {
                                                                                             }
                                                                                             addr1048:
                                                                                             §§push(§§pop() + §§pop() * _loc45_);
                                                                                             if(!_loc76_)
                                                                                             {
                                                                                                addr1053:
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             _loc36_ = §§pop();
                                                                                             if(_loc77_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr1057);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1048);
                                                                                       §§push(_loc46_);
                                                                                    }
                                                                                    §§push(_loc44_);
                                                                                    if(!_loc76_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       §§push(_loc37_);
                                                                                       if(_loc76_)
                                                                                       {
                                                                                       }
                                                                                       addr1026:
                                                                                       §§push(§§pop() * _loc45_);
                                                                                       if(_loc77_)
                                                                                       {
                                                                                          §§goto(addr1031);
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                       §§goto(addr1048);
                                                                                    }
                                                                                    addr1024:
                                                                                    §§goto(addr1026);
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(_loc48_);
                                                                                 }
                                                                                 §§push(_loc52_);
                                                                                 if(_loc77_ || _loc3_)
                                                                                 {
                                                                                    _loc47_ = §§pop();
                                                                                    addr1022:
                                                                                    §§goto(addr1024);
                                                                                    §§push(_loc46_);
                                                                                    §§push(_loc44_);
                                                                                 }
                                                                                 §§goto(addr1048);
                                                                              }
                                                                              addr993:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc76_)
                                                                              {
                                                                                 addr996:
                                                                                 §§push(§§pop());
                                                                                 if(_loc76_ && _loc3_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr1024);
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!_loc76_)
                                                                              {
                                                                                 _loc53_ = §§pop();
                                                                                 addr1008:
                                                                                 _loc46_ = §§pop();
                                                                                 if(_loc77_)
                                                                                 {
                                                                                    §§goto(addr1012);
                                                                                 }
                                                                                 §§goto(addr1022);
                                                                              }
                                                                              §§goto(addr1048);
                                                                           }
                                                                           addr960:
                                                                           §§push((§§pop() + §§pop() * §§pop()) / (_loc39_ + _loc40_));
                                                                           if(!(_loc76_ && _loc3_))
                                                                           {
                                                                              addr974:
                                                                              §§push(§§pop());
                                                                              §§push(§§pop());
                                                                              if(_loc77_ || Boolean(this))
                                                                              {
                                                                                 _loc52_ = §§pop();
                                                                                 if(!(_loc76_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc46_);
                                                                                 }
                                                                                 §§goto(addr996);
                                                                              }
                                                                              addr992:
                                                                              §§goto(addr993);
                                                                              §§push(§§pop() - §§pop());
                                                                              §§push(_loc47_);
                                                                           }
                                                                           §§goto(addr1031);
                                                                        }
                                                                        addr910:
                                                                        §§push(§§pop() * _loc45_);
                                                                        if(_loc77_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc77_)
                                                                           {
                                                                           }
                                                                           addr936:
                                                                           §§push(§§pop());
                                                                           if(_loc76_ && Boolean(this))
                                                                           {
                                                                           }
                                                                           §§goto(addr1053);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc76_)
                                                                        {
                                                                           §§goto(addr936);
                                                                        }
                                                                        §§goto(addr992);
                                                                     }
                                                                     addr944:
                                                                     _loc50_ = §§pop();
                                                                     §§push(_loc46_);
                                                                     §§push(_loc47_);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc76_ && Boolean(this)))
                                                                  {
                                                                     _loc51_ = §§pop();
                                                                     §§goto(addr960);
                                                                     §§push(_loc50_);
                                                                     §§push(_loc39_);
                                                                     §§push(_loc51_);
                                                                  }
                                                                  §§goto(addr1008);
                                                               }
                                                               §§goto(addr1031);
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§push(_loc6_);
                                                            if(!(_loc76_ && _loc2_))
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc77_)
                                                               {
                                                                  §§push(§§pop() - §§pop() * §§pop());
                                                                  if(_loc77_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     §§push(_loc1_.ballSpeedX);
                                                                     if(!(_loc76_ && Boolean(this)))
                                                                     {
                                                                        _loc35_ = §§pop();
                                                                        §§push(_loc1_.ballSpeedY);
                                                                        if(!_loc76_)
                                                                        {
                                                                           _loc36_ = §§pop();
                                                                           §§push(0);
                                                                           if(_loc77_)
                                                                           {
                                                                              _loc37_ = §§pop();
                                                                              §§push(0);
                                                                              if(!(_loc76_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc76_ && _loc3_))
                                                                                 {
                                                                                    _loc38_ = §§pop();
                                                                                    §§push(1);
                                                                                    if(_loc76_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr974);
                                                                              }
                                                                              addr754:
                                                                              _loc40_ = §§pop();
                                                                              if(_loc77_)
                                                                              {
                                                                                 §§push(_loc27_);
                                                                                 if(_loc76_ && _loc2_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr860);
                                                                              }
                                                                              §§goto(addr1057);
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc77_)
                                                                           {
                                                                              _loc39_ = §§pop();
                                                                              addr918:
                                                                              if(!_loc76_)
                                                                              {
                                                                                 §§goto(addr754);
                                                                                 §§push(2);
                                                                              }
                                                                              §§push(_loc39_);
                                                                              if(!_loc76_)
                                                                              {
                                                                                 addr923:
                                                                                 §§push(§§pop() * _loc46_);
                                                                                 §§push(_loc40_);
                                                                                 §§push(_loc47_);
                                                                                 if(_loc77_ || Boolean(_loc1_))
                                                                                 {
                                                                                    §§goto(addr860);
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr960);
                                                                           }
                                                                           addr778:
                                                                           _loc41_ = §§pop();
                                                                           §§push(_loc28_);
                                                                           §§push(_loc5_);
                                                                           if(_loc77_ || Boolean(_loc1_))
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc76_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr861);
                                                                        }
                                                                        §§goto(addr944);
                                                                     }
                                                                     addr791:
                                                                     §§push(§§pop());
                                                                     if(!_loc76_)
                                                                     {
                                                                        _loc42_ = §§pop();
                                                                        if(!_loc76_)
                                                                        {
                                                                           addr797:
                                                                           _loc43_ = Math.atan2(_loc42_,_loc41_);
                                                                           if(!(_loc76_ && Boolean(this)))
                                                                           {
                                                                              _loc44_ = Math.cos(_loc43_);
                                                                              if(!(_loc76_ && Boolean(this)))
                                                                              {
                                                                                 addr829:
                                                                                 §§push(Math.sin(_loc43_));
                                                                              }
                                                                              §§goto(addr876);
                                                                           }
                                                                           §§goto(addr1057);
                                                                        }
                                                                        §§goto(addr918);
                                                                     }
                                                                     §§goto(addr850);
                                                                  }
                                                                  §§goto(addr833);
                                                               }
                                                               §§goto(addr910);
                                                            }
                                                            §§goto(addr882);
                                                         }
                                                         _loc29_ = §§pop();
                                                         §§push(_loc28_ - _loc15_.y);
                                                         if(_loc77_ || Boolean(this))
                                                         {
                                                            _loc30_ = §§pop();
                                                            if(_loc77_ || Boolean(this))
                                                            {
                                                               §§push(Math.sqrt(_loc29_ * _loc29_ + _loc30_ * _loc30_));
                                                               if(!_loc76_)
                                                               {
                                                                  _loc31_ = §§pop();
                                                                  §§push(_loc31_);
                                                                  if(!_loc76_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(_loc77_)
                                                                     {
                                                                        _loc31_ = §§pop();
                                                                        if(!_loc76_)
                                                                        {
                                                                           §§push(_loc19_);
                                                                           if(_loc77_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() + Math.PI);
                                                                           }
                                                                           _loc32_ = §§pop();
                                                                           §§push(_loc4_);
                                                                           §§push(_loc31_);
                                                                           if(_loc77_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop() + §§pop() * Math.cos(_loc32_));
                                                                              if(_loc76_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr974);
                                                                        }
                                                                        §§goto(addr829);
                                                                     }
                                                                     §§goto(addr791);
                                                                  }
                                                                  §§goto(addr860);
                                                               }
                                                               _loc33_ = §§pop();
                                                               if(!(_loc76_ && Boolean(this)))
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc77_ || _loc3_)
                                                                  {
                                                                     _loc34_ = §§pop() + _loc31_ * Math.sin(_loc32_);
                                                                     this.ball.x = _loc33_;
                                                                     if(!(_loc76_ && _loc3_))
                                                                     {
                                                                        this.ball.y = _loc34_;
                                                                        _loc2_ = true;
                                                                        _loc4_ = this.ball.x;
                                                                        §§push(this.ball.y);
                                                                        if(_loc77_ || _loc2_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           §§push(_loc5_);
                                                                        }
                                                                     }
                                                                     §§goto(addr797);
                                                                  }
                                                                  §§goto(addr688);
                                                               }
                                                               §§goto(addr850);
                                                            }
                                                            §§goto(addr1040);
                                                         }
                                                         §§goto(addr936);
                                                      }
                                                      _loc49_ = §§pop();
                                                      §§goto(addr918);
                                                   }
                                                   §§push(_loc4_);
                                                   if(!_loc76_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc77_ || _loc3_)
                                                      {
                                                         §§goto(addr778);
                                                         §§push(§§pop());
                                                      }
                                                      §§goto(addr923);
                                                   }
                                                   §§goto(addr1048);
                                                }
                                             }
                                             _loc21_ = §§pop();
                                             if(!_loc76_)
                                             {
                                                §§goto(addr480);
                                                §§push(_loc15_.y + _loc20_ * Math.sin(_loc19_));
                                             }
                                             §§goto(addr481);
                                          }
                                          addr1617:
                                          addr1636:
                                          §§push(_loc73_);
                                          if(_loc77_)
                                          {
                                             addr1620:
                                             addr1621:
                                             §§push(§§pop() * _loc65_);
                                             if(!_loc76_)
                                             {
                                                addr1624:
                                                §§push(§§pop() - _loc72_ * _loc66_);
                                                if(_loc76_ && _loc2_)
                                                {
                                                }
                                             }
                                             §§push(§§pop());
                                          }
                                          _loc75_ = §§pop();
                                          addr1637:
                                          _loc1_.ballSpeedX = _loc75_;
                                          _loc1_.ballSpeedY = _loc74_;
                                          addr1650:
                                          _loc8_++;
                                          continue loop0;
                                       }
                                       _loc15_ = new Point(_loc10_.x2,_loc10_.y2);
                                       _loc16_ = new Point(_loc10_.x1,_loc10_.y1);
                                       §§push(Math.atan2(_loc1_.ballSpeedY,_loc1_.ballSpeedX));
                                       if(!(_loc76_ && Boolean(this)))
                                       {
                                          _loc19_ = §§pop();
                                          if(_loc77_ || _loc2_)
                                          {
                                             §§goto(addr435);
                                          }
                                          §§goto(addr452);
                                       }
                                       §§goto(addr444);
                                    }
                                    if(_loc11_.length == 2)
                                    {
                                       if(_loc77_ || Boolean(_loc1_))
                                       {
                                          _loc12_ = Point.interpolate(_loc11_[0],_loc11_[1],0.5);
                                       }
                                    }
                                    if(_loc12_ != null)
                                    {
                                       §§push(-1);
                                       if(_loc77_)
                                       {
                                          _loc54_ = §§pop() / _loc10_.getSlope();
                                          if(!(_loc76_ && Boolean(this)))
                                          {
                                             _loc55_ = _loc12_.y - _loc54_ * _loc12_.x;
                                             if(_loc54_ == Number.POSITIVE_INFINITY)
                                             {
                                                if(_loc77_ || Boolean(this))
                                                {
                                                   §§push(1000);
                                                   if(_loc77_)
                                                   {
                                                   }
                                                   addr1318:
                                                   _loc60_ = §§pop();
                                                   if(!(_loc76_ && Boolean(_loc1_)))
                                                   {
                                                      addr1327:
                                                      addr1329:
                                                      if(_loc60_ > 0)
                                                      {
                                                         if(_loc77_)
                                                         {
                                                            addr1333:
                                                            _loc58_ = _loc56_ - _loc12_.x;
                                                            addr1343:
                                                            _loc59_ = _loc57_ - _loc12_.y;
                                                            addr1338:
                                                            if(_loc77_)
                                                            {
                                                               addr1346:
                                                               §§push(_loc57_);
                                                               if(_loc77_ || _loc3_)
                                                               {
                                                                  if(§§pop() < _loc12_.y)
                                                                  {
                                                                  }
                                                               }
                                                               addr1489:
                                                               _loc64_ = §§pop();
                                                               addr1488:
                                                               if(_loc76_)
                                                               {
                                                               }
                                                               addr1521:
                                                               §§push(_loc67_ * _loc65_);
                                                               §§push(_loc68_);
                                                               §§push(_loc66_);
                                                               if(_loc77_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc76_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc77_)
                                                                     {
                                                                        addr1544:
                                                                        _loc69_ = §§pop();
                                                                        if(!_loc76_)
                                                                        {
                                                                           addr1557:
                                                                           §§push(_loc68_);
                                                                           if(!_loc76_)
                                                                           {
                                                                              addr1551:
                                                                              §§push(_loc65_);
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!_loc76_)
                                                                           {
                                                                              _loc70_ = §§pop();
                                                                              §§push(_loc10_.decay);
                                                                              if(!_loc76_)
                                                                              {
                                                                                 _loc71_ = §§pop();
                                                                                 §§push(_loc69_);
                                                                                 if(_loc77_ || Boolean(this))
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc77_)
                                                                                    {
                                                                                       addr1581:
                                                                                       _loc72_ = §§pop() * _loc71_;
                                                                                       §§push(_loc70_);
                                                                                       if(_loc77_)
                                                                                       {
                                                                                          _loc73_ = §§pop();
                                                                                          if(_loc76_ && Boolean(this))
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1650);
                                                                                       }
                                                                                       §§goto(addr1620);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1624);
                                                                              }
                                                                           }
                                                                           §§goto(addr1620);
                                                                        }
                                                                     }
                                                                     addr1609:
                                                                     _loc74_ = §§pop();
                                                                     if(!(_loc77_ || Boolean(this)))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr1617);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(_loc67_);
                                                                  §§push(_loc66_);
                                                               }
                                                               §§goto(addr1557);
                                                               §§push(§§pop() + §§pop() * §§pop());
                                                            }
                                                            §§push(_loc12_.x - _loc56_);
                                                            if(_loc77_ || _loc3_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc77_ || _loc3_)
                                                               {
                                                                  _loc58_ = §§pop();
                                                                  if(_loc77_)
                                                                  {
                                                                     addr1383:
                                                                     _loc59_ = _loc12_.y - _loc57_;
                                                                     addr1379:
                                                                     if(_loc77_ || Boolean(_loc1_))
                                                                     {
                                                                     }
                                                                     §§goto(addr1521);
                                                                  }
                                                                  addr1504:
                                                                  §§push(_loc1_.ballSpeedY);
                                                                  if(_loc77_ || _loc3_)
                                                                  {
                                                                     addr1513:
                                                                     §§push(§§pop());
                                                                  }
                                                                  _loc67_ = §§pop();
                                                                  §§push(_loc1_.ballSpeedX);
                                                                  if(_loc77_)
                                                                  {
                                                                     _loc68_ = §§pop();
                                                                     §§goto(addr1521);
                                                                  }
                                                                  §§goto(addr1557);
                                                               }
                                                               addr1407:
                                                               _loc62_ = §§pop() * Math.cos(_loc61_);
                                                               §§push(this.ballRadius * Math.sin(_loc61_));
                                                               if(!(_loc76_ && _loc3_))
                                                               {
                                                                  _loc63_ = §§pop();
                                                                  this.ball.x = _loc12_.x + _loc62_;
                                                                  this.ball.y = _loc12_.y + _loc63_;
                                                                  §§push(true);
                                                                  if(_loc77_ || Boolean(_loc1_))
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr1544);
                                                            }
                                                            §§push(_loc6_);
                                                            if(!_loc76_)
                                                            {
                                                               §§push(§§pop() * _loc4_);
                                                               if(_loc77_)
                                                               {
                                                                  _loc7_ = §§pop() - §§pop();
                                                                  §§push(true);
                                                                  if(_loc77_)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                  }
                                                               }
                                                               addr1596:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(_loc73_);
                                                               if(!(_loc76_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop() * _loc66_);
                                                               }
                                                               §§goto(addr1609);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr1521);
                                                            addr1332:
                                                         }
                                                         addr1484:
                                                         §§push(_loc10_.getAngle());
                                                         if(_loc77_)
                                                         {
                                                            §§goto(addr1488);
                                                         }
                                                         addr1496:
                                                         _loc65_ = §§pop();
                                                         §§push(Math.sin(_loc64_));
                                                         if(!_loc76_)
                                                         {
                                                            _loc66_ = §§pop();
                                                            §§goto(addr1504);
                                                         }
                                                         §§goto(addr1581);
                                                      }
                                                      §§push(Math.atan2(_loc59_,_loc58_));
                                                      if(!(_loc76_ && _loc2_))
                                                      {
                                                         _loc61_ = §§pop();
                                                         §§goto(addr1407);
                                                         §§push(this.ballRadius);
                                                      }
                                                      §§goto(addr1407);
                                                   }
                                                   §§goto(addr1496);
                                                   §§push(Math.cos(_loc64_));
                                                }
                                                §§goto(addr1596);
                                                §§push(_loc72_);
                                                §§push(_loc65_);
                                             }
                                             else
                                             {
                                                §§push(_loc54_);
                                                if(!(_loc76_ && Boolean(this)))
                                                {
                                                   if(§§pop() == Number.NEGATIVE_INFINITY)
                                                   {
                                                      if(!(_loc76_ && _loc3_))
                                                      {
                                                         §§push(-1000);
                                                         if(!(_loc76_ && Boolean(_loc1_)))
                                                         {
                                                            _loc54_ = §§pop();
                                                            if(_loc77_)
                                                            {
                                                            }
                                                            §§goto(addr1332);
                                                         }
                                                         §§goto(addr1318);
                                                      }
                                                      §§goto(addr1338);
                                                   }
                                                   addr1161:
                                                   §§push(400);
                                                   if(!(_loc76_ && _loc3_))
                                                   {
                                                      _loc56_ = §§pop();
                                                      if(_loc77_)
                                                      {
                                                         §§push(_loc54_);
                                                         if(_loc77_)
                                                         {
                                                            §§push(§§pop() * _loc56_);
                                                            if(_loc77_)
                                                            {
                                                               §§push(§§pop() + _loc55_);
                                                               if(_loc77_ || Boolean(this))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc77_)
                                                                  {
                                                                     _loc57_ = §§pop();
                                                                     if(_loc77_)
                                                                     {
                                                                        addr1200:
                                                                        _loc58_ = _loc12_.x - _loc56_;
                                                                        if(!(_loc76_ && Boolean(_loc1_)))
                                                                        {
                                                                           §§push(_loc12_.y - _loc57_);
                                                                           if(!_loc76_)
                                                                           {
                                                                              _loc59_ = §§pop();
                                                                              if(!_loc76_)
                                                                              {
                                                                                 if(_loc57_ < _loc12_.y)
                                                                                 {
                                                                                 }
                                                                                 addr1245:
                                                                                 §§push(_loc10_.getRightX());
                                                                                 if(_loc77_ || Boolean(this))
                                                                                 {
                                                                                    §§push(§§pop() - _loc10_.getLeftX());
                                                                                    §§push(this.ball.y - _loc10_.getLeftY());
                                                                                    if(!_loc76_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       §§push(_loc10_.getRightY());
                                                                                       §§push(_loc10_.getLeftY());
                                                                                       if(!(_loc76_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc76_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop() * (this.ball.x - _loc10_.getLeftX()));
                                                                                             if(!_loc76_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                §§push(§§pop());
                                                                                                if(_loc77_ || Boolean(this))
                                                                                                {
                                                                                                   _loc60_ = §§pop();
                                                                                                   if(_loc77_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc77_ || Boolean(this))
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(this.ball.x < _loc10_.getLeftX())
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1327);
                                                                                                      }
                                                                                                      §§goto(addr1329);
                                                                                                   }
                                                                                                   §§goto(addr1624);
                                                                                                }
                                                                                                §§goto(addr1488);
                                                                                             }
                                                                                             §§goto(addr1620);
                                                                                          }
                                                                                          §§goto(addr1488);
                                                                                       }
                                                                                       §§goto(addr1624);
                                                                                    }
                                                                                    §§goto(addr1621);
                                                                                 }
                                                                                 §§goto(addr1609);
                                                                              }
                                                                              §§goto(addr1379);
                                                                           }
                                                                           §§goto(addr1551);
                                                                        }
                                                                     }
                                                                     §§goto(addr1346);
                                                                  }
                                                                  §§goto(addr1581);
                                                               }
                                                               §§goto(addr1513);
                                                            }
                                                            §§goto(addr1333);
                                                         }
                                                         §§goto(addr1504);
                                                      }
                                                      §§goto(addr1327);
                                                   }
                                                   §§goto(addr1318);
                                                }
                                             }
                                             §§goto(addr1636);
                                          }
                                          §§goto(addr1637);
                                       }
                                       §§push(§§pop());
                                       if(_loc77_)
                                       {
                                          _loc54_ = §§pop();
                                          §§goto(addr1161);
                                       }
                                       §§goto(addr1200);
                                    }
                                    §§push(_loc13_);
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr1484);
                                 }
                                 §§goto(addr1617);
                              }
                              _loc58_ = _loc56_ - _loc12_.x;
                              if(_loc77_)
                              {
                                 §§push(_loc57_);
                                 if(!_loc76_)
                                 {
                                    §§push(§§pop() - _loc12_.y);
                                    if(!(_loc76_ && Boolean(this)))
                                    {
                                       _loc59_ = §§pop();
                                       §§goto(addr1245);
                                    }
                                    §§goto(addr1343);
                                 }
                                 §§goto(addr1383);
                              }
                              §§goto(addr1346);
                           }
                           _loc2_ = §§pop();
                           §§push(this.ball.x);
                           if(_loc77_)
                           {
                              _loc4_ = §§pop();
                              §§push(this.ball.y);
                              §§push(this.ball.y);
                              if(_loc77_)
                              {
                                 _loc5_ = §§pop();
                                 if(!_loc76_)
                                 {
                                    §§goto(addr1333);
                                 }
                                 §§goto(addr1489);
                              }
                              §§goto(addr1624);
                           }
                           §§goto(addr1581);
                        }
                        addr277:
                        §§push(§§pop() - §§pop());
                        if(_loc76_)
                        {
                        }
                        _loc9_ = §§pop();
                        if(_loc76_)
                        {
                           break;
                        }
                        §§goto(addr284);
                     }
                     addr276:
                     §§goto(addr277);
                     §§push(_loc8_);
                  }
                  §§push(_loc1_.ramps);
                  if(!_loc76_)
                  {
                     §§push(§§pop().length - 1);
                     if(_loc77_ || _loc3_)
                     {
                        §§goto(addr276);
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr286);
               }
               §§goto(addr277);
               §§push(§§pop());
            }
            return _loc2_;
         }
      }
      
      public function radsToDegrees(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(§§pop() * 180);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(§§pop() / Math.PI);
            }
         }
         return §§pop();
      }
      
      public function degreesToRads(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() * Math.PI);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(§§pop() / 180);
            }
         }
         return §§pop();
      }
      
      override public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:MiniGamePutt = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.ramps = null;
            if(_loc3_ || Boolean(_loc1_))
            {
            }
            addr42:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(_loc1_.banks);
                  if(!_loc4_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        addr142:
                        if(_loc3_)
                        {
                           _loc1_.banks = null;
                           _loc1_.banks = [];
                           §§push(0);
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr180:
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(_loc2_);
                              addr202:
                              addr206:
                              loop3:
                              while(true)
                              {
                                 §§push(_loc1_.bumpers);
                                 addr204:
                                 while(§§pop() < §§pop().length)
                                 {
                                    _loc1_.clip.holder.removeChild(_loc1_.bumpers[_loc2_]);
                                    if(!_loc4_)
                                    {
                                       §§push(_loc1_.bumpers);
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          addr196:
                                          while(true)
                                          {
                                             §§push(null);
                                             addr197:
                                             while(true)
                                             {
                                                §§pop()[§§pop()] = §§pop();
                                                _loc2_++;
                                                if(_loc4_)
                                                {
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       addr195:
                                    }
                                    _loc1_.container.removeChild(_loc1_.clip);
                                    _loc1_.clip = null;
                                 }
                                 break;
                              }
                              _loc1_.bumpers = null;
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_.bumpers = [];
                                 _loc1_.screen.gameObj.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
                                 addr219:
                              }
                              §§goto(addr234);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              §§push(_loc1_.tiles);
                              if(_loc3_)
                              {
                              }
                              §§goto(addr204);
                           }
                           break;
                        }
                        §§goto(addr180);
                        addr142:
                     }
                     else
                     {
                        _loc1_.clip.holder.removeChild(_loc1_.banks[_loc2_]);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           §§push(_loc1_.banks);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    addr171:
                                    _loc1_.tileGrid = null;
                                    _loc1_.tileGrid = [];
                                    §§push(0);
                                    if(_loc3_)
                                    {
                                       §§goto(addr180);
                                    }
                                    §§goto(addr202);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       if(!_loc4_)
                                       {
                                          _loc2_++;
                                          §§goto(addr142);
                                       }
                                       break;
                                    }
                                    addr158:
                                    _loc1_.tiles = null;
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       _loc1_.tiles = [];
                                       §§goto(addr171);
                                    }
                                    §§goto(addr219);
                                    addr138:
                                 }
                                 §§goto(addr204);
                              }
                              while(true)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr138);
                                 }
                                 break;
                              }
                              §§goto(addr197);
                              addr135:
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr135);
                              }
                              break;
                           }
                           §§goto(addr196);
                           addr127:
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop().length)
                     {
                        _loc1_.clip.holder.removeChild(_loc1_.tiles[_loc2_]);
                        §§push(_loc1_.tiles);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr127);
                        }
                        break;
                     }
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§goto(addr158);
                     }
                     §§goto(addr171);
                     §§goto(addr206);
                  }
                  §§goto(addr195);
               }
               break;
               _loc2_++;
            }
            _loc2_ = §§pop();
            if(_loc3_)
            {
               §§goto(addr142);
            }
            §§goto(addr234);
         }
         _loc1_.ramps = [];
         if(_loc3_)
         {
            _loc2_ = 0;
         }
         §§goto(addr42);
      }
   }
}

