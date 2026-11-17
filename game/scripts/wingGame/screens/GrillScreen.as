package wingGame.screens
{
   import §_-1d§.*;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   import wingGame.models.*;
   
   public class GrillScreen
   {
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:§_-BY§;
      
      public var alarmsRunning:Number = 0;
      
      public var alarmSound:SoundChannel = null;
      
      public var alarmBaseVolume:Number = 0.5;
      
      public var alarmExtraVolume:Number = 0.2;
      
      public var grillSound:SoundChannel;
      
      public var grillVolume:Number = 0;
      
      public var boostSound:SoundChannel;
      
      public var isBoosting:Boolean = false;
      
      public var boostingWhich:Number = 0;
      
      public var basketsPerRow:Number = 4;
      
      public var basketRows:Number = 2;
      
      public var isDraggingBasket:Boolean = false;
      
      public var isThrowingAway:Boolean = false;
      
      public var isPouringMeat:Boolean = false;
      
      public var isSwitchingBowls:Boolean = false;
      
      public var bins:Vector.<MeatBin> = null;
      
      public var baskets:Vector.<Vector.<FryerBasket>> = null;
      
      public function GrillScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super();
         }
         var _loc2_:GrillScreen = this;
         if(!(_loc3_ && Boolean(param1)))
         {
            _loc2_.gameObj = param1;
            if(_loc4_ || _loc3_)
            {
            }
            §§goto(addr59);
         }
         _loc2_.setupScreen();
         addr59:
      }
      
      public function restoreSoundAfterAd() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GrillScreen = this;
         if(_loc3_)
         {
            if(_loc1_.grillSound)
            {
               if(_loc3_ || _loc2_)
               {
               }
               §§goto(addr62);
            }
            §§goto(addr41);
         }
         _loc1_.grillSound.stop();
         if(_loc3_)
         {
            addr41:
            _loc1_.grillSound = null;
            if(!_loc2_)
            {
               _loc1_.grillSound = _loc1_.gameObj.soundManager.playSound("fryeroil.wav",true,0);
            }
            §§goto(addr62);
         }
         addr62:
      }
      
      public function setupScreen() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:MeatBin = null;
         var _loc6_:MeatBin = null;
         var _loc7_:MeatBin = null;
         var _loc8_:MeatBin = null;
         var _loc9_:FryerBasket = null;
         var _loc1_:GrillScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc11_)
         {
            _loc1_.clip = new grillScreenMC();
            if(_loc11_)
            {
               _loc1_.grillSound = _loc1_.gameObj.soundManager.playSound("fryeroil.wav",true,0);
               if(_loc10_)
               {
               }
               addr68:
               if(_loc2_.hasTopping(FoodData.MEAT_SHRIMP))
               {
                  if(_loc10_ && Boolean(this))
                  {
                  }
               }
               else
               {
                  _loc1_.clip.bin_shrimp.visible = false;
               }
               addr110:
               if(_loc2_.hasTopping(FoodData.MEAT_WING))
               {
                  if(_loc11_)
                  {
                     _loc6_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_wing,FoodData.MEAT_WING);
                     if(!(_loc10_ && Boolean(_loc1_)))
                     {
                        _loc1_.bins.push(_loc6_);
                        if(_loc10_)
                        {
                        }
                        addr154:
                        _loc7_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_boneless,FoodData.MEAT_BONELESS);
                        if(_loc11_)
                        {
                           _loc1_.bins.push(_loc7_);
                           if(_loc11_)
                           {
                           }
                        }
                        _loc8_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_strips,FoodData.MEAT_STRIPS);
                        addr191:
                        if(_loc11_)
                        {
                           _loc1_.bins.push(_loc8_);
                           if(_loc10_)
                           {
                           }
                           addr259:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop1:
                              while(true)
                              {
                                 §§push(_loc1_.basketRows);
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(!(_loc11_ || Boolean(_loc1_)))
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(!_loc10_)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          §§push(_loc1_.basketsPerRow);
                                          if(_loc10_ && Boolean(_loc1_))
                                          {
                                             break;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(_loc4_);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc10_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                                addr393:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr397:
                                                         while(§§pop() <= 4)
                                                         {
                                                            _loc1_.clip["boost_" + _loc3_].addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.pressBoostButton);
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      addr396:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr358:
                                                _loc3_ = §§pop();
                                                if(_loc11_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr396);
                                                }
                                             }
                                             return;
                                          }
                                          _loc9_ = new FryerBasket(_loc1_.gameObj,_loc1_.clip["basket_" + _loc4_ + "_" + _loc3_],_loc3_,_loc4_);
                                          if(!(_loc10_ && Boolean(_loc3_)))
                                          {
                                             _loc1_.baskets[_loc4_].push(_loc9_);
                                             if(!(_loc10_ && Boolean(this)))
                                             {
                                                §§push(_loc3_);
                                                if(_loc11_ || Boolean(this))
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!(_loc10_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                }
                                                _loc3_ = §§pop();
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() + 1);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc10_)
                                          {
                                             §§goto(addr393);
                                          }
                                       }
                                       §§goto(addr397);
                                    }
                                 }
                                 §§goto(addr358);
                              }
                              _loc4_ = §§pop();
                           }
                        }
                        _loc1_.baskets = new Vector.<Vector.<FryerBasket>>();
                        if(!(_loc10_ && Boolean(this)))
                        {
                           _loc1_.baskets.push(new Vector.<FryerBasket>());
                           if(_loc11_)
                           {
                              _loc1_.baskets.push(new Vector.<FryerBasket>());
                              if(_loc11_)
                              {
                              }
                           }
                           _loc4_ = 0;
                        }
                        §§goto(addr259);
                     }
                     addr179:
                     if(_loc2_.hasTopping(FoodData.MEAT_STRIPS))
                     {
                        if(_loc11_ || Boolean(_loc1_))
                        {
                           §§goto(addr191);
                        }
                     }
                     else
                     {
                        _loc1_.clip.bin_strips.visible = false;
                     }
                     §§goto(addr191);
                  }
               }
               else
               {
                  _loc1_.clip.bin_wing.visible = false;
               }
               addr147:
               if(_loc2_.hasTopping(FoodData.MEAT_BONELESS))
               {
                  if(_loc11_)
                  {
                     §§goto(addr154);
                  }
               }
               else
               {
                  _loc1_.clip.bin_boneless.visible = false;
               }
               §§goto(addr179);
            }
            addr80:
            _loc5_ = new MeatBin(_loc1_.gameObj,_loc1_.clip.bin_shrimp,FoodData.MEAT_SHRIMP);
            if(_loc11_)
            {
               _loc1_.bins.push(_loc5_);
               if(_loc11_ || Boolean(_loc1_))
               {
               }
               §§goto(addr147);
            }
            §§goto(addr110);
         }
         _loc1_.bins = new Vector.<MeatBin>();
         if(_loc11_)
         {
            §§goto(addr68);
         }
         §§goto(addr80);
      }
      
      public function stopSounds() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GrillScreen = this;
         if(_loc2_)
         {
            if(_loc1_.grillSound)
            {
               _loc1_.grillSound.stop();
               if(_loc2_)
               {
                  _loc1_.grillSound = null;
               }
            }
            if(_loc1_.alarmSound)
            {
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.alarmSound.stop();
                  _loc1_.alarmSound = null;
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc1_:GrillScreen = this;
         if(_loc4_)
         {
            _loc1_.stopSounds();
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc2_ = 1;
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() > 4)
               {
                  if(_loc4_)
                  {
                     §§push(_loc1_.gameObj);
                     if(_loc4_)
                     {
                        if(§§pop().§_-3D§.contains(_loc1_.clip))
                        {
                           if(_loc4_)
                           {
                              §§push(_loc1_.gameObj);
                           }
                        }
                     }
                     §§pop().§_-3D§.removeChild(_loc1_.clip);
                     if(_loc5_ && Boolean(_loc1_))
                     {
                     }
                  }
                  break;
               }
               _loc1_.clip["boost_" + _loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.pressBoostButton);
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§push(§§pop() + 1);
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     continue;
                  }
                  _loc2_ = §§pop();
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     continue loop0;
                  }
               }
               break;
               _loc1_.clip = null;
               break;
            }
            return;
         }
      }
      
      public function activateScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GrillScreen = this;
         if(_loc3_)
         {
            §§push(_loc1_.gameObj);
            if(!_loc2_)
            {
               if(!§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr46);
         }
         §§push(_loc1_.gameObj);
         if(!(_loc2_ && _loc2_))
         {
            addr46:
            §§pop().§_-3D§.addChild(_loc1_.clip);
            if(_loc3_)
            {
               addr52:
               §§push(_loc1_.gameObj);
               if(!_loc2_)
               {
                  §§pop().hud.hideTimerAlerts();
                  §§goto(addr82);
               }
               §§pop().soundManager.switchMusic("grill");
               if(_loc3_)
               {
                  _loc1_.isActive = true;
               }
               §§goto(addr82);
            }
            addr82:
            if(_loc3_ || Boolean(this))
            {
               §§push(_loc1_.gameObj);
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function deactivateScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GrillScreen = this;
         if(_loc2_ || Boolean(_loc1_))
         {
            §§push(_loc1_.gameObj);
            if(_loc2_ || _loc2_)
            {
               if(§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  §§goto(addr74);
               }
            }
            §§pop().§_-3D§.removeChild(_loc1_.clip);
            if(_loc3_ && Boolean(this))
            {
            }
            §§goto(addr74);
         }
         _loc1_.isActive = false;
         addr74:
         if(_loc2_ || Boolean(this))
         {
            §§push(_loc1_.gameObj);
         }
      }
      
      public function updateScreen() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc1_:GrillScreen = this;
         if(_loc5_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            if(_loc2_ < _loc1_.bins.length)
            {
               _loc1_.bins[_loc2_].updateBin();
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_ || Boolean(this))
                  {
                     continue;
                  }
               }
               break;
            }
            §§push(0);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               _loc3_ = §§pop();
               while(true)
               {
                  §§push(_loc3_);
                  addr131:
                  while(true)
                  {
                     §§push(_loc1_.basketRows);
                     §§goto(addr133);
                  }
               }
               addr123:
            }
            while(true)
            {
               _loc2_ = §§pop();
               if(!_loc4_)
               {
                  loop5:
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc1_.basketsPerRow);
                     if(!_loc4_)
                     {
                        if(§§pop() < §§pop())
                        {
                           _loc1_.baskets[_loc3_][_loc2_].updateBasket();
                           if(_loc4_ && Boolean(_loc1_))
                           {
                              break;
                           }
                           §§push(_loc2_);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              §§push(§§pop() + 1);
                              if(!_loc4_)
                              {
                                 break loop0;
                              }
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              continue loop5;
                           }
                        }
                        break;
                     }
                     addr133:
                     §§goto(addr134);
                  }
                  §§push(_loc3_ + 1);
                  if(_loc5_)
                  {
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr123);
                  }
                  addr122:
               }
               addr134:
               while(§§pop() < §§pop())
               {
                  §§push(0);
               }
               _loc1_.updateBowls();
               if(!_loc4_)
               {
                  _loc1_.updateGrillSound();
               }
               return;
            }
            while(true)
            {
               §§push(§§pop());
               if(!(_loc4_ && Boolean(this)))
               {
                  §§goto(addr122);
               }
               §§goto(addr131);
            }
            _loc2_ = §§pop();
         }
         while(true)
         {
            §§goto(addr103);
         }
      }
      
      public function updateBowls() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc1_:GrillScreen = this;
         var _loc2_:* = -216;
         §§push(_loc1_.isDraggingBasket);
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            §§push(§§pop());
            if(_loc6_)
            {
            }
            §§goto(addr156);
         }
         if(!§§pop())
         {
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               §§pop();
               §§push(_loc1_.isThrowingAway);
               if(_loc7_)
               {
               }
               §§goto(addr156);
            }
            §§push(§§pop());
            if(_loc7_)
            {
            }
            §§goto(addr156);
         }
         if(§§pop())
         {
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               §§push(2);
               if(!(_loc7_ && Boolean(_loc1_)))
               {
                  §§push(§§pop());
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     _loc2_ = §§pop();
                     if(_loc7_)
                     {
                     }
                     addr87:
                     §§push(_loc2_);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        §§push(§§pop() - _loc1_.clip.bad_bowl.x);
                        if(_loc6_)
                        {
                        }
                        addr110:
                        _loc3_ = §§pop();
                        _loc1_.clip.bad_bowl.x += _loc3_ / 2;
                        if(!(_loc7_ && Boolean(this)))
                        {
                           if(Math.abs(_loc3_) <= 1)
                           {
                              if(_loc6_ || Boolean(_loc3_))
                              {
                              }
                              §§goto(addr191);
                           }
                           addr154:
                           addr156:
                           if(§§pop())
                           {
                              §§push(800);
                              if(_loc6_)
                              {
                                 addr166:
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    addr163:
                                    _loc4_ = §§pop();
                                    §§push(365);
                                 }
                                 _loc5_ = §§pop();
                                 _loc1_.clip.good_bowl.x += (_loc4_ - _loc1_.clip.good_bowl.x) / 2;
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    addr191:
                                    _loc1_.clip.filler_bowl.y += (_loc5_ - _loc1_.clip.filler_bowl.y) / 3;
                                    if(Math.abs(_loc4_ - _loc1_.clip.good_bowl.x) <= 1)
                                    {
                                       if(!_loc7_)
                                       {
                                          _loc1_.clip.good_bowl.x = 425;
                                          if(!_loc7_)
                                          {
                                             _loc1_.clip.filler_bowl.y = 483;
                                          }
                                       }
                                       _loc1_.isSwitchingBowls = false;
                                    }
                                 }
                              }
                              addr165:
                              §§goto(addr166);
                              §§push(§§pop());
                           }
                           return;
                           §§push(_loc1_.isSwitchingBowls);
                        }
                        _loc1_.clip.bad_bowl.x = _loc2_;
                        §§goto(addr154);
                     }
                     §§push(§§pop());
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        §§goto(addr110);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr166);
               }
               §§goto(addr165);
            }
            §§goto(addr191);
         }
         if(_loc1_.clip.bad_bowl.x != _loc2_)
         {
            §§goto(addr87);
         }
         §§goto(addr154);
      }
      
      public function updateGrillSound() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:GrillScreen = this;
         var _loc2_:SoundTransform = new SoundTransform();
         var _loc3_:Number = _loc1_.grillSound.soundTransform.volume;
         §§push(Math.min(5,_loc1_.getTotalFryersCooking()) / 5);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(_loc1_.grillVolume);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_);
         §§push(_loc5_);
         if(_loc6_)
         {
            if(§§pop() > §§pop())
            {
               §§push(_loc5_);
               §§push(0.01);
               if(_loc6_ || Boolean(_loc3_))
               {
                  _loc5_ = §§pop() + §§pop();
                  if(_loc7_ && Boolean(_loc3_))
                  {
                  }
                  addr157:
                  _loc2_.volume = _loc5_;
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     addr174:
                     _loc1_.grillSound.soundTransform = _loc2_;
                  }
                  addr178:
                  return;
                  addr153:
               }
               addr106:
               §§push(!_loc1_.isActive);
               §§push(!_loc1_.isActive);
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§pop();
                        addr139:
                        §§push(_loc4_);
                        §§push(0);
                        if(!_loc7_)
                        {
                           §§push(§§pop() > §§pop());
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_)
                           {
                              _loc5_ = 0;
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 §§goto(addr153);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr178);
                        }
                        else
                        {
                           _loc1_.grillVolume = _loc5_;
                        }
                        §§goto(addr157);
                     }
                     addr134:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     _loc5_ = 0.15;
                  }
                  else
                  {
                     §§goto(addr134);
                     §§push(!_loc1_.isActive);
                  }
                  §§goto(addr157);
               }
               if(§§pop())
               {
                  §§pop();
                  addr138:
                  §§goto(addr139);
                  §§push(_loc4_);
                  §§push(0);
               }
               §§goto(addr139);
            }
            else
            {
               §§push(_loc4_);
               §§push(_loc5_);
               if(_loc7_ && Boolean(_loc3_))
               {
               }
            }
            addr96:
            §§push(§§pop() - §§pop());
            if(_loc6_ || Boolean(this))
            {
               addr105:
               _loc5_ = §§pop();
               §§goto(addr106);
            }
            §§goto(addr138);
         }
         if(§§pop() < §§pop())
         {
            if(_loc6_)
            {
               §§push(_loc5_);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§goto(addr96);
                  §§push(0.01);
               }
               §§goto(addr105);
            }
            §§goto(addr157);
         }
         §§goto(addr106);
      }
      
      public function getTotalFryersCooking() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         var _loc1_:GrillScreen = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(_loc1_.basketRows);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     break loop1;
                  }
                  §§push(0);
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     _loc4_ = §§pop();
                     addr104:
                     if(_loc5_)
                     {
                     }
                     do
                     {
                        §§push(_loc4_);
                     }
                     while(_loc5_ || Boolean(this));
                     
                     continue loop1;
                     addr104:
                  }
                  while(true)
                  {
                     §§push(_loc1_.basketsPerRow);
                     if(_loc6_ && Boolean(_loc3_))
                     {
                        continue loop2;
                     }
                     if(§§pop() >= §§pop())
                     {
                        break;
                     }
                     §§push(_loc1_.baskets[_loc3_][_loc4_].isCooking);
                     if(!_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              §§push(!_loc1_.baskets[_loc3_][_loc4_].isRollingOver);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop());
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                              §§goto(addr135);
                           }
                           _loc2_ = §§pop();
                        }
                        §§goto(addr104);
                     }
                     _loc4_++;
                     if(_loc6_ && Boolean(_loc1_))
                     {
                        break;
                     }
                     §§goto(addr104);
                  }
                  continue loop0;
               }
            }
            addr135:
            return §§pop();
            _loc3_++;
         }
      }
      
      public function isFryerFree(param1:Number, param2:Number) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:int = 0;
         var _loc3_:GrillScreen = this;
         var _loc4_:* = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(0);
            if(!_loc7_)
            {
               §§push(§§pop() < §§pop());
               §§push(§§pop() < §§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     addr52:
                     §§push(param2);
                     if(!_loc7_)
                     {
                        §§push(0);
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop() < §§pop());
                        }
                     }
                     §§push(3);
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() > §§pop());
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           addr69:
                           addr68:
                           if(§§pop())
                           {
                           }
                           addr83:
                           if(§§pop())
                           {
                              §§push(false);
                              if(!_loc7_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    addr164:
                                    §§push(_loc3_.gameObj.§_-3f§);
                                    if(_loc6_ || Boolean(this))
                                    {
                                       §§goto(addr217);
                                    }
                                    §§goto(addr211);
                                 }
                                 else
                                 {
                                    addr119:
                                    §§push(false);
                                 }
                                 §§goto(addr195);
                              }
                              addr120:
                              _loc4_ = §§pop();
                              if(_loc6_)
                              {
                                 §§goto(addr164);
                              }
                              §§goto(addr195);
                           }
                           else if(_loc3_.baskets[param2][param1].isFree() == false)
                           {
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§goto(addr119);
                              }
                           }
                           else
                           {
                              _loc5_ = 0;
                           }
                           for(; _loc5_ < _loc3_.bins.length; _loc5_++)
                           {
                              §§push(_loc3_.bins[_loc5_].pouringWhichFryerX == param1);
                              §§push(_loc3_.bins[_loc5_].pouringWhichFryerX == param1);
                              if(!_loc6_)
                              {
                                 addr195:
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          §§goto(addr209);
                                          §§push(param2);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr216);
                                 }
                                 addr211:
                                 if(§§pop())
                                 {
                                    addr212:
                                    _loc4_ = true;
                                 }
                                 else
                                 {
                                    §§goto(addr216);
                                    §§push(false);
                                 }
                                 addr217:
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc7_ && Boolean(param1)))
                                 {
                                    §§push(_loc3_.bins[_loc5_].pouringWhichFryerY == param2);
                                 }
                                 §§goto(addr212);
                              }
                              if(§§pop())
                              {
                                 _loc4_ = false;
                                 break;
                              }
                              continue;
                              if(§§pop())
                              {
                                 addr209:
                                 §§push(param1);
                                 if(_loc6_ || Boolean(param2))
                                 {
                                    §§push(2);
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       addr216:
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    addr210:
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§goto(addr210);
                                 §§push(1);
                              }
                              return _loc4_;
                           }
                           §§goto(addr164);
                        }
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(param2);
                        }
                        §§goto(addr119);
                     }
                  }
                  §§push(§§pop());
                  if(_loc7_)
                  {
                  }
                  §§goto(addr69);
               }
               if(!§§pop())
               {
                  §§pop();
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr68);
            }
            addr75:
            §§push(§§pop() > §§pop());
            if(_loc6_ || Boolean(param2))
            {
               §§goto(addr83);
            }
            §§goto(addr120);
         }
         §§goto(addr75);
         §§push(1);
      }
      
      public function isDraggingLidDial() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:GrillScreen = this;
         var _loc2_:* = false;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.bins.length)
         {
            if(_loc1_.bins[_loc3_].isClickingDial)
            {
               if(_loc4_)
               {
                  addr71:
                  break;
               }
               §§push(true);
               if(_loc4_ && _loc2_)
               {
                  return §§pop();
               }
               _loc2_ = §§pop();
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               _loc3_++;
               if(_loc4_ && _loc2_)
               {
                  break;
               }
            }
         }
         §§goto(addr71);
         §§push(_loc2_);
      }
      
      public function addMeatToFryer(param1:Number, param2:Number, param3:String, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:GrillScreen = this;
         if(_loc5_.baskets[param2][param1].isFree())
         {
            if(!(_loc7_ && Boolean(param3)))
            {
               _loc5_.baskets[param2][param1].addMeat(param3,param4);
            }
         }
      }
      
      public function quietSoundWhenPaused() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = null;
         var _loc1_:GrillScreen = this;
         if(!(_loc3_ && Boolean(this)))
         {
            if(!_loc1_.grillSound)
            {
            }
            §§goto(addr64);
         }
         _loc2_ = new SoundTransform();
         if(!_loc3_)
         {
            _loc2_.volume = 0;
            if(_loc4_ || Boolean(_loc2_))
            {
            }
            §§goto(addr64);
         }
         _loc1_.grillSound.soundTransform = _loc2_;
         addr64:
      }
      
      public function initStationUpgrades() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         var _loc1_:GrillScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() > 4)
               {
                  return;
               }
               §§push(_loc2_.hasBonus("booster" + _loc3_));
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     _loc1_.clip["boost_" + _loc3_].visible = true;
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     _loc1_.clip["boost_" + _loc3_].visible = false;
                  }
                  §§push(_loc2_.hasBonus("alarm" + _loc3_));
               }
               if(§§pop())
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        _loc4_ = §§pop();
                        if(_loc5_)
                        {
                        }
                        while(true)
                        {
                           _loc4_++;
                        }
                        addr98:
                     }
                     while(§§pop() < _loc1_.baskets.length)
                     {
                        _loc1_.baskets[_loc4_][_loc3_ - 1].enableAlarm();
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§goto(addr98);
                        }
                     }
                     continue loop0;
                     addr109:
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc5_)
                     {
                        break;
                     }
                     §§goto(addr109);
                  }
                  continue;
               }
               continue loop0;
            }
            _loc3_++;
         }
      }
      
      public function soundAlarm(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:GrillScreen = this;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(_loc3_.gameObj);
            if(_loc7_)
            {
               §§push(§§pop().userData);
               §§push("alarm");
               §§push(param1);
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(§§pop() + 1);
               }
               if(§§pop().hasBonus(§§pop() + §§pop()))
               {
                  addr97:
                  if(!_loc6_)
                  {
                     §§push(_loc3_.gameObj);
                  }
                  _loc3_.updateAlarmSound();
               }
            }
            §§pop().hud.showTimerAlert();
            if(!(_loc6_ && Boolean(param2)))
            {
               var _loc4_:* = _loc3_;
               §§push(_loc4_.alarmsRunning);
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(§§pop() + 1);
               }
               var _loc5_:* = §§pop();
               if(_loc7_ || Boolean(param2))
               {
                  _loc4_.alarmsRunning = _loc5_;
               }
               if(_loc6_)
               {
               }
            }
            §§goto(addr97);
         }
      }
      
      public function stopAlarm(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:GrillScreen = this;
         if(_loc6_ || Boolean(_loc3_))
         {
            §§push(_loc3_.gameObj.userData);
            §§push("alarm");
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            if(§§pop().hasBonus(§§pop() + §§pop()))
            {
               if(_loc6_)
               {
               }
               addr83:
               _loc3_.updateAlarmSound();
            }
            §§goto(addr85);
         }
         var _loc4_:* = _loc3_;
         §§push(_loc4_.alarmsRunning);
         if(!(_loc7_ && Boolean(this)))
         {
            §§push(§§pop() - 1);
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || Boolean(_loc3_))
         {
            _loc4_.alarmsRunning = _loc5_;
         }
         if(_loc6_ || Boolean(_loc3_))
         {
            §§goto(addr83);
         }
         addr85:
      }
      
      public function updateAlarmSound() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:GrillScreen = this;
         if(_loc4_ || _loc3_)
         {
            if(_loc1_.alarmSound != null)
            {
               if(_loc3_ && _loc2_)
               {
               }
            }
            addr43:
            §§push(_loc1_.alarmBaseVolume);
            if(_loc4_ || Boolean(this))
            {
               §§push(_loc1_.alarmsRunning);
               if(!_loc3_)
               {
                  §§push(§§pop() - 1);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     §§push(§§pop() * _loc1_.alarmExtraVolume);
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc4_)
               {
               }
               addr78:
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(1);
                     if(_loc4_)
                     {
                        if(§§pop() > §§pop())
                        {
                           §§goto(addr139);
                        }
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc3_)
                        {
                           _loc1_.alarmSound = _loc1_.gameObj.soundManager.playSound("timeralarm.wav",true,_loc2_);
                        }
                     }
                     §§goto(addr139);
                  }
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                  }
                  addr139:
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(1);
                     if(_loc3_ && _loc3_)
                     {
                     }
                     addr119:
                     §§push(0);
                  }
                  return;
               }
               §§goto(addr119);
               §§push(_loc1_.alarmsRunning);
            }
            §§goto(addr78);
            §§push(§§pop());
         }
         _loc1_.alarmSound.stop();
         if(!_loc3_)
         {
            _loc1_.alarmSound = null;
         }
         §§goto(addr43);
      }
      
      public function pressBoostButton(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:GrillScreen = this;
         §§push(_loc2_.gameObj);
         if(!(_loc4_ && Boolean(this)))
         {
            §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBoostButton);
            if(_loc3_)
            {
               _loc2_.isBoosting = true;
               _loc2_.boostingWhich = Number(String(param1.currentTarget.name).split("_")[1]);
               if(_loc4_)
               {
               }
               addr92:
               _loc2_.boostSound = _loc2_.gameObj.soundManager.playSound("fryer_bubbling.wav",true);
               §§goto(addr100);
            }
            §§push(_loc2_.gameObj);
         }
         §§pop().soundManager.playSound("press_machine_button.wav");
         if(_loc2_.boostSound)
         {
            if(_loc3_ || _loc3_)
            {
               _loc2_.boostSound.stop();
               _loc2_.boostSound = null;
               if(_loc3_ || Boolean(_loc2_))
               {
               }
               addr100:
               return;
            }
         }
         §§goto(addr92);
      }
      
      public function releaseBoostButton(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GrillScreen = this;
         if(!_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!_loc3_)
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseBoostButton);
               if(_loc4_ || Boolean(param1))
               {
                  _loc2_.isBoosting = false;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     _loc2_.boostingWhich = 0;
                     if(_loc3_ && Boolean(param1))
                     {
                     }
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr64);
         }
         addr64:
         §§pop().soundManager.playSound("release_button.wav");
         if(_loc2_.boostSound)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               _loc2_.boostSound.stop();
               if(_loc4_)
               {
                  _loc2_.boostSound = null;
               }
            }
         }
         addr92:
         _loc2_.gameObj;
      }
   }
}

