package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   
   public class MiniGameHallway extends MiniGame
   {
      public var prizeSKUs:Array;
      
      public var prizeIsClothing:Array;
      
      public var prizeClothingMode:Array;
      
      public var allowedForRandom:Array;
      
      public var skuToWin:String = null;
      
      public var amountToWin:Number = 0;
      
      public var skuIsClothing:Boolean = false;
      
      public var skuClothingMode:String = "";
      
      public var lookForWhichCustomer:Number = -1;
      
      public var choseWhichDoor:Number = -1;
      
      public var whichDifficulty:Number = 1;
      
      public var doorX:Array;
      
      public var doorY:Number = 232;
      
      public var doorMaxY:Number = 300;
      
      public var doorBackY:Number = 180;
      
      public var outsideCustomers:Array;
      
      public var outsideCustomerNumbers:Array;
      
      public var insideCustomers:Array;
      
      public var insideCustomerNumbers:Array;
      
      public var eyeballDirections:Array;
      
      public var eyeballDirY:Array;
      
      public var eyeballYspeeds:Array;
      
      public var eyeballSpeeds:Array;
      
      public var eyeballDurations:Array;
      
      public var eyeballReturning:Array;
      
      public var maxDuration:Number = 60;
      
      public var minDuration:Number = 15;
      
      public var extraEyeDirections:Array;
      
      public var extraEyeDirY:Array;
      
      public var extraEyeDurations:Array;
      
      public var extraEyeSpeeds:Array;
      
      public var extraEyeYspeeds:Array;
      
      public var extraEyesToUse:Number = 0;
      
      public var headshot:MovieClip;
      
      public var gameTimer:Number = 0;
      
      public var timeBeforeBlack:Number = 100;
      
      public var timeBlack:Number = 180;
      
      public var delayBeforeMoving:Number = 15;
      
      public var fadeUpSpeed:Number = 0.05;
      
      public var isDoneHiding:Boolean = false;
      
      public var isHiding:Boolean = false;
      
      public var isOpened:Boolean = false;
      
      public var openedTimer:Number = 0;
      
      public var wrongDelayTimerMax:Number = 40;
      
      public var openedTimerMax:Number = 80;
      
      public var amountToUse:Number = 4;
      
      public function MiniGameHallway(param1:MiniGameScreen, param2:MovieClip)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.prizeSKUs = ["poster_papalouie","floor19","belt_05","furni_gilded_small","shirt_11","furni_gilded_medium","wall31","pants_08","furni_gilded_large","jacket_06","furni_velvet_rope","hat12","glasses12","furni_papalouie_bust"];
         this.prizeIsClothing = [false,false,true,false,true,false,false,true,false,true,false,true,true,false];
         this.prizeClothingMode = ["","","gender","","gender","","","gender","","gender","","hat","",""];
         this.allowedForRandom = [1,0,0,1,0,1,0,0,1,0,1,0,0,1];
         this.doorX = [0,243,397,88,552];
         if(_loc4_)
         {
            this.outsideCustomers = [];
            this.outsideCustomerNumbers = [];
            this.insideCustomers = [];
            if(_loc4_ || Boolean(param1))
            {
               this.insideCustomerNumbers = [];
               this.eyeballDirections = [1,0,1,-1];
               if(!_loc3_)
               {
                  this.eyeballDirY = [0,0,0,0];
               }
               this.eyeballYspeeds = [2,2,2,2];
               this.eyeballSpeeds = [5,4,5,4];
               if(_loc4_ || Boolean(param1))
               {
                  this.eyeballDurations = [0,0,0,0];
               }
               addr187:
               this.extraEyeDurations = [0,0,0,0];
               this.extraEyeSpeeds = [9,8,9,8];
               if(!_loc3_)
               {
                  this.extraEyeYspeeds = [4,3,4,3];
                  if(_loc4_)
                  {
                     super(param1,param2);
                  }
               }
            }
            this.eyeballReturning = [false,false,false,false];
            this.extraEyeDirections = [1,-1,1,-1];
            if(_loc4_)
            {
               this.extraEyeDirY = [1,0,1,-1];
               if(!_loc3_)
               {
                  §§goto(addr187);
               }
            }
            §§goto(addr187);
         }
      }
      
      override public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MiniGameHallway = this;
         _loc1_.clip = new minigameHallwayMC();
         _loc1_.container.addChild(_loc1_.clip);
         _loc1_.screen.setTitle("Hallway Hunt");
         if(!_loc2_)
         {
            _loc1_.screen.setPrizesAlreadyWon(_loc1_.getPrizesAlreadyWon(this.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode),this.prizeSKUs.length);
         }
         _loc1_.decideDifficulty();
         _loc1_.setupCustomers();
         _loc1_.clip.bg.gotoAndStop(Math.ceil(Math.random() * _loc1_.clip.bg.totalFrames));
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.clip.behind.mask = _loc1_.clip.doormask;
            if(!_loc2_)
            {
               _loc1_.clip.btn_1.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
               _loc1_.clip.btn_2.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
               if(_loc3_ || _loc3_)
               {
               }
               addr154:
               _loc1_.clip.darkcover.alpha = 0;
               addr159:
               _loc1_.clip.darkcover.mouseEnabled = false;
               if(!_loc2_)
               {
                  _loc1_.clip.eyes_1.visible = false;
                  _loc1_.clip.eyes_2.visible = false;
               }
               _loc1_.clip.eyes_3.visible = false;
            }
            _loc1_.clip.eyes_4.visible = false;
            return;
         }
         _loc1_.clip.btn_3.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         if(!_loc2_)
         {
            _loc1_.clip.btn_4.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
            _loc1_.clip.btn_1.visible = false;
            _loc1_.clip.btn_2.visible = false;
            if(_loc3_ || Boolean(this))
            {
            }
            §§goto(addr159);
         }
         _loc1_.clip.btn_3.visible = false;
         _loc1_.clip.btn_4.visible = false;
         §§goto(addr154);
      }
      
      public function clickDoor(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MiniGameHallway = this;
         var _loc3_:Number = Number(String(param1.currentTarget.name).split("_")[1]);
         if(_loc4_ || Boolean(_loc3_))
         {
            _loc2_.choseWhichDoor = _loc3_;
            _loc2_.clip.btn_1.visible = false;
            if(!(_loc5_ && Boolean(this)))
            {
               _loc2_.clip.btn_2.visible = false;
               _loc2_.clip.btn_3.visible = false;
               _loc2_.clip.btn_4.visible = false;
            }
            _loc2_.isOpened = true;
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.clip["door_" + _loc2_.choseWhichDoor].gotoAndPlay("open");
               §§push(_loc2_.insideCustomerNumbers);
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  §§push(_loc3_);
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(§§pop() - 1);
                     if(_loc5_)
                     {
                     }
                     addr122:
                     §§pop()[§§pop()].gotoAndPlay("overjoyed");
                     _loc2_.screen.gameObj.soundManager.playSound("customer_overjoyed.wav");
                  }
                  if(§§pop()[§§pop()] == _loc2_.lookForWhichCustomer)
                  {
                     §§push(_loc2_.insideCustomers);
                  }
                  else
                  {
                     _loc2_.screen.gameObj.soundManager.playSound("customer_decent.wav");
                     if(!(_loc5_ && Boolean(this)))
                     {
                        addr152:
                        _loc2_.screen.gameObj.soundManager.playSound("opendoor.wav");
                     }
                  }
                  _loc2_.checkSuccess();
                  return;
               }
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               §§goto(addr122);
            }
         }
         §§goto(addr152);
      }
      
      public function decideDifficulty() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:MiniGameHallway = this;
         var _loc3_:Number = _loc1_.getStartingLevel(this.prizeSKUs,this.prizeIsClothing,this.prizeClothingMode);
         if(!_loc7_)
         {
            if(_loc3_ < this.prizeSKUs.length)
            {
               if(_loc8_)
               {
               }
               addr54:
            }
            else
            {
               _loc1_.whichDifficulty = this.prizeSKUs.length;
            }
            addr60:
            var _loc4_:Array = _loc1_.screen.gameObj.userData.getCustomerPool(4,true);
            if(_loc8_)
            {
               if(_loc1_.screen.gameObj.userData.getDay() > 2)
               {
                  _loc4_.push(2);
                  if(_loc7_)
                  {
                  }
                  addr167:
                  if(_loc1_.screen.gameObj.userData.getDay() > 8)
                  {
                     if(_loc7_)
                     {
                     }
                     addr250:
                     _loc1_.eyeballSpeeds = [6,5,6,5];
                     _loc1_.eyeballYspeeds = [3,3,3,3];
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        addr278:
                     }
                     else
                     {
                        addr376:
                     }
                     addr390:
                     var _loc5_:Array = [];
                     if(_loc8_)
                     {
                        _loc2_ = 0;
                     }
                     while(true)
                     {
                        if(_loc2_ < 4)
                        {
                           _loc6_ = Math.floor(Math.random() * _loc4_.length);
                           _loc5_.push(_loc4_[_loc6_]);
                           if(!(_loc8_ || Boolean(_loc3_)))
                           {
                              break;
                           }
                           _loc4_.splice(_loc6_,1);
                           _loc2_++;
                           continue;
                        }
                        if(!_loc7_)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(Math.random() > 0.5)
                              {
                                 §§push(_loc1_.insideCustomerNumbers);
                                 if(!(_loc7_ && Boolean(_loc2_)))
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop().push(_loc5_[_loc2_]);
                                       addr505:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          addr509:
                                          loop2:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr511:
                                             while(true)
                                             {
                                                if(_loc2_ >= _loc5_.length)
                                                {
                                                   _loc1_.lookForWhichCustomer = _loc1_.outsideCustomerNumbers[Math.floor(Math.random() * _loc1_.amountToUse)];
                                                   break;
                                                }
                                                if(Math.random() <= 0.5)
                                                {
                                                   §§push(_loc1_.outsideCustomerNumbers);
                                                   if(_loc8_)
                                                   {
                                                      §§pop().unshift(_loc5_[_loc2_]);
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                }
                                                if(_loc7_ && Boolean(_loc1_))
                                                {
                                                   continue loop4;
                                                }
                                                §§push(_loc1_.outsideCustomerNumbers);
                                                if(_loc8_ || Boolean(_loc1_))
                                                {
                                                   §§pop().push(_loc5_[_loc2_]);
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr534);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc1_.insideCustomerNumbers);
                              }
                              while(true)
                              {
                                 §§pop().unshift(_loc5_[_loc2_]);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr505);
                                 }
                                 addr534:
                                 return;
                              }
                           }
                        }
                     }
                     §§push(0);
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        _loc2_ = §§pop();
                        §§goto(addr511);
                     }
                     §§goto(addr509);
                  }
                  addr179:
                  _loc1_.amountToUse = 4;
                  _loc1_.extraEyesToUse = 0;
                  addr185:
                  §§push(_loc1_.whichDifficulty);
                  §§push(1);
                  if(_loc8_ || Boolean(this))
                  {
                     if(§§pop() == §§pop())
                     {
                        _loc1_.amountToUse = 2;
                        addr199:
                        _loc1_.timeBlack = 120;
                        _loc1_.eyeballSpeeds = [4,3,4,3];
                        if(_loc8_ || Boolean(this))
                        {
                           _loc1_.eyeballYspeeds = [2,2,2,2];
                        }
                        else
                        {
                           addr357:
                        }
                     }
                     else
                     {
                        §§push(_loc1_.whichDifficulty);
                        if(!_loc7_)
                        {
                           §§push(2);
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc7_ && Boolean(_loc2_)))
                                 {
                                    _loc1_.amountToUse = 4;
                                    _loc1_.timeBlack = 150;
                                    §§goto(addr250);
                                 }
                                 else
                                 {
                                    addr386:
                                 }
                              }
                              else
                              {
                                 §§push(_loc1_.whichDifficulty);
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    if(§§pop() == 3)
                                    {
                                       _loc1_.amountToUse = 4;
                                       _loc1_.timeBlack = 180;
                                       if(!_loc7_)
                                       {
                                          _loc1_.eyeballSpeeds = [7,6,7,6];
                                       }
                                       _loc1_.eyeballYspeeds = [3,3,3,3];
                                       addr312:
                                    }
                                    else
                                    {
                                       _loc1_.amountToUse = 4;
                                       _loc1_.timeBlack = 180;
                                       _loc1_.eyeballSpeeds = [9,8,9,8];
                                       _loc1_.eyeballYspeeds = [4,3,4,3];
                                       addr371:
                                       if(!_loc7_)
                                       {
                                          §§push(_loc1_.whichDifficulty);
                                          §§push(4);
                                       }
                                       _loc1_.extraEyesToUse = 2;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr376);
                                       }
                                    }
                                 }
                                 addr379:
                                 if(§§pop() == 7)
                                 {
                                    if(!_loc7_)
                                    {
                                       _loc1_.extraEyesToUse = 3;
                                    }
                                    §§goto(addr386);
                                 }
                                 else
                                 {
                                    _loc1_.extraEyesToUse = 4;
                                 }
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              _loc1_.extraEyesToUse = 0;
                           }
                           else
                           {
                              §§push(_loc1_.whichDifficulty);
                              if(_loc8_ || Boolean(_loc3_))
                              {
                              }
                              §§goto(addr379);
                           }
                        }
                        if(§§pop() == 5)
                        {
                           _loc1_.extraEyesToUse = 1;
                           §§goto(addr357);
                        }
                        else
                        {
                           §§push(_loc1_.whichDifficulty);
                           §§push(6);
                           if(_loc8_)
                           {
                           }
                           §§goto(addr379);
                        }
                     }
                     §§goto(addr390);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc8_ || Boolean(_loc1_))
                     {
                        §§goto(addr371);
                     }
                  }
                  else
                  {
                     §§goto(addr379);
                     §§push(_loc1_.whichDifficulty);
                  }
                  §§goto(addr250);
               }
               if(_loc1_.screen.gameObj.userData.getDay() > 3)
               {
                  if(!_loc7_)
                  {
                     _loc4_.push(3);
                  }
                  §§goto(addr376);
               }
               if(_loc1_.screen.gameObj.userData.getDay() > 4)
               {
                  if(!(_loc7_ && Boolean(_loc1_)))
                  {
                     _loc4_.push(4);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr278);
                  }
                  §§goto(addr185);
               }
               if(_loc1_.screen.gameObj.userData.getDay() > 5)
               {
                  _loc4_.push(5);
                  if(_loc7_ && Boolean(_loc3_))
                  {
                  }
                  §§goto(addr250);
               }
               if(_loc1_.screen.gameObj.userData.getDay() > 6)
               {
                  _loc4_.push(6);
                  if(_loc8_ || Boolean(_loc1_))
                  {
                  }
                  §§goto(addr199);
               }
               if(_loc1_.screen.gameObj.userData.getDay() > 7)
               {
                  if(_loc8_)
                  {
                     _loc4_.push(7);
                     if(_loc8_ || Boolean(_loc3_))
                     {
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr312);
               }
               §§goto(addr167);
            }
            _loc4_.push(1);
            §§goto(addr179);
         }
         §§push(_loc1_);
         §§push(_loc3_);
         if(!_loc7_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().whichDifficulty = §§pop();
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            §§goto(addr54);
         }
         §§goto(addr60);
      }
      
      public function clearCustomers() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc1_:MiniGameHallway = this;
         if(!_loc4_)
         {
            §_-5i§.§_-CE§("Clear customers.");
            if(_loc5_)
            {
            }
            addr29:
            loop0:
            while(true)
            {
               §§push(_loc2_);
               §§push(_loc1_.outsideCustomers);
               if(!_loc4_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     _loc1_.outsideCustomers = null;
                     _loc1_.outsideCustomerNumbers = null;
                     if(!_loc4_)
                     {
                        _loc1_.outsideCustomers = [];
                        _loc1_.outsideCustomerNumbers = [];
                        _loc2_ = 0;
                        if(_loc5_)
                        {
                        }
                        addr197:
                        if(_loc1_.headshot != null)
                        {
                           addr201:
                           _loc1_.clearCustomer(_loc1_.headshot);
                           _loc1_.clip.headshotholder.removeChild(_loc1_.headshot);
                           if(_loc5_)
                           {
                              _loc1_.headshot = null;
                           }
                        }
                     }
                     §§goto(addr223);
                  }
                  _loc1_.clearCustomer(_loc1_.outsideCustomers[_loc2_]);
                  try
                  {
                     §§push(_loc1_.outsideCustomers);
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        §§push(_loc2_);
                        if(_loc5_ || Boolean(this))
                        {
                           §§pop()[§§pop()].parent.removeChild(_loc1_.outsideCustomers[_loc2_]);
                           addr73:
                           §§push(_loc1_.outsideCustomers);
                           if(_loc5_)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    if(_loc5_ || _loc3_)
                                    {
                                       _loc2_++;
                                    }
                                 }
                                 addr168:
                              }
                           }
                           loop2:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr167:
                              while(true)
                              {
                                 §§goto(addr168);
                                 continue loop2;
                              }
                           }
                           §§goto(addr201);
                           addr166:
                        }
                        while(true)
                        {
                           §§pop()[§§pop()].parent.removeChild(_loc1_.insideCustomers[_loc2_]);
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 addr164:
                                 §§goto(addr166);
                              }
                           }
                           addr188:
                           _loc1_.insideCustomerNumbers = null;
                           _loc1_.insideCustomers = [];
                           _loc1_.insideCustomerNumbers = [];
                           §§goto(addr197);
                        }
                        addr143:
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           §§goto(addr143);
                        }
                        §§goto(addr167);
                     }
                     addr135:
                  }
                  catch(err:Error)
                  {
                     var _loc3_:* = err;
                     §§goto(addr73);
                  }
                  addr223:
                  return;
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc1_.insideCustomers);
                     break loop0;
                  }
               }
               break;
               §§pop()[§§pop()] = §§pop();
               _loc2_++;
            }
            while(true)
            {
               if(§§pop() >= §§pop().length)
               {
                  _loc1_.insideCustomers = null;
                  §§goto(addr188);
               }
               else
               {
                  _loc1_.clearCustomer(_loc1_.insideCustomers[_loc2_]);
                  if(!_loc4_)
                  {
                     try
                     {
                        §§push(_loc1_.insideCustomers);
                        if(!_loc4_)
                        {
                           §§goto(addr135);
                        }
                        §§goto(addr73);
                     }
                     catch(err:Error)
                     {
                        _loc3_ = err;
                        §§goto(addr164);
                     }
                     §§goto(addr167);
                  }
               }
               §§goto(addr201);
            }
         }
         _loc2_ = 0;
         §§goto(addr29);
      }
      
      public function setupCustomers() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc1_:MiniGameHallway = this;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            _loc2_ = 0;
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ || Boolean(_loc3_))
            {
               §§push(_loc1_.outsideCustomerNumbers);
               if(!_loc5_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        §§push(0);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc1_.insideCustomerNumbers);
                        }
                        addr295:
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           _loc1_.headshot = _loc1_.buildCustomer(_loc1_.lookForWhichCustomer,true);
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              _loc1_.clip.headshotholder.addChild(_loc1_.headshot);
                              if(_loc6_)
                              {
                              }
                           }
                           _loc1_.clip.arrow.x = _loc1_.doorX[_loc1_.outsideCustomerNumbers.indexOf(_loc1_.lookForWhichCustomer) + 1];
                           addr337:
                        }
                        _loc1_.clip.arrow.visible = true;
                        return;
                        addr291:
                     }
                     _loc1_.clip.customername_txt.text = _loc1_.screen.gameObj.customerData.getCustomerName(_loc1_.lookForWhichCustomer) + "?";
                     §§goto(addr337);
                  }
                  else
                  {
                     _loc3_ = _loc1_.buildCustomer(_loc1_.outsideCustomerNumbers[_loc2_]);
                     if(!_loc5_)
                     {
                        _loc1_.clip["front_" + (_loc2_ + 1)].addChild(_loc3_);
                        §§push(_loc1_.amountToUse);
                        if(!_loc5_)
                        {
                           if(§§pop() > _loc2_)
                           {
                              if(!_loc5_)
                              {
                                 _loc1_.clip["front_" + (_loc2_ + 1)].visible = true;
                                 addr93:
                                 _loc1_.outsideCustomers.push(_loc3_);
                                 if(!(_loc6_ || Boolean(_loc2_)))
                                 {
                                    continue;
                                 }
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                 }
                                 addr133:
                                 addr132:
                                 addr131:
                                 if(§§pop() != 2)
                                 {
                                    _loc3_.gotoAndPlay("stand");
                                 }
                                 addr141:
                                 §§push(_loc2_);
                                 if(_loc6_ || Boolean(this))
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc5_ && Boolean(this))
                                    {
                                    }
                                    addr158:
                                    _loc2_ = §§pop();
                                    continue;
                                 }
                                 §§goto(addr158);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              _loc1_.clip["front_" + (_loc2_ + 1)].visible = false;
                              if(!(_loc5_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr93);
                              }
                           }
                           _loc3_.gotoAndPlay("portrait");
                           §§goto(addr141);
                        }
                        §§push(0);
                        if(_loc6_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc6_ || Boolean(this))
                                 {
                                    §§pop();
                                 }
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr132);
                     }
                     §§push(_loc2_);
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        §§goto(addr131);
                     }
                     §§goto(addr158);
                  }
               }
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     _loc4_ = _loc1_.buildCustomer(_loc1_.insideCustomerNumbers[_loc2_]);
                     if(!_loc5_)
                     {
                        §§push(_loc1_.insideCustomers);
                        if(_loc6_ || Boolean(this))
                        {
                           §§pop().push(_loc4_);
                           §§push(_loc1_.insideCustomerNumbers);
                        }
                        if(§§pop()[_loc2_] != _loc1_.lookForWhichCustomer)
                        {
                           if(_loc6_)
                           {
                              if(Math.random() > 0.7)
                              {
                                 _loc4_.gotoAndPlay("readpaper1");
                                 if(!_loc5_)
                                 {
                                    _loc4_.book.gotoAndStop("newspaper");
                                    addr290:
                                    if(!_loc5_)
                                    {
                                       addr278:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr291);
                                    }
                                    addr290:
                                 }
                              }
                              else if(Math.random() > 0.4)
                              {
                                 if(!(_loc5_ && Boolean(_loc1_)))
                                 {
                                    _loc4_.gotoAndPlay("drinkcoffee1");
                                    _loc4_.mug.gotoAndStop("coffee");
                                    if(!_loc5_)
                                    {
                                       §§goto(addr278);
                                    }
                                    §§goto(addr290);
                                 }
                              }
                              else
                              {
                                 _loc4_.gotoAndPlay("dance1");
                                 if(_loc6_)
                                 {
                                    §§goto(addr278);
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc4_.gotoAndPlay("stand");
                        }
                     }
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                     }
                     _loc2_ = §§pop();
                     §§goto(addr290);
                  }
                  §§goto(addr295);
               }
            }
            break;
         }
         _loc2_ = §§pop();
         if(_loc6_ || Boolean(_loc1_))
         {
            §§goto(addr290);
         }
         §§goto(addr295);
      }
      
      public function checkSuccess() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:MiniGameHallway = this;
         if(_loc5_ || Boolean(_loc2_))
         {
            §§push(_loc1_.insideCustomerNumbers);
            §§push(_loc1_.choseWhichDoor);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            if(§§pop()[§§pop()] == _loc1_.lookForWhichCustomer)
            {
               if(!_loc6_)
               {
                  if(_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode) < _loc1_.prizeSKUs.length)
                  {
                     if(!_loc6_)
                     {
                        _loc1_.skuToWin = _loc1_.prizeSKUs[_loc1_.getStartingLevel(_loc1_.prizeSKUs,_loc1_.prizeIsClothing,_loc1_.prizeClothingMode)];
                        if(_loc6_)
                        {
                        }
                     }
                     addr99:
                  }
                  else
                  {
                     _loc2_ = [];
                     if(!(_loc6_ && Boolean(_loc3_)))
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
                     if(_loc5_)
                     {
                        _loc1_.skuToWin = _loc2_[_loc4_];
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                           if(_loc5_)
                           {
                           }
                        }
                        _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
                     }
                  }
                  _loc1_.amountToWin = 1;
                  if(_loc6_)
                  {
                  }
               }
               addr89:
               _loc1_.skuClothingMode = _loc1_.prizeClothingMode[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
               §§goto(addr99);
            }
            else
            {
               _loc1_.skuToWin = null;
               if(_loc5_ || Boolean(_loc3_))
               {
                  _loc1_.amountToWin = 0;
                  if(!_loc6_)
                  {
                     _loc1_.skuIsClothing = false;
                     if(_loc5_)
                     {
                        _loc1_.skuClothingMode = "";
                     }
                  }
               }
            }
            return;
         }
         _loc1_.skuIsClothing = _loc1_.prizeIsClothing[_loc1_.prizeSKUs.indexOf(_loc1_.skuToWin)];
         if(!(_loc6_ && Boolean(_loc1_)))
         {
            §§goto(addr89);
         }
         §§goto(addr99);
      }
      
      override public function updateScreen() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1894
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function startWalking() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc1_:MiniGameHallway = this;
         if(_loc6_ || Boolean(_loc1_))
         {
            _loc1_.isHiding = true;
            _loc1_.clip.darkcover.alpha = 1;
            _loc1_.clip.arrow.visible = false;
            _loc1_.clip.front_1.visible = false;
            if(!(_loc5_ && Boolean(this)))
            {
               _loc1_.clip.front_2.visible = false;
            }
            _loc1_.clip.front_3.visible = false;
         }
         _loc1_.clip.front_4.visible = false;
         if(!(_loc5_ && _loc2_))
         {
            _loc1_.clip.eyes_1.visible = true;
            _loc1_.clip.eyes_1.inside.stop();
            if(_loc6_ || _loc3_)
            {
               _loc1_.clip.eyes_1.x = _loc1_.doorX[1];
               if(_loc6_)
               {
               }
               addr160:
               _loc1_.clip.eyes_3.inside.stop();
               if(_loc6_ || _loc3_)
               {
                  _loc1_.clip.eyes_3.x = _loc1_.doorX[3];
               }
               addr180:
               _loc1_.clip.eyes_3.y = _loc1_.doorY;
               §§goto(addr189);
            }
            _loc1_.clip.eyes_1.y = _loc1_.doorY;
            §§push(_loc1_.amountToUse);
            if(_loc6_)
            {
               §§push(2);
               if(!_loc5_)
               {
                  if(§§pop() >= §§pop())
                  {
                     _loc1_.clip.eyes_2.visible = true;
                  }
                  _loc1_.clip.eyes_2.inside.stop();
                  _loc1_.clip.eyes_2.x = _loc1_.doorX[2];
                  if(_loc5_)
                  {
                  }
                  §§goto(addr224);
               }
               addr189:
               §§goto(addr188);
            }
            addr188:
            if(_loc1_.amountToUse >= 4)
            {
               _loc1_.clip.eyes_4.visible = true;
               if(_loc5_ && Boolean(this))
               {
               }
               §§goto(addr224);
            }
            _loc1_.clip.eyes_4.inside.stop();
            if(_loc6_)
            {
               _loc1_.clip.eyes_4.x = _loc1_.doorX[4];
               addr224:
               _loc1_.clip.eyes_4.y = _loc1_.doorY;
               §§goto(addr230);
            }
            addr230:
            var _loc2_:int = 0;
            while(true)
            {
               §§push(_loc2_);
               if(!_loc5_)
               {
                  if(§§pop() >= 4)
                  {
                     if(_loc6_ || Boolean(this))
                     {
                        §§push(_loc1_.whichDifficulty);
                        if(!_loc5_)
                        {
                           addr316:
                           §§push(3);
                           if(_loc6_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§pop();
                                       addr327:
                                       §§push(_loc1_.whichDifficulty);
                                       if(!_loc5_)
                                       {
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() % §§pop());
                                             if(_loc5_ && Boolean(_loc1_))
                                             {
                                             }
                                          }
                                          addr345:
                                          §§push(§§pop() == §§pop());
                                       }
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          §§goto(addr345);
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 _loc1_.eyeballDirections = [-1,1,1,-1];
                              }
                              else
                              {
                                 §§push(_loc1_.whichDifficulty);
                              }
                              addr366:
                              break;
                           }
                           if(§§pop() > §§pop())
                           {
                              addr359:
                              _loc1_.eyeballDirections = [1,-1,1,-1];
                           }
                           §§goto(addr366);
                        }
                     }
                     §§goto(addr366);
                  }
                  else
                  {
                     §§push(Math.round(Math.random() * 2) - 1);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(this)))
                        {
                           _loc4_ = §§pop();
                           §§push(_loc1_.eyeballDirections);
                           if(!_loc5_)
                           {
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                                 §§pop()[§§pop()] = _loc4_;
                                 §§push(_loc1_.eyeballReturning);
                                 if(_loc5_)
                                 {
                                 }
                                 addr280:
                                 §§pop()[_loc2_] = Math.round(Math.random() * 1);
                                 _loc1_.clip["eyes_" + (_loc2_ + 1)].inside.stop();
                                 _loc2_++;
                                 addr279:
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr327);
                              }
                              addr268:
                              §§pop()[§§pop()] = false;
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr279);
                                 §§push(_loc1_.eyeballDirY);
                              }
                              §§goto(addr359);
                           }
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§goto(addr268);
                           }
                           §§goto(addr280);
                        }
                        else
                        {
                           §§goto(addr316);
                        }
                     }
                  }
                  §§goto(addr316);
                  §§push(3);
               }
               break;
            }
            var _loc3_:* = §§pop();
            while(_loc3_ <= 4)
            {
               if(_loc1_.extraEyesToUse >= _loc3_)
               {
                  if(!_loc5_)
                  {
                     _loc1_.clip["extraeyes_" + _loc3_].visible = true;
                  }
               }
               else
               {
                  _loc1_.clip["extraeyes_" + _loc3_].visible = false;
               }
               _loc3_++;
            }
            _loc1_.screen.gameObj.soundManager.playSound("minigame_noammo.wav");
            return;
         }
         _loc1_.clip.eyes_2.y = _loc1_.doorY;
         §§push(_loc1_.amountToUse);
         if(!_loc5_)
         {
            §§push(3);
            if(!_loc5_)
            {
               if(§§pop() >= §§pop())
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     _loc1_.clip.eyes_3.visible = true;
                  }
                  §§goto(addr180);
               }
            }
         }
         §§goto(addr160);
      }
      
      public function buildCustomer(param1:Number, param2:Boolean = false) : MovieClip
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc31_:Class = null;
         var _loc32_:MovieClip = null;
         var _loc3_:MiniGameHallway = this;
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
         if(!_loc35_)
         {
            _loc4_.head.addChild(_loc9_);
         }
         var _loc10_:Class = getDefinitionByName("customer_" + _loc5_ + "_eyes") as Class;
         var _loc11_:MovieClip = new _loc10_();
         _loc11_.name = "clip";
         if(!_loc35_)
         {
            _loc4_.eyes.addChild(_loc11_);
         }
         var _loc12_:Class = getDefinitionByName("customer_" + _loc5_ + "_mouth") as Class;
         var _loc13_:MovieClip = new _loc12_();
         _loc13_.name = "clip";
         if(!(_loc35_ && Boolean(param1)))
         {
            _loc4_.mouth.addChild(_loc13_);
         }
         var _loc14_:Class = getDefinitionByName("customer_" + _loc5_ + "_neck") as Class;
         var _loc15_:MovieClip = new _loc14_();
         _loc15_.name = "clip";
         if(_loc34_)
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
            if(!_loc35_)
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
         if(!_loc35_)
         {
            _loc4_.front_shoe.addChild(_loc17_);
         }
         var _loc18_:MovieClip = new _loc16_();
         _loc18_.name = "clip";
         if(_loc34_)
         {
            _loc4_.back_shoe.addChild(_loc18_);
         }
         var _loc19_:Class = getDefinitionByName("customer_" + _loc5_ + "_hand") as Class;
         var _loc20_:MovieClip = new _loc19_();
         _loc20_.name = "clip";
         if(!_loc35_)
         {
            _loc4_.fronthand.addChild(_loc20_);
         }
         var _loc21_:Class = getDefinitionByName("customer_" + _loc5_ + "_hand2") as Class;
         var _loc22_:MovieClip = new _loc21_();
         _loc22_.name = "clip";
         if(_loc34_)
         {
            _loc4_.backhand.addChild(_loc22_);
         }
         var _loc23_:Class = getDefinitionByName("customer_" + _loc5_ + "_upperarm") as Class;
         var _loc24_:MovieClip = new _loc23_();
         _loc24_.name = "clip";
         if(_loc34_)
         {
            _loc4_.front_upperarm.addChild(_loc24_);
         }
         var _loc25_:MovieClip = new _loc23_();
         _loc25_.name = "clip";
         if(!(_loc35_ && param2))
         {
            _loc4_.back_upperarm.addChild(_loc25_);
         }
         var _loc26_:Class = getDefinitionByName("customer_" + _loc5_ + "_forearm") as Class;
         var _loc27_:MovieClip = new _loc26_();
         _loc27_.name = "clip";
         if(!_loc35_)
         {
            _loc4_.front_forearm.addChild(_loc27_);
         }
         var _loc28_:MovieClip = new _loc26_();
         _loc28_.name = "clip";
         if(!(_loc35_ && param2))
         {
            _loc4_.back_forearm.addChild(_loc28_);
            if(!(_loc35_ && Boolean(this)))
            {
               if(param2)
               {
                  _loc17_.visible = false;
                  if(!(_loc35_ && Boolean(param1)))
                  {
                     _loc18_.visible = false;
                     if(_loc34_)
                     {
                        _loc7_.visible = false;
                        _loc20_.visible = false;
                        if(_loc34_)
                        {
                           _loc22_.visible = false;
                        }
                        addr469:
                        _loc15_.visible = false;
                        if(_loc35_ && param2)
                        {
                        }
                     }
                  }
                  addr454:
                  _loc27_.visible = false;
                  if(!(_loc35_ && Boolean(_loc3_)))
                  {
                     _loc28_.visible = false;
                     if(_loc34_)
                     {
                        §§goto(addr469);
                     }
                  }
                  addr491:
               }
               else
               {
                  _loc4_.gotoAndPlay("stand");
               }
               §§goto(addr495);
            }
            _loc4_.gotoAndStop("stand");
            if(_loc34_)
            {
               §§goto(addr491);
            }
            addr495:
            return _loc4_;
         }
         _loc24_.visible = false;
         _loc25_.visible = false;
         §§goto(addr454);
      }
      
      public function clearCustomer(param1:MovieClip) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MiniGameHallway = this;
         try
         {
            param1.stop();
            param1.head.removeChildAt(0);
            param1.eyes.removeChildAt(0);
            param1.mouth.removeChildAt(0);
         }
         catch(err:Error)
         {
         }
         try
         {
            param1.body.removeChildAt(0);
            if(_loc5_ || Boolean(this))
            {
               param1.neck.removeChildAt(0);
               param1.front_shoe.removeChildAt(0);
               param1.back_shoe.removeChildAt(0);
               if(_loc4_)
               {
               }
               addr95:
               param1.back_forearm.removeChildAt(0);
               if(!_loc4_)
               {
                  try
                  {
                     addr113:
                     param1.hair.removeChildAt(0);
                     if(_loc5_ || Boolean(param1))
                     {
                        try
                        {
                           addr136:
                           param1.back_hair.removeChildAt(0);
                        }
                        catch(err:Error)
                        {
                        }
                        §§goto(addr159);
                     }
                  }
                  catch(err:Error)
                  {
                     §§goto(addr136);
                  }
               }
            }
            param1.fronthand.removeChildAt(0);
            param1.backhand.removeChildAt(0);
            param1.front_upperarm.removeChildAt(0);
            param1.back_upperarm.removeChildAt(0);
            param1.front_forearm.removeChildAt(0);
            §§goto(addr95);
         }
         catch(err:Error)
         {
            §§goto(addr113);
         }
         addr159:
      }
      
      override public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MiniGameHallway = this;
         if(!_loc2_)
         {
            _loc1_.clearCustomers();
            if(!_loc2_)
            {
               _loc1_.clip.btn_1.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
               _loc1_.clip.btn_2.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.clip.btn_3.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr78);
         }
         _loc1_.clip.btn_4.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickDoor);
         addr78:
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
         addr86:
      }
   }
}

