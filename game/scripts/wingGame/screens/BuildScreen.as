package wingGame.screens
{
   import §_-1d§.*;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.*;
   import wingGame.data.*;
   import wingGame.models.*;
   
   public class BuildScreen
   {
      public var clip:MovieClip;
      
      public var isActive:Boolean = false;
      
      public var gameObj:§_-BY§;
      
      public var napkin:Napkin;
      
      public var wingQueue:Vector.<WingOrder>;
      
      public var currentPlate:FoodPlate;
      
      public var trashBMP:BitmapData = null;
      
      public var trashBitmap:Bitmap = null;
      
      public var trashTweenSpeed:Number = 4;
      
      public var trashMinY:Number = -300;
      
      public var sides:Array;
      
      public var dips:Array;
      
      public var movingItems:Vector.<FoodItem>;
      
      public var movingDips:Vector.<DipItem>;
      
      public var bowlsPerScreen:Number = 4;
      
      public var currentBowlSet:Number = 0;
      
      public var startBowlX:Number = 33;
      
      public var bowlPadding:Number = 144;
      
      public var bowlTweenSpeed:Number = 4;
      
      public var transitionLids:Vector.<MovieClip>;
      
      public var isPatternTraining:Boolean = false;
      
      public var lastPattern:Number = 0;
      
      public function BuildScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.sides = [FoodData.SIDE_CARROT,FoodData.SIDE_CELERY,FoodData.SIDE_CHEESECUBES,FoodData.SIDE_FRY,FoodData.SIDE_GREENPEPPER,FoodData.SIDE_REDPEPPER];
            if(!_loc3_)
            {
               this.dips = [FoodData.DIP_AWESOMESAUCE,FoodData.DIP_BLUECHEESE,FoodData.DIP_KUNGPAO,FoodData.DIP_MANGOCHILI,FoodData.DIP_RANCH,FoodData.DIP_ZESTYPESTO];
               if(_loc4_ || _loc3_)
               {
               }
            }
            super();
         }
         var _loc2_:BuildScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj = param1;
            if(_loc3_)
            {
            }
            §§goto(addr88);
         }
         _loc2_.setupScreen();
         addr88:
      }
      
      public function setupScreen() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc1_.clip = new buildScreenMC();
         _loc1_.clip.mouseEnabled = false;
         _loc1_.clip.mouseChildren = true;
         _loc1_.clip.plateholder.mouseEnabled = false;
         if(!_loc6_)
         {
            _loc1_.clip.plateholder.mouseChildren = true;
         }
         _loc1_.wingQueue = new Vector.<WingOrder>();
         if(_loc7_ || Boolean(this))
         {
            _loc1_.movingItems = new Vector.<FoodItem>();
            if(_loc6_ && Boolean(this))
            {
            }
            addr98:
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  §§push(_loc1_.sides);
                  if(_loc7_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        _loc1_.clip.bin_napkin.num_txt.text = String(_loc1_.gameObj.userData.numNapkins);
                        _loc1_.clip.bin_napkin.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
                        _loc1_.clip.bin_napkin.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
                        if(!_loc6_)
                        {
                           _loc1_.clip.bin_napkin.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickNapkin);
                           _loc1_.clip.bin_napkin.gotoAndStop(1);
                           _loc1_.clip.bin_napkin.buttonMode = true;
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              _loc1_.clip.bin_napkin.mouseEnabled = true;
                              _loc1_.clip.bin_napkin.useHandCursor = true;
                              if(_loc7_)
                              {
                                 §§push(_loc1_.gameObj);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop().userData);
                                    if(_loc7_)
                                    {
                                       if(§§pop().hasBonus("napkinholder") == false)
                                       {
                                          _loc1_.clip.bin_napkin.visible = false;
                                       }
                                       else
                                       {
                                          §§push(_loc1_.gameObj);
                                       }
                                       addr334:
                                       §§push(0);
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          _loc3_ = §§pop();
                                          addr424:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             break loop0;
                                          }
                                          addr424:
                                       }
                                       break;
                                    }
                                    addr293:
                                    if(§§pop().numNapkins <= 0)
                                    {
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          _loc1_.clip.bin_napkin.gotoAndPlay("close");
                                       }
                                    }
                                    §§goto(addr334);
                                 }
                                 §§goto(addr293);
                                 §§push(§§pop().userData);
                              }
                              _loc1_.clip.bin_napkin.buttonMode = false;
                              if(_loc7_)
                              {
                                 _loc1_.clip.bin_napkin.mouseEnabled = false;
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    _loc1_.clip.bin_napkin.useHandCursor = false;
                                    if(_loc7_)
                                    {
                                       §§goto(addr334);
                                    }
                                    addr431:
                                    _loc1_.clip.trash_btn.mouseEnabled = true;
                                    if(_loc7_)
                                    {
                                       _loc1_.clip.trash_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTrash);
                                       if(!_loc6_)
                                       {
                                          _loc1_.clip.done_btn.mouseEnabled = true;
                                          _loc1_.clip.done_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickFinish);
                                          _loc1_.clip.next_btn.mouseEnabled = true;
                                       }
                                       _loc1_.clip.trash_btn.visible = false;
                                       addr506:
                                       if(!_loc6_)
                                       {
                                          _loc1_.clip.done_btn.visible = false;
                                       }
                                       §§goto(addr525);
                                    }
                                    §§goto(addr494);
                                 }
                                 _loc1_.clip.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickNextBowls);
                                 _loc1_.clip.prev_btn.mouseEnabled = true;
                              }
                           }
                           addr501:
                           _loc1_.clip.bowlholder.mouseChildren = true;
                           §§goto(addr506);
                        }
                        _loc1_.clip.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPrevBowls);
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           addr494:
                           _loc1_.clip.bowlholder.mouseEnabled = true;
                           if(_loc6_)
                           {
                           }
                           addr525:
                           return;
                        }
                        §§goto(addr506);
                     }
                     else
                     {
                        _loc4_ = _loc1_.clip["bin_" + _loc1_.sides[_loc3_]];
                        _loc4_.mouseEnabled = true;
                        if(_loc7_)
                        {
                           _loc4_.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
                           _loc4_.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
                           _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              if(_loc2_.hasTopping(_loc1_.sides[_loc3_]) != false)
                              {
                                 _loc4_.gotoAndStop(1);
                                 _loc4_.buttonMode = true;
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 _loc4_.mouseEnabled = true;
                                 if(_loc6_ && Boolean(_loc2_))
                                 {
                                    continue;
                                 }
                              }
                              addr182:
                              _loc4_.useHandCursor = true;
                              _loc3_++;
                              continue;
                           }
                           _loc4_.gotoAndStop(5);
                           if(_loc7_)
                           {
                           }
                           §§goto(addr182);
                        }
                        _loc4_.buttonMode = false;
                        _loc4_.mouseEnabled = false;
                        _loc4_.useHandCursor = false;
                        §§goto(addr182);
                     }
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        addr429:
                        if(_loc7_)
                        {
                           §§goto(addr431);
                        }
                        §§goto(addr501);
                     }
                     else
                     {
                        _loc5_ = _loc1_.clip["bin_" + _loc1_.dips[_loc3_]];
                        _loc5_.mouseEnabled = true;
                        _loc5_.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
                        if(!_loc6_)
                        {
                           _loc5_.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
                           _loc5_.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
                           if(_loc2_.hasTopping(_loc1_.dips[_loc3_]) == false)
                           {
                              if(!_loc6_)
                              {
                                 _loc5_.gotoAndStop(5);
                                 _loc5_.buttonMode = false;
                                 _loc5_.mouseEnabled = false;
                                 _loc5_.useHandCursor = false;
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                 }
                                 §§goto(addr424);
                              }
                           }
                           else
                           {
                              _loc5_.gotoAndStop(1);
                              _loc5_.buttonMode = true;
                           }
                           _loc5_.mouseEnabled = true;
                           _loc5_.useHandCursor = true;
                           if(_loc7_)
                           {
                              addr423:
                              _loc3_++;
                           }
                           §§goto(addr424);
                        }
                        §§goto(addr423);
                     }
                  }
                  addr427:
               }
               break;
            }
            while(true)
            {
               §§goto(addr427);
            }
            §§goto(addr429);
         }
         _loc1_.movingDips = new Vector.<DipItem>();
         if(!_loc6_)
         {
            _loc1_.transitionLids = new Vector.<MovieClip>();
            if(_loc7_)
            {
               _loc3_ = 0;
            }
         }
         §§goto(addr98);
      }
      
      public function clickFinish(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BuildScreen = this;
         if(!_loc4_)
         {
            §§push(_loc2_.gameObj.§_-3f§);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(!§§pop());
               §§push(!§§pop());
               if(!(_loc4_ && Boolean(this)))
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        addr97:
                        if(!_loc4_)
                        {
                           §§push(_loc2_.gameObj.§_-3f§);
                        }
                        if(_loc2_.gameObj.§_-3f§)
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              addr108:
                              _loc2_.gameObj.§_-8o§();
                           }
                        }
                     }
                     §§push(§§pop());
                  }
               }
               if(§§pop())
               {
                  §§pop();
                  addr71:
                  if(!_loc4_)
                  {
                     §§push(_loc2_.gameObj.§_-DZ§ == 25);
                  }
                  _loc2_.currentPlate.finishPlate();
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(_loc2_.gameObj);
                     if(!_loc4_)
                     {
                        §§pop().soundManager.playSound("buttonclick.wav");
                        addr88:
                        _loc2_.clip.done_btn.visible = false;
                        _loc2_.hideBins();
                        if(!_loc4_)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr108);
               }
            }
            if(§§pop())
            {
               §§push(_loc2_.currentPlate);
               if(!_loc4_)
               {
                  if(§§pop() != null)
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr88);
               }
               §§goto(addr71);
            }
            §§goto(addr139);
         }
         §§push(_loc2_.gameObj);
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(§§pop().hud);
            if(_loc3_)
            {
               if(§§pop().whichContextTraining.indexOf("pattern") > -1)
               {
                  §§push(_loc2_.gameObj);
               }
               §§goto(addr139);
            }
            §§goto(addr138);
         }
         addr138:
         §§pop().removeContextTraining();
         addr139:
         §§pop().hud;
      }
      
      public function clickTrash(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BuildScreen = this;
         §§push(_loc2_.gameObj);
         if(_loc3_)
         {
            §§push(§§pop().§_-3f§);
            if(_loc3_)
            {
               §§push(false);
               if(_loc3_)
               {
                  addr43:
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(§§pop());
                  }
                  §§pop();
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(_loc2_.currentPlate);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(§§pop() == null);
                        if(_loc3_)
                        {
                        }
                        addr72:
                        if(§§pop())
                        {
                           _loc2_.createTrashStandin(_loc2_.currentPlate.clip);
                           if(_loc3_ || Boolean(this))
                           {
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr106);
                  }
                  §§push(_loc2_.gameObj);
               }
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr43);
                  }
               }
            }
            §§goto(addr72);
            §§push(!§§pop());
         }
         §§pop().soundManager.playSound("press_machine_button.wav");
         if(_loc3_ || _loc3_)
         {
            addr106:
            §§pop().destroy();
            _loc2_.currentPlate = null;
            addr110:
            _loc2_.checkForPlate();
            addr112:
            return;
            §§push(_loc2_.currentPlate);
         }
         §§goto(addr72);
      }
      
      public function clickNextBowls(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:BuildScreen = this;
         var _loc3_:Number = Math.ceil(_loc2_.wingQueue.length / _loc2_.bowlsPerScreen);
         if(!(_loc6_ && Boolean(param1)))
         {
            §§push(_loc2_.currentBowlSet);
            §§push(_loc3_);
            if(_loc7_ || Boolean(this))
            {
               §§push(§§pop() - 1);
            }
            if(§§pop() < §§pop())
            {
               if(_loc7_ || Boolean(this))
               {
                  var _loc4_:* = _loc2_;
                  §§push(_loc4_.currentBowlSet);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc6_)
                  {
                     _loc4_.currentBowlSet = _loc5_;
                  }
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     _loc2_.populateBowls(true,1);
                  }
               }
            }
         }
      }
      
      public function clickPrevBowls(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:BuildScreen = this;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            if(_loc2_.currentBowlSet > 0)
            {
               if(_loc5_ && _loc3_)
               {
               }
            }
            §§goto(addr85);
         }
         var _loc3_:* = _loc2_;
         §§push(_loc3_.currentBowlSet);
         if(_loc6_ || Boolean(this))
         {
            §§push(§§pop() - 1);
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            _loc3_.currentBowlSet = _loc4_;
         }
         if(_loc6_ || Boolean(param1))
         {
            _loc2_.populateBowls(true,-1);
         }
         addr85:
      }
      
      public function populateBowls(param1:Boolean = true, param2:Number = 0) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:MovieClip = null;
         var _loc9_:* = NaN;
         var _loc3_:BuildScreen = this;
         if(!_loc11_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc11_)
            {
               if(§§pop() < _loc3_.wingQueue.length)
               {
                  continue;
               }
               if(_loc10_ || Boolean(this))
               {
                  §§push(param1);
                  if(_loc10_ || Boolean(_loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc10_ || Boolean(param2))
                        {
                           §§push(param2);
                           §§push(1);
                           if(!_loc11_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 addr130:
                                 §§push(_loc3_.currentBowlSet - 1);
                                 if(_loc10_)
                                 {
                                    §§push(_loc3_.bowlsPerScreen);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc7_ = §§pop();
                                       if(_loc10_)
                                       {
                                          _loc3_.clip.bowlholder.x = 640;
                                       }
                                       while(true)
                                       {
                                          _loc8_ = new build_meat_lid();
                                          _loc8_.gotoAndStop(FoodData.getSauceFrame(_loc3_.wingQueue[_loc4_].sauceType));
                                          _loc8_.num_txt.text = String(_loc3_.wingQueue[_loc4_].currentMeatAmount);
                                          if(_loc10_ || Boolean(this))
                                          {
                                             _loc8_.x = _loc3_.startBowlX + (_loc4_ - _loc7_) * _loc3_.bowlPadding;
                                             if(_loc10_)
                                             {
                                                §§push(param2);
                                                if(_loc10_ || Boolean(param2))
                                                {
                                                   §§push(1);
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         _loc8_.x -= 640;
                                                      }
                                                      else
                                                      {
                                                         §§push(param2);
                                                      }
                                                      addr258:
                                                      _loc8_.y = 0;
                                                      if(!(_loc11_ && Boolean(this)))
                                                      {
                                                         _loc3_.clip.bowlholder.addChild(_loc8_);
                                                         if(_loc10_)
                                                         {
                                                            _loc3_.transitionLids.push(_loc8_);
                                                         }
                                                      }
                                                   }
                                                   addr251:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      _loc8_.x += 640;
                                                   }
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr251);
                                                §§push(-1);
                                             }
                                             while(true)
                                             {
                                                _loc4_++;
                                                addr280:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   break loop0;
                                                }
                                             }
                                             addr279:
                                          }
                                          §§goto(addr258);
                                       }
                                       addr175:
                                    }
                                    else
                                    {
                                       addr112:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc11_ && Boolean(param2)))
                                       {
                                          _loc7_ = §§pop();
                                       }
                                    }
                                    addr312:
                                    addr313:
                                    var _loc5_:* = §§pop();
                                    §§push(_loc5_);
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop());
                                       if(_loc10_ || Boolean(param2))
                                       {
                                          _loc4_ = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc10_ || Boolean(param2))
                                                {
                                                   §§push(§§pop() + _loc3_.bowlsPerScreen);
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(_loc3_.currentBowlSet);
                                                   if(_loc11_)
                                                   {
                                                   }
                                                   §§goto(addr460);
                                                }
                                                §§push(_loc4_);
                                                if(_loc10_ || Boolean(_loc3_))
                                                {
                                                   §§push(§§pop() >= 0);
                                                   if(!_loc11_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            §§pop();
                                                            if(_loc11_ && Boolean(_loc3_))
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(_loc4_);
                                                            if(_loc11_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(_loc3_.startBowlX);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc11_ && Boolean(param2)))
                                                            {
                                                               §§push(§§pop() - _loc5_);
                                                               if(!(_loc11_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(§§pop() * _loc3_.bowlPadding);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc10_ || Boolean(param2))
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     _loc3_.wingQueue[_loc4_].attachBowl(_loc9_);
                                                                  }
                                                               }
                                                               §§goto(addr460);
                                                            }
                                                         }
                                                         addr437:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            _loc3_.clip.prev_btn.visible = true;
                                                            if(_loc11_)
                                                            {
                                                            }
                                                            break loop5;
                                                         }
                                                         _loc3_.clip.prev_btn.visible = false;
                                                         break loop5;
                                                      }
                                                      _loc4_++;
                                                      if(_loc11_ && param1)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr368:
                                                }
                                             }
                                             addr460:
                                             var _loc6_:* = §§pop();
                                             if(_loc10_ || Boolean(param2))
                                             {
                                                §§push(_loc3_.currentBowlSet);
                                                §§push(_loc6_);
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      _loc3_.clip.next_btn.visible = true;
                                                      if(_loc10_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_.clip.next_btn.visible = false;
                                                }
                                             }
                                             return;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr368);
                                       }
                                    }
                                    §§goto(addr437);
                                    §§push(0);
                                 }
                                 §§push(§§pop());
                                 if(!_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    §§goto(addr280);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() < _loc3_.wingQueue.length);
                                    addr167:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc10_ || param1)
                                          {
                                             §§goto(addr175);
                                          }
                                          addr293:
                                       }
                                       §§goto(addr279);
                                    }
                                 }
                                 addr163:
                              }
                              else
                              {
                                 §§push(param2);
                                 §§push(-1);
                                 if(_loc10_ || param1)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(_loc3_.currentBowlSet);
                                       §§push(1);
                                    }
                                 }
                              }
                              addr310:
                              §§goto(addr312);
                              §§push(§§pop() * §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           §§push(_loc3_.bowlsPerScreen);
                           if(!_loc11_)
                           {
                              §§goto(addr112);
                           }
                           §§goto(addr310);
                        }
                        addr127:
                        §§push(_loc7_);
                        if(!_loc11_)
                        {
                           §§goto(addr130);
                        }
                        addr301:
                        §§push(_loc3_.bowlsPerScreen);
                        if(_loc10_ || Boolean(param2))
                        {
                           §§goto(addr310);
                        }
                        §§goto(addr313);
                     }
                     else
                     {
                        _loc3_.clip.bowlholder.x = 0;
                     }
                     §§goto(addr301);
                     §§push(_loc3_.currentBowlSet);
                  }
                  while(true)
                  {
                     §§pop();
                     if(!(_loc11_ && Boolean(this)))
                     {
                        §§push(_loc4_);
                        if(!(_loc11_ && Boolean(param2)))
                        {
                           §§goto(addr163);
                        }
                        break loop0;
                     }
                     §§goto(addr293);
                  }
                  addr147:
               }
               _loc3_.clip.bowlholder.x = -640;
               §§goto(addr127);
            }
            break;
            _loc3_.wingQueue[_loc4_].detachBowl();
            _loc4_++;
         }
         while(true)
         {
            §§push(_loc7_);
            if(_loc10_ || Boolean(param2))
            {
               §§push(§§pop() + _loc3_.bowlsPerScreen);
            }
            if(§§pop() < §§pop())
            {
               §§push(_loc4_);
               if(!_loc10_)
               {
                  continue;
               }
               §§push(§§pop() >= 0);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                     }
                  }
                  §§goto(addr167);
               }
               §§goto(addr147);
            }
            break;
         }
         §§goto(addr293);
      }
      
      public function rolloverSide(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BuildScreen = this;
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_.currentPlate);
            if(_loc4_)
            {
               addr62:
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr64);
                  }
                  addr63:
                  addr64:
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(this))
                     {
                     }
                  }
                  addr99:
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(_loc2_.currentPlate);
                  }
                  return;
                  §§push(§§pop() == §§pop());
               }
               §§goto(addr63);
               §§push(false);
            }
            §§push(§§pop().isFinished);
            if(!_loc3_)
            {
               §§goto(addr62);
            }
            §§goto(addr64);
         }
         if(MovieClip(param1.currentTarget).currentFrame == 1)
         {
            if(_loc4_ || Boolean(this))
            {
               MovieClip(param1.currentTarget).gotoAndStop(2);
            }
         }
         §§goto(addr99);
      }
      
      public function rolloutSide(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BuildScreen = this;
         if(_loc3_)
         {
            if(MovieClip(param1.currentTarget).currentFrame == 2)
            {
               if(_loc4_ && Boolean(this))
               {
               }
            }
            §§goto(addr52);
         }
         MovieClip(param1.currentTarget).gotoAndStop(1);
         addr52:
      }
      
      public function clickSide(param1:MouseEvent) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:FoodItem = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:DipItem = null;
         var _loc2_:BuildScreen = this;
         if(!_loc13_)
         {
            §§push(_loc2_.currentPlate);
            if(_loc12_)
            {
               addr83:
               §§push(§§pop());
               if(!(_loc13_ && Boolean(param1)))
               {
                  addr82:
                  §§push(§§pop());
                  if(_loc12_)
                  {
                     if(§§pop())
                     {
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           §§pop();
                           if(_loc12_ || Boolean(this))
                           {
                           }
                           addr84:
                           _loc3_ = MovieClip(param1.currentTarget);
                           §§push(String(param1.currentTarget.name).split("_")[1]);
                           if(!(_loc13_ && Boolean(_loc2_)))
                           {
                              _loc4_ = §§pop();
                              if(_loc2_.sides.indexOf(_loc4_) > -1)
                              {
                                 §§push(_loc3_.x + _loc3_.width / 2);
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    _loc5_ = §§pop();
                                    _loc6_ = _loc3_.y + _loc3_.height / 2;
                                    if(_loc12_ || Boolean(_loc3_))
                                    {
                                       §§push(90);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc13_ && Boolean(_loc2_)))
                                          {
                                             _loc7_ = §§pop();
                                             §§push(_loc4_);
                                             if(_loc12_ || Boolean(_loc2_))
                                             {
                                                §§push(FoodData.SIDE_CHEESECUBES);
                                                if(_loc12_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc12_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc13_ && Boolean(_loc2_)))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                         }
                                                         addr225:
                                                         §§push(§§pop());
                                                         if(!(_loc12_ || Boolean(_loc2_)))
                                                         {
                                                            addr297:
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               addr315:
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(_loc2_.gameObj);
                                                               }
                                                               _loc11_ = new DipItem(_loc2_.gameObj,_loc4_,_loc9_,_loc10_);
                                                               if(_loc12_)
                                                               {
                                                                  _loc2_.currentPlate.addDipToPlate(_loc11_);
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc3_.gotoAndStop(1);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc13_ && Boolean(this)))
                                                         {
                                                            §§pop();
                                                            §§goto(addr257);
                                                         }
                                                      }
                                                      addr253:
                                                      if(§§pop())
                                                      {
                                                         §§push(270);
                                                      }
                                                      addr257:
                                                      if(!(_loc13_ && Boolean(this)))
                                                      {
                                                         §§push(_loc4_);
                                                      }
                                                      _loc8_ = new FoodItem(_loc2_.gameObj,_loc4_,_loc5_,_loc6_,_loc7_);
                                                      if(!(_loc13_ && Boolean(_loc2_)))
                                                      {
                                                         _loc2_.addToMovingItems(_loc8_);
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      _loc3_.gotoAndStop(1);
                                                      addr282:
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                       }
                                       _loc7_ = §§pop();
                                       §§goto(addr257);
                                    }
                                    §§push(_loc4_);
                                    if(!(_loc13_ && Boolean(_loc2_)))
                                    {
                                       §§push(FoodData.SIDE_CELERY);
                                       if(!(_loc13_ && Boolean(param1)))
                                       {
                                          addr217:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc13_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr225);
                                          }
                                          §§goto(addr306);
                                       }
                                       addr252:
                                       §§goto(addr253);
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                                 _loc9_ = §§pop();
                                 _loc10_ = _loc3_.y;
                                 §§goto(addr315);
                              }
                              else
                              {
                                 §§push(_loc2_.gameObj);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop().§_-3f§);
                                    if(!(_loc13_ && Boolean(_loc2_)))
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§goto(addr297);
                                    §§push(§§pop());
                                 }
                              }
                              addr306:
                              if(§§pop())
                              {
                                 §§push(_loc3_.x);
                              }
                              addr342:
                              return;
                              §§push(§§pop().§_-DZ§ == 24);
                           }
                           §§goto(addr252);
                           §§push(FoodData.SIDE_REDPEPPER);
                        }
                     }
                  }
                  §§push(§§pop() == §§pop());
               }
               if(§§pop())
               {
                  §§goto(addr84);
               }
               §§goto(addr225);
            }
            addr73:
            §§push(§§pop().isFinished);
            if(_loc12_ || Boolean(_loc2_))
            {
               §§goto(addr82);
               §§push(false);
            }
            §§goto(addr83);
         }
         §§goto(addr73);
         §§push(_loc2_.currentPlate);
      }
      
      public function clickNapkin(param1:MouseEvent) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:BuildScreen = this;
         if(_loc8_)
         {
            §§push(_loc2_.currentPlate);
            if(_loc8_)
            {
               §§push(§§pop());
               if(!(_loc9_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(!(_loc9_ && Boolean(_loc2_)))
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                        }
                     }
                     addr80:
                     addr81:
                     if(§§pop())
                     {
                        §§pop();
                        addr97:
                        if(_loc8_ || Boolean(param1))
                        {
                           §§push(_loc2_.gameObj.userData.numNapkins > 0);
                        }
                        _loc3_ = _loc2_.clip.bin_napkin;
                        §§push(_loc3_.x + _loc3_.width / 2);
                        if(!_loc9_)
                        {
                           _loc4_ = §§pop();
                           §§push(_loc3_.y + _loc3_.height / 2);
                           if(_loc8_)
                           {
                              _loc5_ = §§pop();
                              if(_loc8_)
                              {
                                 _loc2_.createNapkin(_loc4_,_loc5_);
                                 _loc3_.gotoAndStop(1);
                                 §§push(_loc2_.gameObj);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop().userData);
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       var _loc6_:* = §§pop();
                                       §§push(_loc6_.numNapkins);
                                       if(_loc8_ || Boolean(_loc2_))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          _loc6_.numNapkins = _loc7_;
                                       }
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          _loc2_.clip.bin_napkin.num_txt.text = String(_loc2_.gameObj.userData.numNapkins);
                                          §§push(_loc2_.gameObj);
                                          if(_loc9_)
                                          {
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§push(§§pop().numNapkins);
                                 }
                                 §§pop().soundManager.playSound("lidslide.wav");
                                 addr196:
                                 §§push(_loc2_.gameObj);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop().userData);
                                    if(_loc8_ || Boolean(this))
                                    {
                                    }
                                    addr214:
                                    §§pop().userData.numNapkins = 0;
                                    §§goto(addr213);
                                 }
                                 addr213:
                                 if(_loc8_)
                                 {
                                    _loc2_.clip.bin_napkin.gotoAndPlay("close");
                                    _loc2_.clip.bin_napkin.buttonMode = false;
                                 }
                                 §§goto(addr240);
                              }
                              _loc2_.clip.bin_napkin.mouseEnabled = false;
                              addr240:
                              _loc2_.clip.bin_napkin.useHandCursor = false;
                              return;
                           }
                        }
                        if(§§pop() <= 0)
                        {
                           §§goto(addr214);
                           §§push(_loc2_.gameObj);
                        }
                        §§goto(addr214);
                     }
                     if(§§pop())
                     {
                        §§goto(addr97);
                     }
                     §§goto(addr214);
                  }
                  addr70:
                  §§push(§§pop() == §§pop());
                  if(_loc8_ || Boolean(this))
                  {
                  }
                  §§goto(addr80);
               }
               §§pop();
               if(_loc8_)
               {
               }
               §§goto(addr97);
            }
            addr54:
            §§push(§§pop().isFinished);
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               §§push(false);
               if(_loc8_ || Boolean(param1))
               {
                  §§goto(addr70);
               }
               §§goto(addr81);
            }
            §§goto(addr80);
         }
         §§goto(addr54);
         §§push(_loc2_.currentPlate);
      }
      
      public function destroy() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         if(!(_loc6_ && Boolean(this)))
         {
            _loc1_.clearTrashStandin();
            if(_loc5_)
            {
            }
            addr38:
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(_loc1_.sides);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     if(§§pop() < §§pop().length)
                     {
                        _loc3_ = _loc1_.clip["bin_" + _loc1_.sides[_loc2_]];
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           _loc3_.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
                           if(_loc5_ || Boolean(_loc1_))
                           {
                              _loc3_.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 _loc3_.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc2_ = §§pop();
                        }
                        continue;
                     }
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           _loc2_ = §§pop();
                           addr188:
                           while(true)
                           {
                              §§push(_loc2_);
                              break loop0;
                           }
                           addr188:
                        }
                        break;
                     }
                     addr203:
                     _loc1_.clip.done_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickFinish);
                     if(!_loc6_)
                     {
                        §§push(_loc1_.gameObj);
                        if(_loc5_)
                        {
                           if(§§pop().§_-3D§.contains(_loc1_.clip))
                           {
                              if(_loc5_ || Boolean(_loc3_))
                              {
                              }
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr231);
                     }
                     addr231:
                     §§pop().§_-3D§.removeChild(_loc1_.clip);
                     if(_loc5_ || Boolean(this))
                     {
                        §§goto(addr249);
                     }
                     addr249:
                     _loc1_.clip = null;
                     return;
                     §§push(_loc1_.gameObj);
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        addr193:
                        _loc1_.clip.trash_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTrash);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr203);
                     }
                     else
                     {
                        _loc4_ = _loc1_.clip["bin_" + _loc1_.dips[_loc2_]];
                        _loc4_.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverSide);
                        if(_loc5_)
                        {
                           _loc4_.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutSide);
                           if(!_loc6_)
                           {
                              _loc4_.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSide);
                              if(_loc6_)
                              {
                              }
                              §§goto(addr188);
                           }
                        }
                        §§push(_loc2_);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc5_ || Boolean(this))
                           {
                              §§push(§§pop());
                           }
                        }
                        _loc2_ = §§pop();
                        §§goto(addr188);
                     }
                  }
                  addr191:
               }
               break;
            }
            while(true)
            {
               §§goto(addr191);
            }
            §§goto(addr193);
         }
         _loc2_ = 0;
         §§goto(addr38);
      }
      
      public function activateScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:BuildScreen = this;
         §§push(_loc1_.gameObj);
         if(_loc3_)
         {
            if(!§§pop().§_-3D§.contains(_loc1_.clip))
            {
               §§push(_loc1_.gameObj);
               if(!_loc2_)
               {
                  §§pop().§_-3D§.addChild(_loc1_.clip);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr79);
               }
            }
            _loc1_.checkForPlate();
            _loc1_.populateBowls(false);
            §§push(_loc1_.gameObj);
         }
         §§pop().soundManager.switchMusic("build");
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.isActive = true;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.checkForPatternTraining();
            }
         }
         addr79:
      }
      
      public function deactivateScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:BuildScreen = this;
         if(_loc2_)
         {
            §§push(_loc1_.gameObj);
            if(_loc2_)
            {
               if(§§pop().§_-3D§.contains(_loc1_.clip))
               {
                  if(_loc2_)
                  {
                     §§push(_loc1_.gameObj);
                     if(_loc2_)
                     {
                     }
                     addr53:
                     §§pop().hud.removeContextTraining();
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr69:
                        _loc1_.isActive = false;
                     }
                  }
               }
               addr46:
               if(_loc1_.isPatternTraining)
               {
                  if(_loc2_)
                  {
                     addr51:
                     §§goto(addr53);
                     §§push(_loc1_.gameObj);
                  }
               }
               §§goto(addr69);
            }
            §§pop().§_-3D§.removeChild(_loc1_.clip);
            if(!_loc3_)
            {
               §§goto(addr46);
            }
            §§goto(addr51);
         }
      }
      
      public function checkForPlate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:BuildScreen = this;
         if(!_loc2_)
         {
            if(_loc1_.currentPlate == null)
            {
               if(_loc3_)
               {
                  _loc1_.currentPlate = new FoodPlate(_loc1_.gameObj);
                  if(!_loc2_)
                  {
                     _loc1_.showBins();
                  }
               }
            }
         }
      }
      
      public function updateScreen() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc1_:BuildScreen = this;
         if(!(_loc6_ && Boolean(_loc1_)))
         {
            if(_loc1_.clip.bowlholder.x != 0)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() - _loc1_.clip.bowlholder.x);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  _loc1_.clip.bowlholder.x += _loc4_ / _loc1_.bowlTweenSpeed;
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     if(Math.abs(_loc4_) <= 1)
                     {
                        _loc1_.clip.bowlholder.x = 0;
                        if(_loc7_ || Boolean(_loc1_))
                        {
                        }
                        addr87:
                        do
                        {
                           if(_loc2_ >= _loc1_.transitionLids.length)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 _loc1_.transitionLids = null;
                                 if(_loc7_)
                                 {
                                    _loc1_.transitionLids = new Vector.<MovieClip>();
                                 }
                              }
                              break;
                           }
                           _loc1_.transitionLids[_loc2_].parent.removeChild(_loc1_.transitionLids[_loc2_]);
                           if(_loc7_)
                           {
                              _loc1_.transitionLids[_loc2_] = null;
                              if(_loc6_)
                              {
                                 continue;
                              }
                           }
                           _loc2_++;
                        }
                        while(_loc7_ || Boolean(_loc2_));
                        
                     }
                  }
               }
               addr86:
               _loc2_ = §§pop();
               §§goto(addr87);
            }
            §§push(_loc1_.currentBowlSet);
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(§§pop() * _loc1_.bowlsPerScreen);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(_loc7_ || Boolean(_loc2_))
            {
               §§push(§§pop());
               if(_loc7_ || Boolean(this))
               {
                  _loc2_ = §§pop();
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        addr224:
                        addr259:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              §§push(§§pop() + _loc1_.bowlsPerScreen);
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc7_)
                              {
                                 if(_loc1_.trashBitmap != null)
                                 {
                                    §§push(_loc1_.trashMinY);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() - _loc1_.trashBitmap.y);
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           §§push(_loc2_);
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        _loc1_.trashBitmap.y += _loc5_ / _loc1_.trashTweenSpeed;
                        if(_loc7_)
                        {
                           if(Math.abs(_loc5_) <= 1)
                           {
                              if(_loc7_)
                              {
                              }
                           }
                        }
                        _loc1_.clearTrashStandin();
                     }
                     addr223:
                  }
                  §§goto(addr288);
               }
               while(true)
               {
                  §§push(§§pop() >= 0);
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              §§push(§§pop() < _loc1_.wingQueue.length);
                           }
                           §§goto(addr224);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        _loc1_.wingQueue[_loc2_].updateBowl();
                     }
                     addr288:
                     return;
                  }
                  _loc2_++;
                  if(!_loc6_)
                  {
                     §§goto(addr223);
                  }
                  §§goto(addr259);
               }
            }
            _loc5_ = §§pop();
            §§goto(addr259);
         }
         §§goto(addr86);
         §§push(0);
      }
      
      public function restoreAfterServing() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:BuildScreen = this;
         if(_loc2_ || _loc2_)
         {
            §§push(_loc1_.currentPlate);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  §§goto(addr65);
               }
            }
            §§pop().destroy();
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr65);
            }
         }
         _loc1_.checkForPlate();
         addr65:
         if(_loc2_ || _loc2_)
         {
            §§push(_loc1_.currentPlate);
         }
         _loc1_.currentPlate = null;
         if(_loc3_)
         {
         }
      }
      
      public function showBins() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc6_)
         {
            §§push(_loc2_.hasBonus("napkinholder"));
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(§§pop());
               if(!(_loc7_ && Boolean(_loc1_)))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                     }
                  }
               }
               §§pop();
               §§push(_loc2_.numNapkins > 0);
            }
            if(§§pop())
            {
               _loc1_.clip.bin_napkin.gotoAndPlay("open");
               if(_loc6_)
               {
                  _loc1_.clip.bin_napkin.buttonMode = true;
                  _loc1_.clip.bin_napkin.mouseEnabled = true;
               }
               _loc1_.clip.bin_napkin.useHandCursor = true;
            }
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(_loc1_.sides);
               if(_loc6_)
               {
                  if(§§pop() < §§pop().length)
                  {
                     _loc4_ = _loc1_.clip["bin_" + _loc1_.sides[_loc3_]];
                     if(_loc2_.hasTopping(_loc1_.sides[_loc3_]) == false)
                     {
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           _loc4_.gotoAndStop(5);
                           _loc4_.buttonMode = false;
                        }
                        _loc4_.mouseEnabled = false;
                        _loc4_.useHandCursor = false;
                     }
                     else
                     {
                        _loc4_.gotoAndPlay("open");
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           _loc4_.buttonMode = true;
                           _loc4_.mouseEnabled = true;
                           if(_loc7_)
                           {
                              continue;
                           }
                        }
                        _loc4_.useHandCursor = true;
                     }
                     continue;
                  }
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     §§push(0);
                     if(!_loc7_)
                     {
                        _loc3_ = §§pop();
                        if(_loc7_)
                        {
                        }
                        §§goto(addr259);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     break loop0;
                  }
                  addr254:
               }
               while(§§pop() < §§pop().length)
               {
                  _loc5_ = _loc1_.clip["bin_" + _loc1_.dips[_loc3_]];
                  if(_loc6_ || Boolean(this))
                  {
                     if(_loc2_.hasTopping(_loc1_.dips[_loc3_]) == false)
                     {
                        _loc5_.gotoAndStop(5);
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           _loc5_.buttonMode = false;
                           if(_loc7_ && Boolean(_loc1_))
                           {
                           }
                        }
                        addr253:
                        _loc3_++;
                        §§goto(addr254);
                     }
                     else
                     {
                        _loc5_.gotoAndPlay("open");
                        if(!_loc7_)
                        {
                           _loc5_.buttonMode = true;
                           _loc5_.mouseEnabled = true;
                        }
                     }
                     addr250:
                     _loc5_.useHandCursor = true;
                     §§goto(addr253);
                  }
                  _loc5_.mouseEnabled = false;
                  _loc5_.useHandCursor = false;
                  if(_loc7_)
                  {
                     §§goto(addr250);
                  }
                  §§goto(addr253);
                  break loop0;
               }
               addr259:
               return;
               addr257:
            }
            break;
            _loc3_++;
         }
         while(true)
         {
            §§goto(addr257);
         }
      }
      
      public function hideBins() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc2_.hasBonus("napkinholder"))
         {
            _loc1_.clip.bin_napkin.gotoAndPlay("close");
            _loc1_.clip.bin_napkin.buttonMode = false;
            _loc1_.clip.bin_napkin.mouseEnabled = false;
            _loc1_.clip.bin_napkin.useHandCursor = false;
            if(_loc7_)
            {
            }
            §§goto(addr57);
         }
         _loc3_ = 0;
         addr57:
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(_loc1_.sides);
               if(!_loc7_)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           _loc3_ = §§pop();
                           if(_loc6_)
                           {
                              addr210:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 break loop0;
                              }
                              addr210:
                           }
                        }
                        break;
                     }
                     §§goto(addr215);
                  }
                  _loc4_ = _loc1_.clip["bin_" + _loc1_.sides[_loc3_]];
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     if(_loc2_.hasTopping(_loc1_.sides[_loc3_]) == false)
                     {
                        _loc4_.gotoAndStop(5);
                        _loc4_.buttonMode = false;
                        _loc4_.mouseEnabled = false;
                        if(!_loc7_)
                        {
                           _loc4_.useHandCursor = false;
                           continue;
                        }
                        addr112:
                        _loc4_.buttonMode = false;
                     }
                     else
                     {
                        _loc4_.gotoAndPlay("close");
                        if(!_loc7_)
                        {
                           §§goto(addr112);
                        }
                     }
                     addr118:
                     _loc4_.useHandCursor = false;
                     continue;
                  }
                  _loc4_.mouseEnabled = false;
                  §§goto(addr118);
               }
               while(true)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     §§goto(addr215);
                  }
                  else
                  {
                     _loc5_ = _loc1_.clip["bin_" + _loc1_.dips[_loc3_]];
                     if(_loc6_)
                     {
                        if(_loc2_.hasTopping(_loc1_.dips[_loc3_]) == false)
                        {
                           if(!_loc7_)
                           {
                              _loc5_.gotoAndStop(5);
                              if(!_loc7_)
                              {
                                 _loc5_.buttonMode = false;
                                 if(_loc6_)
                                 {
                                    _loc5_.mouseEnabled = false;
                                    if(!_loc7_)
                                    {
                                       _loc5_.useHandCursor = false;
                                    }
                                 }
                                 addr206:
                                 _loc5_.useHandCursor = false;
                              }
                              _loc3_++;
                           }
                           §§goto(addr210);
                        }
                        else
                        {
                           _loc5_.gotoAndPlay("close");
                           _loc5_.buttonMode = false;
                        }
                     }
                     _loc5_.mouseEnabled = false;
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§goto(addr206);
                     }
                     §§goto(addr210);
                  }
               }
               addr213:
            }
            break;
            _loc3_++;
         }
         while(true)
         {
            §§goto(addr213);
         }
         addr215:
      }
      
      public function addToWingQueue(param1:WingOrder) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BuildScreen = this;
         if(_loc3_ || Boolean(this))
         {
            _loc2_.wingQueue.push(param1);
         }
      }
      
      public function removeFromWingQueue(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BuildScreen = this;
         if(_loc4_ || _loc3_)
         {
            if(param1 < _loc2_.wingQueue.length)
            {
               if(!_loc3_)
               {
                  _loc2_.wingQueue.splice(param1,1);
               }
            }
         }
      }
      
      public function getWingOrderBowl(param1:Number) : WingOrder
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:BuildScreen = this;
         var _loc3_:WingOrder = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.wingQueue.length)
         {
            if(_loc2_.wingQueue[_loc4_].id == param1)
            {
               if(!_loc5_)
               {
                  _loc3_ = _loc2_.wingQueue[_loc4_];
               }
               break;
            }
            _loc4_++;
            if(!_loc6_)
            {
               break;
            }
         }
         return _loc3_;
      }
      
      public function removeWingOrderBowl(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:BuildScreen = this;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < _loc2_.wingQueue.length)
            {
               if(_loc2_.wingQueue[_loc4_].id == param1)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && Boolean(this)))
                     {
                        _loc3_ = §§pop();
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           break;
                        }
                        addr92:
                        _loc2_.checkForBowlGaps();
                        §§goto(addr94);
                     }
                     if(§§pop() > -1)
                     {
                        if(_loc5_ || Boolean(_loc2_))
                        {
                        }
                     }
                     addr94:
                  }
                  continue;
                  return;
               }
               _loc4_++;
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  continue loop0;
               }
               _loc2_.wingQueue.splice(_loc3_,1);
               §§goto(addr92);
            }
            §§goto(addr71);
         }
      }
      
      public function checkForBowlGaps() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc1_:BuildScreen = this;
         §§push(_loc1_.currentBowlSet);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() * _loc1_.bowlsPerScreen);
            if(!_loc7_)
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = _loc2_;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc1_.bowlsPerScreen);
               }
               if(§§pop() < §§pop())
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() >= 0);
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              §§push(_loc3_);
                              if(!(_loc6_ || Boolean(_loc1_)))
                              {
                                 continue;
                              }
                           }
                        }
                     }
                     addr63:
                     if(!§§pop())
                     {
                        continue loop0;
                     }
                     §§push(_loc1_.startBowlX);
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(_loc3_);
                        if(!(_loc7_ && Boolean(_loc1_)))
                        {
                           §§push(§§pop() - _loc2_);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * _loc1_.bowlPadding);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 if(!(_loc7_ && Boolean(_loc1_)))
                                 {
                                    if(_loc1_.wingQueue[_loc3_].isAttached == false)
                                    {
                                       if(!(_loc6_ || Boolean(_loc1_)))
                                       {
                                          break;
                                       }
                                       _loc1_.wingQueue[_loc3_].attachBowl(_loc5_,true);
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    _loc1_.wingQueue[_loc3_].setTargetX(_loc5_);
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       continue loop0;
                                    }
                                    addr183:
                                    var _loc4_:Number = Math.ceil(_loc1_.wingQueue.length / _loc1_.bowlsPerScreen);
                                    addr174:
                                    if(!_loc7_)
                                    {
                                       §§push(_loc1_.currentBowlSet);
                                       §§push(_loc4_);
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             _loc1_.clip.next_btn.visible = true;
                                             if(_loc7_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc1_.clip.next_btn.visible = false;
                                          if(_loc6_)
                                          {
                                             addr222:
                                             _loc1_.checkForPatternTraining();
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr222);
                                 }
                                 addr168:
                                 §§goto(addr174);
                              }
                           }
                        }
                        addr160:
                        if(§§pop() > §§pop())
                        {
                           if(_loc6_)
                           {
                              _loc1_.clip.prev_btn.visible = true;
                              §§goto(addr168);
                           }
                        }
                        else
                        {
                           _loc1_.clip.prev_btn.visible = false;
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr160);
                     §§push(0);
                  }
                  §§goto(addr63);
                  §§push(§§pop() < _loc1_.wingQueue.length);
               }
               break;
            }
            §§push(_loc1_.currentBowlSet);
            if(!_loc7_)
            {
               §§goto(addr159);
            }
            §§goto(addr183);
            _loc3_++;
         }
      }
      
      public function checkForPatternTraining() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:BuildScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         _loc1_.isPatternTraining = false;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(!_loc1_.gameObj.§_-3f§);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     addr831:
                     addr832:
                     §§push(_loc1_.isActive);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop());
                     }
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        addr835:
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr843:
                              §§pop();
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 §§push(_loc1_.gameObj);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr860:
                                    §§push(§§pop().§_-A7§.hangerTicket.customerType == 23);
                                    if(_loc3_)
                                    {
                                    }
                                    addr896:
                                    §§pop();
                                 }
                                 addr877:
                                 §§pop().hud.showContextTraining("pattern6");
                                 _loc1_.lastPattern = 6;
                                 addr883:
                                 addr885:
                                 addr886:
                                 §§push(_loc2_.hasTrainedPattern7 == false);
                                 if(_loc2_.hasTrainedPattern7 == false)
                                 {
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr896);
                                    }
                                    addr1049:
                                    addr1094:
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          addr1053:
                                          §§pop();
                                          addr1109:
                                          addr1111:
                                          if(!(_loc4_ && Boolean(_loc1_)))
                                          {
                                             addr1061:
                                             §§push(_loc2_.hasTopping(FoodData.SAUCE_MEDIUM));
                                          }
                                          §§push(_loc1_.gameObj.§_-A7§);
                                          if(!_loc4_)
                                          {
                                             addr1118:
                                             addr1116:
                                             addr1119:
                                             addr1114:
                                             addr1115:
                                             addr1117:
                                             §§push(§§pop().hangerTicket != null);
                                             if(§§pop().hangerTicket != null)
                                             {
                                                §§pop();
                                                §§goto(addr1136);
                                             }
                                             §§goto(addr1135);
                                          }
                                          addr1135:
                                          if(§§pop())
                                          {
                                             §§goto(addr1136);
                                          }
                                          addr1136:
                                          addr1145:
                                          if(!(_loc4_ && Boolean(_loc1_)))
                                          {
                                             addr1130:
                                             §§push(_loc1_.gameObj.§_-A7§);
                                          }
                                          _loc1_.gameObj.hud.showContextTraining("pattern8");
                                          if(!_loc4_)
                                          {
                                             _loc1_.lastPattern = 8;
                                          }
                                          return;
                                          §§push(§§pop().hangerTicket.customerType == 27);
                                       }
                                       §§push(§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       addr1098:
                                       §§push(_loc1_.currentPlate.getMeatItems().length > 0);
                                       if(_loc3_)
                                       {
                                       }
                                       §§goto(addr1135);
                                    }
                                    if(§§pop())
                                    {
                                       addr1106:
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          §§goto(addr1109);
                                       }
                                       §§goto(addr1136);
                                    }
                                    §§goto(addr1118);
                                 }
                                 addr901:
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                    }
                                    addr981:
                                    §§push(_loc1_.gameObj.§_-A7§.hangerTicket);
                                    if(_loc3_)
                                    {
                                       §§push(null);
                                       if(_loc3_)
                                       {
                                          addr992:
                                          addr993:
                                          §§push(§§pop() != §§pop());
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§pop();
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc1_.gameObj);
                                                   if(_loc3_ || Boolean(_loc2_))
                                                   {
                                                      addr1011:
                                                      §§push(§§pop().§_-A7§.hangerTicket.customerType == 25);
                                                   }
                                                   §§goto(addr1145);
                                                }
                                                §§goto(addr1109);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§push(_loc1_.gameObj);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§pop().hud.showContextTraining("pattern7");
                                                addr1026:
                                                _loc1_.lastPattern = 7;
                                             }
                                             §§goto(addr1130);
                                          }
                                          §§push(_loc2_.hasTrainedPattern8 == false);
                                          if(_loc2_.hasTrainedPattern8 == false)
                                          {
                                             addr1035:
                                             §§pop();
                                             §§push(_loc2_.getRank());
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(14);
                                                if(_loc3_)
                                                {
                                                   addr1048:
                                                   §§push(§§pop() == §§pop());
                                                }
                                             }
                                             §§goto(addr1109);
                                          }
                                          §§goto(addr1049);
                                       }
                                       §§goto(addr1116);
                                    }
                                    §§goto(addr1109);
                                 }
                                 addr913:
                                 addr914:
                                 if(§§pop())
                                 {
                                    addr915:
                                    §§pop();
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       addr923:
                                       §§push(_loc1_.gameObj);
                                       if(!_loc4_)
                                       {
                                          addr927:
                                          §§push(§§pop().§_-A7§);
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop().tickets);
                                             if(!_loc4_)
                                             {
                                                addr938:
                                                §§push(§§pop().length >= 1);
                                                if(_loc4_ && _loc3_)
                                                {
                                                }
                                             }
                                             addr1080:
                                             §§push(§§pop().length >= 1);
                                             §§push(§§pop().length >= 1);
                                             if(_loc3_)
                                             {
                                                addr1086:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   addr1088:
                                                   §§goto(addr1094);
                                                   §§push(_loc1_.wingQueue.length >= 1);
                                                   §§push(_loc1_.wingQueue.length >= 1);
                                                }
                                                §§goto(addr1049);
                                             }
                                             §§goto(addr1119);
                                          }
                                          §§goto(addr1109);
                                       }
                                       addr1078:
                                       §§goto(addr1080);
                                       §§push(§§pop().§_-A7§.tickets);
                                    }
                                    §§goto(addr1109);
                                 }
                                 addr948:
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          addr955:
                                          §§push(_loc1_.wingQueue.length >= 1);
                                       }
                                       §§goto(addr1061);
                                    }
                                    addr971:
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc1_)))
                                       {
                                          addr980:
                                          §§pop();
                                          §§goto(addr981);
                                       }
                                       §§goto(addr1118);
                                    }
                                    §§goto(addr992);
                                 }
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    addr965:
                                    §§push(_loc1_.currentPlate.getMeatItems().length > 0);
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr1061);
                                 }
                                 §§goto(addr971);
                              }
                              §§push(_loc2_.hasTopping(FoodData.SAUCE_TERIYAKI));
                              if(_loc3_)
                              {
                                 §§goto(addr913);
                              }
                              §§goto(addr1053);
                           }
                           addr960:
                           §§goto(addr913);
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr877);
                              §§push(_loc1_.gameObj);
                           }
                           §§goto(addr955);
                        }
                        §§goto(addr883);
                     }
                     if(§§pop())
                     {
                        addr1068:
                        §§pop();
                        addr1069:
                        §§push(_loc1_.gameObj);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           §§goto(addr1078);
                        }
                        §§goto(addr1130);
                     }
                     §§goto(addr1080);
                  }
                  addr487:
                  §§push(false);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop() == §§pop());
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           §§push(_loc2_.getRank());
                           if(_loc3_ || _loc3_)
                           {
                              addr516:
                              §§push(§§pop() == 6);
                              if(_loc4_ && Boolean(_loc2_))
                              {
                              }
                              §§goto(addr843);
                           }
                           addr727:
                           §§push(§§pop() == 8);
                           §§push(§§pop() == 8);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    §§push(_loc2_.hasTopping(FoodData.SAUCE_HONEYMUSTARD));
                                    if(_loc3_)
                                    {
                                       addr747:
                                       §§push(§§pop());
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                       }
                                       §§goto(addr1061);
                                    }
                                 }
                                 §§goto(addr1118);
                              }
                              §§push(§§pop());
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 addr763:
                                 if(§§pop())
                                 {
                                    §§pop();
                                    addr768:
                                    §§push(_loc1_.gameObj.§_-A7§.tickets);
                                    if(!_loc4_)
                                    {
                                       addr771:
                                       §§push(§§pop().length >= 1);
                                       if(_loc4_ && Boolean(_loc1_))
                                       {
                                       }
                                       addr790:
                                       §§pop();
                                       §§push(_loc1_.wingQueue.length >= 1);
                                       §§push(_loc1_.wingQueue.length >= 1);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr804:
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(!_loc4_)
                                             {
                                                §§push(_loc1_.currentPlate.getMeatItems().length > 0);
                                                if(_loc4_)
                                                {
                                                }
                                                §§goto(addr1035);
                                             }
                                             §§goto(addr1088);
                                          }
                                          addr816:
                                          §§push(§§pop());
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr822:
                                                   §§pop();
                                                   §§push(_loc1_.gameObj);
                                                   if(_loc3_)
                                                   {
                                                      addr827:
                                                      §§goto(addr831);
                                                      §§push(§§pop().§_-A7§.hangerTicket == null);
                                                   }
                                                   §§goto(addr927);
                                                }
                                                §§goto(addr948);
                                             }
                                             §§goto(addr832);
                                          }
                                       }
                                       §§goto(addr835);
                                    }
                                    §§goto(addr1080);
                                 }
                                 §§push(§§pop());
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr790);
                                    }
                                    §§goto(addr816);
                                 }
                                 §§goto(addr1086);
                              }
                              §§goto(addr914);
                           }
                           §§goto(addr971);
                        }
                        addr627:
                        §§pop();
                        §§push(_loc1_.gameObj);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§push(§§pop().§_-A7§);
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              §§push(§§pop().hangerTicket);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(§§pop() != null);
                                 if(_loc3_)
                                 {
                                    addr658:
                                    addr659:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       addr661:
                                       §§push(_loc1_.gameObj);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr670:
                                          §§push(§§pop().§_-A7§);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§push(§§pop().hangerTicket.customerType);
                                             §§push(22);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                }
                                                addr717:
                                                §§pop();
                                                §§push(_loc2_.getRank());
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§goto(addr727);
                                                }
                                                §§goto(addr1011);
                                             }
                                             §§goto(addr727);
                                          }
                                          §§goto(addr1114);
                                       }
                                    }
                                    addr691:
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc1_)))
                                       {
                                          _loc1_.gameObj.hud.showContextTraining("pattern5");
                                          if(!_loc4_)
                                          {
                                             _loc1_.lastPattern = 5;
                                          }
                                          §§goto(addr955);
                                       }
                                       §§goto(addr1069);
                                    }
                                    §§push(_loc2_.hasTrainedPattern6 == false);
                                    if(_loc2_.hasTrainedPattern6 == false)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr717);
                                       }
                                       §§goto(addr992);
                                    }
                                    §§goto(addr727);
                                 }
                                 §§goto(addr1118);
                              }
                              §§goto(addr1115);
                           }
                           §§goto(addr768);
                        }
                        §§goto(addr860);
                     }
                     §§push(§§pop());
                     if(_loc3_)
                     {
                     }
                     §§goto(addr992);
                  }
                  if(§§pop())
                  {
                     if(_loc4_ && Boolean(_loc2_))
                     {
                     }
                     §§goto(addr960);
                  }
                  addr541:
                  addr542:
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(_loc1_.gameObj.§_-A7§);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop().tickets);
                           if(_loc3_ || Boolean(this))
                           {
                              addr564:
                              §§push(§§pop().length >= 1);
                           }
                           §§goto(addr938);
                        }
                        §§goto(addr981);
                     }
                     §§goto(addr1026);
                  }
                  §§push(§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        §§pop();
                        addr589:
                        §§push(_loc1_.wingQueue.length >= 1);
                        §§push(_loc1_.wingQueue.length >= 1);
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           if(!§§pop())
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    addr608:
                                    §§push(_loc1_.currentPlate);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().getMeatItems().length > 0);
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                       }
                                       §§goto(addr1117);
                                    }
                                    §§goto(addr965);
                                 }
                                 §§goto(addr923);
                              }
                              §§goto(addr915);
                           }
                        }
                        §§goto(addr993);
                     }
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr627);
                        }
                        §§goto(addr658);
                     }
                     §§goto(addr763);
                  }
                  §§goto(addr804);
               }
               if(§§pop())
               {
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     §§push(_loc2_.currentDay);
                     §§push(1);
                     if(_loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(§§pop() == §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              §§push(_loc2_.hasTrainedPattern2);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(!§§pop());
                              }
                              §§goto(addr971);
                           }
                           addr439:
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              addr442:
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr608);
                                 }
                                 addr460:
                                 if(§§pop())
                                 {
                                    §§push(_loc1_.gameObj);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       addr470:
                                       §§pop().hud.showContextTraining("pattern4");
                                       if(!_loc4_)
                                       {
                                          _loc1_.lastPattern = 4;
                                       }
                                       §§goto(addr768);
                                    }
                                    §§goto(addr1111);
                                 }
                                 §§push(_loc2_.hasTrainedPattern5);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr487);
                                 }
                                 §§goto(addr1068);
                              }
                              §§goto(addr658);
                           }
                           §§goto(addr1053);
                        }
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(_loc1_.wingQueue.length >= 1);
                              §§push(_loc1_.wingQueue.length >= 1);
                              if(!_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc1_.currentPlate.getMeatItems().length > 0);
                                    if(_loc3_)
                                    {
                                    }
                                    addr296:
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(_loc1_.gameObj);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().§_-A7§);
                                             if(!_loc4_)
                                             {
                                                addr309:
                                                §§push(§§pop().hangerTicket.customerType == 20);
                                                if(_loc3_)
                                                {
                                                }
                                                §§goto(addr1106);
                                             }
                                             §§goto(addr1118);
                                          }
                                          §§goto(addr877);
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             _loc1_.gameObj.hud.showContextTraining("pattern3");
                                             _loc1_.lastPattern = 3;
                                          }
                                          §§goto(addr1061);
                                       }
                                       §§push(_loc2_.hasTrainedPattern4);
                                       if(!_loc4_)
                                       {
                                          §§push(false);
                                          if(!_loc4_)
                                          {
                                             addr332:
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(_loc2_.getRank());
                                                         if(!_loc4_)
                                                         {
                                                            addr347:
                                                            §§push(§§pop() == 3);
                                                         }
                                                         §§goto(addr727);
                                                      }
                                                      addr424:
                                                      §§push(_loc1_.gameObj.§_-A7§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop().hangerTicket == null);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§goto(addr439);
                                                         }
                                                         §§goto(addr885);
                                                      }
                                                      §§goto(addr1118);
                                                   }
                                                   §§goto(addr980);
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc2_.hasTopping(FoodData.SIDE_REDPEPPER));
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      §§goto(addr439);
                                                   }
                                                   §§goto(addr747);
                                                }
                                                §§push(§§pop());
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr368:
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§pop();
                                                         addr372:
                                                         §§push(_loc1_.gameObj);
                                                         if(_loc3_ || Boolean(_loc2_))
                                                         {
                                                            §§push(§§pop().§_-A7§.tickets);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop().length >= 1);
                                                            }
                                                            §§goto(addr564);
                                                         }
                                                         §§goto(addr827);
                                                      }
                                                      addr540:
                                                      §§goto(addr541);
                                                      §§push(§§pop());
                                                   }
                                                   §§push(§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   addr391:
                                                   §§push(_loc1_.wingQueue.length >= 1);
                                                   if(!(_loc1_.wingQueue.length >= 1))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§pop();
                                                         §§push(_loc1_.currentPlate.getMeatItems().length > 0);
                                                      }
                                                      §§goto(addr658);
                                                   }
                                                }
                                                §§push(§§pop());
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr424);
                                                      }
                                                      §§goto(addr790);
                                                   }
                                                   §§goto(addr442);
                                                }
                                                §§goto(addr886);
                                             }
                                             §§goto(addr691);
                                          }
                                          §§goto(addr1086);
                                       }
                                       §§goto(addr460);
                                    }
                                    §§goto(addr542);
                                 }
                              }
                              §§goto(addr835);
                           }
                           §§goto(addr661);
                        }
                        §§push(§§pop());
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc1_.gameObj);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().§_-A7§.hangerTicket != null);
                              }
                              §§goto(addr470);
                           }
                           if(§§pop())
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§push(_loc1_.gameObj.§_-A7§.hangerTicket);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop().ticketNumber == 2);
                                 }
                                 §§goto(addr309);
                              }
                              §§goto(addr1035);
                           }
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(_loc1_.gameObj);
                                 if(!_loc4_)
                                 {
                                    §§pop().hud.showContextTraining("pattern2");
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       _loc1_.lastPattern = 2;
                                    }
                                    §§goto(addr391);
                                 }
                                 §§goto(addr877);
                              }
                              §§goto(addr981);
                           }
                           §§push(_loc2_.hasTrainedPattern3);
                           §§push(false);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() == §§pop());
                              §§push(§§pop() == §§pop());
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(_loc2_.getRank());
                                       if(_loc3_)
                                       {
                                          §§push(2);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(§§pop() == §§pop());
                                          }
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr372);
                                 }
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc2_.hasTopping(FoodData.SAUCE_CALYPSO));
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc1_.gameObj.§_-A7§.tickets);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().length >= 1);
                                    if(_loc3_ || _loc3_)
                                    {
                                    }
                                    §§goto(addr1068);
                                 }
                                 §§goto(addr771);
                              }
                              §§push(§§pop() && (_loc1_.wingQueue.length >= 1 || _loc2_.hasTopping(FoodData.SAUCE_ATOMIC)));
                              §§push(§§pop() && (_loc1_.wingQueue.length >= 1 || _loc2_.hasTopping(FoodData.SAUCE_ATOMIC)));
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       §§push(_loc1_.gameObj);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().§_-A7§.hangerTicket);
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop() != null);
                                          }
                                          §§goto(addr1011);
                                       }
                                       §§goto(addr670);
                                    }
                                    §§goto(addr589);
                                 }
                                 §§goto(addr296);
                              }
                              §§goto(addr332);
                           }
                           §§goto(addr368);
                        }
                        §§goto(addr659);
                     }
                     §§goto(addr516);
                  }
                  §§push(_loc1_.gameObj);
                  if(_loc3_)
                  {
                     §§push(§§pop().§_-A7§.hangerTicket.customerType);
                     §§push(13);
                     if(_loc3_)
                     {
                        §§goto(addr460);
                        §§push(§§pop() == §§pop());
                     }
                     §§goto(addr1048);
                  }
                  §§goto(addr877);
               }
               §§goto(addr1136);
            }
            §§pop();
            §§goto(addr536);
         }
         §§goto(addr901);
         §§push(_loc2_.getRank() == 11);
      }
      
      public function addToMovingItems(param1:FoodItem) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BuildScreen = this;
         if(!_loc3_)
         {
            _loc2_.movingItems.push(param1);
         }
      }
      
      public function removeFromMovingItems(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BuildScreen = this;
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() > -1);
               if(_loc4_ || param2)
               {
                  §§goto(addr95);
               }
               addr70:
               if(!§§pop())
               {
               }
               _loc3_.movingItems.splice(param1,1);
               §§goto(addr95);
            }
            §§push(§§pop() < _loc3_.movingItems.length);
            if(!(_loc5_ && param2))
            {
               §§goto(addr95);
            }
            §§goto(addr70);
         }
         _loc3_.movingItems[param1].destroy();
         if(_loc4_)
         {
            _loc3_.movingItems[param1] = null;
            §§goto(addr70);
         }
         addr95:
         if(§§pop())
         {
            if(!_loc5_)
            {
               §§pop();
               if(!_loc5_)
               {
                  §§push(param1);
               }
            }
         }
         if(§§pop())
         {
            if(_loc4_ || Boolean(this))
            {
               §§push(param2);
            }
         }
      }
      
      public function getMovingItemIndex(param1:FoodItem) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:BuildScreen = this;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < _loc2_.movingItems.length)
            {
               if(_loc2_.movingItems[_loc4_] == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(_loc4_);
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        _loc3_ = §§pop();
                        if(_loc5_ && Boolean(_loc3_))
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr75);
                  }
                  continue;
               }
               _loc4_++;
               if(!_loc6_)
               {
                  break;
               }
               continue loop0;
            }
            addr75:
            return §§pop();
         }
      }
      
      public function addToMovingDips(param1:DipItem) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BuildScreen = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.movingDips.push(param1);
         }
      }
      
      public function removeFromMovingDips(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BuildScreen = this;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() > -1);
            if(_loc4_ || param2)
            {
               §§goto(addr81);
            }
            addr49:
            if(§§pop())
            {
               _loc3_.movingDips[param1].destroy();
               if(_loc4_)
               {
                  _loc3_.movingDips[param1] = null;
                  if(_loc4_ || Boolean(_loc3_))
                  {
                  }
                  §§goto(addr81);
               }
            }
            _loc3_.movingDips.splice(param1,1);
            §§goto(addr81);
         }
         §§push(§§pop() < _loc3_.movingDips.length);
         if(!_loc5_)
         {
            addr81:
            if(§§pop())
            {
               if(!_loc5_)
               {
                  §§pop();
                  §§push(param1);
               }
            }
            if(§§pop())
            {
               §§push(param2);
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function getMovingDipIndex(param1:DipItem) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:BuildScreen = this;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < _loc2_.movingDips.length)
            {
               if(_loc2_.movingDips[_loc4_] == param1)
               {
                  if(_loc6_ && Boolean(param1))
                  {
                     break;
                  }
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        _loc3_ = §§pop();
                        if(_loc6_ && Boolean(_loc2_))
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr79);
                  }
                  continue;
               }
               _loc4_++;
               if(_loc6_ && Boolean(this))
               {
                  break;
               }
               continue loop0;
            }
            addr79:
            return §§pop();
         }
      }
      
      public function clearTrashStandin() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:BuildScreen = this;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc1_.trashBitmap)
            {
               _loc1_.trashBitmap.parent.removeChild(_loc1_.trashBitmap);
               if(!_loc1_.trashBMP)
               {
               }
               addr55:
               _loc1_.trashBitmap = null;
            }
            return;
         }
         _loc1_.trashBMP.dispose();
         _loc1_.trashBMP = null;
         §§goto(addr55);
      }
      
      public function createTrashStandin(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BuildScreen = this;
         _loc2_.clearTrashStandin();
         if(_loc3_ || Boolean(this))
         {
            _loc2_.trashBMP = new BitmapData(param1.width,param1.height,true,0);
            _loc2_.trashBMP.draw(param1);
            if(_loc3_)
            {
               _loc2_.trashBitmap = new Bitmap(_loc2_.trashBMP);
               _loc2_.clip.addChild(_loc2_.trashBitmap);
            }
         }
         _loc2_.trashBitmap.x = param1.x;
         _loc2_.trashBitmap.y = param1.y;
      }
      
      public function createNapkin(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BuildScreen = this;
         if(_loc4_ || Boolean(param2))
         {
            _loc3_.removeNapkin();
            if(_loc4_)
            {
               _loc3_.napkin = new Napkin(_loc3_.gameObj,param1,param2);
            }
         }
      }
      
      public function removeNapkin() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:BuildScreen = this;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_.napkin);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§push(_loc1_.napkin);
                  }
               }
            }
            §§pop().destroy();
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.napkin = null;
            }
         }
      }
      
      public function initStationUpgrades() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:BuildScreen = this;
         if(_loc2_)
         {
            §§push(_loc1_.gameObj);
            if(_loc2_)
            {
               §§push(§§pop().userData);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop().hasBonus("napkinholder"))
                  {
                     if(_loc2_)
                     {
                        _loc1_.clip.bin_napkin.visible = true;
                     }
                     _loc1_.clip.bin_napkin.num_txt.text = String(_loc1_.gameObj.userData.numNapkins);
                     §§push(_loc1_.gameObj);
                  }
                  else
                  {
                     _loc1_.clip.bin_napkin.visible = false;
                  }
                  §§goto(addr97);
               }
               §§goto(addr61);
            }
            addr61:
            if(§§pop().numNapkins <= 0)
            {
               _loc1_.clip.bin_napkin.gotoAndPlay("close");
               _loc1_.clip.bin_napkin.buttonMode = false;
            }
            addr97:
            return;
            §§push(§§pop().userData);
         }
         _loc1_.clip.bin_napkin.mouseEnabled = false;
         _loc1_.clip.bin_napkin.useHandCursor = false;
         §§goto(addr61);
      }
      
      public function restoreSoundAfterAd() : void
      {
      }
   }
}

