package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getTimer;
   import wingGame.data.*;
   import wingGame.models.HotshotEnemy;
   
   public class MiniGameHotshot extends MiniGame
   {
      private static const _2PI:Number = 6.283185307179586;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(!(_loc2_ && _loc2_))
      {
         _2PI = Math.PI * 2;
      }
      
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var chilifeathersHit:Number = 0;
      
      public var whichDifficulty:Number = 1;
      
      public var isIntro:Boolean = true;
      
      public var earlyIntroTimer:Number = 0;
      
      public var earlyIntroMax:Number = 30;
      
      public var introTimer:Number = 0;
      
      public var introTimerMax:Number = 75;
      
      public var gameTimer:Number = 0;
      
      public var lastTime:Number = 0;
      
      public var splatMC:MovieClip;
      
      public var splatBMP:BitmapData;
      
      public var splatBitmap:Bitmap;
      
      public var enemiesHit:Number = 0;
      
      public var totalEnemies:Number = 0;
      
      public var needToHit:Number = 0;
      
      public var hittingSignDir:Number = 0;
      
      public var hitSignTime:Number = 0;
      
      public var hittingSign:Boolean = false;
      
      public var isDone:Boolean = false;
      
      public var doneTimer:Number = 0;
      
      public var doneTimerMax:Number = 45;
      
      public var enemies:Vector.<HotshotEnemy>;
      
      public var hitAmounts:Array;
      
      public var enemySets:Array;
      
      public function MiniGameHotshot(param1:MiniGameScreen, param2:MovieClip)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param2))
         {
            this.prizeSKUs = ["poster_tacomia","pants_06","furni_tacotable_small","belt_11","furni_tacotable_medium","wall30","shirt_06","furni_taco_cactus","body_backpack02","jacket_10","floor25","furni_tacotable_large","hat14","furni_taco_trophy"];
            if(_loc4_)
            {
               this.prizeIsClothing = [false,true,false,true,false,false,true,false,true,true,false,false,true,false];
               this.prizeClothingMode = ["","gender","","gender","","","gender","","","gender","","","hat",""];
               if(!_loc3_)
               {
                  this.allowedForRandom = [1,0,1,0,1,0,0,1,0,0,0,1,0,1];
                  if(_loc4_ || _loc3_)
                  {
                     this.hitAmounts = [0,10,11,10,10,12,15,13,11,11,15,15,22,19,21];
                  }
                  §§goto(addr3292);
               }
            }
         }
         §§push(this);
         §§push([]);
         if(!_loc3_)
         {
            §§push(null);
         }
         §§pop().enemySets = §§pop();
         if(_loc4_)
         {
            super(param1,param2);
         }
         addr3292:
      }
      
      override public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MiniGameHotshot = this;
         _loc1_.clip = new minigameHotshotMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Hotshot");
         _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         if(!_loc3_)
         {
            _loc1_.clip.reticule.mouseEnabled = false;
            _loc1_.clip.reticule.mouseChildren = false;
            _loc1_.clip.gun.mouseEnabled = false;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.clip.gun.mouseChildren = false;
               _loc1_.splatMC = new minigame_hotshot_wallsplat();
               if(_loc2_ || _loc2_)
               {
                  _loc1_.clip.particles.mouseEnabled = false;
                  if(_loc3_ && Boolean(this))
                  {
                  }
                  addr114:
                  _loc1_.clip.jet.mouseEnabled = false;
                  if(!_loc3_)
                  {
                     _loc1_.clip.jet.mouseChildren = false;
                     _loc1_.clip.jet.gotoAndStop(2);
                     _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickScreen);
                     addr131:
                     if(_loc2_)
                     {
                     }
                     §§goto(addr149);
                  }
               }
            }
            _loc1_.reset();
            addr149:
            return;
         }
         _loc1_.clip.particles.mouseChildren = false;
         if(!(_loc3_ && _loc2_))
         {
            §§goto(addr114);
         }
         §§goto(addr131);
      }
      
      public function reset(param1:MouseEvent = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:MiniGameHotshot = this;
         _loc2_.decideDifficulty();
         _loc2_.needToHit = _loc2_.hitAmounts[_loc2_.whichDifficulty];
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            _loc2_.clip.counter.inside.num_txt.text = String(_loc2_.needToHit);
            _loc2_.clip.counter.inside.rotationX = 0;
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               _loc2_.clip.counter.inside.rotationY = 0;
               if(_loc4_)
               {
                  _loc2_.clip.counter.inside.rotationZ = 0;
                  _loc2_.clip.counter.shadow.rotationX = 0;
                  _loc2_.clip.counter.shadow.rotationY = 0;
                  _loc2_.clip.counter.shadow.rotationZ = 0;
                  _loc2_.clip.gotoAndStop(_loc2_.whichDifficulty);
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.clip.ground.gotoAndStop((_loc2_.whichDifficulty - 1) % 3 + 1);
                     if(_loc2_.splatBMP)
                     {
                        if(_loc4_)
                        {
                           _loc2_.splatBMP.fillRect(_loc2_.splatBMP.rect,0);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr210);
                     }
                     else
                     {
                        _loc2_.splatBMP = new BitmapData(640,480,true,0);
                        if(!_loc5_)
                        {
                           _loc2_.splatBitmap = new Bitmap(_loc2_.splatBMP);
                           _loc2_.clip.bgsplatholder.addChild(_loc2_.splatBitmap);
                           _loc2_.clip.bgsplatholder.mouseEnabled = false;
                           _loc2_.clip.bgsplatholder.mouseChildren = false;
                           if(_loc5_ && Boolean(param1))
                           {
                           }
                        }
                     }
                     addr192:
                     _loc2_.isIntro = true;
                  }
               }
            }
            _loc2_.introTimer = 0;
            if(_loc4_)
            {
               _loc2_.gameTimer = 0;
               if(_loc4_ || Boolean(param1))
               {
                  addr210:
                  _loc2_.enemiesHit = 0;
                  if(_loc5_)
                  {
                  }
                  §§goto(addr215);
               }
               addr215:
               _loc2_.hittingSignDir = 0;
               _loc2_.hittingSign = false;
               if(!_loc5_)
               {
                  _loc2_.clip.hits_txt.text = "Hit 0/" + _loc2_.totalEnemies;
                  addr238:
                  _loc2_.clip.need_txt.text = "Need " + _loc2_.needToHit;
               }
               return;
            }
            §§goto(addr238);
         }
         _loc2_.clip.gun.particles.gotoAndStop(_loc2_.clip.gun.particles.totalFrames);
         if(!_loc5_)
         {
            _loc2_.setupEnemies();
            §§goto(addr192);
         }
         §§goto(addr238);
      }
      
      public function setupEnemies() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:HotshotEnemy = null;
         var _loc1_:MiniGameHotshot = this;
         var _loc2_:* = 0;
         if(!_loc6_)
         {
            if(_loc1_.enemies != null)
            {
               if(_loc7_ || Boolean(this))
               {
               }
               §§goto(addr37);
            }
            _loc1_.enemies = null;
            §§goto(addr76);
         }
         _loc2_ = 0;
         addr37:
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_ || Boolean(_loc2_))
            {
               if(§§pop() < _loc1_.enemies.length)
               {
                  _loc1_.enemies[_loc2_].destroy();
                  if(_loc7_)
                  {
                     _loc1_.enemies[_loc2_] = null;
                     if(_loc7_ || Boolean(_loc1_))
                     {
                     }
                     §§goto(addr102);
                  }
                  _loc2_++;
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc1_.enemies = new Vector.<HotshotEnemy>();
               _loc1_.totalEnemies = 0;
               addr76:
               if(_loc7_ || Boolean(_loc1_))
               {
                  _loc1_.enemiesHit = 0;
               }
               §§goto(addr102);
            }
            break;
         }
         _loc2_ = §§pop();
         if(!_loc6_)
         {
            §§goto(addr164);
         }
         addr102:
         §§push(0);
         if(_loc7_)
         {
            break loop0;
         }
         loop2:
         while(§§pop() < _loc1_.enemySets[_loc1_.whichDifficulty].length)
         {
            _loc3_ = _loc1_.enemySets[_loc1_.whichDifficulty][_loc2_].clone(_loc1_);
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               _loc1_.enemies.push(_loc3_);
               addr164:
               if(_loc7_)
               {
               }
               while(true)
               {
                  continue loop2;
               }
               addr164:
            }
            var _loc4_:* = _loc1_;
            §§push(_loc4_.totalEnemies);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               _loc4_.totalEnemies = _loc5_;
            }
            if(_loc7_)
            {
               _loc2_++;
            }
            §§goto(addr164);
         }
      }
      
      public function removeEnemy(param1:HotshotEnemy) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MiniGameHotshot = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.enemies.length)
         {
            if(_loc2_.enemies[_loc3_] == param1)
            {
               if(_loc4_)
               {
                  _loc2_.enemies[_loc3_].destroy();
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     _loc2_.enemies.splice(_loc3_,1);
                     if(_loc5_)
                     {
                     }
                     break;
                  }
               }
               break;
            }
            _loc3_++;
            if(!(_loc4_ || Boolean(this)))
            {
               break;
            }
         }
      }
      
      public function addSplat(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:MiniGameHotshot = this;
         _loc4_.splatMC.x = param1;
         if(_loc5_)
         {
            _loc4_.splatMC.y = param2;
            if(_loc6_ && Boolean(param2))
            {
            }
            §§goto(addr93);
         }
         _loc4_.splatMC.gotoAndStop(Math.ceil(Math.random() * _loc4_.splatMC.totalFrames));
         _loc4_.splatMC.scaleX = 0.5 + Math.random() * 0.5;
         _loc4_.splatMC.scaleY = _loc4_.splatMC.scaleX;
         _loc4_.splatMC.rotation = Math.random() * 360;
         if(_loc5_)
         {
            if(param3)
            {
            }
            §§goto(addr93);
         }
         _loc4_.splatBMP.draw(_loc4_.splatMC,_loc4_.splatMC.transform.matrix);
         addr93:
      }
      
      public function decideDifficulty() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MiniGameHotshot = this;
         var _loc2_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ < this.prizeSKUs.length)
            {
               if(_loc4_)
               {
                  §§push(_loc1_);
                  §§push(_loc2_);
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().whichDifficulty = §§pop();
                  if(_loc4_ || Boolean(_loc1_))
                  {
                  }
               }
            }
            else
            {
               _loc1_.whichDifficulty = Math.ceil(Math.random() * 14);
            }
            §§goto(addr83);
         }
         addr83:
      }
      
      public function checkSuccess() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameHotshot = this;
         if(_loc5_)
         {
            if(_loc1_.enemiesHit >= _loc1_.needToHit)
            {
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
                  {
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
                        if(_loc5_)
                        {
                           _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                           if(_loc5_ || Boolean(this))
                           {
                           }
                        }
                     }
                     addr98:
                  }
                  else
                  {
                     _loc2_ = [];
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        _loc3_ = 0;
                     }
                     do
                     {
                        if(_loc3_ >= _loc1_.prizeSKUs.length)
                        {
                           _loc4_ = Math.floor(Math.random() * _loc2_.length);
                           break;
                        }
                        if(_loc1_.allowedForRandom[_loc3_] == 1)
                        {
                           _loc2_.push(_loc1_.prizeSKUs[_loc3_]);
                        }
                        _loc3_++;
                     }
                     while(_loc5_);
                     
                     _loc1_.skuToWin = _loc2_[_loc4_];
                     if(!(_loc6_ && Boolean(this)))
                     {
                        _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                     }
                     _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                  }
                  _loc1_.amountToWin = 1;
                  _loc1_.screen.gameObj.soundManager.playSound("customer_happy.wav");
               }
            }
            else
            {
               _loc1_.screen.gameObj.soundManager.playSound("customer_decent.wav");
               if(_loc1_.enemiesHit > 0)
               {
                  §§push(_loc1_);
                  §§push(_loc1_.enemiesHit);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * 10);
                  }
                  §§pop().amountToWin = §§pop();
                  _loc1_.skuToWin = "tips";
                  _loc1_.skuIsClothing = false;
                  _loc1_.skuClothingMode = "";
               }
               else
               {
                  _loc1_.skuToWin = null;
                  _loc1_.amountToWin = 0;
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     _loc1_.skuIsClothing = false;
                     if(_loc6_ && Boolean(this))
                     {
                     }
                  }
                  _loc1_.skuClothingMode = "";
               }
            }
            return;
         }
         _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
         §§goto(addr98);
      }
      
      override public function updateScreen() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc1_:MiniGameHotshot = this;
         _loc1_.updateGun();
         §§push(_loc1_.isIntro);
         if(_loc14_)
         {
            if(§§pop())
            {
               if(_loc14_)
               {
                  §§push(_loc1_.earlyIntroTimer);
                  if(_loc14_)
                  {
                     if(§§pop() < _loc1_.earlyIntroMax)
                     {
                        var _loc11_:* = _loc1_;
                        §§push(_loc11_.earlyIntroTimer);
                        if(!_loc13_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc12_:* = §§pop();
                        if(!_loc13_)
                        {
                           _loc11_.earlyIntroTimer = _loc12_;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc1_;
                        §§push(_loc11_.introTimer);
                        if(!(_loc13_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc12_ = §§pop();
                        if(!(_loc13_ && Boolean(_loc1_)))
                        {
                           _loc11_.introTimer = _loc12_;
                        }
                        if(!(_loc13_ && Boolean(_loc2_)))
                        {
                           §§push(20);
                           if(_loc14_ || Boolean(this))
                           {
                              _loc3_ = §§pop();
                              if(_loc14_)
                              {
                              }
                              addr119:
                              §§push(_loc1_.introTimer);
                              if(!(_loc13_ && Boolean(_loc2_)))
                              {
                                 if(§§pop() <= _loc3_)
                                 {
                                    _loc1_.clip.counter.y = _loc1_.easeOut(_loc4_,-200,317,_loc3_,15,20);
                                    if(_loc14_)
                                    {
                                       addr195:
                                       §§push(_loc1_.hittingSign);
                                       if(!(_loc13_ && Boolean(this)))
                                       {
                                          addr758:
                                          if(§§pop())
                                          {
                                             §§push(600);
                                             if(_loc13_)
                                             {
                                             }
                                             addr295:
                                             §§push(§§pop());
                                          }
                                          §§push(_loc1_.introTimer);
                                          §§push(_loc1_.introTimerMax);
                                          if(!_loc13_)
                                          {
                                             addr764:
                                             if(§§pop() >= §§pop())
                                             {
                                                addr765:
                                                _loc1_.hittingSignDir = 0;
                                                _loc1_.clip.counter.y = -200;
                                                _loc1_.isIntro = false;
                                             }
                                          }
                                          else
                                          {
                                             addr817:
                                             if(§§pop() == §§pop())
                                             {
                                                addr946:
                                                §§push(_loc1_.chilifeathersHit);
                                                if(!(_loc13_ && Boolean(_loc1_)))
                                                {
                                                   addr827:
                                                   §§push(0);
                                                   if(_loc14_ || Boolean(_loc2_))
                                                   {
                                                      addr835:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr836:
                                                         §§push(§_-5i§);
                                                         §§push("Hit " + _loc1_.chilifeathersHit);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop() + " Chilifeathers");
                                                         }
                                                         §§pop().§_-CE§(§§pop());
                                                         if(_loc14_ || Boolean(_loc3_))
                                                         {
                                                         }
                                                      }
                                                      addr868:
                                                      _loc1_.screen.finishMiniGame(_loc1_.skuToWin,_loc1_.amountToWin,_loc1_.skuIsClothing,_loc1_.skuClothingMode);
                                                   }
                                                   else
                                                   {
                                                      addr902:
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                   addr942:
                                                   §§push(_loc1_.enemies.length - 1);
                                                }
                                                _loc2_ = §§pop();
                                             }
                                          }
                                          §§goto(addr1003);
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             §§pop();
                                             if(_loc14_)
                                             {
                                                §§push(_loc1_.isDone);
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             addr916:
                                             _loc1_.checkSuccess();
                                             addr918:
                                             _loc1_.isDone = true;
                                             addr921:
                                          }
                                          §§goto(addr1003);
                                       }
                                       else
                                       {
                                          _loc11_ = _loc1_;
                                          §§push(_loc11_.gameTimer);
                                          if(_loc14_ || Boolean(_loc3_))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc12_ = §§pop();
                                          if(_loc14_)
                                          {
                                             _loc11_.gameTimer = _loc12_;
                                          }
                                          §§goto(addr942);
                                       }
                                    }
                                    _loc1_.screen.gameObj.challengeManager.recordTagged("chilifeather",_loc1_.chilifeathersHit);
                                    if(_loc14_ || Boolean(this))
                                    {
                                       §§goto(addr868);
                                    }
                                    addr1003:
                                    return;
                                 }
                                 §§push(_loc1_.introTimer);
                                 if(_loc14_)
                                 {
                                    §§push(_loc1_.introTimerMax);
                                    §§push(_loc3_);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc13_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc13_)
                                             {
                                             }
                                             addr512:
                                             _loc1_.clip.counter.shadow.rotationY = _loc1_.quadEaseIn(_loc9_,_loc8_ / 2,0 - _loc8_ / 2,_loc10_);
                                             §§goto(addr758);
                                          }
                                          §§goto(addr195);
                                       }
                                       addr423:
                                       §§push(2);
                                       if(_loc14_)
                                       {
                                          addr674:
                                          §§push(§§pop() / §§pop());
                                          if(_loc14_)
                                          {
                                             addr429:
                                             if(§§pop() <= §§pop())
                                             {
                                                §§push(_loc6_);
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc5_);
                                                   §§push(4);
                                                   if(_loc14_)
                                                   {
                                                      §§push(§§pop() - §§pop() / §§pop());
                                                      if(!(_loc13_ && Boolean(_loc2_)))
                                                      {
                                                         _loc9_ = §§pop();
                                                         _loc1_.clip.counter.inside.rotationX = _loc1_.quadEaseIn(_loc9_,_loc7_,0 - _loc7_,_loc10_);
                                                         _loc1_.clip.counter.shadow.rotationX = _loc1_.quadEaseIn(_loc9_,_loc7_ / 2,0 - _loc7_ / 2,_loc10_);
                                                         if(_loc14_ || Boolean(_loc1_))
                                                         {
                                                            _loc1_.clip.counter.inside.rotationY = _loc1_.quadEaseIn(_loc9_,_loc8_,0 - _loc8_,_loc10_);
                                                            if(_loc14_ || Boolean(_loc3_))
                                                            {
                                                               §§goto(addr512);
                                                            }
                                                            §§goto(addr765);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr538:
                                                         §§push(0.75);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc14_ || Boolean(_loc2_))
                                                            {
                                                            }
                                                            addr675:
                                                            §§push(§§pop() - §§pop() * §§pop());
                                                            if(_loc14_)
                                                            {
                                                            }
                                                            §§goto(addr946);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§goto(addr836);
                                                   }
                                                }
                                                addr563:
                                                §§push(_loc5_);
                                                if(_loc14_ || Boolean(_loc2_))
                                                {
                                                   §§push(2);
                                                }
                                                §§goto(addr764);
                                             }
                                             else
                                             {
                                                §§push(_loc6_);
                                                if(_loc14_ || Boolean(_loc1_))
                                                {
                                                   §§goto(addr538);
                                                }
                                             }
                                             addr901:
                                             §§goto(addr902);
                                             §§push(420);
                                          }
                                          §§goto(addr675);
                                          §§push(_loc5_);
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc14_ || Boolean(this))
                                       {
                                          §§goto(addr538);
                                       }
                                       §§goto(addr817);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc13_ && Boolean(_loc2_)))
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc14_)
                                             {
                                                §§goto(addr563);
                                             }
                                             else
                                             {
                                                addr666:
                                                §§push(0.75);
                                                if(!(_loc13_ && Boolean(_loc1_)))
                                                {
                                                   §§goto(addr674);
                                                }
                                             }
                                             §§goto(addr764);
                                          }
                                          addr681:
                                          _loc1_.clip.counter.inside.rotationX = _loc1_.quadEaseIn(_loc9_,0 - _loc7_ / 3,_loc7_ / 3,_loc10_);
                                          if(_loc14_ || Boolean(_loc3_))
                                          {
                                             _loc1_.clip.counter.shadow.rotationX = _loc1_.quadEaseIn(_loc9_,0 - _loc7_ / 6,_loc7_ / 6,_loc10_);
                                             if(_loc14_)
                                             {
                                                _loc1_.clip.counter.inside.rotationY = _loc1_.quadEaseIn(_loc9_,0 - _loc8_ / 3,_loc8_ / 3,_loc10_);
                                                _loc1_.clip.counter.shadow.rotationY = _loc1_.quadEaseIn(_loc9_,0 - _loc8_ / 6,_loc8_ / 6,_loc10_);
                                             }
                                             §§goto(addr921);
                                          }
                                          §§goto(addr765);
                                       }
                                       else if(_loc6_ <= _loc5_)
                                       {
                                          if(_loc14_ || Boolean(this))
                                          {
                                             §§goto(addr666);
                                             §§push(_loc6_);
                                          }
                                          else
                                          {
                                             addr899:
                                             §§goto(addr901);
                                             §§push(_loc1_.gameTimer);
                                          }
                                          §§goto(addr902);
                                       }
                                       §§goto(addr758);
                                    }
                                    §§goto(addr538);
                                 }
                                 _loc9_ = §§pop();
                                 if(_loc14_ || Boolean(_loc1_))
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc13_ && Boolean(this)))
                                    {
                                       §§push(4);
                                       if(_loc14_ || Boolean(_loc1_))
                                       {
                                          addr322:
                                          _loc10_ = §§pop() / §§pop();
                                          if(_loc14_)
                                          {
                                             §§push(_loc6_);
                                             §§push(_loc5_);
                                             if(!_loc13_)
                                             {
                                                §§push(4);
                                                if(_loc14_ || Boolean(_loc3_))
                                                {
                                                   if(§§pop() < §§pop() / §§pop())
                                                   {
                                                      if(_loc14_ || Boolean(_loc1_))
                                                      {
                                                         §§push(_loc6_);
                                                         if(!(_loc13_ && Boolean(_loc1_)))
                                                         {
                                                            addr354:
                                                            §§push(§§pop());
                                                            if(_loc14_ || Boolean(_loc1_))
                                                            {
                                                               addr362:
                                                               _loc9_ = §§pop();
                                                               _loc1_.clip.counter.inside.rotationX = _loc1_.quadEaseOut(_loc9_,0,_loc7_,_loc10_);
                                                               _loc1_.clip.counter.shadow.rotationX = _loc1_.quadEaseOut(_loc9_,0,_loc7_ / 2,_loc10_);
                                                               _loc1_.clip.counter.inside.rotationY = _loc1_.quadEaseOut(_loc9_,0,_loc8_,_loc10_);
                                                            }
                                                            §§goto(addr946);
                                                         }
                                                         §§goto(addr836);
                                                      }
                                                      _loc1_.clip.counter.shadow.rotationY = _loc1_.quadEaseOut(_loc9_,0,_loc8_ / 2,_loc10_);
                                                      if(!(_loc13_ && Boolean(this)))
                                                      {
                                                         §§goto(addr758);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc6_);
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr423);
                                                         §§push(_loc5_);
                                                      }
                                                   }
                                                   §§goto(addr827);
                                                }
                                                §§goto(addr674);
                                             }
                                             §§goto(addr429);
                                          }
                                          §§goto(addr827);
                                       }
                                       §§goto(addr835);
                                    }
                                 }
                                 §§goto(addr512);
                              }
                              _loc9_ = §§pop();
                              _loc1_.clip.counter.inside.rotationX = _loc1_.quadEaseOut(_loc9_,0,0 - _loc7_ / 3,_loc10_);
                              _loc1_.clip.counter.shadow.rotationX = _loc1_.quadEaseOut(_loc9_,0,0 - _loc7_ / 6,_loc10_);
                              if(!_loc13_)
                              {
                                 _loc1_.clip.counter.inside.rotationY = _loc1_.quadEaseOut(_loc9_,0,0 - _loc8_ / 3,_loc10_);
                                 if(_loc14_ || Boolean(this))
                                 {
                                    _loc1_.clip.counter.shadow.rotationY = _loc1_.quadEaseOut(_loc9_,0,0 - _loc8_ / 6,_loc10_);
                                    if(!_loc13_)
                                    {
                                       §§goto(addr758);
                                    }
                                    else
                                    {
                                       §§goto(addr681);
                                    }
                                 }
                                 §§goto(addr765);
                              }
                              §§goto(addr836);
                           }
                           §§push(§§pop());
                           if(!_loc13_)
                           {
                              _loc5_ = §§pop();
                              §§push(getTimer() - _loc1_.hitSignTime);
                              if(!(_loc13_ && Boolean(_loc1_)))
                              {
                                 _loc6_ = §§pop();
                                 if(!(_loc13_ && Boolean(_loc2_)))
                                 {
                                    §§push(50);
                                    if(_loc14_)
                                    {
                                       §§push(1 - Math.abs(_loc1_.hittingSignDir));
                                       if(_loc14_ || Boolean(this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc14_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc13_ && Boolean(this)))
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   §§push(50);
                                                   if(_loc14_ || Boolean(_loc3_))
                                                   {
                                                      §§push(_loc1_.hittingSignDir);
                                                   }
                                                   §§goto(addr946);
                                                }
                                                §§goto(addr921);
                                             }
                                             §§goto(addr946);
                                          }
                                          §§goto(addr362);
                                       }
                                       §§push(§§pop() * §§pop());
                                       §§push(-1);
                                       if(_loc14_ || Boolean(_loc3_))
                                       {
                                          _loc8_ = §§pop() * §§pop();
                                          if(_loc14_ || Boolean(_loc2_))
                                          {
                                             §§push(0);
                                             if(_loc14_)
                                             {
                                             }
                                             §§goto(addr946);
                                          }
                                          §§goto(addr827);
                                       }
                                       §§goto(addr835);
                                    }
                                    §§goto(addr295);
                                 }
                                 §§goto(addr362);
                              }
                              §§goto(addr322);
                           }
                           §§goto(addr354);
                        }
                        §§push(_loc1_.introTimer);
                        if(_loc14_)
                        {
                           _loc4_ = §§pop();
                           if(!_loc13_)
                           {
                              §§goto(addr119);
                           }
                           §§goto(addr681);
                        }
                        §§goto(addr563);
                     }
                     §§goto(addr758);
                  }
                  _loc9_ = §§pop();
                  §§goto(addr681);
               }
               §§push(_loc1_.introTimer);
               §§push(_loc1_.introTimerMax);
               §§push(_loc3_);
               if(_loc14_ || Boolean(_loc1_))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc14_ || Boolean(this))
                  {
                     _loc4_ = §§pop() - §§pop();
                     _loc1_.clip.counter.y = _loc1_.easeIn(_loc4_,117,-317,_loc3_,15,20);
                     §§goto(addr195);
                  }
                  §§goto(addr538);
               }
               §§goto(addr675);
            }
            else
            {
               §§push(_loc1_.isDone);
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     if(_loc14_)
                     {
                        _loc11_ = _loc1_;
                        §§push(_loc11_.doneTimer);
                        if(_loc14_ || Boolean(_loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc12_ = §§pop();
                        if(!_loc13_)
                        {
                           _loc11_.doneTimer = _loc12_;
                        }
                        if(!_loc13_)
                        {
                           §§push(_loc1_.doneTimer);
                           if(_loc14_ || Boolean(_loc2_))
                           {
                              §§goto(addr817);
                              §§push(_loc1_.doneTimerMax);
                           }
                           §§goto(addr946);
                        }
                        §§goto(addr916);
                     }
                     §§goto(addr918);
                  }
                  else
                  {
                     §§push(_loc1_.enemies.length == 0);
                     if(_loc14_)
                     {
                        §§push(§§pop());
                        if(!_loc13_)
                        {
                           if(§§pop())
                           {
                           }
                        }
                        §§goto(addr195);
                     }
                  }
               }
               §§pop();
               if(_loc14_ || Boolean(_loc1_))
               {
                  §§goto(addr899);
               }
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               while(§§pop() >= 0)
               {
                  if(_loc1_.enemies.length > _loc2_)
                  {
                     if(!(_loc14_ || Boolean(_loc3_)))
                     {
                        continue loop0;
                     }
                     _loc1_.enemies[_loc2_].updateEnemy();
                     if(_loc13_ && Boolean(this))
                     {
                        continue loop0;
                     }
                  }
                  §§push(_loc2_);
                  if(!(_loc13_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc13_ && Boolean(_loc3_)))
                     {
                        _loc2_ = §§pop();
                        if(_loc13_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr758);
            }
         }
         §§goto(addr195);
         §§push(!§§pop());
      }
      
      public function easeIn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:Number = NaN;
         §§push(param1);
         if(!(_loc10_ && Boolean(param2)))
         {
            §§push(0);
            if(!_loc10_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc9_ || Boolean(param1))
                  {
                     §§push(param2);
                     if(_loc9_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr68:
                     §§push(param2);
                     if(!(_loc10_ && Boolean(param2)))
                     {
                        return §§pop() + param3;
                     }
                  }
                  addr226:
                  §§push(_2PI);
                  if(_loc9_)
                  {
                     addr229:
                     _loc7_ = §§pop() / §§pop() * Math.asin(param3 / param5);
                     §§goto(addr279);
                  }
               }
               else
               {
                  §§push(param1);
                  §§push(param4);
                  if(_loc9_)
                  {
                     var _loc8_:* = §§pop() / §§pop();
                     §§push(_loc8_);
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                        if(_loc9_)
                        {
                        }
                        addr54:
                        if(_loc9_)
                        {
                           §§push(1);
                           if(!_loc10_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc10_ && Boolean(param3)))
                                 {
                                    §§goto(addr68);
                                 }
                                 else
                                 {
                                    addr163:
                                    addr166:
                                    §§push(param5 < param3);
                                    §§push(param5 < param3);
                                    if(_loc9_)
                                    {
                                       addr169:
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          §§push(param3);
                                          if(_loc9_ || Boolean(param3))
                                          {
                                             §§push(0);
                                             if(_loc10_ && Boolean(this))
                                             {
                                             }
                                          }
                                          §§goto(addr279);
                                       }
                                       addr211:
                                       if(§§pop())
                                       {
                                          §§goto(addr214);
                                       }
                                       else
                                       {
                                          §§push(param6);
                                       }
                                    }
                                    addr189:
                                    if(§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          §§pop();
                                          §§goto(addr193);
                                       }
                                    }
                                    §§goto(addr211);
                                 }
                              }
                              else
                              {
                                 §§push(param6);
                                 if(_loc10_ && Boolean(param3))
                                 {
                                 }
                              }
                              §§goto(addr229);
                           }
                           addr188:
                           §§goto(addr189);
                           §§push(§§pop() < §§pop());
                           §§push(§§pop() < §§pop());
                        }
                        §§goto(addr241);
                     }
                     param1 = §§pop();
                     §§goto(addr54);
                     §§push(_loc8_);
                  }
               }
               addr278:
               §§goto(addr229);
               §§push(§§pop() + §§pop());
            }
            §§push(§§pop() / §§pop());
            if(!_loc10_)
            {
               _loc7_ = §§pop();
            }
            §§goto(addr229);
         }
         if(!§§pop())
         {
            if(_loc9_)
            {
               §§push(param4);
               §§push(0.3);
               if(!(_loc10_ && Boolean(this)))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     param6 = §§pop();
                     if(_loc9_)
                     {
                     }
                     addr193:
                     §§push(param5);
                     if(_loc9_ || Boolean(param3))
                     {
                        §§push(-param3);
                        if(!(_loc10_ && Boolean(this)))
                        {
                           §§push(§§pop() < §§pop());
                        }
                        §§goto(addr229);
                     }
                     addr214:
                     param5 = param3;
                     §§push(param6);
                     if(!_loc10_)
                     {
                        addr218:
                        §§push(4);
                     }
                     addr279:
                     §§push(param5);
                     if(_loc9_)
                     {
                        addr241:
                        §§push(§§pop() * Math.pow(2,10 * (param1 = param1 - 1)));
                     }
                     §§push(-(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6)));
                     if(!_loc10_)
                     {
                        §§push(param2);
                     }
                     return §§pop();
                  }
                  §§goto(addr229);
               }
               §§goto(addr278);
            }
            §§goto(addr229);
         }
         §§push(!param5);
         §§push(!param5);
         if(!(_loc10_ && Boolean(param2)))
         {
            if(!§§pop())
            {
               if(!_loc10_)
               {
                  §§pop();
                  if(!(_loc10_ && Boolean(param3)))
                  {
                     §§push(param3);
                     if(!_loc10_)
                     {
                        §§push(0);
                        if(_loc9_ || Boolean(this))
                        {
                           §§push(§§pop() > §§pop());
                           if(_loc9_)
                           {
                              §§push(§§pop());
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 if(!§§pop())
                                 {
                                 }
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr163);
               }
               §§pop();
               §§goto(addr163);
            }
            §§goto(addr166);
         }
         §§goto(addr169);
      }
      
      public function easeOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = NaN;
         §§push(param1);
         §§push(0);
         if(_loc9_ || Boolean(param2))
         {
            if(§§pop() == §§pop())
            {
               addr178:
               if(!_loc10_)
               {
                  §§push(param2);
                  if(!_loc10_)
                  {
                     return §§pop();
                  }
                  addr34:
                  var _loc8_:* = §§pop() / param4;
                  §§push(_loc8_);
                  if(!(_loc10_ && Boolean(param2)))
                  {
                     §§push(§§pop());
                     if(_loc10_)
                     {
                     }
                     addr50:
                     if(_loc9_ || Boolean(param2))
                     {
                        §§push(1);
                        if(_loc10_)
                        {
                        }
                        addr190:
                        addr175:
                        addr173:
                        if(§§pop() < §§pop())
                        {
                           if(_loc9_)
                           {
                              §§push(param3);
                              if(_loc9_ || Boolean(this))
                              {
                                 param5 = §§pop();
                                 addr206:
                                 addr205:
                                 addr203:
                                 §§push(param6 / 4);
                                 if(_loc9_ || Boolean(param3))
                                 {
                                    _loc7_ = §§pop();
                                 }
                                 addr242:
                                 §§push(§§pop() * Math.pow(2,-10 * param1) * Math.sin((param1 * param4 - _loc7_) * _2PI / param6));
                                 §§push(param3);
                                 if(_loc9_ || Boolean(param3))
                                 {
                                    addr276:
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              return §§pop();
                           }
                           addr241:
                           §§goto(addr242);
                           §§push(param5);
                        }
                        else
                        {
                           §§push(param6 / _2PI);
                           if(_loc9_ || Boolean(param1))
                           {
                              §§push(§§pop() * Math.asin(param3 / param5));
                              if(_loc9_ || Boolean(param1))
                              {
                                 _loc7_ = §§pop();
                                 §§goto(addr241);
                              }
                           }
                        }
                        §§goto(addr242);
                        §§push(param2);
                     }
                     §§push(param3);
                     if(!(_loc10_ && Boolean(param3)))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc9_ || Boolean(param3))
                        {
                           return §§pop();
                        }
                        §§goto(addr242);
                     }
                     else
                     {
                        addr189:
                        §§goto(addr190);
                        §§push(§§pop() < §§pop());
                     }
                     §§goto(addr190);
                  }
                  param1 = §§pop();
                  §§goto(addr50);
                  §§push(_loc8_);
               }
               §§push(param5);
               §§push(param3);
               if(_loc9_ || Boolean(this))
               {
                  §§push(-§§pop());
                  if(_loc9_)
                  {
                     §§goto(addr189);
                  }
                  §§goto(addr276);
               }
               §§goto(addr242);
            }
            else
            {
               §§push(param1);
               if(!_loc10_)
               {
                  §§goto(addr34);
               }
            }
            addr85:
            if(!§§pop())
            {
               §§push(param4 * 0.3);
               if(_loc9_ || Boolean(param3))
               {
                  param6 = §§pop();
                  if(_loc10_)
                  {
                  }
                  addr123:
                  §§push(param3);
                  if(_loc9_)
                  {
                     §§push(0);
                     if(_loc9_)
                     {
                        §§push(§§pop() > §§pop());
                        §§push(§§pop() > §§pop());
                        if(_loc9_ || Boolean(this))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(param5 < param3);
                              if(_loc10_)
                              {
                              }
                              §§goto(addr176);
                           }
                           addr152:
                           §§push(§§pop());
                           if(!(_loc10_ && Boolean(param3)))
                           {
                              addr160:
                              if(!§§pop())
                              {
                                 §§pop();
                                 §§push(param3);
                                 if(_loc10_ && Boolean(param2))
                                 {
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr190);
                           }
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr173);
                  }
                  §§push(0);
                  if(_loc9_)
                  {
                     §§goto(addr190);
                  }
                  §§goto(addr205);
               }
               §§goto(addr178);
            }
            §§push(param5);
            if(!(_loc10_ && Boolean(param2)))
            {
               §§push(!§§pop());
               if(!_loc10_)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr160);
               }
               §§pop();
               if(!(_loc10_ && Boolean(param1)))
               {
                  §§goto(addr123);
               }
               §§goto(addr203);
            }
            §§goto(addr206);
         }
         if(§§pop() == §§pop())
         {
            §§push(param2);
            if(!_loc10_)
            {
               §§goto(addr50);
            }
            §§goto(addr206);
         }
         else
         {
            §§goto(addr85);
            §§push(param6);
         }
         §§goto(addr206);
      }
      
      public function quadEaseIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!(_loc7_ && Boolean(param2)))
         {
            §§push(param1);
            if(_loc6_ || Boolean(param1))
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§goto(addr87);
               }
               var _loc5_:* = §§pop();
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_ || Boolean(this))
                  {
                     param1 = §§pop();
                     §§push(_loc5_);
                  }
               }
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || Boolean(param3))
                  {
                  }
               }
               §§goto(addr87);
            }
            addr86:
            addr87:
            §§push(§§pop() / §§pop());
            if(!(_loc7_ && Boolean(param2)))
            {
               §§push(§§pop());
            }
            §§push(§§pop() * §§pop());
            if(!_loc7_)
            {
               §§push(param2);
            }
            return §§pop();
            §§push(§§pop() + §§pop());
         }
         §§push(param1);
         if(!_loc7_)
         {
            §§goto(addr87);
         }
         §§goto(addr86);
      }
      
      public function quadEaseOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(_loc7_)
            {
               §§push(param1);
               if(!_loc6_)
               {
                  §§push(param4);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        param1 = §§pop();
                        §§push(_loc5_);
                     }
                  }
                  if(!_loc6_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        §§push(param1);
                        if(_loc7_)
                        {
                           §§push(§§pop() - 2);
                           if(_loc7_)
                           {
                           }
                        }
                     }
                  }
                  addr84:
                  §§push(§§pop() + §§pop());
               }
               §§push(§§pop() * §§pop());
               if(_loc7_)
               {
               }
            }
            return §§pop();
         }
         §§goto(addr84);
         §§push(param2);
      }
      
      public function updateGun() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:MiniGameHotshot = this;
         if(!(_loc5_ && Boolean(this)))
         {
            _loc1_.clip.reticule.x = _loc1_.clip.mouseX;
            if(!_loc5_)
            {
               _loc1_.clip.reticule.y = _loc1_.clip.mouseY;
            }
         }
         §§push(_loc1_.clip.mouseX / 640);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.clip.mouseY / 480);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            _loc1_.clip.gun.gotoAndStop(Math.ceil(_loc2_ * 20));
            if(_loc5_ && _loc2_)
            {
            }
            §§goto(addr98);
         }
         _loc1_.clip.gun.y = 360 + _loc3_ * 30;
         addr98:
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:int = 0;
         var _loc2_:MiniGameHotshot = this;
         if(!_loc14_)
         {
            _loc2_.screen.gameObj.soundManager.playSound("hotshotsquirt.wav");
            if(_loc15_)
            {
               _loc2_.clip.gun.middle.gotoAndPlay("squirt");
               if(_loc15_ || Boolean(this))
               {
               }
            }
            addr50:
            _loc2_.clip.gun.particles.gotoAndPlay(1);
            addr56:
            var _loc3_:* = false;
            var _loc4_:* = false;
            §§push(param1.target is MovieClip);
            §§push(param1.target is MovieClip);
            if(!_loc14_)
            {
               if(§§pop())
               {
                  if(_loc15_ || Boolean(this))
                  {
                     §§pop();
                     addr115:
                     §§push(MovieClip(param1.target).parent == _loc2_.clip.enemyholder);
                     if(!_loc14_)
                     {
                        §§push(§§pop());
                     }
                     _loc3_ = §§pop();
                     if(_loc15_)
                     {
                        addr119:
                        addr118:
                        if(_loc3_)
                        {
                           if(_loc15_)
                           {
                           }
                           addr124:
                           while(_loc11_ < _loc2_.enemies.length)
                           {
                              if(!_loc2_.enemies[_loc11_].checkHittingEnemy(_loc2_.clip.mouseX,_loc2_.clip.mouseY))
                              {
                                 _loc11_++;
                                 continue;
                              }
                              §§push(true);
                              if(_loc15_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc15_ || Boolean(_loc2_))
                                 {
                                    var _loc12_:* = _loc2_;
                                    §§push(_loc12_.enemiesHit);
                                    if(_loc15_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc13_:* = §§pop();
                                    if(!_loc14_)
                                    {
                                       _loc12_.enemiesHit = _loc13_;
                                    }
                                    if(!_loc14_)
                                    {
                                       if(_loc2_.enemies[_loc11_].type == HotshotEnemy.TYPE_FLYER)
                                       {
                                          if(_loc15_)
                                          {
                                             _loc12_ = _loc2_;
                                             §§push(_loc12_.chilifeathersHit);
                                             if(!(_loc14_ && Boolean(this)))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             _loc13_ = §§pop();
                                             if(!_loc14_)
                                             {
                                                _loc12_.chilifeathersHit = _loc13_;
                                             }
                                             if(_loc14_)
                                             {
                                                continue;
                                             }
                                          }
                                          addr301:
                                          _loc2_.clip.particles.scaleX *= -1;
                                          addr311:
                                          _loc2_.clip.particles.gotoAndPlay(1);
                                          if(_loc15_ || Boolean(param1))
                                          {
                                             _loc2_.hitSignTime = getTimer();
                                             _loc2_.hittingSign = true;
                                             _loc2_.hittingSignDir = _loc2_.clip.counter.mouseX / (_loc2_.clip.counter.width / 2);
                                          }
                                          §§goto(addr406);
                                       }
                                       break;
                                    }
                                    addr397:
                                    _loc2_.clip.jet.x = _loc2_.clip.mouseX;
                                    if(_loc15_)
                                    {
                                       addr406:
                                       _loc2_.clip.jet.y = _loc2_.clip.mouseY;
                                       if(!(_loc14_ && Boolean(this)))
                                       {
                                          addr420:
                                          _loc2_.clip.jet.gotoAndPlay(1);
                                       }
                                       var _loc5_:Number = _loc2_.clip.gun.x + _loc2_.clip.gun.particles.x;
                                       var _loc6_:Number = _loc2_.clip.gun.y + _loc2_.clip.gun.particles.y;
                                       §§push(_loc5_);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() - _loc2_.clip.jet.x);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(_loc6_);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() - _loc2_.clip.jet.y);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       var _loc9_:Number = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
                                       if(!(_loc14_ && Boolean(param1)))
                                       {
                                          _loc2_.clip.jet.rotation = 0;
                                          if(_loc15_ || Boolean(_loc2_))
                                          {
                                          }
                                          §§goto(addr508);
                                       }
                                       _loc2_.clip.jet.height = _loc9_;
                                       addr508:
                                       var _loc10_:Number = Math.atan2(_loc8_,_loc7_);
                                       if(!(_loc14_ && Boolean(this)))
                                       {
                                          _loc2_.clip.jet.rotation = 270 + this.radsToDegrees(_loc10_);
                                          if(_loc15_)
                                          {
                                             _loc2_.clip.hits_txt.text = "Hit " + _loc2_.enemiesHit + "/" + _loc2_.totalEnemies;
                                             if(_loc14_ && _loc3_)
                                             {
                                             }
                                             addr568:
                                             _loc2_.screen.gameObj.soundManager.playSound("minigame_hotshot_hit.wav");
                                          }
                                          §§goto(addr574);
                                       }
                                       if(_loc4_)
                                       {
                                          if(!(_loc14_ && Boolean(param1)))
                                          {
                                             §§goto(addr568);
                                          }
                                       }
                                       addr574:
                                       return;
                                    }
                                    §§goto(addr420);
                                 }
                                 break;
                              }
                              §§pop();
                              if(_loc15_ || _loc3_)
                              {
                                 §§push(Boolean(_loc2_.clip.counter.inside.hitTestPoint(_loc2_.clip.mouseX,_loc2_.clip.mouseY,true)));
                                 if(!(_loc14_ && Boolean(_loc2_)))
                                 {
                                    addr259:
                                    if(§§pop())
                                    {
                                       _loc2_.clip.particles.x = _loc2_.clip.mouseX;
                                       if(_loc15_ || _loc3_)
                                       {
                                          _loc2_.clip.particles.y = _loc2_.clip.mouseY;
                                          if(_loc15_)
                                          {
                                             if(Math.random() < 0.5)
                                             {
                                                if(_loc14_ && Boolean(_loc2_))
                                                {
                                                }
                                                §§goto(addr397);
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr301);
                                       }
                                       else
                                       {
                                          addr378:
                                          if(Math.random() < 0.5)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                    }
                                    addr392:
                                    _loc2_.clip.particles.gotoAndPlay(1);
                                    §§goto(addr397);
                                 }
                                 addr345:
                                 if(!§§pop())
                                 {
                                    _loc2_.addSplat(_loc2_.clip.mouseX,_loc2_.clip.mouseY);
                                 }
                                 else
                                 {
                                    _loc2_.clip.particles.x = _loc2_.clip.mouseX;
                                    if(!_loc14_)
                                    {
                                       _loc2_.clip.particles.y = _loc2_.clip.mouseY;
                                       if(!(_loc14_ && Boolean(this)))
                                       {
                                          §§goto(addr378);
                                       }
                                    }
                                    §§goto(addr392);
                                 }
                                 §§goto(addr397);
                              }
                              _loc2_.clip.particles.scaleX *= -1;
                              §§goto(addr392);
                           }
                        }
                        §§push(_loc2_.isIntro);
                        if(!(_loc14_ && _loc3_))
                        {
                           §§push(§§pop());
                           if(_loc15_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc14_ && _loc3_)
                                 {
                                 }
                                 §§goto(addr345);
                              }
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr259);
                     }
                     _loc11_ = 0;
                     §§goto(addr124);
                  }
               }
               addr99:
               if(§§pop())
               {
                  if(_loc15_ || Boolean(_loc2_))
                  {
                     §§push(true);
                     if(_loc15_ || Boolean(_loc2_))
                     {
                        §§goto(addr115);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr124);
               }
               §§goto(addr118);
            }
            if(!§§pop())
            {
               §§pop();
               §§push(MovieClip(param1.target).parent == _loc2_.clip.bgenemyholder);
            }
            §§goto(addr99);
         }
         _loc2_.clip.gun.logo.gotoAndPlay("squirt");
         if(_loc15_)
         {
            §§goto(addr50);
         }
         §§goto(addr56);
      }
      
      public function radsToDegrees(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() * 180);
            if(!_loc2_)
            {
               §§push(§§pop() / Math.PI);
            }
         }
         return §§pop();
      }
      
      override public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         var _loc1_:MiniGameHotshot = this;
         if(!_loc3_)
         {
            if(_loc1_.splatBMP)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.splatBMP.dispose();
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
               addr61:
               _loc1_.splatBitmap = null;
               if(_loc3_)
               {
               }
               §§goto(addr68);
            }
            §§goto(addr66);
         }
         _loc1_.splatBitmap.parent.removeChild(_loc1_.splatBitmap);
         if(_loc4_ || Boolean(_loc1_))
         {
            §§goto(addr61);
         }
         addr66:
         _loc2_ = 0;
         addr68:
         while(true)
         {
            if(_loc2_ >= _loc1_.enemies.length)
            {
               _loc1_.enemies = null;
               _loc1_.container.removeChild(_loc1_.clip);
               _loc1_.clip = null;
               break;
            }
            _loc1_.enemies[_loc2_].destroy();
            _loc1_.enemies[_loc2_] = null;
            if(!_loc4_)
            {
               break;
            }
            _loc2_++;
         }
      }
   }
}

