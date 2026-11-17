package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-0i§;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-8x§;
   import §_-H§.§_-77§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getDefinitionByName;
   import mochi.as3.*;
   import wingGame.data.CustomerData;
   import wingGame.data.UserData;
   
   public class StartDayPanel
   {
      public var gameObj:§_-BY§;
      
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var §_-7T§:Boolean = false;
      
      public var §_-X§:Boolean = false;
      
      public var §_-BE§:Boolean = false;
      
      public var §_-6N§:Boolean = false;
      
      public var §_-3l§:Number = 10;
      
      public var §_-DJ§:Number = 21;
      
      public var action:String = "continue";
      
      public var §_-5v§:Boolean = true;
      
      public var trainingClip:MovieClip;
      
      public var §_-DM§:String = "none";
      
      public var editor:CharacterEditorScreen;
      
      public var paradetip:MovieClip = null;
      
      public var newstar:MovieClip = null;
      
      public var paradestar:MovieClip = null;
      
      public function StartDayPanel(param1:§_-BY§, param2:MovieClip, param3:Object = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
         }
         var _loc4_:StartDayPanel = this;
         _loc4_.gameObj = param1;
         if(_loc6_ || Boolean(param3))
         {
            _loc4_.container = param2;
            if(!(_loc5_ && Boolean(param3)))
            {
               §§push(param3 != null);
               §§push(param3 != null);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        §§push(Boolean(param3.hasOwnProperty("showAd")));
                        if(_loc5_)
                        {
                        }
                        addr83:
                        §§push(§§pop());
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        _loc4_.§_-7T§ = param3.showAd;
                     }
                  }
                  addr97:
                  §§push(param3 == null);
                  if(!_loc5_)
                  {
                     §§goto(addr83);
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        _loc4_.§_-BE§ = param3.showClickaway;
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  _loc4_.setupScreen();
               }
               if(§§pop())
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     §§pop();
                  }
               }
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr97);
         §§push(Boolean(param3.hasOwnProperty("showClickaway")));
      }
      
      public function setupScreen() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:StartDayPanel = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc1_.clip = new startDayPanelMC();
            _loc1_.container.addChild(_loc1_.clip);
            _loc1_.container.addEventListener("clickShop",_loc1_.clickShop);
            _loc1_.container.addEventListener("clickEditLobby",_loc1_.clickEditLobby);
            if(_loc3_)
            {
               _loc1_.container.addEventListener("clickContinue",_loc1_.clickContinue);
               if(!_loc4_)
               {
                  _loc1_.container.addEventListener("clickParade",_loc1_.clickParade);
                  if(_loc3_)
                  {
                     _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
                     _loc1_.clip.burgerzilla_btn.visible = false;
                     _loc1_.clip.hotshot_btn.visible = false;
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc1_.clip.putt_btn.visible = false;
                        _loc1_.clip.hallway_btn.visible = false;
                        _loc1_.clip.cravings_btn.visible = false;
                        if(!_loc4_)
                        {
                           _loc1_.clip.pachinko_btn.visible = false;
                           if(!_loc4_)
                           {
                              _loc1_.clip.blast_btn.visible = false;
                              if(_loc4_ && _loc3_)
                              {
                              }
                           }
                           addr136:
                           _loc1_.clip.play();
                           _loc1_.clip.addEventListener(Event.ENTER_FRAME,this.updateScreen);
                           _loc1_.clip.clickawayMC.visible = false;
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.clip.clickaway_btn.visible = false;
                           }
                           addr268:
                           _loc1_.paradestar.visible = true;
                           addr272:
                        }
                        if(_loc2_.furniInventory.length == 0)
                        {
                           if(_loc3_)
                           {
                           }
                           addr221:
                           _loc1_.paradestar = _loc1_.clip.paradestar;
                           if(_loc3_)
                           {
                              _loc1_.newstar = _loc1_.clip.furnistar;
                              if(_loc1_.§_-Ae§() > _loc2_.seenFloatsInParade)
                              {
                                 §_-5i§.§_-CE§("Show New Float!");
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                 }
                                 §§goto(addr272);
                              }
                              else
                              {
                                 _loc1_.paradetip.visible = false;
                              }
                           }
                           addr248:
                           _loc1_.paradetip.visible = false;
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              §§push(_loc1_.gameObj);
                              if(!_loc4_)
                              {
                                 §§pop().addChild(_loc1_.paradestar);
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr286);
                           }
                           addr286:
                           §§pop().addChild(_loc1_.newstar);
                           _loc1_.newstar.visible = true;
                           if(_loc4_ && _loc3_)
                           {
                           }
                           return;
                           §§push(_loc1_.gameObj);
                        }
                        §§goto(addr136);
                     }
                     _loc1_.paradestar.visible = false;
                  }
                  addr319:
                  _loc1_.editor = new CharacterEditorScreen(_loc1_.gameObj,_loc1_.clip.backdrop_holder);
                  §§goto(addr286);
               }
               _loc1_.clip.clickaway_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.§_-14§);
               §§push(_loc2_.hasTrainedDecorate);
               if(_loc3_)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop());
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 §§push(_loc1_.§_-5v§);
                                 if(_loc4_)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr213:
                     if(!§§pop())
                     {
                     }
                     _loc1_.paradetip = _loc1_.clip.paradetip;
                     if(!_loc4_)
                     {
                        §§goto(addr221);
                     }
                     §§goto(addr248);
                  }
                  addr210:
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr213);
                  }
                  if(§§pop())
                  {
                     §§goto(addr221);
                  }
                  else
                  {
                     _loc1_.newstar.visible = false;
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr319);
                     }
                  }
                  §§goto(addr286);
               }
               §§goto(addr210);
               §§push(true);
            }
            _loc1_.§_-5v§ = false;
            §§goto(addr136);
         }
         §§goto(addr210);
         §§push(_loc2_.hasNewFurni);
      }
      
      public function §_-Ae§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:StartDayPanel = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:CustomerData = _loc1_.gameObj.customerData;
         var _loc4_:* = 0;
         §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Marty")));
         §§push(0);
         if(!_loc6_)
         {
            §§push(§§pop() > §§pop());
            if(_loc5_)
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Rita")) > 0);
                  if(_loc6_)
                  {
                  }
               }
               if(§§pop())
               {
                  §§push(_loc4_ + 1);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     _loc4_ = §§pop();
                  }
                  addr220:
                  §§push(§§pop() + 1);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     addr229:
                     _loc4_ = §§pop();
                     addr309:
                     addr230:
                     §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Carlo Romano")) > 0);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(§§pop() || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Gino Romano")) > 0);
                        §§push(§§pop() || _loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Gino Romano")) > 0);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              if(_loc5_ || Boolean(this))
                              {
                                 addr276:
                                 §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Bruna Romano")) > 0);
                                 if(_loc5_ || Boolean(this))
                                 {
                                 }
                                 addr360:
                                 if(§§pop())
                                 {
                                    addr362:
                                    §§push(_loc4_ + 1);
                                    if(_loc5_)
                                    {
                                       _loc4_ = §§pop();
                                    }
                                    §§goto(addr380);
                                 }
                              }
                              §_-5i§.§_-CE§("Floats in parade: " + _loc4_);
                              addr379:
                              addr380:
                              return §§pop();
                              §§push(_loc4_);
                           }
                           §§push(§§pop());
                        }
                        if(!§§pop())
                        {
                           if(!(_loc6_ && Boolean(_loc1_)))
                           {
                              addr294:
                              §§pop();
                              addr334:
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 addr302:
                                 §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Little Edoardo")) > 0);
                              }
                              §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Matt")));
                              if(_loc5_)
                              {
                              }
                              §§goto(addr362);
                           }
                           addr352:
                           §§pop();
                           §§goto(addr360);
                           §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Tony")) > 0);
                        }
                     }
                     if(§§pop())
                     {
                        §§push(_loc4_ + 1);
                        if(_loc5_)
                        {
                           addr315:
                           _loc4_ = §§pop();
                        }
                     }
                     if(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Roy")) > 0)
                     {
                        §§push(_loc4_ + 1);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           _loc4_ = §§pop();
                        }
                     }
                     §§goto(addr334);
                  }
                  §§push(§§pop() > 0);
                  if(!(§§pop() > 0))
                  {
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§goto(addr352);
                     }
                  }
                  §§goto(addr360);
               }
               §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Mitch")) > 0);
               if(_loc5_ || Boolean(this))
               {
               }
               §§goto(addr309);
            }
            if(!§§pop())
            {
               addr197:
               if(!_loc6_)
               {
                  §§pop();
                  §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Maggie")));
                  §§push(0);
               }
               if(!§§pop())
               {
                  if(!_loc6_)
                  {
                     §§pop();
                     §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Prudence")));
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        §§push(§§pop() > 0);
                     }
                     §§goto(addr315);
                  }
                  §§goto(addr294);
               }
               if(§§pop())
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     §§goto(addr220);
                  }
                  §§goto(addr229);
               }
               §§goto(addr230);
            }
            addr97:
            if(§§pop())
            {
               §§push(_loc4_);
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(§§pop() + 1);
                  if(!_loc6_)
                  {
                     _loc4_ = §§pop();
                     if(_loc5_ || Boolean(_loc2_))
                     {
                     }
                     §§goto(addr302);
                  }
                  §§goto(addr352);
               }
               §§goto(addr220);
            }
            §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Penny")));
            §§push(0);
            if(_loc5_ || Boolean(_loc1_))
            {
               §§push(§§pop() > §§pop());
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(!_loc6_)
                     {
                        §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Alberto")) > 0);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr379);
                  }
                  if(§§pop())
                  {
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§push(_loc4_);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc5_)
                           {
                           }
                           addr193:
                           §§push(0);
                           if(!_loc6_)
                           {
                              §§goto(addr197);
                              §§push(§§pop() > §§pop());
                           }
                           §§goto(addr220);
                        }
                        _loc4_ = §§pop();
                     }
                     §§goto(addr247);
                  }
                  §§push(_loc2_.getCustomerTotalOrders(_loc3_.getCustomerIndex("Cooper")));
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§goto(addr193);
                  }
                  §§goto(addr276);
               }
            }
            §§goto(addr229);
         }
         §§push(§§pop() > §§pop());
         if(_loc5_ || Boolean(_loc2_))
         {
            §§goto(addr97);
         }
         §§goto(addr197);
      }
      
      public function clickContinue(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:StartDayPanel = this;
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.action = "continue";
            if(_loc3_)
            {
               _loc2_.clip.gotoAndPlay("hide");
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.clip.fader.gotoAndPlay("quickfadeout");
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(_loc2_.gameObj);
                     if(_loc3_)
                     {
                        §§push(§§pop().soundManager);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().playSound("trayslide.wav");
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              _loc2_.paradetip.gotoAndStop(1);
                           }
                           addr89:
                           _loc2_.paradestar.visible = false;
                           if(_loc3_ || _loc3_)
                           {
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr141);
                     }
                     addr109:
                     §§push(§§pop().§_-4P§);
                     if(_loc3_)
                     {
                        addr122:
                        §§push(§§pop().api);
                        if(_loc3_)
                        {
                           §§pop().disableButtons();
                           addr140:
                           §§push(_loc2_.gameObj);
                           if(!_loc4_)
                           {
                              §§push(§§pop().§_-4P§);
                           }
                           addr141:
                           §§pop().switchMusic("none");
                           addr143:
                           return;
                           §§push(§§pop().soundManager);
                        }
                        §§pop().§_-DU§("StartDayPanel");
                        if(_loc3_ || _loc3_)
                        {
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr122);
                     §§push(§§pop().api);
                  }
                  _loc2_.newstar.visible = false;
                  if(_loc3_)
                  {
                     §§goto(addr89);
                  }
               }
            }
            §§push(_loc2_.gameObj);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr109);
            }
         }
         §§goto(addr140);
         §§push(_loc2_.gameObj);
      }
      
      public function clickQuit(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "quit";
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_.gameObj);
            if(_loc3_)
            {
               §§pop().soundManager.playSound("trayslide.wav");
               if(_loc3_)
               {
                  _loc2_.paradetip.gotoAndStop(1);
                  _loc2_.newstar.visible = false;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc2_.paradestar.visible = false;
                     §§push(_loc2_.gameObj);
                     if(_loc3_)
                     {
                     }
                     addr94:
                     §§pop().§_-4P§.api.§_-DU§("StartDayPanel");
                     addr85:
                  }
                  _loc2_.§_-7T§ = false;
               }
               §§goto(addr102);
            }
            §§push(§§pop().§_-4P§);
            if(!_loc4_)
            {
               §§push(§§pop().api);
               if(_loc3_)
               {
                  §§pop().disableButtons();
                  if(_loc3_)
                  {
                     §§goto(addr85);
                     §§push(_loc2_.gameObj);
                  }
               }
            }
            §§goto(addr94);
         }
         _loc2_.§_-BE§ = false;
         addr102:
      }
      
      public function clickShop(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "shop";
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         §§push(_loc2_.gameObj);
         if(_loc4_)
         {
            §§pop().soundManager.playSound("trayslide.wav");
            if(!_loc3_)
            {
               _loc2_.paradetip.gotoAndStop(1);
               _loc2_.newstar.visible = false;
               _loc2_.paradestar.visible = false;
               §§push(_loc2_.gameObj);
               if(_loc4_ || _loc3_)
               {
               }
               addr96:
               §§pop().§_-4P§.api.§_-DU§("StartDayPanel");
               _loc2_.§_-7T§ = false;
               addr101:
               _loc2_.§_-BE§ = false;
               return;
               addr87:
               addr95:
            }
            addr85:
            §§goto(addr87);
            §§push(_loc2_.gameObj);
         }
         §§push(§§pop().§_-4P§);
         if(_loc4_)
         {
            §§push(§§pop().api);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§pop().disableButtons();
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr85);
               }
               §§goto(addr101);
            }
            §§goto(addr96);
         }
         §§goto(addr95);
      }
      
      public function clickParade(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "parade";
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         §§push(_loc2_.gameObj);
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().soundManager.playSound("trayslide.wav");
            §§push(_loc2_.gameObj);
            if(_loc4_)
            {
               §§push(§§pop().§_-4P§);
               if(!_loc3_)
               {
                  §§push(§§pop().api);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§pop().disableButtons();
                     §§goto(addr82);
                  }
                  addr70:
                  §§pop().§_-DU§("StartDayPanel");
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_.§_-7T§ = false;
                     addr82:
                     if(_loc4_)
                     {
                        §§push(_loc2_.gameObj);
                     }
                     _loc2_.§_-BE§ = false;
                     _loc2_.paradetip.gotoAndStop(1);
                     if(!_loc3_)
                     {
                        addr98:
                        _loc2_.newstar.visible = false;
                     }
                     _loc2_.paradestar.visible = false;
                     return;
                  }
                  §§goto(addr98);
               }
               addr69:
               §§goto(addr70);
               §§push(§§pop().api);
            }
         }
         §§goto(addr69);
         §§push(§§pop().§_-4P§);
      }
      
      public function §_-0d§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:StartDayPanel = this;
         var _loc3_:String = String(param1.currentTarget.name).split("_")[0];
         if(!_loc5_)
         {
            _loc2_.§_-DM§ = _loc3_;
            if(_loc4_ || Boolean(param1))
            {
               _loc2_.action = "minigame";
               _loc2_.clip.gotoAndPlay("hide");
               _loc2_.clip.fader.gotoAndPlay("quickfadeout");
               if(!_loc5_)
               {
                  §§push(_loc2_.gameObj);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§pop().soundManager.playSound("trayslide.wav");
                  }
                  addr102:
                  §§push(§§pop().§_-4P§);
                  if(!_loc5_)
                  {
                     §§push(§§pop().api);
                     if(!_loc5_)
                     {
                        §§pop().disableButtons();
                        if(_loc4_ || Boolean(this))
                        {
                        }
                     }
                     addr120:
                     §§pop().§_-DU§("StartDayPanel");
                  }
                  §§goto(addr120);
                  §§push(§§pop().api);
               }
               _loc2_.paradetip.gotoAndStop(1);
               if(!_loc5_)
               {
                  _loc2_.newstar.visible = false;
                  if(_loc5_ && Boolean(this))
                  {
                  }
                  addr93:
                  §§push(_loc2_.gameObj);
                  if(_loc5_ && Boolean(param1))
                  {
                  }
                  §§goto(addr102);
                  §§push(§§pop().§_-4P§);
               }
               _loc2_.paradestar.visible = false;
            }
            §§goto(addr93);
            §§push(_loc2_.gameObj);
         }
         _loc2_.§_-7T§ = false;
         if(!(_loc5_ && Boolean(this)))
         {
            _loc2_.§_-BE§ = false;
         }
      }
      
      public function clickEditLobby(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:StartDayPanel = this;
         _loc2_.action = "lobbyeditor";
         _loc2_.clip.gotoAndPlay("hide");
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         §§push(_loc2_.gameObj);
         if(_loc4_)
         {
            §§pop().soundManager.playSound("trayslide.wav");
            _loc2_.paradetip.gotoAndStop(1);
            if(_loc4_)
            {
               _loc2_.newstar.visible = false;
               _loc2_.paradestar.visible = false;
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_.gameObj);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§push(§§pop().§_-4P§);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        addr91:
                        §§push(§§pop().api);
                        if(_loc4_)
                        {
                           §§pop().disableButtons();
                           §§push(_loc2_.gameObj);
                           if(!_loc3_)
                           {
                              §§push(§§pop().§_-4P§);
                           }
                        }
                        §§pop().§_-DU§("StartDayPanel");
                        if(_loc3_)
                        {
                        }
                        §§push(_loc2_.gameObj);
                        if(_loc3_ && Boolean(this))
                        {
                        }
                     }
                     §§goto(addr91);
                     §§push(§§pop().api);
                  }
                  §§push(§§pop().userData);
                  if(_loc4_)
                  {
                     addr135:
                     §§push(true);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§pop().hasTrainedDecorate = §§pop();
                        §§push(_loc2_.gameObj);
                        if(_loc4_)
                        {
                           §§push(§§pop().userData);
                        }
                     }
                     §§pop().hasNewFurni = §§pop();
                     if(_loc3_ && Boolean(param1))
                     {
                     }
                     §§push(_loc2_.gameObj);
                  }
                  §§goto(addr135);
                  §§push(false);
               }
               if(_loc2_.trainingClip)
               {
                  §§goto(addr135);
               }
               §§goto(addr161);
            }
            _loc2_.§_-7T§ = false;
            _loc2_.§_-BE§ = false;
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§goto(addr91);
            }
            §§goto(addr161);
         }
         §§pop().removeChild(_loc2_.trainingClip);
         _loc2_.trainingClip = null;
         addr161:
      }
      
      public function §_-8u§(param1:Event = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:StartDayPanel = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            §_-5i§.§_-CE§("Ad Finished");
            if(_loc3_)
            {
            }
            §§goto(addr49);
         }
         _loc2_.clip.gotoAndPlay(_loc2_.§_-DJ§ + 1);
         addr49:
      }
      
      public function updateScreen(param1:Event) : void
      {
         var e:Event;
         var screen:StartDayPanel;
         var util:§_-8x§;
         var buttonsToShow:Array;
         var opt:Object;
         var cl:*;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         §§push(null);
         if(!(_loc5_ && Boolean(this)))
         {
            §§pop().§§slot[4] = §§pop();
            §§push(§§newactivation());
            §§push(null);
         }
         §§pop().§§slot[5] = §§pop();
         cl = undefined;
         e = param1;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = this;
            if(_loc4_)
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[3] = screen.gameObj.§_-4P§.api.util;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(screen.clip.currentFrame == screen.§_-3l§ - 1)
                     {
                        §§push(§§newactivation());
                        if(_loc4_ || _loc3_)
                        {
                           §§pop().§§slot[4] = ["Continue ►","Visit Shop","View Parade"];
                        }
                        else
                        {
                           addr351:
                           §§push(§§pop().§§slot[2].§_-X§);
                           if(!_loc5_)
                           {
                              addr356:
                              §§push(!§§pop());
                              §§push(!§§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    addr366:
                                    §§push(!§_-0i§.§_-0R§());
                                    if(_loc5_ && Boolean(param1))
                                    {
                                    }
                                    addr605:
                                    §§pop();
                                    §§push(screen.gameObj);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().userData);
                                       if(!_loc5_)
                                       {
                                          addr616:
                                          addr614:
                                          if(!§§pop().didShowParade)
                                          {
                                             addr617:
                                             §§push(§§newactivation());
                                          }
                                          else
                                          {
                                             §§push(screen.gameObj.userData);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().isPayday());
                                                if(_loc4_)
                                                {
                                                }
                                                addr739:
                                                if(§§pop())
                                                {
                                                   addr690:
                                                   screen.gameObj.§function§();
                                                   addr731:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ || Boolean(this)))
                                                   {
                                                      addr912:
                                                      §§push(§§pop().§§slot[2]);
                                                      if(!_loc5_)
                                                      {
                                                         addr916:
                                                         §§pop().gameObj.§_-9f§();
                                                      }
                                                      else
                                                      {
                                                         addr927:
                                                         if(§§pop().action == "quit")
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr934:
                                                               screen.gameObj.quitToTitle();
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr936:
                                                   return;
                                                   addr689:
                                                }
                                                else
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      addr696:
                                                      §§push(§§pop().§§slot[2]);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr810:
                                                         §§push(§§pop().gameObj);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop().userData);
                                                         }
                                                         §§pop().§_-6T§();
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            addr818:
                                                            §§push(§§newactivation());
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr826:
                                                               §§push(§§pop().§§slot[2]);
                                                               if(!(_loc5_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop().gameObj);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr842:
                                                                     §§pop().§_-9f§();
                                                                     addr843:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr916);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr890:
                                                                  if(§§pop().action == "parade")
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr895:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           addr903:
                                                                           §§push(§§pop().§§slot[2].gameObj);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr908:
                                                                              §§pop().§_-DK§(true);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr911:
                                                                                 §§goto(addr912);
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                           }
                                                                           §§goto(addr916);
                                                                        }
                                                                        §§goto(addr927);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§§newactivation());
                                                                  }
                                                                  §§goto(addr927);
                                                                  §§push(§§pop().§§slot[2]);
                                                               }
                                                               §§goto(addr936);
                                                            }
                                                            else
                                                            {
                                                               addr887:
                                                               §§push(§§pop().§§slot[2]);
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr890);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr934);
                                                      }
                                                      addr722:
                                                      §§push(§§pop().gameObj);
                                                   }
                                                }
                                                §§pop().§§slot[2].gameObj.§_-9f§();
                                                if(_loc5_ && Boolean(this))
                                                {
                                                   §§goto(addr843);
                                                }
                                                §§goto(addr936);
                                             }
                                          }
                                          addr801:
                                          if(§§pop() == "lobbyeditor")
                                          {
                                             addr803:
                                             §§push(§§newactivation());
                                             if(_loc4_)
                                             {
                                                addr806:
                                                §§push(§§pop().§§slot[2]);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr810);
                                                   §§push(§§pop().gameObj);
                                                }
                                                else
                                                {
                                                   addr865:
                                                   §§pop().gameObj.§_-Bw§(screen.§_-DM§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop().§§slot[2]);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            addr883:
                                                            §§pop().gameObj.§_-9f§();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr890);
                                                         }
                                                         §§goto(addr936);
                                                      }
                                                      §§goto(addr934);
                                                   }
                                                }
                                                §§goto(addr895);
                                             }
                                             §§goto(addr890);
                                          }
                                          else
                                          {
                                             §§push(§§newactivation());
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(§§pop().§§slot[2].action == "minigame")
                                                {
                                                   if(_loc4_ || Boolean(param1))
                                                   {
                                                      addr863:
                                                      §§goto(addr865);
                                                      §§push(screen);
                                                   }
                                                   §§goto(addr911);
                                                }
                                                else
                                                {
                                                   §§goto(addr887);
                                                   §§push(§§newactivation());
                                                }
                                                §§goto(addr934);
                                             }
                                          }
                                          §§goto(addr903);
                                       }
                                       addr708:
                                       §§push(§§pop().getToppingToReveal());
                                       if(_loc4_)
                                       {
                                          if(§§pop() != "none")
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§goto(addr722);
                                                §§push(screen);
                                             }
                                             else
                                             {
                                                addr779:
                                                §§push(screen);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop().gameObj.§_-9f§();
                                                }
                                                else
                                                {
                                                   addr793:
                                                   §§push(§§pop().action);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr936);
                                             }
                                             §§goto(addr927);
                                          }
                                          else
                                          {
                                             screen.gameObj.§_-Bi§();
                                          }
                                          §§goto(addr731);
                                       }
                                       §§goto(addr801);
                                    }
                                    §§pop().§_-EH§();
                                    if(_loc4_)
                                    {
                                       §§goto(addr731);
                                    }
                                    else
                                    {
                                       §§goto(addr818);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    addr380:
                                    screen.§_-X§ = true;
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[2].clip.clickawayMC.visible = true;
                                       addr389:
                                       §§push(§§newactivation());
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§§pop().§§slot[2]);
                                          if(_loc4_)
                                          {
                                             §§pop().clip.clickaway_btn.visible = true;
                                             if(_loc4_)
                                             {
                                                §§push(screen);
                                                if(!_loc5_)
                                                {
                                                   §§pop().clip.clickawayMC.buttonMode = true;
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      addr421:
                                                      screen.clip.clickawayMC.useHandCursor = true;
                                                      if(screen.clip.clickawayMC.currentFrame == 1)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr667:
                                                            §§push(§§newactivation());
                                                            if(_loc5_ && Boolean(this))
                                                            {
                                                            }
                                                            §§goto(addr739);
                                                         }
                                                         §§goto(addr731);
                                                      }
                                                      addr444:
                                                      §§push(screen);
                                                      if(!_loc5_)
                                                      {
                                                         §§pop().clip.clickawayMC.addEventListener(MouseEvent.MOUSE_DOWN,screen.§_-1w§);
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr934);
                                                         }
                                                         else
                                                         {
                                                            addr484:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr883);
                                                      }
                                                      §§goto(addr731);
                                                   }
                                                   §§push(screen);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr865);
                                                   }
                                                   §§goto(addr731);
                                                }
                                                §§pop().clip.clickawayMC.gotoAndPlay(2);
                                                §§goto(addr444);
                                             }
                                             §§goto(addr863);
                                          }
                                          else
                                          {
                                             addr512:
                                             §§pop().clip.removeEventListener(Event.ENTER_FRAME,this.updateScreen);
                                             §§push(§§newactivation());
                                          }
                                          §§goto(addr739);
                                       }
                                       §§goto(addr890);
                                    }
                                    else
                                    {
                                       addr504:
                                       §§push(§§pop().§§slot[2]);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§goto(addr512);
                                       }
                                    }
                                    §§goto(addr890);
                                 }
                                 else
                                 {
                                    §§push(screen.§_-X§);
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr484);
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[2].clip.gotoAndPlay(screen.§_-DJ§ + 1);
                                             §§goto(addr484);
                                          }
                                          else
                                          {
                                             addr774:
                                             §§pop().§§slot[2].gameObj.§_-5f§();
                                             if(!_loc5_)
                                             {
                                                §§goto(addr779);
                                             }
                                             §§goto(addr916);
                                          }
                                       }
                                       §§goto(addr731);
                                    }
                                    §§goto(addr843);
                                 }
                                 §§goto(addr667);
                              }
                              addr604:
                              if(§§pop())
                              {
                                 §§goto(addr605);
                              }
                              §§goto(addr616);
                           }
                        }
                        if(§§pop())
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              §§pop().§§slot[2].gameObj.§_-25§();
                              §§goto(addr731);
                           }
                           else
                           {
                              §§goto(addr887);
                           }
                        }
                        else
                        {
                           §§push(screen.gameObj.§_-EW§);
                           if(!_loc5_)
                           {
                              §§push(Boolean(§§pop().showNoPapa));
                              if(!Boolean(§§pop().showNoPapa))
                              {
                                 §§goto(addr666);
                              }
                              §§goto(addr739);
                           }
                           addr678:
                           §§push(§§pop().showNewCustomer);
                           if(_loc4_ || Boolean(this))
                           {
                           }
                           §§goto(addr739);
                        }
                        §§goto(addr739);
                     }
                     else
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop().§§slot[2]);
                           if(_loc4_)
                           {
                              if(§§pop().clip.currentFrame == screen.§_-DJ§)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(screen.§_-7T§);
                                    §§push(screen.§_-7T§);
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       addr167:
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§pop();
                                             if(!_loc5_)
                                             {
                                                §§push(screen);
                                                if(_loc5_ && _loc2_)
                                                {
                                                }
                                                addr520:
                                                §§push(§§pop().gameObj);
                                                if(!_loc5_)
                                                {
                                                   §§pop().soundManager.restoreSoundAfterAd();
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop().§§slot[2].action);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop() == "continue")
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  addr544:
                                                                  §§push(§§pop().§§slot[2].gameObj.userData);
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().customersUnlocked);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop().length > screen.gameObj.customerData.getCustomerTotal());
                                                                        §§push(§§pop().length > screen.gameObj.customerData.getCustomerTotal());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           addr572:
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(screen.gameObj);
                                                                                 if(!(_loc5_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(§§pop().userData);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop().customersUnlocked);
                                                                                    }
                                                                                    §§goto(addr708);
                                                                                 }
                                                                                 §§goto(addr842);
                                                                              }
                                                                              §§goto(addr617);
                                                                           }
                                                                           addr603:
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§goto(addr604);
                                                                     }
                                                                     addr595:
                                                                     §§goto(addr603);
                                                                     §§push(§§pop()[screen.gameObj.customerData.getCustomerTotal()] == 1);
                                                                  }
                                                                  §§goto(addr614);
                                                               }
                                                            }
                                                            §§goto(addr916);
                                                         }
                                                         else
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop().§§slot[2]);
                                                               if(!(_loc5_ && Boolean(param1)))
                                                               {
                                                                  addr761:
                                                                  if(§§pop().action == "shop")
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr766:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc5_ && Boolean(param1)))
                                                                        {
                                                                           §§goto(addr774);
                                                                        }
                                                                        §§goto(addr934);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(screen);
                                                                  }
                                                                  §§goto(addr793);
                                                               }
                                                               §§goto(addr927);
                                                            }
                                                         }
                                                         §§goto(addr826);
                                                      }
                                                      §§goto(addr927);
                                                   }
                                                   §§goto(addr806);
                                                }
                                                §§goto(addr739);
                                             }
                                             §§goto(addr911);
                                          }
                                          addr339:
                                          §§push(§§pop());
                                          §§push(§§pop());
                                       }
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§pop();
                                                if(_loc5_ && _loc2_)
                                                {
                                                }
                                                §§goto(addr366);
                                             }
                                          }
                                          addr191:
                                          if(§§pop())
                                          {
                                             §§push(screen);
                                             §§push(true);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§pop().§_-X§ = §§pop();
                                                if(_loc4_ || _loc3_)
                                                {
                                                   opt = new Object();
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      §§pop().§§slot[5][§_-0i§.§_-1y§("140095010401010108")] = screen.gameObj;
                                                      if(_loc4_)
                                                      {
                                                         opt[§_-0i§.§_-1y§("1201010096")] = §_-77§.§_-EA§();
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§pop().§§slot[5][§_-0i§.§_-1y§("13011000970111")] = §_-0i§.§_-1y§("170050004800440116004800520044");
                                                            opt[§_-0i§.§_-1y§("2100093009600910111011200930110011200970096")] = function():void
                                                            {
                                                            };
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§pop().§§slot[5][§_-0i§.§_-1y§("21100930096009100980101010601010111010000970096")] = screen.§_-8u§;
                                                                  if(!_loc5_)
                                                                  {
                                                                     opt[§_-0i§.§_-1y§("1501060107009100940099")] = true;
                                                                     if(_loc5_ && _loc3_)
                                                                     {
                                                                        §§goto(addr421);
                                                                     }
                                                                     §§goto(addr883);
                                                                  }
                                                                  §§goto(addr803);
                                                               }
                                                               §§goto(addr739);
                                                            }
                                                            §§push(§§newactivation());
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§pop().§§slot[6] = getDefinitionByName(§_-0i§.§_-1y§("21701050107009501000101004200930111004700420073010700950100010100610096")) as Class;
                                                               §§push(§§newactivation());
                                                               if(!(_loc5_ && Boolean(param1)))
                                                               {
                                                                  §§pop().§§slot[6][§_-0i§.§_-1y§("2160111010001070115006901060112009701100072009701140097010400610096")](opt);
                                                                  §§goto(addr484);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr696);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr689);
                                                            }
                                                         }
                                                         §§goto(addr887);
                                                      }
                                                      §§goto(addr818);
                                                   }
                                                   §§goto(addr890);
                                                }
                                                §§goto(addr731);
                                             }
                                             else
                                             {
                                                §§goto(addr380);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr339);
                                             §§push(this.§_-BE§);
                                          }
                                          §§goto(addr604);
                                       }
                                       §§goto(addr572);
                                    }
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(_loc4_ || _loc3_)
                                       {
                                       }
                                       §§goto(addr842);
                                    }
                                    §§goto(addr356);
                                 }
                                 §§goto(addr351);
                                 §§push(§§newactivation());
                              }
                              else
                              {
                                 §§push(screen);
                                 if(!_loc5_)
                                 {
                                    if(§§pop().clip.currentFrame == screen.clip.totalFrames)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr504);
                                       }
                                       §§goto(addr544);
                                    }
                                    §§goto(addr731);
                                 }
                              }
                              §§goto(addr865);
                           }
                           §§push(!§§pop().§_-X§);
                           if(_loc4_)
                           {
                              §§goto(addr167);
                           }
                           §§goto(addr666);
                        }
                     }
                     §§goto(addr520);
                     §§push(§§pop().§§slot[2]);
                  }
                  §§push(screen);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop().§_-5v§)
                     {
                        if(_loc4_)
                        {
                           §§push(buttonsToShow);
                           if(_loc4_)
                           {
                              §§pop().push("Decorate Lobby");
                           }
                           else
                           {
                              §§goto(addr595);
                           }
                           §§goto(addr731);
                        }
                        else
                        {
                           §§goto(addr389);
                        }
                     }
                     screen.gameObj.§_-4P§.api.enableButtons("StartDayPanel",buttonsToShow);
                     §§goto(addr731);
                  }
                  §§goto(addr690);
               }
               §§push(§§pop().§§slot[2]);
               if(_loc4_)
               {
                  §§push(§§pop().gameObj);
                  §§push(false);
                  if(_loc4_ || _loc3_)
                  {
                     §§pop().§_-DK§(§§pop());
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr690);
                     }
                     else
                     {
                        §§goto(addr766);
                     }
                  }
                  §§goto(addr908);
               }
               else
               {
                  §§goto(addr761);
               }
            }
            §§push(§_-0i§.§_-0R§());
            if(!(_loc5_ && Boolean(this)))
            {
               §§goto(addr191);
               §§push(!§§pop());
            }
            §§goto(addr572);
         }
         §§goto(addr678);
         §§push(§§pop().§§slot[2].gameObj.§_-EW§);
      }
      
      public function §_-14§(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:StartDayPanel = this;
         if(!_loc4_)
         {
            MochiAd.unload(_loc2_.clip.clickawayMC);
            if(_loc3_ || Boolean(param1))
            {
            }
            §§goto(addr70);
         }
         _loc2_.clip.clickawayMC.visible = false;
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.clip.clickaway_btn.visible = false;
            if(_loc3_ || Boolean(this))
            {
            }
            §§goto(addr70);
         }
         _loc2_.§_-8u§();
         addr70:
      }
      
      public function §_-1w§(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:StartDayPanel = this;
         if(!_loc3_)
         {
            _loc2_.gameObj.§_-4P§.api.§_-DI§("http://itunes.apple.com/us/app/papas-burgeria/id514634235?ls=1&mt=8","iPadPromoAd","Links");
         }
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:StartDayPanel = this;
         try
         {
            _loc1_.clip.clickawayMC.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.§_-1w§);
            if(!_loc4_)
            {
               addr38:
               _loc1_.clip.clickaway_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.§_-14§);
               if(_loc3_)
               {
                  if(_loc1_.paradetip != null)
                  {
                     if(!_loc4_)
                     {
                        _loc1_.paradetip.parent.removeChild(_loc1_.paradetip);
                        if(_loc3_)
                        {
                        }
                        addr135:
                        _loc1_.container.removeEventListener("clickEditLobby",_loc1_.clickEditLobby);
                        addr141:
                        _loc1_.container.removeEventListener("clickContinue",_loc1_.clickContinue);
                        if(_loc3_)
                        {
                           _loc1_.container.removeEventListener("clickParade",_loc1_.clickParade);
                        }
                        _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
                     }
                     _loc1_.paradetip = null;
                  }
                  if(_loc1_.newstar != null)
                  {
                     if(_loc4_ && Boolean(_loc1_))
                     {
                     }
                     addr110:
                     _loc1_.gameObj.removeChild(_loc1_.trainingClip);
                     if(_loc3_)
                     {
                        _loc1_.trainingClip = null;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr127:
                           _loc1_.container.removeEventListener("clickShop",_loc1_.clickShop);
                           if(_loc4_)
                           {
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr141);
                  }
                  addr99:
                  _loc1_.editor.destroy();
                  if(_loc4_)
                  {
                  }
                  §§goto(addr135);
               }
               _loc1_.newstar.parent.removeChild(_loc1_.newstar);
               _loc1_.newstar = null;
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr99);
               }
            }
            _loc1_.editor = null;
            if(_loc1_.trainingClip)
            {
               §§goto(addr110);
            }
            §§goto(addr127);
         }
         catch(err:Error)
         {
            §§goto(addr38);
         }
         _loc1_.container.removeChild(_loc1_.clip);
         _loc1_.clip = null;
      }
   }
}

