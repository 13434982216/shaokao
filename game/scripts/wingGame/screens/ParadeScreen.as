package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   import wingGame.models.Worker;
   
   public class ParadeScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var didStart:Boolean = false;
      
      public var lastTime:Number = 0;
      
      public var goldCustomerIDs:Array;
      
      public var silverCustomerIDs:Array;
      
      public var bronzeCustomerIDs:Array;
      
      public var noneCustomerIDs:Array;
      
      public var goldSetsShown:Number = 0;
      
      public var silverSetsShown:Number = 0;
      
      public var bronzeSetsShown:Number = 0;
      
      public var foodiniCustomerID:Number = -1;
      
      public var closerCustomerIDs:Array;
      
      public var floatCustomerIDs_papalouie:Array;
      
      public var floatCustomerIDs_pizzeria:Array;
      
      public var floatCustomerIDs_burgeria:Array;
      
      public var floatCustomerIDs_tacomia:Array;
      
      public var floatCustomerIDs_freezeria:Array;
      
      public var floatCustomerIDs_pancakeria:Array;
      
      public var floatCustomerIDs_flipline:Array;
      
      public var floatCustomerIDs_wingeria:Array;
      
      public var floatCustomerIDs_romano:Array;
      
      public var didChuck:Boolean = false;
      
      public var whichOrder:Number = -1;
      
      public var paradeOrder:Array;
      
      public var walkSpeed:Number = 2;
      
      public var carSpeed:Number = 3;
      
      public var movingParts:Array;
      
      public var movingPartsType:Array;
      
      public var startX:Number = -20;
      
      public var carStartY:Number = 351;
      
      public var customerStartY:Number = 270;
      
      public var customerScale:Number = 0.21;
      
      public var fromButton:Boolean = false;
      
      public var workers:Vector.<Worker>;
      
      public function ParadeScreen(param1:§_-BY§, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.goldCustomerIDs = [];
         this.silverCustomerIDs = [];
         if(_loc4_ || _loc3_)
         {
            this.bronzeCustomerIDs = [];
         }
         this.noneCustomerIDs = [];
         this.closerCustomerIDs = [];
         if(_loc4_ || param2)
         {
            this.floatCustomerIDs_papalouie = [];
            if(_loc4_ || Boolean(this))
            {
               this.floatCustomerIDs_pizzeria = [];
               this.floatCustomerIDs_burgeria = [];
               this.floatCustomerIDs_tacomia = [];
               this.floatCustomerIDs_freezeria = [];
               if(!_loc5_)
               {
                  this.floatCustomerIDs_pancakeria = [];
                  this.floatCustomerIDs_flipline = [];
                  this.floatCustomerIDs_wingeria = [];
                  this.floatCustomerIDs_romano = [];
                  this.paradeOrder = ["foodini","papalouie","closer","pizzeria","gold","burgeria","silver","tacomia","bronze","freezeria","romano","pancakeria","wingeria","flipline"];
                  if(!(_loc5_ && Boolean(this)))
                  {
                     this.movingParts = [];
                     this.movingPartsType = [];
                     if(_loc5_)
                     {
                     }
                     §§goto(addr119);
                  }
               }
            }
         }
         super();
         addr119:
         var _loc3_:ParadeScreen = this;
         if(!(_loc5_ && Boolean(param1)))
         {
            _loc3_.gameObj = param1;
            if(_loc4_)
            {
               _loc3_.fromButton = param2;
               if(_loc5_ && param2)
               {
               }
            }
            §§goto(addr153);
         }
         _loc3_.setupScreen();
         addr153:
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ParadeScreen = this;
         if(!_loc3_)
         {
            _loc1_.clip = new paradeScreenMC();
            if(_loc2_ || _loc3_)
            {
               §§push(_loc1_.gameObj);
               if(!_loc3_)
               {
                  §§pop().§_-BG§.addChild(_loc1_.clip);
                  _loc1_.workers = new Vector.<Worker>();
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.setupCustomerGroups();
                     if(_loc2_)
                     {
                        _loc1_.releaseNextGroup();
                        if(_loc2_)
                        {
                           _loc1_.didStart = true;
                           if(_loc3_)
                           {
                           }
                        }
                        _loc1_.clip.backtogame_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBackToGame);
                        _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                        if(_loc1_.paradeOrder.indexOf("papalouie") > -1)
                        {
                           if(_loc3_ && Boolean(this))
                           {
                           }
                           addr128:
                           if(_loc1_.fromButton == false)
                           {
                              §§push(_loc1_.gameObj);
                           }
                        }
                        else
                        {
                           _loc1_.clip.message.visible = true;
                        }
                        addr109:
                        §§push(_loc1_.gameObj);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§pop().soundManager.switchMusic("title");
                           §§goto(addr128);
                        }
                     }
                  }
               }
               §§pop().userData.didShowParade = true;
            }
            return;
         }
         _loc1_.clip.message.visible = false;
         §§goto(addr109);
      }
      
      public function clickBackToGame(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ParadeScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc4_)
            {
               _loc2_.clip.fader.gotoAndPlay("fadeout");
               if(_loc4_ || Boolean(this))
               {
               }
            }
            _loc2_.clip.backtogame_btn.visible = false;
         }
      }
      
      public function updateScreen(param1:Event = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:MovieClip = null;
         var _loc2_:ParadeScreen = this;
         if(!_loc6_)
         {
            if(_loc2_.didStart)
            {
               if(_loc7_ || Boolean(param1))
               {
                  _loc3_ = int(_loc2_.movingParts.length - 1);
               }
            }
            §§goto(addr722);
         }
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc2_.movingParts[_loc3_];
            §§push(_loc2_.movingPartsType);
            §§push(_loc3_);
            if(_loc7_ || Boolean(_loc3_))
            {
               §§push(§§pop()[§§pop()] == "car");
               if(!(§§pop()[§§pop()] == "car"))
               {
                  §§pop();
                  addr569:
                  §§push(_loc2_.movingPartsType);
                  §§push(_loc3_);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§push(§§pop()[§§pop()] == "carmain");
                  }
                  §§pop()[§§pop()] = "car";
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     addr578:
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
               if(§§pop())
               {
                  _loc4_.x += _loc2_.carSpeed;
                  addr95:
                  §§push(_loc2_.movingPartsType);
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     §§push(§§pop()[_loc3_] == "car");
                     if(!(§§pop()[_loc3_] == "car"))
                     {
                        §§pop();
                        if(_loc7_ || Boolean(param1))
                        {
                           addr435:
                           §§push(_loc2_.movingPartsType);
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              §§push(§§pop()[§§pop()] == "carmain");
                           }
                           §§push("customer");
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§pop()[§§pop()] = §§pop();
                           }
                           else
                           {
                              addr529:
                              §§pop()[§§pop()] = §§pop();
                              if(!(_loc7_ || Boolean(_loc3_)))
                              {
                                 continue;
                              }
                           }
                        }
                        §§goto(addr578);
                     }
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(_loc4_.x - _loc4_.width);
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              addr489:
                              §§push(660);
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 §§push(§§pop() > §§pop());
                              }
                              §§push(§§pop() == §§pop());
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 addr563:
                                 §§push(§§pop());
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    addr505:
                                    if(§§pop())
                                    {
                                       addr506:
                                       §§pop();
                                       §§push(_loc4_.x > 320);
                                       if(_loc7_ || Boolean(param1))
                                       {
                                       }
                                       addr544:
                                       §§push(§§pop());
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc7_ || Boolean(this))
                                    {
                                       §§pop();
                                       addr562:
                                       §§push(_loc4_.x - _loc4_.width / 2 > 500);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    addr564:
                                    _loc2_.releaseNextGroup();
                                    addr568:
                                    §§goto(addr569);
                                    §§push(_loc2_.movingPartsType);
                                    §§push(_loc3_);
                                 }
                                 §§goto(addr578);
                              }
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    _loc2_.releaseNextGroup();
                                    addr523:
                                    §§push(_loc2_.movingPartsType);
                                    if(!_loc6_)
                                    {
                                       addr527:
                                       §§goto(addr529);
                                       §§push(_loc3_);
                                       §§push("customer");
                                    }
                                    else
                                    {
                                       §§goto(addr568);
                                    }
                                 }
                              }
                              else
                              {
                                 addr541:
                                 §§goto(addr544);
                                 §§push(_loc2_.movingPartsType[_loc3_] == "carmain");
                              }
                              §§goto(addr578);
                           }
                           addr266:
                           if(§§pop() == _loc2_.paradeOrder.length)
                           {
                              _loc2_.clip.fader.gotoAndPlay("fadeout");
                              if(_loc6_)
                              {
                                 addr472:
                                 §§push(_loc2_.whichOrder);
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    addr481:
                                    §§push(0);
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr489);
                                    }
                                 }
                                 §§goto(addr562);
                              }
                           }
                           §§goto(addr578);
                        }
                        if(§§pop())
                        {
                           try
                           {
                              _loc2_.clearCustomer(_loc4_.customer0);
                           }
                           catch(err:Error)
                           {
                           }
                           try
                           {
                              _loc2_.clearCustomer(_loc4_.customer1);
                           }
                           catch(err:Error)
                           {
                           }
                           try
                           {
                              _loc2_.clearCustomer(_loc4_.customer2);
                              if(_loc6_ && Boolean(_loc2_))
                              {
                                 continue;
                              }
                           }
                           catch(err:Error)
                           {
                           }
                           try
                           {
                              _loc2_.clearCustomer(_loc4_.customer3);
                              addr362:
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 addr231:
                                 _loc2_.clip.holder.removeChild(_loc4_);
                                 §§push(_loc2_.movingParts);
                                 §§push(_loc3_);
                              }
                              §§push(_loc2_.movingParts);
                              §§push(_loc3_);
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 §§push(1);
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    addr380:
                                    §§pop().splice(§§pop(),§§pop());
                                    §§push(_loc2_.movingPartsType);
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(_loc3_);
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          §§push(1);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr527);
                                    }
                                    §§goto(addr527);
                                 }
                                 §§pop().splice(§§pop(),§§pop());
                                 if(_loc6_ && Boolean(param1))
                                 {
                                    §§goto(addr564);
                                 }
                              }
                              else
                              {
                                 §§goto(addr541);
                              }
                           }
                           catch(err:Error)
                           {
                              §§goto(addr231);
                           }
                           §§goto(addr578);
                        }
                        else
                        {
                           §§push(_loc2_.movingPartsType[_loc3_] == "customer");
                           if(_loc7_ || Boolean(param1))
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                 }
                                 addr318:
                                 §§pop();
                                 §§push(_loc4_.x - _loc4_.width / 2);
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    addr333:
                                    §§push(660);
                                    if(!_loc6_)
                                    {
                                       addr337:
                                       if(§§pop() > §§pop())
                                       {
                                          _loc2_.clearCustomer(_loc4_);
                                          if(_loc7_)
                                          {
                                             _loc2_.clip.holder.removeChild(_loc4_);
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                §§goto(addr362);
                                             }
                                             else
                                             {
                                                §§goto(addr523);
                                             }
                                          }
                                          §§goto(addr529);
                                       }
                                       else
                                       {
                                          §§push(_loc2_.movingPartsType);
                                          if(_loc7_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc6_)
                                             {
                                             }
                                             §§goto(addr527);
                                          }
                                       }
                                       §§goto(addr527);
                                    }
                                    §§goto(addr489);
                                 }
                                 §§goto(addr481);
                              }
                              addr316:
                              if(§§pop())
                              {
                                 §§goto(addr318);
                              }
                              §§goto(addr337);
                           }
                           §§pop();
                           §§push(_loc2_.movingPartsType);
                        }
                        addr415:
                        §§push(§§pop()[§§pop()] == "customermain");
                        if(§§pop()[§§pop()] == "customermain")
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§push(_loc4_.x > 500);
                        }
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              _loc2_.releaseNextGroup();
                           }
                           else
                           {
                              §§goto(addr564);
                           }
                           §§goto(addr578);
                        }
                        else
                        {
                           §§push(_loc2_.movingPartsType);
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              §§push(§§pop()[§§pop()] == "customermain");
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_ && Boolean(_loc2_))
                                 {
                                 }
                                 §§goto(addr505);
                              }
                              §§goto(addr506);
                           }
                        }
                        §§goto(addr569);
                     }
                     if(§§pop())
                     {
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           §§goto(addr472);
                        }
                     }
                     §§goto(addr563);
                  }
                  §§push(_loc3_);
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     §§push(§§pop()[§§pop()] == "customermain");
                     if(!_loc6_)
                     {
                        §§goto(addr316);
                     }
                     §§goto(addr506);
                  }
                  §§goto(addr415);
               }
               else
               {
                  _loc4_.x += _loc2_.walkSpeed;
                  if(_loc7_)
                  {
                     §§goto(addr95);
                  }
               }
               §§goto(addr435);
               §§push(_loc2_.movingPartsType);
               §§push(_loc3_);
            }
            §§push(1);
            if(!_loc6_)
            {
               §§pop().splice(§§pop(),§§pop());
               if(!_loc6_)
               {
                  §§push(_loc2_.movingPartsType);
                  §§push(_loc3_);
                  §§push(1);
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     §§pop().splice(§§pop(),§§pop());
                     §§push(_loc2_.whichOrder);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§goto(addr266);
                     }
                     else
                     {
                        §§goto(addr333);
                     }
                  }
               }
               §§goto(addr578);
            }
            §§goto(addr380);
         }
         if(!_loc6_)
         {
            if(_loc2_.clip.fader.currentFrame == _loc2_.clip.fader.totalFrames)
            {
               _loc2_.didStart = false;
               if(_loc2_.fromButton)
               {
                  if(!_loc6_)
                  {
                     §§push(_loc2_.gameObj);
                     if(_loc7_ || Boolean(param1))
                     {
                        §§pop().§_-08§();
                        if(_loc7_)
                        {
                        }
                     }
                     addr679:
                     §§pop().§function§();
                     if(_loc6_ && Boolean(_loc2_))
                     {
                     }
                  }
                  addr677:
                  §§goto(addr679);
                  §§push(_loc2_.gameObj);
               }
               else
               {
                  §§push(_loc2_.gameObj.userData);
                  if(_loc7_ || Boolean(this))
                  {
                     if(§§pop().isPayday())
                     {
                        if(_loc7_)
                        {
                           §§push(_loc2_.gameObj);
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§pop().§_-25§();
                              if(_loc6_ && Boolean(param1))
                              {
                                 addr713:
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr677);
                        }
                        §§goto(addr679);
                     }
                     else
                     {
                        addr716:
                        §§push(_loc2_.gameObj);
                        if(!_loc6_)
                        {
                           §§push(§§pop().§_-EW§);
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr674:
                              §§push(Boolean(§§pop().showNoPapa));
                              if(!Boolean(§§pop().showNoPapa))
                              {
                                 §§pop();
                                 §§push(_loc2_.gameObj);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop().§_-EW§);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr677);
                                 }
                              }
                              else
                              {
                                 §§push(_loc2_.gameObj.userData);
                              }
                           }
                           §§goto(addr674);
                           §§push(Boolean(§§pop().showNewCustomer));
                        }
                        §§pop().§_-Bi§();
                        if(_loc6_)
                        {
                        }
                     }
                  }
                  if(§§pop().getToppingToReveal() != "none")
                  {
                     if(_loc7_ || Boolean(this))
                     {
                        §§push(_loc2_.gameObj);
                        if(_loc7_)
                        {
                           §§pop().§_-EH§();
                           §§goto(addr713);
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc2_.gameObj);
                  }
                  §§goto(addr716);
               }
            }
            §§goto(addr722);
         }
         _loc2_.gameObj.§_-Dj§();
         addr722:
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:ParadeScreen = this;
         if(_loc4_)
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(_loc3_ && _loc3_)
            {
            }
            §§goto(addr41);
         }
         _loc1_.clip.backtogame_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBackToGame);
         addr41:
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_.workers.length)
            {
               if(!_loc3_)
               {
                  _loc1_.workers = null;
               }
               break;
            }
            _loc1_.workers[_loc2_].destroy();
            _loc1_.workers[_loc2_] = null;
            §§goto(addr105);
         }
         _loc1_.clip = null;
         addr105:
         if(!_loc3_)
         {
            _loc2_++;
            if(_loc4_ || Boolean(this))
            {
               continue loop0;
            }
         }
         break loop0;
         _loc1_.gameObj.§_-BG§.removeChild(_loc1_.clip);
         if(_loc4_ || Boolean(_loc1_))
         {
            break loop0;
         }
      }
      
      public function releaseNextGroup() : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Boolean = false;
         var _loc8_:WorkerData = null;
         var _loc9_:Worker = null;
         var _loc10_:WorkerData = null;
         var _loc11_:Worker = null;
         var _loc12_:Worker = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc15_:Array = null;
         var _loc16_:* = false;
         var _loc17_:Array = null;
         var _loc18_:Array = null;
         var _loc19_:MovieClip = null;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Array = null;
         var _loc23_:MovieClip = null;
         var _loc24_:Number = NaN;
         var _loc25_:* = NaN;
         var _loc1_:ParadeScreen = this;
         §§push(_loc1_.paradeOrder);
         if(_loc29_ || Boolean(_loc3_))
         {
            §§push(_loc1_.whichOrder);
            if(!(_loc28_ && Boolean(_loc2_)))
            {
               §§push(§§pop()[§§pop()] == "gold");
               if(§§pop()[§§pop()] == "gold")
               {
                  §§pop();
                  if(_loc29_)
                  {
                     §§push(_loc1_.goldSetsShown);
                     if(!_loc28_)
                     {
                        §§push(_loc1_.goldCustomerIDs);
                        if(_loc29_)
                        {
                           §§push(§§pop() < §§pop().length);
                           if(_loc28_)
                           {
                           }
                           addr156:
                           §§pop();
                           §§push(_loc1_.silverSetsShown);
                           if(_loc29_ || Boolean(_loc2_))
                           {
                              §§push(_loc1_.silverCustomerIDs);
                              if(_loc28_)
                              {
                              }
                              addr227:
                              addr567:
                              addr571:
                              addr569:
                              §§push(§§pop() < §§pop().length);
                              if(_loc29_)
                              {
                                 addr231:
                                 if(!§§pop())
                                 {
                                    var _loc26_:* = _loc1_;
                                    §§push(_loc26_.whichOrder);
                                    if(_loc29_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc27_:* = §§pop();
                                    if(_loc29_)
                                    {
                                       _loc26_.whichOrder = _loc27_;
                                    }
                                 }
                                 addr248:
                                 §§push(_loc1_.whichOrder);
                              }
                              §§pop();
                              §§push(_loc3_ == "burgeria");
                              §§push(_loc3_ == "burgeria");
                              if(_loc29_ || Boolean(_loc2_))
                              {
                                 addr579:
                                 if(!§§pop())
                                 {
                                    addr623:
                                    if(_loc29_ || Boolean(_loc3_))
                                    {
                                       §§pop();
                                       §§push(_loc3_ == "tacomia");
                                    }
                                    if(!§§pop())
                                    {
                                       addr638:
                                       if(!_loc28_)
                                       {
                                          §§pop();
                                          if(!_loc28_)
                                          {
                                             §§goto(addr640);
                                          }
                                          addr633:
                                          §§push(_loc3_ == "flipline");
                                          §§push(_loc3_ == "flipline");
                                       }
                                       §§pop();
                                       addr640:
                                       addr642:
                                       §§push(_loc3_);
                                       if(!_loc28_)
                                       {
                                          addr621:
                                          §§push(§§pop() == "pancakeria");
                                       }
                                       if(§§pop() == "romano")
                                       {
                                          _loc13_ = getDefinitionByName("parade_car_" + _loc3_) as Class;
                                          _loc14_ = new _loc13_() as MovieClip;
                                          _loc15_ = _loc1_["floatCustomerIDs_" + _loc3_];
                                          if(!(_loc28_ && Boolean(this)))
                                          {
                                             _loc16_ = false;
                                             if(_loc28_ && Boolean(this))
                                             {
                                             }
                                             addr684:
                                             loop4:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                while(true)
                                                {
                                                   if(§§pop() >= _loc15_.length)
                                                   {
                                                      if(!(_loc28_ && Boolean(_loc1_)))
                                                      {
                                                         addr868:
                                                         _loc14_.x = _loc1_.startX;
                                                         if(!(_loc28_ && Boolean(_loc2_)))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      addr883:
                                                      _loc1_.clip.holder.addChild(_loc14_);
                                                   }
                                                   else
                                                   {
                                                      _loc1_.buildCustomer(_loc15_[_loc2_],_loc14_["customer" + _loc2_]);
                                                      if(!_loc29_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(_loc3_);
                                                      if(!(_loc28_ && Boolean(_loc2_)))
                                                      {
                                                         if(§§pop() == "papalouie")
                                                         {
                                                            if(_loc29_)
                                                            {
                                                               _loc14_["customer" + _loc2_].gotoAndPlay("standwave0");
                                                               if(_loc28_)
                                                               {
                                                               }
                                                               addr835:
                                                               §§push(_loc2_);
                                                               if(_loc29_)
                                                               {
                                                                  addr838:
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc28_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               §§push(§§pop());
                                                               if(!(_loc29_ || Boolean(_loc1_)))
                                                               {
                                                                  continue;
                                                               }
                                                               _loc2_ = §§pop();
                                                               if(_loc29_ || Boolean(_loc2_))
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr868);
                                                            }
                                                            addr809:
                                                            _loc14_["customer" + _loc2_].gotoAndPlay("stand");
                                                            §§goto(addr835);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      if(§§pop() != "pizzeria")
                                                      {
                                                         §§push(Math.random() > 0.5);
                                                         if(!_loc28_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc29_ || Boolean(_loc3_))
                                                            {
                                                               addr801:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc29_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc28_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc28_)
                                                                                 {
                                                                                 }
                                                                                 addr788:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr784:
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc29_)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr838);
                                                                     }
                                                                     addr797:
                                                                     §§push(_loc16_);
                                                                     if(_loc29_)
                                                                     {
                                                                     }
                                                                     addr832:
                                                                     _loc16_ = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§goto(addr835);
                                                                     }
                                                                  }
                                                                  §§goto(addr788);
                                                                  §§push(§§pop());
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc29_ || Boolean(_loc1_))
                                                                  {
                                                                     §§goto(addr809);
                                                                  }
                                                                  break;
                                                               }
                                                               _loc14_["customer" + _loc2_].gotoAndPlay("standwave" + Math.min(1,_loc2_));
                                                               if(!_loc28_)
                                                               {
                                                                  §§goto(addr832);
                                                                  §§push(true);
                                                               }
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc2_);
                                                               if(_loc28_ && Boolean(_loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr784);
                                                               §§push(1);
                                                            }
                                                            §§goto(addr801);
                                                         }
                                                         §§pop();
                                                         if(_loc29_ || Boolean(_loc1_))
                                                         {
                                                            §§goto(addr797);
                                                         }
                                                         break;
                                                      }
                                                      _loc14_["customer" + _loc2_].gotoAndPlay("stand");
                                                      §§goto(addr835);
                                                   }
                                                   §§push(_loc1_.movingParts);
                                                   if(_loc29_ || Boolean(this))
                                                   {
                                                      §§pop().push(_loc14_);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(_loc1_.movingPartsType);
                                                      }
                                                      §§goto(addr801);
                                                   }
                                                   §§pop().push("carmain");
                                                   §§goto(addr801);
                                                }
                                                _loc14_.y = _loc1_.carStartY;
                                                §§goto(addr883);
                                             }
                                          }
                                          _loc2_ = 0;
                                          §§goto(addr684);
                                       }
                                       else
                                       {
                                          §§push(_loc3_);
                                          if(_loc29_ || Boolean(_loc3_))
                                          {
                                             §§push(§§pop() == "gold");
                                             if(_loc29_)
                                             {
                                                §§push(§§pop());
                                                if(_loc29_ || Boolean(_loc3_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr953:
                                                      if(!(_loc28_ && Boolean(_loc2_)))
                                                      {
                                                         §§pop();
                                                         if(!_loc28_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc29_)
                                                            {
                                                            }
                                                            addr962:
                                                            if(§§pop() == "silver")
                                                            {
                                                               addr965:
                                                               _loc17_ = _loc1_[_loc3_ + "CustomerIDs"];
                                                               _loc18_ = [];
                                                               if(_loc29_ || Boolean(this))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc28_)
                                                                  {
                                                                     if(§§pop() == "gold")
                                                                     {
                                                                        if(_loc29_)
                                                                        {
                                                                           _loc18_ = _loc17_[_loc1_.goldSetsShown];
                                                                           if(_loc28_)
                                                                           {
                                                                           }
                                                                           addr1562:
                                                                           addr1531:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc28_)
                                                                        {
                                                                           if(§§pop() == "silver")
                                                                           {
                                                                              if(_loc29_)
                                                                              {
                                                                                 _loc18_ = _loc17_[_loc1_.silverSetsShown];
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc3_);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr1028:
                                                                     §§push(0);
                                                                     if(!_loc28_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                        }
                                                                     }
                                                                     while(§§pop() < _loc18_.length)
                                                                     {
                                                                        _loc19_ = new customerParadeMC();
                                                                        if(!_loc28_)
                                                                        {
                                                                           _loc1_.buildCustomer(_loc18_[_loc2_],_loc19_);
                                                                           _loc19_.scaleX = _loc1_.customerScale * -1;
                                                                           if(_loc29_ || Boolean(_loc3_))
                                                                           {
                                                                              _loc19_.scaleY = _loc1_.customerScale;
                                                                              if(_loc28_)
                                                                              {
                                                                              }
                                                                              addr1336:
                                                                              _loc19_.y += 20;
                                                                              if(_loc29_ || Boolean(_loc3_))
                                                                              {
                                                                                 _loc1_.clip.holder.addChild(_loc19_);
                                                                                 if(_loc29_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr1361:
                                                                                 }
                                                                                 addr1417:
                                                                                 §§push(_loc1_.movingParts);
                                                                                 if(!(_loc28_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§pop().push(_loc19_);
                                                                                    addr1428:
                                                                                    if(_loc2_ == _loc18_.length - 1)
                                                                                    {
                                                                                       if(!(_loc28_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(_loc1_.movingPartsType);
                                                                                          if(_loc29_ || Boolean(this))
                                                                                          {
                                                                                             §§pop().push("customermain");
                                                                                          }
                                                                                          addr1459:
                                                                                          _loc2_++;
                                                                                          addr1458:
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc1_.movingPartsType);
                                                                                 }
                                                                                 §§pop().push("customer");
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr1458);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1368:
                                                                                 _loc1_.clip.holder.addChildAt(_loc19_,0);
                                                                                 if(_loc28_ && Boolean(_loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              addr1381:
                                                                              _loc19_.y += Math.round(Math.random() * 12) - 6;
                                                                              _loc19_.x -= 20 + (20 * _loc2_ + Math.floor(Math.random() * 10));
                                                                              §§goto(addr1417);
                                                                           }
                                                                           addr1267:
                                                                           _loc19_.gotoAndPlay("walkwave_2");
                                                                           addr1303:
                                                                           §§push(_loc2_);
                                                                           if(!(_loc28_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(_loc29_ || Boolean(_loc3_))
                                                                                    {
                                                                                    }
                                                                                    addr1334:
                                                                                    §§push(0);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc1_.clip.holder.addChild(_loc19_);
                                                                                 }
                                                                                 §§goto(addr1417);
                                                                              }
                                                                              addr1335:
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 §§goto(addr1336);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc19_.y -= 20;
                                                                              }
                                                                              §§goto(addr1368);
                                                                           }
                                                                           §§push(2);
                                                                           if(_loc29_)
                                                                           {
                                                                              addr1326:
                                                                              §§push(§§pop() % §§pop());
                                                                              if(_loc29_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§goto(addr1334);
                                                                              }
                                                                              §§goto(addr1459);
                                                                           }
                                                                           §§goto(addr1335);
                                                                           addr1276:
                                                                        }
                                                                        _loc19_.x = _loc1_.startX;
                                                                        _loc19_.y = _loc1_.customerStartY;
                                                                        §§push(Math.random());
                                                                        if(!(_loc28_ && Boolean(this)))
                                                                        {
                                                                           _loc20_ = §§pop();
                                                                           _loc21_ = Math.random();
                                                                           if(_loc29_ || Boolean(_loc1_))
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc28_ && Boolean(this)))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc28_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             addr1234:
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr1157:
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc28_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§push(§§pop() == "bronze");
                                                                                                   if(!(_loc28_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc29_ || Boolean(this))
                                                                                                      {
                                                                                                      }
                                                                                                      addr1160:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr1228:
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            addr1165:
                                                                                                            §§push(_loc3_ == "gold");
                                                                                                         }
                                                                                                         §§goto(addr1303);
                                                                                                      }
                                                                                                   }
                                                                                                   addr1159:
                                                                                                   §§goto(addr1160);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                §§goto(addr1159);
                                                                                                §§push(§§pop() == "silver");
                                                                                             }
                                                                                             if(_loc21_ > 0.8)
                                                                                             {
                                                                                                if(_loc28_ && Boolean(_loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                _loc19_.gotoAndPlay("walkwave");
                                                                                                if(_loc29_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr1276);
                                                                                                }
                                                                                                §§goto(addr1428);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc21_);
                                                                                                if(!(_loc28_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   §§push(0.5);
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         §§goto(addr1267);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         _loc19_.gotoAndPlay("walkwave_3");
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§goto(addr1267);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1336);
                                                                                                   }
                                                                                                   §§goto(addr1428);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc28_ && Boolean(_loc1_)))
                                                                                          {
                                                                                             §§goto(addr1157);
                                                                                          }
                                                                                          §§goto(addr1165);
                                                                                       }
                                                                                       §§goto(addr1159);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc19_.gotoAndPlay("walkbanner");
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          _loc19_.flag.inside.gotoAndStop(_loc3_);
                                                                                          if(_loc28_ && Boolean(_loc1_))
                                                                                          {
                                                                                             addr1208:
                                                                                          }
                                                                                          §§goto(addr1267);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1217:
                                                                                       }
                                                                                       §§goto(addr1228);
                                                                                    }
                                                                                    else if(_loc20_ > 0.7)
                                                                                    {
                                                                                       if(!(_loc28_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          §§push(_loc21_);
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             if(§§pop() > 0.8)
                                                                                             {
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   _loc19_.gotoAndPlay("walkwave2");
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      §§goto(addr1208);
                                                                                                   }
                                                                                                   §§goto(addr1361);
                                                                                                }
                                                                                                §§goto(addr1381);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc21_);
                                                                                             }
                                                                                             §§goto(addr1228);
                                                                                          }
                                                                                          if(§§pop() > 0.4)
                                                                                          {
                                                                                             _loc19_.gotoAndPlay("walkwave2_2");
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§goto(addr1217);
                                                                                             }
                                                                                             §§goto(addr1336);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc19_.gotoAndPlay("walkwave2_3");
                                                                                             if(!(_loc29_ || Boolean(_loc1_)))
                                                                                             {
                                                                                                addr1299:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1228);
                                                                                       }
                                                                                       §§goto(addr1267);
                                                                                    }
                                                                                    else if(_loc20_ > 0.4)
                                                                                    {
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§goto(addr1234);
                                                                                       }
                                                                                       §§goto(addr1336);
                                                                                    }
                                                                                    else if(_loc21_ > 0.7)
                                                                                    {
                                                                                       _loc19_.gotoAndPlay("walk");
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc21_);
                                                                                       §§push(0.4);
                                                                                       if(_loc29_ || Boolean(_loc3_))
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                _loc19_.gotoAndPlay("walk_2");
                                                                                                §§goto(addr1299);
                                                                                             }
                                                                                             §§goto(addr1459);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc19_.gotoAndPlay("walk_3");
                                                                                          }
                                                                                          §§goto(addr1267);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1428);
                                                                                 }
                                                                                 §§goto(addr1326);
                                                                              }
                                                                              §§goto(addr1334);
                                                                           }
                                                                           §§goto(addr1267);
                                                                        }
                                                                        §§goto(addr1459);
                                                                     }
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!(_loc28_ && Boolean(_loc2_)))
                                                                        {
                                                                           if(§§pop() == "gold")
                                                                           {
                                                                              _loc26_ = _loc1_;
                                                                              §§push(_loc26_.goldSetsShown);
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              _loc27_ = §§pop();
                                                                              if(!(_loc28_ && Boolean(_loc1_)))
                                                                              {
                                                                                 _loc26_.goldSetsShown = _loc27_;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc28_ && Boolean(_loc2_))
                                                                              {
                                                                              }
                                                                              addr1533:
                                                                              if(§§pop() == "bronze")
                                                                              {
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr1537:
                                                                                    _loc26_ = _loc1_;
                                                                                    §§push(_loc26_.bronzeSetsShown);
                                                                                    if(_loc29_ || Boolean(_loc2_))
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                    }
                                                                                    _loc27_ = §§pop();
                                                                                    if(!(_loc28_ && Boolean(_loc1_)))
                                                                                    {
                                                                                       _loc26_.bronzeSetsShown = _loc27_;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1562);
                                                                        }
                                                                        if(§§pop() == "silver")
                                                                        {
                                                                           if(_loc29_)
                                                                           {
                                                                              _loc26_ = _loc1_;
                                                                              §§push(_loc26_.silverSetsShown);
                                                                              if(!(_loc28_ && Boolean(this)))
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              _loc27_ = §§pop();
                                                                              if(!_loc28_)
                                                                              {
                                                                                 _loc26_.silverSetsShown = _loc27_;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1537);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1533);
                                                                           §§push(_loc3_);
                                                                        }
                                                                        §§goto(addr1562);
                                                                     }
                                                                     §§goto(addr1531);
                                                                  }
                                                                  if(§§pop() == "bronze")
                                                                  {
                                                                  }
                                                                  §§goto(addr1028);
                                                               }
                                                               _loc18_ = _loc17_[_loc1_.bronzeSetsShown];
                                                               §§goto(addr1028);
                                                            }
                                                            else
                                                            {
                                                               _loc22_ = _loc1_[_loc3_ + "CustomerIDs"];
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc28_ && Boolean(this)))
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc29_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(§§pop() < _loc22_.length)
                                                                  {
                                                                     _loc23_ = new customerParadeMC();
                                                                     if(!_loc28_)
                                                                     {
                                                                        _loc1_.buildCustomer(_loc22_[_loc2_],_loc23_);
                                                                        if(_loc29_ || Boolean(_loc2_))
                                                                        {
                                                                           _loc23_.scaleX = _loc1_.customerScale * -1;
                                                                           _loc23_.scaleY = _loc1_.customerScale;
                                                                           _loc23_.x = _loc1_.startX;
                                                                           if(!(_loc28_ && Boolean(_loc2_)))
                                                                           {
                                                                              _loc23_.y = _loc1_.customerStartY;
                                                                              _loc24_ = Math.random();
                                                                              §§push(Math.random());
                                                                              if(!(_loc28_ && Boolean(_loc3_)))
                                                                              {
                                                                                 _loc25_ = §§pop();
                                                                                 §§push(_loc2_);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc28_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc28_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          addr1702:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             addr1700:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(§§pop() == "bronze");
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc29_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            §§push(§§pop() == "silver");
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§push(§§pop() == "gold");
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc23_.gotoAndPlay("walkbanner");
                                                                                             if(!(_loc28_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                _loc23_.flag.inside.gotoAndStop(_loc3_);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1795:
                                                                                             }
                                                                                             addr1826:
                                                                                             §§push(_loc2_);
                                                                                             §§push(0);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   §§push(2);
                                                                                                   if(_loc29_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc1_.clip.holder.addChild(_loc23_);
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      addr1921:
                                                                                                      §§push(_loc1_.movingParts);
                                                                                                      if(!(_loc28_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§pop().push(_loc23_);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr1970:
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            addr1937:
                                                                                                            §§push(_loc22_.length - 1);
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      addr1950:
                                                                                                      §§pop().push("customermain");
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            §§goto(addr1970);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr1941:
                                                                                                §§push(_loc1_.movingPartsType);
                                                                                                if(!(_loc28_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§goto(addr1950);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr1955:
                                                                                                   §§pop().push("customer");
                                                                                                }
                                                                                                §§goto(addr1950);
                                                                                             }
                                                                                             §§push(§§pop() % §§pop());
                                                                                             if(!(_loc28_ && Boolean(this)))
                                                                                             {
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr1970);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc24_);
                                                                                             §§push(0.7);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   §§push(_loc25_);
                                                                                                   if(_loc28_ && Boolean(_loc2_))
                                                                                                   {
                                                                                                      addr1813:
                                                                                                      §§push(0.4);
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               _loc23_.gotoAndPlay("walk_2");
                                                                                                            }
                                                                                                            addr1913:
                                                                                                            §§goto(addr1921);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc23_.gotoAndPlay("walk_3");
                                                                                                         }
                                                                                                         §§goto(addr1826);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else if(_loc24_ > 0.4)
                                                                                                {
                                                                                                   §§push(_loc25_);
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      §§push(0.8);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            addr1768:
                                                                                                            _loc23_.gotoAndPlay("walkwave");
                                                                                                            §§goto(addr1795);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc25_);
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               addr1776:
                                                                                                               if(§§pop() > 0.5)
                                                                                                               {
                                                                                                                  if(!(_loc28_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     _loc23_.gotoAndPlay("walkwave_2");
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        §§goto(addr1795);
                                                                                                                     }
                                                                                                                     §§goto(addr1921);
                                                                                                                  }
                                                                                                                  §§goto(addr1826);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc23_.gotoAndPlay("walkwave_3");
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     §§goto(addr1795);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1921);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1937);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc25_);
                                                                                                   §§push(0.7);
                                                                                                   if(_loc28_ && Boolean(_loc3_))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                _loc23_.gotoAndPlay("walk");
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                }
                                                                                                addr1894:
                                                                                                _loc23_.x -= 20 + (20 * _loc2_ + Math.floor(Math.random() * 10));
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   §§goto(addr1913);
                                                                                                }
                                                                                                §§goto(addr1941);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1813);
                                                                                                §§push(_loc25_);
                                                                                             }
                                                                                          }
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             §§goto(addr1941);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc1_.movingPartsType);
                                                                                          }
                                                                                          §§goto(addr1955);
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc28_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr1700);
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§goto(addr1921);
                                                                                       }
                                                                                       §§goto(addr1702);
                                                                                    }
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       _loc23_.y += 20;
                                                                                       if(_loc29_ || Boolean(this))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr1921);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc23_.y -= 20;
                                                                                       _loc1_.clip.holder.addChildAt(_loc23_,0);
                                                                                    }
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                                 continue;
                                                                              }
                                                                              if(§§pop() > 0.8)
                                                                              {
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    _loc23_.gotoAndPlay("walkwave2");
                                                                                    addr1757:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1768);
                                                                                 }
                                                                                 §§goto(addr1826);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc25_);
                                                                                 §§push(0.4);
                                                                                 if(_loc29_ || Boolean(this))
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       _loc23_.gotoAndPlay("walkwave2_2");
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc23_.gotoAndPlay("walkwave2_3");
                                                                                    }
                                                                                    §§goto(addr1757);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1776);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1921);
                                                                           }
                                                                           §§goto(addr1826);
                                                                        }
                                                                        _loc1_.clip.holder.addChild(_loc23_);
                                                                     }
                                                                     _loc23_.y += Math.round(Math.random() * 12) - 6;
                                                                     §§goto(addr1894);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr961:
                                                         §§goto(addr962);
                                                         §§push(_loc3_);
                                                      }
                                                      §§pop();
                                                      if(_loc29_ || Boolean(_loc2_))
                                                      {
                                                         §§goto(addr961);
                                                      }
                                                      §§goto(addr965);
                                                   }
                                                }
                                                addr950:
                                                if(!§§pop())
                                                {
                                                   if(_loc29_)
                                                   {
                                                      §§goto(addr953);
                                                   }
                                                }
                                                §§goto(addr962);
                                             }
                                             addr949:
                                             §§goto(addr950);
                                             §§push(§§pop());
                                          }
                                          §§push(§§pop() == "bronze");
                                          if(!(_loc28_ && Boolean(_loc2_)))
                                          {
                                             §§goto(addr949);
                                          }
                                          §§goto(addr953);
                                       }
                                       §§push(_loc3_);
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc29_ || Boolean(this))
                                       {
                                          §§pop();
                                          §§goto(addr633);
                                       }
                                       §§goto(addr638);
                                    }
                                    §§goto(addr633);
                                 }
                                 if(!§§pop())
                                 {
                                    if(_loc29_ || Boolean(this))
                                    {
                                       addr600:
                                       §§pop();
                                       if(_loc29_ || Boolean(_loc2_))
                                       {
                                          addr609:
                                          §§push(_loc3_ == "freezeria");
                                       }
                                       §§goto(addr633);
                                    }
                                 }
                                 §§goto(addr623);
                              }
                              if(!§§pop())
                              {
                                 §§goto(addr638);
                              }
                              §§goto(addr642);
                           }
                           addr218:
                           §§push(_loc1_.bronzeCustomerIDs);
                           if(!(_loc28_ && Boolean(_loc2_)))
                           {
                              §§goto(addr227);
                           }
                           if(§§pop() < §§pop().length)
                           {
                              addr256:
                              §§push(_loc1_.paradeOrder);
                              §§push(_loc1_.whichOrder);
                           }
                           §§goto(addr640);
                        }
                        addr172:
                        if(§§pop() < §§pop().length)
                        {
                           if(!_loc28_)
                           {
                              §§goto(addr248);
                           }
                           addr261:
                           if(_loc3_ == "foodini")
                           {
                              _loc4_ = new customerParadeMC();
                              _loc1_.buildCustomer(_loc1_.foodiniCustomerID,_loc4_);
                              if(_loc29_ || Boolean(_loc2_))
                              {
                                 _loc4_.scaleX = _loc1_.customerScale * -1;
                              }
                              _loc4_.scaleY = _loc1_.customerScale;
                              _loc4_.x = _loc1_.startX;
                              _loc4_.y = _loc1_.customerStartY;
                              _loc4_.gotoAndPlay("walkbaton");
                              if(_loc29_)
                              {
                                 _loc1_.clip.holder.addChild(_loc4_);
                              }
                              §§push(_loc1_.movingParts);
                              if(_loc29_)
                              {
                                 §§pop().push(_loc4_);
                                 addr325:
                                 if(_loc29_ || Boolean(this))
                                 {
                                    §§push(_loc1_.movingPartsType);
                                 }
                              }
                              §§pop().push("customermain");
                              §§goto(addr325);
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(!_loc28_)
                              {
                                 if(§§pop() == "wingeria")
                                 {
                                    _loc5_ = getDefinitionByName("parade_car_" + _loc3_) as Class;
                                    _loc6_ = new _loc5_() as MovieClip;
                                    if(!(_loc28_ && Boolean(this)))
                                    {
                                       _loc7_ = false;
                                    }
                                    _loc8_ = new WorkerData();
                                    _loc8_.setupPremadeMale();
                                    if(!(_loc28_ && Boolean(_loc2_)))
                                    {
                                       addr378:
                                       §§push(_loc1_.gameObj);
                                       if(!_loc28_)
                                       {
                                          if(§§pop().userData.whichCharacter == "marty")
                                          {
                                          }
                                          addr381:
                                          _loc9_ = new Worker(_loc1_.gameObj,_loc6_.customer0,_loc8_,0,0,1);
                                          _loc9_.playAnimation("stand");
                                          if(_loc29_ || Boolean(_loc3_))
                                          {
                                             _loc1_.workers.push(_loc9_);
                                          }
                                          _loc10_ = new WorkerData();
                                          _loc10_.setupPremadeFemale();
                                          if(!(_loc28_ && Boolean(_loc2_)))
                                          {
                                             addr430:
                                             §§push(_loc1_.gameObj);
                                             if(_loc29_)
                                             {
                                                if(§§pop().userData.whichCharacter == "rita")
                                                {
                                                }
                                                addr433:
                                                _loc11_ = new Worker(_loc1_.gameObj,_loc6_.customer1,_loc10_,0,0,1);
                                                _loc11_.playAnimation("stand");
                                                _loc1_.workers.push(_loc11_);
                                                if(_loc1_.gameObj.userData.whichCharacter == "custom")
                                                {
                                                   _loc12_ = new Worker(_loc1_.gameObj,_loc6_.customer2,_loc1_.gameObj.workerData,0,0,1);
                                                   _loc12_.playAnimation("stand");
                                                   if(_loc29_ || Boolean(_loc2_))
                                                   {
                                                      _loc1_.workers.push(_loc12_);
                                                   }
                                                }
                                                _loc6_.x = _loc1_.startX;
                                                if(_loc29_)
                                                {
                                                   _loc6_.y = _loc1_.carStartY;
                                                   _loc1_.clip.holder.addChild(_loc6_);
                                                   if(!(_loc28_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(_loc1_.movingParts);
                                                      if(_loc29_ || Boolean(_loc1_))
                                                      {
                                                         §§pop().push(_loc6_);
                                                         if(_loc29_)
                                                         {
                                                         }
                                                         addr525:
                                                      }
                                                      addr523:
                                                      §§pop().push("carmain");
                                                      §§goto(addr525);
                                                   }
                                                }
                                                §§goto(addr523);
                                                §§push(_loc1_.movingPartsType);
                                             }
                                             _loc10_ = §§pop().workerData;
                                             §§goto(addr433);
                                          }
                                          §§goto(addr430);
                                          §§push(_loc1_.gameObj);
                                       }
                                       _loc8_ = §§pop().workerData;
                                       §§goto(addr381);
                                    }
                                    §§goto(addr378);
                                    §§push(_loc1_.gameObj);
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    if(!_loc28_)
                                    {
                                       §§push(§§pop() == "papalouie");
                                       if(!(§§pop() == "papalouie"))
                                       {
                                          if(!(_loc28_ && Boolean(_loc3_)))
                                          {
                                             §§pop();
                                          }
                                          §§goto(addr567);
                                       }
                                       addr558:
                                       §§push(§§pop());
                                       if(_loc29_ || Boolean(_loc3_))
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr227);
                                          }
                                          §§goto(addr571);
                                       }
                                       §§goto(addr579);
                                    }
                                    §§goto(addr569);
                                 }
                              }
                              §§goto(addr609);
                           }
                        }
                        else
                        {
                           §§push(_loc1_.paradeOrder);
                           if(_loc29_ || Boolean(_loc3_))
                           {
                              addr185:
                              §§push(_loc1_.whichOrder);
                              if(_loc29_)
                              {
                                 addr193:
                                 §§push(§§pop()[§§pop()] == "bronze");
                                 if(§§pop()[§§pop()] == "bronze")
                                 {
                                    if(_loc29_ || Boolean(_loc3_))
                                    {
                                       §§pop();
                                       if(!(_loc28_ && Boolean(_loc3_)))
                                       {
                                          §§push(_loc1_.bronzeSetsShown);
                                          if(!(_loc28_ && Boolean(this)))
                                          {
                                             §§goto(addr218);
                                          }
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr600);
                                 }
                                 §§goto(addr231);
                              }
                           }
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr218);
                     §§push(_loc1_.paradeOrder);
                  }
                  §§push(_loc3_);
                  if(_loc29_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() == "pizzeria");
                     if(!(_loc28_ && Boolean(this)))
                     {
                        §§goto(addr558);
                     }
                     §§goto(addr623);
                  }
                  §§goto(addr621);
               }
               if(§§pop())
               {
                  §§goto(addr231);
               }
               else
               {
                  §§push(_loc1_.paradeOrder);
                  if(_loc29_)
                  {
                  }
                  §§goto(addr185);
               }
            }
            _loc3_ = §§pop()[§§pop()];
            §§goto(addr261);
         }
         §§push(_loc1_.whichOrder);
         if(!_loc28_)
         {
            §§push(§§pop()[§§pop()] == "silver");
            if(!(_loc28_ && Boolean(_loc1_)))
            {
               §§push(§§pop());
               if(!(_loc28_ && Boolean(_loc2_)))
               {
                  if(§§pop())
                  {
                     if(!(_loc28_ && Boolean(_loc1_)))
                     {
                        §§goto(addr156);
                     }
                     §§goto(addr600);
                  }
                  §§goto(addr172);
               }
            }
         }
         §§goto(addr193);
      }
      
      public function setupCustomerGroups() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:* = null;
         var _loc1_:ParadeScreen = this;
         _loc1_.foodiniCustomerID = _loc1_.getCustomerIndex("Foodini");
         _loc1_.closerCustomerIDs = _loc1_.getMultipleCustomerIndex(["Jojo","Boomer","Quinn","Xolo","Johnny","ProfessorFitz","Ninjoy"]);
         if(_loc5_)
         {
            _loc1_.floatCustomerIDs_papalouie = _loc1_.getMultipleCustomerIndex(["PapaLouie"]);
            if(!_loc6_)
            {
               _loc1_.floatCustomerIDs_burgeria = _loc1_.getMultipleCustomerIndex(["Marty","Rita"]);
               _loc1_.floatCustomerIDs_pizzeria = _loc1_.getMultipleCustomerIndex(["Roy"]);
               _loc1_.floatCustomerIDs_tacomia = _loc1_.getMultipleCustomerIndex(["Mitch","Maggie"]);
               _loc1_.floatCustomerIDs_freezeria = _loc1_.getMultipleCustomerIndex(["Penny","Alberto"]);
               _loc1_.floatCustomerIDs_pancakeria = _loc1_.getMultipleCustomerIndex(["Cooper","Prudence"]);
               if(_loc5_)
               {
                  _loc1_.floatCustomerIDs_flipline = _loc1_.getMultipleCustomerIndex(["Matt","Tony"]);
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc1_.floatCustomerIDs_romano = _loc1_.getMultipleCustomerIndex(["Carlo Romano","Bruna Romano","Gino Romano","Little Edoardo"]);
                  }
               }
               addr114:
               _loc1_.noneCustomerIDs = _loc1_.getCustomerIndexWithAward(0);
               if(!(_loc6_ && _loc3_))
               {
                  _loc1_.bronzeCustomerIDs = _loc1_.getCustomerIndexWithAward(1);
                  _loc1_.silverCustomerIDs = _loc1_.getCustomerIndexWithAward(2);
                  if(!_loc6_)
                  {
                     _loc1_.goldCustomerIDs = _loc1_.getCustomerIndexWithAward(3);
                  }
                  addr163:
                  §§push(_loc1_.paradeOrder);
                  if(_loc5_)
                  {
                     addr198:
                     §§push(_loc1_.paradeOrder);
                     if(!_loc6_)
                     {
                        §§pop().splice(§§pop().indexOf("silver"),1);
                        if(_loc5_ || Boolean(this))
                        {
                           addr182:
                           §§push(_loc1_.bronzeCustomerIDs);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              if(§§pop().length == 0)
                              {
                              }
                              addr202:
                              §§push(_loc1_.closerCustomerIDs);
                           }
                           §§push(§§pop().length - 1);
                           if(_loc5_ || Boolean(_loc1_))
                           {
                              §§push(§§pop());
                           }
                           _loc2_ = §§pop();
                        }
                        loop0:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              if(§§pop() < 0)
                              {
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    if(_loc1_.closerCustomerIDs.length == 0)
                                    {
                                       §§push(_loc1_.paradeOrder);
                                       if(!(_loc6_ && Boolean(this)))
                                       {
                                          §§pop().splice(_loc1_.paradeOrder.indexOf("closer"),1);
                                       }
                                       loop57:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             §§pop().splice(§§pop(),1);
                                             loop52:
                                             while(true)
                                             {
                                                §§push(_loc2_ - 1);
                                                if(!(_loc6_ && Boolean(_loc1_)))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      loop39:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc6_ && Boolean(_loc1_)))
                                                         {
                                                            §§push(0);
                                                            loop45:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_freezeria[_loc2_]));
                                                                  §§push(false);
                                                                  if(_loc5_ || Boolean(this))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           continue loop52;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_.floatCustomerIDs_freezeria);
                                                                           if(!(_loc5_ || Boolean(this)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop57;
                                                                        }
                                                                     }
                                                                     addr543:
                                                                  }
                                                                  break;
                                                               }
                                                               addr610:
                                                               if(_loc1_.floatCustomerIDs_freezeria.length == 0)
                                                               {
                                                                  addr811:
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("freezeria"),1);
                                                                  }
                                                                  loop41:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_.floatCustomerIDs_papalouie);
                                                                     addr631:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr632:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().splice(§§pop(),§§pop());
                                                                              addr824:
                                                                              loop42:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_ - 1);
                                                                                 if(!(_loc6_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          §§push(0);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                addr798:
                                                                                                §§push(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_papalouie[_loc2_]));
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() == false)
                                                                                                   {
                                                                                                      if(!(_loc5_ || Boolean(this)))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop41;
                                                                                                   }
                                                                                                   continue loop42;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc1_.floatCustomerIDs_pancakeria);
                                                                                                }
                                                                                                addr798:
                                                                                                addr620:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc6_ && _loc3_)
                                                                                                {
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(1);
                                                                                                addr907:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().splice(§§pop(),§§pop());
                                                                                                   addr908:
                                                                                                   addr932:
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_--;
                                                                                                      addr912:
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr916:
                                                                                                            §§push(0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  addr919:
                                                                                                                  if(_loc1_.floatCustomerIDs_romano.length == 0)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr930:
                                                                                                                  §§push(0);
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                               addr899:
                                                                                                               addr926:
                                                                                                               §§push(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_romano[_loc2_]));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  addr900:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() != §§pop())
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(_loc1_.floatCustomerIDs_romano);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("romano"),1);
                                                                                                               §§goto(addr930);
                                                                                                            }
                                                                                                            addr916:
                                                                                                         }
                                                                                                         break loop6;
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc3_:* = §§pop();
                                                                                                   _loc2_ = 0;
                                                                                                   if(_loc5_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      loop7:
                                                                                                      while(_loc2_ < _loc1_.paradeOrder.length)
                                                                                                      {
                                                                                                         §§push(_loc1_.paradeOrder[_loc2_]);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            §§push(_loc4_);
                                                                                                            if(_loc5_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() == "pizzeria");
                                                                                                               §§push(§§pop() == "pizzeria");
                                                                                                               if(_loc5_ || Boolean(this))
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_++;
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        addr1064:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!(_loc5_ || Boolean(this)))
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§push(_loc4_);
                                                                                                                     }
                                                                                                                     addr1041:
                                                                                                                  }
                                                                                                                  addr980:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(_loc4_ == "freezeria");
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc5_ || Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr1040:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr1052);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1012:
                                                                                                                           }
                                                                                                                           §§goto(addr1041);
                                                                                                                        }
                                                                                                                        addr1006:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr1006);
                                                                                                                           }
                                                                                                                           §§goto(addr1012);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr997:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              break loop7;
                                                                                                                           }
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == "flipline");
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1052);
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr1040);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§push(_loc4_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == "pancakeria");
                                                                                                                     }
                                                                                                                     addr1037:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1040);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr980);
                                                                                                            §§push(§§pop() == "burgeria");
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr1052:
                                                                                                            §§goto(addr1085);
                                                                                                         }
                                                                                                      }
                                                                                                      _loc1_.gameObj.userData.seenFloatsInParade = _loc3_;
                                                                                                      addr1085:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc5_ || Boolean(_loc1_)))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc3_++;
                                                                                                         }
                                                                                                         §§goto(addr1064);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr997);
                                                                                                         §§push(§§pop() == "tacomia");
                                                                                                      }
                                                                                                      §§goto(addr1037);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr800:
                                                                                             addr906:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(_loc5_ || Boolean(this))
                                                                                             {
                                                                                                addr837:
                                                                                                if(_loc1_.floatCustomerIDs_pancakeria.length == 0)
                                                                                                {
                                                                                                   if(_loc6_ && Boolean(_loc2_))
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr912);
                                                                                                }
                                                                                                addr871:
                                                                                                §§push(_loc1_.floatCustomerIDs_romano);
                                                                                                if(_loc5_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr880:
                                                                                                   §§push(§§pop().length - 1);
                                                                                                   break loop39;
                                                                                                }
                                                                                                §§goto(addr905);
                                                                                             }
                                                                                             §§goto(addr908);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_pancakeria[_loc2_]));
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(false);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      break loop45;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr900);
                                                                                                addr787:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr899);
                                                                                       }
                                                                                       addr649:
                                                                                       addr827:
                                                                                    }
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       §§push(0);
                                                                                       if(!(_loc6_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             §§push(_loc1_.floatCustomerIDs_flipline);
                                                                                             if(!(_loc6_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                if(§§pop().length == 0)
                                                                                                {
                                                                                                   if(!(_loc6_ && Boolean(_loc1_)))
                                                                                                   {
                                                                                                      §§push(_loc1_.paradeOrder);
                                                                                                      §§push(_loc1_.paradeOrder);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§pop().splice(§§pop().indexOf("flipline"),1);
                                                                                                         if(_loc6_ && Boolean(_loc3_))
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr871);
                                                                                                      }
                                                                                                      §§goto(addr926);
                                                                                                   }
                                                                                                }
                                                                                                §§push(_loc1_.floatCustomerIDs_pancakeria);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop().length - 1);
                                                                                                   if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      addr775:
                                                                                                      _loc2_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         break loop42;
                                                                                                      }
                                                                                                      §§goto(addr899);
                                                                                                      addr825:
                                                                                                   }
                                                                                                   addr890:
                                                                                                   _loc2_ = §§pop();
                                                                                                   addr891:
                                                                                                   §§goto(addr912);
                                                                                                }
                                                                                                §§goto(addr837);
                                                                                             }
                                                                                             §§goto(addr800);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_flipline[_loc2_]) == false)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc1_.floatCustomerIDs_flipline);
                                                                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().splice(§§pop(),§§pop());
                                                                                                            }
                                                                                                            addr711:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr907);
                                                                                                         }
                                                                                                         §§goto(addr908);
                                                                                                      }
                                                                                                      §§goto(addr906);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr919);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                addr713:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop() - 1;
                                                                                                   continue loop34;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr916);
                                                                                    }
                                                                                    addr716:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 §§goto(addr825);
                                                                              }
                                                                              addr824:
                                                                           }
                                                                           break loop41;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().splice(§§pop(),§§pop());
                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           §§goto(addr824);
                                                                        }
                                                                        addr819:
                                                                     }
                                                                     §§goto(addr908);
                                                                  }
                                                                  addr811:
                                                               }
                                                               §§push(_loc1_.floatCustomerIDs_papalouie);
                                                               _loc2_ = §§pop().length - 1;
                                                               §§goto(addr649);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!(_loc6_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr798);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr819);
                                                            }
                                                            §§goto(addr891);
                                                            addr585:
                                                         }
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         §§goto(addr890);
                                                      }
                                                      §§goto(addr932);
                                                      addr576:
                                                   }
                                                   §§push(_loc1_.paradeOrder);
                                                   if(!(_loc6_ && Boolean(this)))
                                                   {
                                                      §§push(_loc1_.paradeOrder);
                                                      if(_loc5_ || Boolean(_loc2_))
                                                      {
                                                         §§pop().splice(§§pop().indexOf("pancakeria"),1);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr837);
                                                         }
                                                         §§goto(addr908);
                                                      }
                                                      §§goto(addr899);
                                                   }
                                                   §§goto(addr905);
                                                }
                                                break loop0;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(1);
                                             if(_loc5_)
                                             {
                                                §§goto(addr811);
                                             }
                                             §§goto(addr907);
                                          }
                                       }
                                    }
                                    §§push(_loc1_.floatCustomerIDs_burgeria.length - 1);
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       _loc2_ = §§pop();
                                       loop58:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             if(§§pop() < 0)
                                             {
                                                if(_loc1_.floatCustomerIDs_burgeria.length == 0)
                                                {
                                                   §§push(_loc1_.paradeOrder);
                                                   §§push(_loc1_.paradeOrder);
                                                   if(_loc5_)
                                                   {
                                                      §§pop().splice(§§pop().indexOf("burgeria"),1);
                                                   }
                                                   addr439:
                                                   §§pop().splice(§§pop().indexOf("pizzeria"),1);
                                                   §§push(_loc1_.floatCustomerIDs_tacomia);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop().length - 1);
                                                      if(!_loc6_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            addr489:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc6_ && Boolean(_loc3_)))
                                                               {
                                                                  if(§§pop() < 0)
                                                                  {
                                                                     if(_loc1_.floatCustomerIDs_tacomia.length == 0)
                                                                     {
                                                                        §§push(_loc1_.paradeOrder);
                                                                        §§push(_loc1_.paradeOrder);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop().splice(§§pop().indexOf("tacomia"),1);
                                                                        }
                                                                        §§goto(addr899);
                                                                     }
                                                                     §§push(_loc1_.floatCustomerIDs_freezeria.length - 1);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_tacomia[_loc2_]));
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop() == false)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(_loc1_.floatCustomerIDs_tacomia);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc6_ && Boolean(_loc2_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(1);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().splice(§§pop(),§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr711);
                                                                                 }
                                                                                 §§goto(addr916);
                                                                              }
                                                                              §§goto(addr632);
                                                                              addr471:
                                                                           }
                                                                           addr659:
                                                                           _loc1_.paradeOrder.splice(_loc1_.paradeOrder.indexOf("papalouie"),1);
                                                                           §§push(_loc1_.floatCustomerIDs_flipline);
                                                                           if(_loc5_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop().length - 1);
                                                                              if(_loc5_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              §§goto(addr713);
                                                                           }
                                                                           §§goto(addr880);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_ - 1);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop58;
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr775);
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr489:
                                                         }
                                                         §§goto(addr899);
                                                      }
                                                      _loc2_ = §§pop();
                                                      §§goto(addr576);
                                                   }
                                                   §§goto(addr631);
                                                }
                                                _loc2_ = _loc1_.floatCustomerIDs_pizzeria.length - 1;
                                                loop56:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(0);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc1_.floatCustomerIDs_pizzeria.length == 0)
                                                            {
                                                               §§goto(addr439);
                                                               §§push(_loc1_.paradeOrder);
                                                               §§push(_loc1_.paradeOrder);
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_pizzeria[_loc2_]));
                                                            if(!(_loc6_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(false);
                                                               if(!_loc6_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     §§push(_loc1_.floatCustomerIDs_pizzeria);
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        §§pop().splice(_loc2_,1);
                                                                        if(_loc5_ || Boolean(_loc3_))
                                                                        {
                                                                        }
                                                                        §§goto(addr908);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr471);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop56;
                                                                  }
                                                                  addr410:
                                                               }
                                                               §§goto(addr543);
                                                            }
                                                         }
                                                         §§goto(addr620);
                                                      }
                                                      §§goto(addr585);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc1_.hasServedCustomer(_loc1_.floatCustomerIDs_burgeria[_loc2_]));
                                                if(_loc5_ || Boolean(_loc1_))
                                                {
                                                   if(§§pop() == false)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc1_.floatCustomerIDs_burgeria);
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            §§push(1);
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().splice(§§pop(),§§pop());
                                                            }
                                                            §§goto(addr907);
                                                         }
                                                         addr323:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr489);
                                                      }
                                                      §§goto(addr824);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_ - 1);
                                                      if(_loc6_ && Boolean(this))
                                                      {
                                                         break;
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         continue loop58;
                                                      }
                                                      §§goto(addr775);
                                                   }
                                                   addr681:
                                                   _loc2_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr716);
                                                   }
                                                   §§goto(addr798);
                                                }
                                             }
                                             §§goto(addr787);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr489);
                                       }
                                    }
                                    §§goto(addr610);
                                 }
                                 if(_loc1_.floatCustomerIDs_papalouie.length == 0)
                                 {
                                 }
                                 §§goto(addr659);
                              }
                              else
                              {
                                 if(_loc1_.hasServedCustomer(_loc1_.closerCustomerIDs[_loc2_]) == false)
                                 {
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       §§push(_loc1_.closerCustomerIDs);
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                          §§pop().splice(_loc2_,1);
                                          if(_loc6_)
                                          {
                                             §§goto(addr410);
                                          }
                                          §§goto(addr880);
                                       }
                                       else
                                       {
                                          §§goto(addr323);
                                       }
                                    }
                                    §§goto(addr544);
                                 }
                                 §§push(_loc2_ - 1);
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    continue;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr827);
                              }
                           }
                           break;
                           _loc2_ = §§pop();
                        }
                        §§goto(addr681);
                        §§push(§§pop());
                     }
                     §§pop().splice(§§pop().indexOf("bronze"),1);
                     §§goto(addr202);
                  }
                  addr196:
                  §§goto(addr198);
                  §§push(_loc1_.paradeOrder);
               }
               §§goto(addr196);
               §§push(_loc1_.paradeOrder);
            }
            if(_loc1_.goldCustomerIDs.length == 0)
            {
               §§push(_loc1_.paradeOrder);
               §§push(_loc1_.paradeOrder);
               if(_loc5_)
               {
                  §§pop().splice(§§pop().indexOf("gold"),1);
               }
               §§goto(addr198);
            }
            if(_loc1_.silverCustomerIDs.length == 0)
            {
               §§goto(addr163);
            }
            §§goto(addr182);
         }
         _loc1_.floatCustomerIDs_wingeria = _loc1_.getMultipleCustomerIndex(["ChuckOrMandi","ChuckOrMandi"]);
         §§goto(addr114);
      }
      
      public function getCustomerIndexWithAward(param1:Number) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:ParadeScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:CustomerData = _loc2_.gameObj.customerData;
         var _loc5_:Array = [];
         _loc5_.push([]);
         var _loc6_:Number = 7;
         var _loc7_:int = 1;
         do
         {
            if(_loc7_ >= _loc4_.getCustomerTotal())
            {
               break;
            }
            §§push(_loc3_.getCustomerSeal(_loc7_) == param1);
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
               if(!(_loc9_ && Boolean(param1)))
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  §§pop();
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     §§push(_loc2_.alreadyInGroup(_loc7_));
                  }
                  else
                  {
                     addr134:
                     _loc5_ = [];
                  }
               }
               else
               {
                  addr121:
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        §§goto(addr167);
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr134);
                  }
               }
               §§push(§_-5i§);
               §§push("Award Level " + param1);
               if(!_loc9_)
               {
                  §§push(§§pop() + ": ");
                  if(_loc8_ || Boolean(this))
                  {
                     §§push(§§pop() + _loc5_.length);
                     if(_loc8_)
                     {
                     }
                     §§goto(addr166);
                  }
               }
               addr166:
               §§pop().§_-CE§(§§pop());
               addr167:
               if(_loc8_)
               {
                  §§push(_loc5_[0].length == 0);
               }
               return _loc5_;
               §§push(§§pop() + " sets.");
            }
            §§push(!§§pop());
         }
         while(if(§§pop())
         {
            if(_loc5_[_loc5_.length - 1].length < _loc6_)
            {
               if(!_loc9_)
               {
                  _loc5_[_loc5_.length - 1].push(_loc7_);
                  if(_loc9_ && Boolean(_loc3_))
                  {
                  }
               }
            }
            else
            {
               _loc5_.push([_loc7_]);
            }
         }, _loc7_++, _loc8_);
         
         §§goto(addr121);
         §§push(_loc5_.length == 1);
         §§push(_loc5_.length == 1);
      }
      
      public function hasServedCustomer(param1:Number, param2:Boolean = false) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParadeScreen = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:* = true;
         if(_loc7_ || param2)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop())
               {
                  §§goto(addr91);
               }
               if(§§pop())
               {
                  _loc5_ = true;
                  §§goto(addr90);
               }
               else if(_loc4_.getCustomerTotalOrders(param1) == 0)
               {
                  if(_loc7_)
                  {
                     §§push(false);
                  }
               }
               else
               {
                  §§push(true);
                  if(_loc7_ || Boolean(param1))
                  {
                     _loc5_ = §§pop();
                     §§goto(addr90);
                  }
               }
               addr91:
               if(!(_loc6_ && Boolean(this)))
               {
                  §§pop();
                  addr90:
                  if(_loc7_)
                  {
                     §§push(_loc4_.customersUnlocked[param1] == 1);
                  }
                  §§push(_loc5_);
               }
               return §§pop();
            }
            _loc5_ = §§pop();
         }
         §§goto(addr90);
      }
      
      public function alreadyInGroup(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:ParadeScreen = this;
         var _loc3_:* = false;
         if(_loc2_.foodiniCustomerID == param1)
         {
            _loc3_ = true;
         }
         §§push(_loc2_.closerCustomerIDs);
         if(_loc5_ || Boolean(_loc2_))
         {
            if(§§pop().indexOf(param1) > -1)
            {
               if(_loc5_ || Boolean(param1))
               {
                  _loc3_ = true;
               }
               addr149:
               addr151:
               if(_loc2_.floatCustomerIDs_tacomia.indexOf(param1) > -1)
               {
                  if(_loc5_)
                  {
                     §§goto(addr217);
                  }
               }
               §§push(_loc2_.floatCustomerIDs_romano);
               if(_loc5_)
               {
                  addr195:
                  §§push(param1);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(§§pop().indexOf(§§pop()) > -1)
                     {
                        _loc3_ = true;
                        if(_loc5_ || Boolean(param1))
                        {
                        }
                        §§goto(addr200);
                     }
                     §§push(_loc2_.floatCustomerIDs_wingeria);
                  }
                  if(§§pop().indexOf(§§pop()) > -1)
                  {
                     if(!_loc4_)
                     {
                        addr200:
                        §§push(true);
                        if(_loc5_ || Boolean(param1))
                        {
                           addr215:
                           _loc3_ = §§pop();
                           §§goto(addr216);
                        }
                        §§goto(addr217);
                     }
                  }
                  §§goto(addr216);
               }
               §§goto(addr195);
               §§push(param1);
            }
            §§push(_loc2_.floatCustomerIDs_burgeria);
            §§push(param1);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               if(§§pop().indexOf(§§pop()) > -1)
               {
                  _loc3_ = true;
               }
               if(_loc2_.floatCustomerIDs_flipline.indexOf(param1) > -1)
               {
                  _loc3_ = true;
                  if(_loc4_ && Boolean(param1))
                  {
                  }
                  addr89:
                  §§push(_loc2_.floatCustomerIDs_pancakeria);
                  if(_loc5_)
                  {
                     addr93:
                     if(§§pop().indexOf(param1) > -1)
                     {
                        _loc3_ = true;
                        if(_loc5_ || Boolean(_loc2_))
                        {
                        }
                        addr134:
                        §§push(_loc2_.floatCustomerIDs_pizzeria);
                     }
                     §§push(_loc2_.floatCustomerIDs_papalouie);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                        }
                        addr137:
                        if(§§pop().indexOf(§§pop()) > -1)
                        {
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              _loc3_ = true;
                           }
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr195);
               }
               §§push(_loc2_.floatCustomerIDs_freezeria);
               if(!_loc4_)
               {
                  if(§§pop().indexOf(param1) > -1)
                  {
                     _loc3_ = true;
                     if(_loc5_)
                     {
                     }
                     addr217:
                     §§push(true);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc3_ = §§pop();
                        if(_loc5_)
                        {
                        }
                        addr216:
                        §§push(_loc3_);
                     }
                     return §§pop();
                  }
                  §§goto(addr89);
               }
               §§goto(addr93);
            }
            if(§§pop().indexOf(§§pop()) > -1)
            {
               if(!_loc4_)
               {
                  §§push(true);
                  if(_loc5_)
                  {
                     _loc3_ = §§pop();
                  }
                  §§goto(addr215);
               }
               §§goto(addr200);
            }
            §§goto(addr134);
         }
         §§goto(addr137);
         §§push(param1);
      }
      
      public function getCustomerIndex(param1:String) : Number
      {
         var _loc2_:ParadeScreen = this;
         return _loc2_.gameObj.customerData.getCustomerIndex(param1);
      }
      
      public function getMultipleCustomerIndex(param1:Array) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:ParadeScreen = this;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_.push(_loc2_.getCustomerIndex(param1[_loc4_]));
            if(_loc6_ || Boolean(this))
            {
               _loc4_++;
               if(_loc5_ && Boolean(_loc3_))
               {
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      public function getCustomerClipName(param1:Number) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:ParadeScreen = this;
         §§push(_loc2_.gameObj.customerData.getCustomerClipName(param1));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            §§push(_loc3_);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§push(§§pop() == "Chuck");
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     addr67:
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(_loc3_);
                              if(_loc4_)
                              {
                              }
                              §§goto(addr102);
                           }
                           addr79:
                           _loc3_ = "Chuck";
                           if(!(_loc5_ && Boolean(this)))
                           {
                              _loc2_.didChuck = true;
                           }
                           addr102:
                           return §§pop();
                           §§push(_loc3_);
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                     }
                     §§goto(addr79);
                  }
                  addr78:
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr79);
                  }
                  else
                  {
                     _loc3_ = "Mandi";
                  }
                  §§goto(addr79);
               }
               addr77:
               §§goto(addr78);
               §§push(false);
            }
            §§push(§§pop() == "Mandi");
            if(_loc4_)
            {
               §§goto(addr67);
            }
         }
         §§goto(addr77);
         §§push(_loc2_.didChuck);
      }
      
      public function buildCustomer(param1:Number, param2:MovieClip) : void
      {
         var _loc33_:Boolean = false;
         var _loc34_:Boolean = true;
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc30_:Class = null;
         var _loc31_:MovieClip = null;
         var _loc3_:ParadeScreen = this;
         §§push(_loc3_.getCustomerClipName(param1));
         if(_loc34_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Class = getDefinitionByName("customer_" + _loc4_ + "_body") as Class;
         var _loc6_:MovieClip = new _loc5_();
         _loc6_.name = "clip";
         if(_loc34_ || Boolean(param1))
         {
            param2.body.addChild(_loc6_);
         }
         var _loc7_:Class = getDefinitionByName("customer_" + _loc4_ + "_head") as Class;
         var _loc8_:MovieClip = new _loc7_();
         _loc8_.name = "clip";
         if(!(_loc33_ && Boolean(this)))
         {
            param2.head.addChild(_loc8_);
         }
         var _loc9_:Class = getDefinitionByName("customer_" + _loc4_ + "_eyes") as Class;
         var _loc10_:MovieClip = new _loc9_();
         _loc10_.name = "clip";
         if(!_loc33_)
         {
            param2.eyes.addChild(_loc10_);
         }
         var _loc11_:Class = getDefinitionByName("customer_" + _loc4_ + "_mouth") as Class;
         var _loc12_:MovieClip = new _loc11_();
         _loc12_.name = "clip";
         if(_loc34_)
         {
            param2.mouth.addChild(_loc12_);
         }
         var _loc13_:Class = getDefinitionByName("customer_" + _loc4_ + "_neck") as Class;
         var _loc14_:MovieClip = new _loc13_();
         _loc14_.name = "clip";
         if(_loc34_ || Boolean(this))
         {
            param2.neck.addChild(_loc14_);
         }
         try
         {
            _loc28_ = getDefinitionByName("customer_" + _loc4_ + "_hair") as Class;
            _loc29_ = new _loc28_();
            _loc29_.name = "clip";
            if(_loc34_)
            {
               param2.hair.addChild(_loc29_);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc30_ = getDefinitionByName("customer_" + _loc4_ + "_back_hair") as Class;
            _loc31_ = new _loc30_();
            _loc31_.name = "clip";
            if(_loc34_)
            {
               param2.back_hair.addChild(_loc31_);
            }
         }
         catch(err:Error)
         {
         }
         var _loc15_:Class = getDefinitionByName("customer_" + _loc4_ + "_foot") as Class;
         var _loc16_:MovieClip = new _loc15_();
         _loc16_.name = "clip";
         if(!_loc33_)
         {
            param2.front_shoe.addChild(_loc16_);
         }
         var _loc17_:MovieClip = new _loc15_();
         _loc17_.name = "clip";
         if(!_loc33_)
         {
            param2.back_shoe.addChild(_loc17_);
         }
         var _loc18_:Class = getDefinitionByName("customer_" + _loc4_ + "_hand") as Class;
         var _loc19_:MovieClip = new _loc18_();
         _loc19_.name = "clip";
         if(!(_loc33_ && Boolean(_loc3_)))
         {
            param2.fronthand.addChild(_loc19_);
         }
         var _loc20_:Class = getDefinitionByName("customer_" + _loc4_ + "_hand2") as Class;
         var _loc21_:MovieClip = new _loc20_();
         _loc21_.name = "clip";
         if(!_loc33_)
         {
            param2.backhand.addChild(_loc21_);
         }
         var _loc22_:Class = getDefinitionByName("customer_" + _loc4_ + "_upperarm") as Class;
         var _loc23_:MovieClip = new _loc22_();
         _loc23_.name = "clip";
         if(_loc34_)
         {
            param2.front_upperarm.addChild(_loc23_);
         }
         var _loc24_:MovieClip = new _loc22_();
         _loc24_.name = "clip";
         if(_loc34_ || Boolean(param1))
         {
            param2.back_upperarm.addChild(_loc24_);
         }
         var _loc25_:Class = getDefinitionByName("customer_" + _loc4_ + "_forearm") as Class;
         var _loc26_:MovieClip = new _loc25_();
         _loc26_.name = "clip";
         if(_loc34_)
         {
            param2.front_forearm.addChild(_loc26_);
         }
         var _loc27_:MovieClip = new _loc25_();
         _loc27_.name = "clip";
         if(!(_loc33_ && Boolean(param2)))
         {
            param2.back_forearm.addChild(_loc27_);
         }
      }
      
      public function clearCustomer(param1:MovieClip) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:ParadeScreen = this;
         try
         {
            param1.stop();
            param1.head.removeChildAt(0);
            param1.eyes.removeChildAt(0);
            if(!(_loc4_ && _loc3_))
            {
               param1.mouth.removeChildAt(0);
               try
               {
                  addr50:
                  param1.body.removeChildAt(0);
                  param1.neck.removeChildAt(0);
                  if(_loc4_)
                  {
                  }
                  addr66:
                  param1.back_shoe.removeChildAt(0);
                  param1.fronthand.removeChildAt(0);
                  param1.backhand.removeChildAt(0);
                  if(!_loc4_)
                  {
                     param1.front_upperarm.removeChildAt(0);
                     param1.back_upperarm.removeChildAt(0);
                     param1.front_forearm.removeChildAt(0);
                     param1.back_forearm.removeChildAt(0);
                     if(_loc5_)
                     {
                        try
                        {
                           addr117:
                           param1.hair.removeChildAt(0);
                        }
                        catch(err:Error)
                        {
                        }
                        try
                        {
                           addr133:
                           param1.back_hair.removeChildAt(0);
                        }
                        catch(err:Error)
                        {
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr133);
               }
               catch(err:Error)
               {
                  §§goto(addr117);
               }
            }
            param1.front_shoe.removeChildAt(0);
            if(_loc5_)
            {
               §§goto(addr66);
            }
         }
         catch(err:Error)
         {
            §§goto(addr50);
         }
         addr156:
      }
   }
}

