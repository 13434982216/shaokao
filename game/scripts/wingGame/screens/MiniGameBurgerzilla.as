package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.ui.Mouse;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   import wingGame.models.Worker;
   
   public class MiniGameBurgerzilla extends MiniGame
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
      
      public var shouldFollow:Boolean = true;
      
      public var isDropping:Boolean = true;
      
      public var stackedParts:Vector.<MovieClip>;
      
      public var fallingParts:Vector.<MovieClip>;
      
      public var currentStackHeight:Number = 0;
      
      public var toppingOptions:Array;
      
      public var toppingHeights:Array;
      
      public var minDropX:Number = 75;
      
      public var maxDropX:Number = 565;
      
      public var dropSpeed:Number = 10;
      
      public var rotateSpeed:Number = 25;
      
      public var edgeBuffer:Number = 15;
      
      public var toppingWidth:Number = 35;
      
      public var holderY:Number = 115;
      
      public var dropTimer:Number = 0;
      
      public var dropTimerInterval:Number = 45;
      
      public var dropTimerMax:Number = 60;
      
      public var lastDropX:Number = 320;
      
      public var workerSpeed:Number = 8;
      
      public var workerMaxSpeed:Number = 30;
      
      public var minWorkerX:Number = 35;
      
      public var maxWorkerX:Number = 595;
      
      public var displacementRange:Number = 5;
      
      public var workerNormalY:Number = 280;
      
      public var targetHeight:Number = 260;
      
      public var allowedMisses:Number = 5;
      
      public var currentMisses:Number = 0;
      
      public var isDroppingPlate:Boolean = false;
      
      public var isRaisingPlate:Boolean = false;
      
      public var raiseTimer:Number = 0;
      
      public var raiseTimerMax:Number = 40;
      
      public var isIntro:Boolean = true;
      
      public var introTimer:Number = 0;
      
      public var introTimerMax:Number = 30;
      
      public var worker:Worker;
      
      public function MiniGameBurgerzilla(param1:MiniGameScreen, param2:MovieClip)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.prizeSKUs = ["poster_burgeria","shirt_09","furni_burgertable_small","pants_14","furni_burgertable_medium","wall33","jacket_11","furni_burgertable_large","hat03","furni_burger_burger","belt_09","floor26","glasses07","furni_burger_hangingplant"];
         if(!(_loc3_ && Boolean(param1)))
         {
            this.prizeIsClothing = [false,true,false,true,false,false,true,false,true,false,true,false,true,false];
            this.prizeClothingMode = ["","gender","","gender","","","gender","","hat","","gender","","",""];
            this.allowedForRandom = [1,0,1,0,1,0,0,1,0,1,0,0,0,1];
            this.toppingOptions = ["bun_heel","cheese","pepperjack","swiss","lettuce","tomato","patty","onion","onionring","pickle","bun_top"];
         }
         this.toppingHeights = [7,5,5,5,8,8,9,8,9,8,1];
         super(param1,param2);
      }
      
      override public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MiniGameBurgerzilla = this;
         _loc1_.clip = new minigameBurgerzillaMC();
         _loc1_.container.addChild(_loc1_.clip);
         if(_loc2_ || _loc2_)
         {
            _loc1_.screen.setTitle("Burgerzilla");
            _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
            if(_loc3_)
            {
            }
            §§goto(addr109);
         }
         _loc1_.stackedParts = new Vector.<MovieClip>();
         _loc1_.fallingParts = new Vector.<MovieClip>();
         _loc1_.worker = new Worker(_loc1_.screen.gameObj,_loc1_.clip.worker.inside,_loc1_.screen.gameObj.workerData,0,0,0.7);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.worker.playAnimation("burgerzilla_stand");
            _loc1_.reset();
         }
         addr109:
      }
      
      public function reset(param1:MouseEvent = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:MiniGameBurgerzilla = this;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            _loc2_.decideDifficulty();
            if(!(_loc5_ && Boolean(param1)))
            {
               _loc3_ = 0;
            }
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() >= _loc2_.fallingParts.length)
               {
                  _loc2_.fallingParts = null;
                  _loc2_.fallingParts = new Vector.<MovieClip>();
                  §§push(0);
                  if(_loc4_ || Boolean(this))
                  {
                     break;
                  }
                  loop5:
                  while(true)
                  {
                     if(§§pop() < _loc2_.allowedMisses)
                     {
                        _loc2_.clip["drop_" + _loc3_].visible = true;
                        _loc2_.clip["drop_" + _loc3_].gotoAndStop(1);
                     }
                     else
                     {
                        _loc2_.clip["drop_" + _loc3_].visible = false;
                     }
                     addr163:
                     while(true)
                     {
                        _loc3_++;
                        addr164:
                        while(true)
                        {
                           §§push(_loc3_);
                           addr165:
                           while(§§pop() < 5)
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 continue loop5;
                              }
                           }
                           _loc2_.currentMisses = 0;
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              _loc2_.clip.misses_txt.text = "Missed 0";
                              if(!_loc5_)
                              {
                                 _loc2_.currentStackHeight = 0;
                                 if(_loc4_)
                                 {
                                    _loc2_.dropTimer = 0;
                                    _loc2_.clip.line.y = _loc2_.targetHeight;
                                 }
                                 addr203:
                                 _loc2_.isDropping = true;
                                 _loc2_.clip.worker.stackholder.y = 0;
                              }
                              _loc2_.shouldFollow = true;
                              if(_loc4_)
                              {
                                 §§goto(addr203);
                              }
                              _loc2_.clip.worker.x = 640;
                              _loc2_.isIntro = true;
                              addr238:
                              _loc2_.introTimer = 0;
                              return;
                              addr223:
                           }
                           addr220:
                           _loc2_.raiseTimer = 0;
                           §§goto(addr223);
                        }
                     }
                  }
               }
               else
               {
                  _loc2_.fallingParts[_loc3_].parent.removeChild(_loc2_.fallingParts[_loc3_]);
                  _loc3_++;
                  if(_loc4_)
                  {
                     continue;
                  }
               }
               _loc2_.isDroppingPlate = false;
               if(_loc4_)
               {
                  _loc2_.isRaisingPlate = false;
                  §§goto(addr220);
               }
               §§goto(addr238);
            }
            break;
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && Boolean(this)))
            {
               if(§§pop() < _loc2_.stackedParts.length)
               {
                  continue;
               }
               _loc2_.stackedParts = null;
               if(_loc4_ || Boolean(_loc3_))
               {
                  _loc2_.stackedParts = new Vector.<MovieClip>();
                  §§push(0);
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr165);
               }
               §§goto(addr164);
            }
            break;
            _loc2_.stackedParts[_loc3_].parent.removeChild(_loc2_.stackedParts[_loc3_]);
            _loc3_++;
         }
         _loc3_ = §§pop();
         if(!_loc5_)
         {
            §§goto(addr164);
         }
         §§goto(addr163);
      }
      
      public function decideDifficulty() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MiniGameBurgerzilla = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         §§push(_loc2_);
         if(_loc3_ || Boolean(this))
         {
            if(§§pop() < this.prizeSKUs.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc1_);
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().whichDifficulty = §§pop();
                  addr63:
                  §§push(_loc1_.whichDifficulty);
                  §§push(1);
                  if(_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc1_.dropTimerInterval = 35;
                           _loc1_.dropTimerMax = 40;
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.targetHeight = 280;
                              _loc1_.allowedMisses = 4;
                           }
                        }
                        else
                        {
                           addr196:
                           _loc1_.allowedMisses = 3;
                           if(!_loc3_)
                           {
                              addr304:
                              _loc1_.allowedMisses = 2;
                           }
                           else
                           {
                              addr201:
                           }
                        }
                     }
                     else
                     {
                        §§push(_loc1_.whichDifficulty);
                        if(_loc3_)
                        {
                           if(§§pop() == 2)
                           {
                              if(!_loc4_)
                              {
                                 _loc1_.dropTimerInterval = 30;
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    _loc1_.dropTimerMax = 40;
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       _loc1_.targetHeight = 260;
                                       _loc1_.allowedMisses = 4;
                                    }
                                    else
                                    {
                                       addr288:
                                       _loc1_.dropTimerInterval = 14;
                                       _loc1_.dropTimerMax = 16;
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                          addr301:
                                          _loc1_.targetHeight = 150;
                                          §§goto(addr304);
                                       }
                                       else
                                       {
                                          addr340:
                                          _loc1_.targetHeight = 250;
                                          _loc1_.allowedMisses = 5;
                                       }
                                    }
                                 }
                                 §§goto(addr304);
                              }
                              else
                              {
                                 addr318:
                                 _loc1_.targetHeight = 150;
                                 _loc1_.allowedMisses = 1;
                              }
                           }
                           else
                           {
                              §§push(_loc1_.whichDifficulty);
                           }
                           addr206:
                           _loc1_.dropTimerInterval = 20;
                           _loc1_.dropTimerMax = 28;
                           _loc1_.targetHeight = 220;
                           _loc1_.allowedMisses = 3;
                           if(!(_loc3_ || Boolean(_loc2_)))
                           {
                              addr255:
                              _loc1_.dropTimerInterval = 15;
                              _loc1_.dropTimerMax = 20;
                              _loc1_.targetHeight = 170;
                              if(!(_loc3_ || Boolean(_loc1_)))
                              {
                                 §§goto(addr304);
                              }
                           }
                        }
                        §§push(3);
                     }
                     §§goto(addr346);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc1_.dropTimerInterval = 25;
                     }
                     _loc1_.dropTimerMax = 35;
                     _loc1_.targetHeight = 250;
                     _loc1_.allowedMisses = 3;
                  }
                  else
                  {
                     §§push(_loc1_.whichDifficulty);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop() == 4)
                        {
                           _loc1_.dropTimerInterval = 25;
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              _loc1_.dropTimerMax = 30;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 _loc1_.targetHeight = 240;
                                 §§goto(addr196);
                              }
                              else
                              {
                                 addr240:
                                 _loc1_.targetHeight = 200;
                                 if(_loc3_)
                                 {
                                    _loc1_.allowedMisses = 3;
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr301);
                                 }
                              }
                              §§goto(addr304);
                           }
                           §§goto(addr201);
                        }
                        else
                        {
                           §§push(_loc1_.whichDifficulty);
                        }
                     }
                     if(§§pop() == 5)
                     {
                        §§goto(addr206);
                     }
                     else
                     {
                        §§push(_loc1_.whichDifficulty);
                        if(_loc3_)
                        {
                        }
                        addr311:
                        if(§§pop() == 14)
                        {
                           _loc1_.dropTimerInterval = 13;
                           _loc1_.dropTimerMax = 15;
                           §§goto(addr318);
                        }
                        else
                        {
                           _loc1_.dropTimerInterval = 45;
                           if(!_loc4_)
                           {
                              _loc1_.dropTimerMax = 60;
                           }
                           §§goto(addr340);
                        }
                     }
                  }
                  §§goto(addr346);
               }
               _loc1_.allowedMisses = 2;
               §§goto(addr346);
            }
            else
            {
               _loc1_.whichDifficulty = Math.ceil(Math.random() * 14);
               if(_loc3_)
               {
                  §§goto(addr63);
               }
            }
            §§goto(addr346);
         }
         if(§§pop() <= 8)
         {
            if(!_loc4_)
            {
               _loc1_.dropTimerInterval = 20;
               _loc1_.dropTimerMax = 25;
               §§goto(addr240);
            }
            §§goto(addr346);
         }
         else
         {
            if(_loc1_.whichDifficulty <= 11)
            {
               §§goto(addr255);
            }
            else
            {
               §§push(_loc1_.whichDifficulty);
               if(_loc3_)
               {
                  §§push(13);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        §§goto(addr288);
                     }
                     else
                     {
                        §§push(_loc1_.whichDifficulty);
                     }
                  }
               }
               §§goto(addr311);
            }
         }
         §§goto(addr340);
      }
      
      public function dropNewTopping(param1:String = "any", param2:Number = -1) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:MiniGameBurgerzilla = this;
         var _loc4_:* = _loc3_.toppingOptions[Math.floor(Math.random() * (_loc3_.toppingOptions.length - 1))];
         if(_loc13_ || Boolean(param2))
         {
            §§push(param1);
            if(!_loc12_)
            {
               if(§§pop() != "any")
               {
                  if(!_loc12_)
                  {
                     §§push(param1);
                     if(!_loc12_)
                     {
                        §§push(§§pop());
                        if(_loc13_)
                        {
                        }
                        addr64:
                        var _loc5_:* = §§pop();
                        var _loc6_:Class = getDefinitionByName(_loc5_) as Class;
                        var _loc7_:MovieClip = new _loc6_() as MovieClip;
                        _loc7_.mouseEnabled = false;
                        _loc7_.mouseChildren = false;
                        if(param2 > -1)
                        {
                           if(_loc13_)
                           {
                              _loc7_.x = param2;
                           }
                           addr279:
                           _loc3_.lastDropX = _loc7_.x;
                           §§goto(addr283);
                        }
                        else
                        {
                           §§push(_loc3_.minDropX);
                           if(_loc13_ || Boolean(param1))
                           {
                              _loc8_ = §§pop();
                              _loc9_ = _loc3_.maxDropX;
                              if(!_loc12_)
                              {
                                 _loc10_ = _loc8_ + Math.round(Math.random() * (_loc9_ - _loc8_));
                                 if(!_loc12_)
                                 {
                                    §§push(200 - Math.min(_loc3_.currentStackHeight / 100,1) * 100);
                                    if(_loc12_)
                                    {
                                    }
                                    addr201:
                                    §§push(§§pop());
                                    if(!_loc12_)
                                    {
                                       _loc10_ = §§pop();
                                       addr205:
                                       addr206:
                                       if(_loc10_ < _loc8_)
                                       {
                                          if(_loc12_)
                                          {
                                          }
                                          addr283:
                                          return;
                                       }
                                       §§push(_loc10_);
                                       if(_loc13_ || Boolean(_loc3_))
                                       {
                                          addr229:
                                          if(§§pop() > _loc9_)
                                          {
                                             if(_loc13_)
                                             {
                                             }
                                          }
                                       }
                                       addr238:
                                       _loc7_.x = _loc10_;
                                    }
                                    addr237:
                                    _loc10_ = §§pop();
                                    addr236:
                                    §§goto(addr238);
                                 }
                                 addr211:
                                 _loc10_ = _loc8_;
                                 if(_loc13_ || Boolean(this))
                                 {
                                 }
                                 §§goto(addr238);
                              }
                              §§push(_loc9_);
                              if(_loc13_)
                              {
                                 §§goto(addr236);
                              }
                              §§goto(addr237);
                           }
                           §§push(§§pop());
                           if(_loc13_ || Boolean(param1))
                           {
                              _loc11_ = §§pop();
                              §§push(_loc10_);
                              if(_loc13_)
                              {
                                 §§push(_loc3_.lastDropX);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc12_)
                                    {
                                    }
                                    §§goto(addr201);
                                 }
                                 addr190:
                                 if(§§pop() < §§pop() * -1)
                                 {
                                    if(!_loc12_)
                                    {
                                       §§push(_loc3_.lastDropX - _loc11_);
                                       if(_loc13_)
                                       {
                                          §§goto(addr201);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr279);
                                 }
                                 §§goto(addr205);
                              }
                              if(§§pop() > _loc11_)
                              {
                                 if(!_loc12_)
                                 {
                                    _loc10_ = _loc3_.lastDropX + _loc11_;
                                    if(_loc12_)
                                    {
                                    }
                                    §§goto(addr279);
                                 }
                                 §§goto(addr205);
                              }
                              else
                              {
                                 §§push(_loc10_);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() - _loc3_.lastDropX);
                                    if(!(_loc12_ && Boolean(this)))
                                    {
                                       §§goto(addr190);
                                       §§push(_loc11_);
                                    }
                                    §§goto(addr211);
                                 }
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr206);
                        }
                        if(!(_loc12_ && Boolean(this)))
                        {
                           _loc7_.shouldRotateDir = 0;
                           _loc3_.fallingParts.push(_loc7_);
                           _loc3_.clip.holder.addChild(_loc7_);
                        }
                        §§goto(addr279);
                     }
                  }
               }
            }
            _loc4_ = §§pop();
         }
         §§goto(addr64);
         §§push("minigame_burgerzilla_" + _loc4_);
      }
      
      public function checkSuccess() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameBurgerzilla = this;
         if(_loc6_)
         {
            if(!_loc1_.isDroppingPlate)
            {
               if(!_loc5_)
               {
                  if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
                  {
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                           if(_loc6_)
                           {
                           }
                        }
                     }
                     addr92:
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
                           _loc4_ = Math.floor(Math.random() * _loc2_.length);
                           if(_loc6_)
                           {
                              _loc1_.skuToWin = _loc2_[_loc4_];
                              if(_loc6_)
                              {
                                 _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                              }
                              break;
                           }
                        }
                        else
                        {
                           if(_loc1_.allowedForRandom[_loc3_] != 1)
                           {
                              continue;
                           }
                           _loc2_.push(_loc1_.prizeSKUs[_loc3_]);
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              continue;
                           }
                        }
                     }
                     while(_loc3_++, !_loc5_);
                     
                     _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                  }
                  _loc1_.amountToWin = 1;
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     _loc1_.screen.gameObj.soundManager.playSound("customer_happy.wav");
                     if(!(_loc6_ || Boolean(_loc2_)))
                     {
                        addr210:
                        _loc1_.amountToWin = 0;
                        if(_loc6_ || Boolean(this))
                        {
                        }
                     }
                  }
                  §§goto(addr235);
               }
            }
            else
            {
               _loc1_.skuToWin = null;
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§goto(addr210);
               }
            }
            _loc1_.skuIsClothing = false;
            if(!_loc5_)
            {
               _loc1_.skuClothingMode = "";
            }
            addr235:
            return;
         }
         _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
         §§goto(addr92);
      }
      
      override public function updateScreen() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:MovieClip = null;
         var _loc8_:* = NaN;
         var _loc1_:MiniGameBurgerzilla = this;
         var _loc3_:Number = _loc1_.clip.mouseX;
         if(!_loc11_)
         {
            _loc1_.clip.dot.x = _loc1_.clip.mouseX;
            §§push(_loc1_.isIntro);
            if(_loc12_)
            {
               if(§§pop())
               {
                  if(_loc12_)
                  {
                  }
                  addr329:
                  _loc1_.clip.worker.x += _loc6_;
                  addr399:
                  if(!_loc11_)
                  {
                     addr343:
                     addr341:
                     §§push(!_loc1_.isDroppingPlate);
                     if(!_loc11_)
                     {
                        addr352:
                        addr347:
                        if(§§pop() && _loc1_.isRaisingPlate)
                        {
                           _loc1_.clip.worker.y = _loc1_.workerNormalY + _loc1_.displacementRange * Math.sin(_loc1_.clip.worker.x / 20);
                           if(_loc12_)
                           {
                              addr373:
                              _loc1_.clip.worker.stackholder.y = 0 - _loc1_.displacementRange / 2 * Math.sin(_loc1_.clip.worker.x / 20);
                           }
                        }
                        _loc2_ = int(_loc1_.fallingParts.length - 1);
                     }
                     §§goto(addr352);
                     §§push(!§§pop());
                  }
                  while(_loc2_ >= 0)
                  {
                     _loc7_ = _loc1_.fallingParts[_loc2_];
                     _loc7_.y += _loc1_.dropSpeed;
                     if(_loc7_.y > 480)
                     {
                        _loc1_.fallingParts.splice(_loc2_,1);
                        if(_loc1_.isDropping)
                        {
                           if(!(_loc11_ && Boolean(this)))
                           {
                              var _loc9_:* = _loc1_;
                              §§push(_loc9_.currentMisses);
                              if(_loc12_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc10_:* = §§pop();
                              if(!_loc11_)
                              {
                                 _loc9_.currentMisses = _loc10_;
                              }
                              if(_loc12_ || Boolean(_loc1_))
                              {
                                 §§push(_loc1_.currentMisses);
                                 if(!_loc11_)
                                 {
                                    if(§§pop() <= 5)
                                    {
                                       _loc1_.clip["drop_" + (_loc1_.currentMisses - 1)].gotoAndStop(2);
                                    }
                                    _loc1_.clip.misses_txt.text = String("Missed " + _loc1_.currentMisses);
                                    _loc1_.screen.gameObj.soundManager.playSound("dropticket.wav");
                                    if(!(_loc11_ && Boolean(_loc2_)))
                                    {
                                       addr786:
                                       §§push(_loc1_.currentMisses);
                                       if(_loc11_)
                                       {
                                          addr568:
                                          §§push(§§pop());
                                          if(!(_loc11_ && Boolean(_loc1_)))
                                          {
                                             _loc8_ = §§pop();
                                             §§push(_loc7_.y >= _loc8_);
                                             if(!(_loc11_ && Boolean(_loc1_)))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc11_ && Boolean(_loc1_)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(_loc7_.x > _loc1_.clip.worker.x - _loc1_.toppingWidth - _loc1_.edgeBuffer);
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc12_ || Boolean(this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(_loc7_.x < _loc1_.clip.worker.x + _loc1_.toppingWidth + _loc1_.edgeBuffer);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc11_ && Boolean(this)))
                                                         {
                                                            if(_loc7_.y < _loc8_ + 24)
                                                            {
                                                               if(_loc7_.x < _loc1_.clip.worker.x - _loc1_.toppingWidth)
                                                               {
                                                                  if(_loc12_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc7_.x = _loc1_.clip.worker.x - _loc1_.toppingWidth;
                                                                     if(_loc12_ || Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                     addr809:
                                                                     _loc1_.isDropping = false;
                                                                     addr812:
                                                                     _loc1_.checkSuccess();
                                                                     addr960:
                                                                     §§push(_loc2_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     continue;
                                                                     addr842:
                                                                     addr814:
                                                                  }
                                                                  addr940:
                                                                  _loc7_.shouldRotateDir = -1;
                                                                  _loc1_.screen.gameObj.soundManager.playSound("boing.wav");
                                                                  if(!(_loc12_ || Boolean(this)))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr960);
                                                                  addr943:
                                                               }
                                                               else if(_loc7_.x > _loc1_.clip.worker.x + _loc1_.toppingWidth)
                                                               {
                                                                  _loc7_.x = _loc1_.clip.worker.x + _loc1_.toppingWidth;
                                                                  if(_loc11_ && Boolean(_loc1_))
                                                                  {
                                                                  }
                                                                  addr861:
                                                                  §§push(Boolean(_loc1_.clip.worker.stackholder.hitTestPoint(_loc7_.x + _loc7_.width / 2,_loc7_.y,true)));
                                                                  if(!(_loc11_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else if(_loc7_.x < _loc1_.clip.worker.x)
                                                            {
                                                               if(!(_loc12_ || Boolean(_loc1_)))
                                                               {
                                                                  addr889:
                                                                  §§push(Boolean(_loc1_.clip.worker.stackholder.hitTestPoint(_loc7_.x - _loc7_.width / 2,_loc7_.y,true)));
                                                                  if(_loc11_)
                                                                  {
                                                                  }
                                                                  §§pop();
                                                                  if(_loc12_)
                                                                  {
                                                                     addr923:
                                                                     if(Boolean(_loc1_.clip.worker.stackholder.hitTestPoint(_loc7_.x,_loc7_.y,true)))
                                                                     {
                                                                        if(!(_loc11_ && Boolean(_loc2_)))
                                                                        {
                                                                           if(_loc7_.x < _loc1_.clip.worker.x)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§goto(addr940);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc7_.shouldRotateDir = 1;
                                                                           }
                                                                        }
                                                                        §§goto(addr940);
                                                                     }
                                                                  }
                                                                  §§goto(addr943);
                                                               }
                                                               §§goto(addr960);
                                                            }
                                                            else
                                                            {
                                                               _loc7_.shouldRotateDir = 1;
                                                            }
                                                            addr836:
                                                            _loc1_.screen.gameObj.soundManager.playSound("boing.wav");
                                                            §§goto(addr842);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc7_.y >= _loc8_);
                                                         §§push(_loc7_.y >= _loc8_);
                                                         if(!_loc11_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  addr853:
                                                                  §§pop();
                                                                  if(_loc12_ || Boolean(_loc1_))
                                                                  {
                                                                     §§goto(addr861);
                                                                  }
                                                                  §§goto(addr940);
                                                               }
                                                            }
                                                            §§goto(addr923);
                                                         }
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      §§goto(addr889);
                                                   }
                                                }
                                                addr908:
                                                if(!§§pop())
                                                {
                                                   §§goto(addr889);
                                                }
                                                §§goto(addr923);
                                             }
                                             §§goto(addr908);
                                             §§push(§§pop());
                                          }
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc12_)
                                          {
                                             _loc1_.shouldFollow = false;
                                             §§push(_loc1_.isDropping);
                                             if(!(_loc11_ && Boolean(_loc2_)))
                                             {
                                                if(§§pop())
                                                {
                                                   _loc1_.dropNewTopping("bun_top",_loc1_.clip.worker.x);
                                                   §§goto(addr809);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr853);
                                             }
                                             §§goto(addr809);
                                          }
                                          §§goto(addr889);
                                       }
                                       §§goto(addr814);
                                    }
                                    _loc7_.shouldRotateDir = -1;
                                    §§goto(addr836);
                                 }
                                 §§push(_loc1_.allowedMisses);
                                 if(_loc12_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       _loc1_.shouldFollow = false;
                                       if(_loc12_)
                                       {
                                          _loc1_.isDropping = false;
                                       }
                                       §§goto(addr812);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr786);
                                 }
                                 §§goto(addr809);
                              }
                              _loc7_.x -= _loc1_.clip.worker.x;
                              _loc7_.y = _loc8_ - _loc1_.clip.worker.y;
                              if(!(_loc11_ && Boolean(_loc3_)))
                              {
                                 _loc1_.clip.worker.stackholder.addChild(_loc7_);
                                 if(!(_loc11_ && Boolean(_loc2_)))
                                 {
                                    _loc1_.currentStackHeight += _loc7_.myHeight;
                                    _loc1_.stackedParts.push(_loc7_);
                                    _loc1_.fallingParts.splice(_loc2_,1);
                                    _loc1_.screen.gameObj.soundManager.playSound("droptopping.wav");
                                    §§push(_loc1_.clip.worker.y + _loc1_.holderY - _loc1_.currentStackHeight);
                                 }
                                 §§goto(addr809);
                              }
                              else
                              {
                                 §§goto(addr836);
                              }
                           }
                           _loc1_.worker.playAnimation("score_sad");
                           _loc1_.isDroppingPlate = true;
                           _loc1_.checkSuccess();
                           _loc1_.screen.gameObj.soundManager.playSound("minigame_burger_dropplate.wav");
                           if(_loc11_)
                           {
                           }
                        }
                     }
                     else if(_loc7_.shouldRotateDir != 0)
                     {
                        if(_loc12_ || Boolean(this))
                        {
                           _loc7_.rotation += _loc1_.rotateSpeed * _loc7_.shouldRotateDir;
                        }
                        else
                        {
                           §§goto(addr940);
                        }
                     }
                     else
                     {
                        §§push(_loc1_.clip.worker.y + _loc1_.holderY - _loc1_.currentStackHeight);
                        if(_loc12_ || Boolean(_loc3_))
                        {
                           §§goto(addr568);
                        }
                     }
                     §§goto(addr809);
                     §§push(_loc1_.targetHeight);
                  }
                  if(!_loc11_)
                  {
                     §§push(_loc1_.isDropping);
                     if(_loc12_)
                     {
                        §§push(false);
                        if(_loc12_ || Boolean(_loc1_))
                        {
                           §§push(§§pop() == §§pop());
                           §§push(§§pop() == §§pop());
                           if(_loc12_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc11_ && Boolean(_loc1_)))
                                 {
                                    §§pop();
                                    addr1117:
                                    if(!(_loc11_ && Boolean(this)))
                                    {
                                       §§push(_loc1_.fallingParts.length == 0);
                                    }
                                    _loc1_.clip.worker.stackholder.y -= 8;
                                    if(_loc11_)
                                    {
                                       addr1173:
                                       _loc1_.clip.worker.stackholder.y -= 2;
                                    }
                                    addr1238:
                                    _loc1_.worker.animateModel();
                                    addr1236:
                                    §§push(_loc1_.raiseTimer);
                                    if(!(_loc11_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr1295);
                                    }
                                    addr1262:
                                    addr1263:
                                    if(§§pop() == 0)
                                    {
                                       if(!(_loc11_ && Boolean(_loc3_)))
                                       {
                                          _loc1_.screen.gameObj.challengeManager.recordTagged("burgerzilla");
                                       }
                                    }
                                    _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
                                    addr1295:
                                    if(§§pop() == _loc1_.raiseTimerMax)
                                    {
                                       if(_loc12_ || Boolean(_loc1_))
                                       {
                                          Mouse.show();
                                          §§push(_loc1_.currentMisses);
                                       }
                                    }
                                    return;
                                    addr1185:
                                 }
                                 addr1058:
                                 if(§§pop())
                                 {
                                    if(!(_loc11_ && Boolean(_loc3_)))
                                    {
                                       _loc9_ = _loc1_;
                                       §§push(_loc9_.raiseTimer);
                                       if(_loc12_ || Boolean(_loc1_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc10_ = §§pop();
                                       if(!_loc11_)
                                       {
                                          _loc9_.raiseTimer = _loc10_;
                                       }
                                       §§push(_loc1_.raiseTimer);
                                       if(!_loc11_)
                                       {
                                          §§push(5);
                                          if(!_loc11_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                _loc1_.clip.worker.stackholder.y -= 10;
                                                addr1106:
                                                §§goto(addr1185);
                                             }
                                             else
                                             {
                                                §§push(_loc1_.raiseTimer);
                                                if(_loc12_)
                                                {
                                                }
                                             }
                                             §§goto(addr1262);
                                          }
                                          addr1114:
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc11_)
                                             {
                                             }
                                             §§goto(addr1117);
                                          }
                                          else
                                          {
                                             §§push(_loc1_.raiseTimer);
                                             if(!_loc11_)
                                             {
                                                §§push(6);
                                                if(!(_loc11_ && Boolean(_loc1_)))
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      _loc1_.clip.worker.stackholder.y -= 5;
                                                      if(_loc11_ && Boolean(_loc3_))
                                                      {
                                                      }
                                                      §§goto(addr1117);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc1_.raiseTimer);
                                                      if(_loc12_)
                                                      {
                                                         §§push(7);
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         §§goto(addr1263);
                                                      }
                                                   }
                                                   §§goto(addr1295);
                                                }
                                                addr1172:
                                                if(§§pop() == §§pop())
                                                {
                                                   §§goto(addr1173);
                                                }
                                                §§goto(addr1117);
                                             }
                                          }
                                          §§goto(addr1117);
                                       }
                                       §§push(5);
                                       if(!_loc11_)
                                       {
                                          §§goto(addr1114);
                                       }
                                       §§goto(addr1172);
                                    }
                                    else
                                    {
                                       addr1221:
                                       _loc1_.clip.worker.stackholder.y += 2 * _loc1_.raiseTimer;
                                    }
                                 }
                                 else
                                 {
                                    addr1188:
                                    if(_loc1_.isDroppingPlate)
                                    {
                                       _loc9_ = _loc1_;
                                       §§push(_loc9_.raiseTimer);
                                       if(_loc12_ || Boolean(_loc1_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc10_ = §§pop();
                                       if(_loc12_ || Boolean(this))
                                       {
                                          _loc9_.raiseTimer = _loc10_;
                                       }
                                       if(!(_loc11_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr1221);
                                       }
                                       §§goto(addr1117);
                                    }
                                 }
                                 §§goto(addr1236);
                              }
                              §§push(§§pop());
                              if(!(_loc11_ && Boolean(_loc2_)))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       §§pop();
                                       §§push(!_loc1_.isRaisingPlate);
                                       if(_loc11_ && Boolean(_loc3_))
                                       {
                                       }
                                       §§goto(addr1188);
                                    }
                                    §§goto(addr1058);
                                 }
                                 §§push(§§pop());
                              }
                           }
                        }
                        if(§§pop())
                        {
                           §§pop();
                           §§push(!_loc1_.isDroppingPlate);
                           if(_loc11_)
                           {
                           }
                           §§goto(addr1188);
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           _loc1_.isRaisingPlate = true;
                           if(_loc11_ && Boolean(this))
                           {
                           }
                           §§goto(addr1117);
                        }
                        §§goto(addr1106);
                     }
                     addr1056:
                     §§goto(addr1058);
                     §§push(_loc1_.isRaisingPlate);
                  }
                  §§push(_loc1_.worker);
                  if(!_loc11_)
                  {
                     §§pop().playAnimation("burgerzilla_lift");
                     §§goto(addr1056);
                  }
                  §§goto(addr1238);
                  addr293:
               }
               addr108:
               §§push(_loc1_.isIntro);
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  §§push(!§§pop());
                  if(_loc11_ && Boolean(_loc3_))
                  {
                  }
                  §§goto(addr343);
               }
               addr191:
               §§pop();
               if(!(_loc11_ && Boolean(_loc1_)))
               {
                  §§push(Math.random() < 0.2);
                  if(_loc12_)
                  {
                     addr205:
                     §§push(§§pop());
                     if(!_loc11_)
                     {
                        if(§§pop())
                        {
                        }
                        addr222:
                        if(§§pop())
                        {
                           _loc1_.dropNewTopping();
                           if(!_loc11_)
                           {
                              _loc1_.dropTimer = 0;
                           }
                           §§goto(addr349);
                        }
                        if(_loc1_.shouldFollow)
                        {
                        }
                        §§goto(addr341);
                     }
                     §§goto(addr347);
                  }
                  §§pop();
                  addr311:
                  addr309:
                  if(_loc12_ || Boolean(_loc1_))
                  {
                     addr221:
                     §§goto(addr222);
                     §§push(_loc1_.dropTimer >= _loc1_.dropTimerMax);
                  }
                  §§push(_loc1_.workerMaxSpeed * -1);
                  if(_loc12_ || Boolean(_loc3_))
                  {
                     §§push(§§pop());
                     if(_loc11_ && Boolean(this))
                     {
                     }
                     §§goto(addr352);
                  }
                  _loc6_ = §§pop();
                  §§goto(addr329);
               }
               addr233:
               §§push(Math.min(Math.max(_loc1_.minWorkerX,_loc3_),_loc1_.maxWorkerX));
               §§push(Math.min(Math.max(_loc1_.minWorkerX,_loc3_),_loc1_.maxWorkerX));
               if(_loc12_ || Boolean(_loc2_))
               {
                  _loc4_ = §§pop();
                  if(!(_loc11_ && Boolean(_loc2_)))
                  {
                     _loc5_ = §§pop() - _loc1_.clip.worker.x;
                     §§push(_loc5_ / _loc1_.workerSpeed);
                     if(_loc12_)
                     {
                        _loc6_ = §§pop();
                        §§push(_loc6_);
                     }
                     §§push(_loc1_.workerMaxSpeed);
                     if(_loc12_ || Boolean(this))
                     {
                        if(§§pop() > §§pop())
                        {
                           §§push(_loc1_.workerMaxSpeed);
                           if(!_loc11_)
                           {
                              §§push(§§pop());
                              if(_loc12_)
                              {
                                 _loc6_ = §§pop();
                                 §§goto(addr293);
                              }
                              else
                              {
                                 §§goto(addr311);
                              }
                           }
                           §§goto(addr352);
                        }
                        else
                        {
                           §§push(_loc6_);
                           if(_loc12_ || Boolean(_loc1_))
                           {
                              §§push(_loc1_.workerMaxSpeed);
                           }
                        }
                     }
                  }
                  §§goto(addr311);
               }
               if(§§pop() < §§pop() * -1)
               {
                  if(_loc12_)
                  {
                     §§goto(addr309);
                  }
                  §§goto(addr373);
               }
               §§goto(addr329);
            }
            §§push(§§pop());
            if(_loc12_)
            {
               if(§§pop())
               {
                  if(!(_loc11_ && Boolean(_loc1_)))
                  {
                     §§pop();
                     §§push(_loc1_.isDropping);
                     if(_loc11_ && Boolean(this))
                     {
                     }
                     §§goto(addr352);
                  }
                  §§goto(addr222);
               }
               if(§§pop())
               {
                  _loc9_ = _loc1_;
                  §§push(_loc9_.dropTimer);
                  if(_loc12_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc10_ = §§pop();
                  if(!_loc11_)
                  {
                     _loc9_.dropTimer = _loc10_;
                  }
                  if(!_loc11_)
                  {
                     §§push(_loc1_.dropTimer);
                     §§push(_loc1_.dropTimerInterval);
                     if(!(_loc11_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop() >= §§pop());
                        §§push(§§pop() >= §§pop());
                        if(_loc12_ || Boolean(_loc3_))
                        {
                        }
                        §§goto(addr352);
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr233);
               }
               §§goto(addr222);
            }
            if(§§pop())
            {
               §§goto(addr191);
            }
            §§goto(addr205);
         }
         _loc9_ = _loc1_;
         §§push(_loc9_.introTimer);
         if(_loc12_ || Boolean(this))
         {
            §§push(§§pop() + 1);
         }
         _loc10_ = §§pop();
         if(!(_loc11_ && Boolean(_loc2_)))
         {
            _loc9_.introTimer = _loc10_;
         }
         §§push(320);
         if(_loc12_)
         {
            _loc3_ = §§pop();
            if(_loc12_)
            {
               if(_loc1_.introTimer >= _loc1_.introTimerMax)
               {
                  _loc1_.isIntro = false;
               }
               §§goto(addr108);
            }
            _loc1_.isDropping = true;
            _loc1_.shouldFollow = true;
            _loc1_.dropNewTopping("bun_heel",320);
            if(!(_loc11_ && Boolean(this)))
            {
               §§goto(addr108);
            }
            §§goto(addr399);
         }
         §§goto(addr352);
      }
      
      override public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:MiniGameBurgerzilla = this;
         if(!_loc3_)
         {
            _loc1_.worker.destroy();
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.worker = null;
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_ = 0;
               }
            }
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || Boolean(_loc2_))
            {
               if(§§pop() >= _loc1_.fallingParts.length)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        break;
                     }
                     loop2:
                     while(§§pop() < _loc1_.stackedParts.length)
                     {
                        _loc1_.stackedParts[_loc2_].parent.removeChild(_loc1_.stackedParts[_loc2_]);
                        _loc2_++;
                        while(true)
                        {
                           continue loop2;
                           _loc1_.stackedParts[_loc2_].parent.removeChild(_loc1_.stackedParts[_loc2_]);
                           _loc2_++;
                        }
                     }
                  }
                  §§goto(addr128);
               }
               _loc1_.fallingParts[_loc2_].parent.removeChild(_loc1_.fallingParts[_loc2_]);
               _loc2_++;
               if(!_loc4_)
               {
                  _loc1_.fallingParts = null;
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc1_.stackedParts = null;
                     if(_loc4_)
                     {
                        _loc1_.container.removeChild(_loc1_.clip);
                     }
                  }
                  addr128:
                  _loc1_.clip = null;
               }
               continue;
               return;
            }
            break;
         }
         _loc2_ = §§pop();
         §§goto(addr96);
      }
   }
}

