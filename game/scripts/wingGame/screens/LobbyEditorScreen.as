package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   import wingGame.managers.*;
   import wingGame.models.FurnitureItem;
   
   public class LobbyEditorScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var wallGrid:Array;
      
      public var wallGridWidth:Number = 16;
      
      public var wallGridHeight:Number = 7;
      
      public var floorGrid:Array;
      
      public var floorGridWidth:Number = 16;
      
      public var floorGridHeight:Number = 3;
      
      public var furniItems:Vector.<FurnitureItem>;
      
      public var activeFurni:FurnitureItem = null;
      
      public var inventoryIsOpen:Boolean = false;
      
      public var isInvOpening:Boolean = false;
      
      public var isInvClosing:Boolean = false;
      
      public var invOpenSpeed:Number = 4;
      
      public var whichSet:Number = 1;
      
      public var panelsPerSet:Number = 12;
      
      public var workingArray:Array;
      
      public var shouldShowNext:Boolean = false;
      
      public var shouldShowPrev:Boolean = false;
      
      public var existingFurniIsSet:Boolean = false;
      
      public var mode:String = "furni";
      
      public var trainingClip:MovieClip;
      
      public var whichContextTraining:String = "none";
      
      public var backdropBitmap:Bitmap;
      
      public function LobbyEditorScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.wallGrid = [];
            if(!(_loc4_ && _loc3_))
            {
               this.floorGrid = [];
               if(_loc3_ || _loc3_)
               {
               }
            }
            this.furniItems = new Vector.<FurnitureItem>();
            if(_loc4_)
            {
            }
            §§goto(addr48);
         }
         this.workingArray = [];
         if(!_loc4_)
         {
            addr48:
            super();
            §§goto(addr50);
         }
         addr50:
         var _loc2_:LobbyEditorScreen = this;
         _loc2_.gameObj = param1;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!(_loc4_ && Boolean(this)))
            {
               addr113:
               §§push(§§pop().§_-4P§);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(§§pop().api);
                  if(!_loc4_)
                  {
                     §§pop().§_-h§("LobbyEditor","Screens");
                     §§push(_loc2_.gameObj);
                     if(_loc3_)
                     {
                     }
                     addr128:
                     §§pop().userData.hasVisitedLobbyEditor = true;
                     addr130:
                     _loc2_.setupScreen();
                     addr127:
                  }
                  §§pop().§_-h§("NoticedLobbyEditor","Screens",true);
                  addr114:
                  §§goto(addr127);
                  §§push(_loc2_.gameObj);
               }
               §§goto(addr114);
               §§push(§§pop().api);
            }
            §§push(§§pop().userData);
            if(!_loc4_)
            {
               if(§§pop().hasVisitedLobbyEditor == false)
               {
                  §§push(_loc2_.gameObj);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr113);
                     §§push(§§pop().§_-4P§);
                  }
                  §§goto(addr127);
               }
               §§goto(addr130);
            }
            §§goto(addr128);
         }
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LobbyEditorScreen = this;
         _loc1_.clip = new lobbyEditorMC();
         if(_loc3_ || Boolean(this))
         {
            §§push(_loc1_.gameObj);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().§_-BG§.addChild(_loc1_.clip);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.createGrids();
                  if(_loc2_)
                  {
                  }
                  addr54:
                  _loc1_.updateLobbyBitmap();
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.clip.fader.mouseEnabled = false;
                     _loc1_.clip.backtogame_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBackToGame);
                     _loc1_.clip.inventory_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickOpenInventory);
                  }
                  _loc1_.clip.putaway_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPutAway);
                  _loc1_.clip.putaway_btn.visible = false;
                  _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                  _loc1_.clip.addEventListener(MouseEvent.MOUSE_UP,_loc1_.clickScreen);
                  _loc1_.clip.mute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMute);
               }
               _loc1_.setupInventory();
               §§goto(addr54);
            }
            addr147:
            §§pop().soundManager.switchMusic("order");
            §§push(_loc1_.gameObj);
            if(_loc3_)
            {
               addr154:
               §§push(§§pop().userData);
               if(_loc3_)
               {
                  §§goto(addr174);
               }
               §§goto(addr172);
            }
            addr172:
            §§pop().hasTrainedInventory = true;
            addr174:
            if(!§§pop().hasTrainedInventory)
            {
               _loc1_.showContextTraining("inventory");
               §§push(_loc1_.gameObj);
            }
            return;
            §§push(§§pop().userData);
         }
         _loc1_.clip.unmute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
         if(_loc3_)
         {
            _loc1_.updateMuteButton();
            §§push(_loc1_.gameObj);
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr147);
            }
            §§goto(addr154);
         }
         §§goto(addr174);
      }
      
      public function clickBackToGame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         }
         var _loc3_:SoundTransform = new SoundTransform(0);
         §§push(_loc2_.gameObj);
         if(!_loc4_)
         {
            §§push(§§pop().soundManager);
            if(_loc5_ || Boolean(this))
            {
               §§pop().track_boombox.soundTransform = _loc3_;
               if(!_loc4_)
               {
                  §§push(_loc2_.gameObj);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(§§pop().soundManager);
                     if(_loc4_)
                     {
                     }
                     addr78:
                     §§pop().track_phonograph.soundTransform = _loc3_;
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(_loc2_.gameObj);
                        if(_loc5_ || Boolean(param1))
                        {
                        }
                        addr112:
                        §§pop().§_-08§();
                        §§goto(addr118);
                     }
                  }
                  §§goto(addr117);
               }
               §§goto(addr101);
            }
            §§pop().track_jukebox.soundTransform = _loc3_;
            §§push(_loc2_.gameObj);
            if(!_loc4_)
            {
               §§goto(addr78);
               §§push(§§pop().soundManager);
            }
         }
         §§pop().userData.saveData();
         if(_loc5_)
         {
            addr101:
            §§push(_loc2_.gameObj);
            if(!_loc4_)
            {
               §§goto(addr112);
            }
            addr117:
            §§pop().§_-0O§();
            addr118:
            if(_loc5_)
            {
               §§push(_loc2_.gameObj);
            }
            return;
         }
         §§goto(addr112);
      }
      
      public function setupInventory() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:LobbyEditorScreen = this;
         _loc1_.clip.inventory.furni_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         _loc1_.clip.inventory.poster_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         if(!_loc4_)
         {
            _loc1_.clip.inventory.wallpaper_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
            _loc1_.clip.inventory.flooring_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         }
         _loc1_.clip.inventory.next_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickNext);
         if(_loc3_)
         {
            _loc1_.clip.inventory.prev_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
         }
         var _loc2_:int = 1;
         while(true)
         {
            if(_loc2_ <= _loc1_.panelsPerSet)
            {
               _loc1_.clip.inventory.panels["panel" + _loc2_].mouseEnabled = true;
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc1_.clip.inventory.panels["panel" + _loc2_].mouseChildren = false;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.clip.inventory.panels["panel" + _loc2_].buttonMode = true;
                  }
                  _loc1_.clip.inventory.panels["panel" + _loc2_].useHandCursor = true;
                  if(!_loc3_)
                  {
                     break;
                  }
                  _loc1_.clip.inventory.panels["panel" + _loc2_].addEventListener(MouseEvent.CLICK,_loc1_.grabFurniFromInventory);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.clip.inventory.panels["panel" + _loc2_].addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverInvPanel);
                  }
                  _loc1_.clip.inventory.panels["panel" + _loc2_].addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutInvPanel);
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  _loc2_++;
               }
               continue;
            }
            if(!_loc4_)
            {
               _loc1_.clip.inventory.next_btn.visible = false;
               _loc1_.clip.inventory.prev_btn.visible = false;
               if(!_loc4_)
               {
                  _loc1_.clip.inventory.effect_txt.text = "";
                  if(_loc3_)
                  {
                     _loc1_.selectMode("furni");
                  }
                  addr250:
                  _loc1_.populatePanels();
                  _loc1_.clip.inventory.y = 480;
                  break;
               }
            }
            if(_loc1_.workingArray.length == 0)
            {
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.selectMode("poster");
                  if(_loc4_)
                  {
                  }
                  break;
               }
            }
            §§goto(addr250);
         }
      }
      
      public function clickNext(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         if(_loc6_ || Boolean(param1))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc5_ && Boolean(this))
            {
            }
            _loc2_.clip.inventory.next_btn.visible = false;
            §§goto(addr83);
         }
         var _loc3_:* = _loc2_;
         §§push(_loc3_.whichSet);
         if(_loc6_ || Boolean(_loc3_))
         {
            §§push(§§pop() + 1);
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            _loc3_.whichSet = _loc4_;
         }
         if(_loc6_ || Boolean(_loc2_))
         {
            _loc2_.clip.inventory.panels.gotoAndPlay("nextset");
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§goto(addr83);
            }
            §§goto(addr98);
         }
         addr83:
         if(_loc6_)
         {
            addr98:
            _loc2_.clip.inventory.prev_btn.visible = false;
         }
      }
      
      public function clickPrevious(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(!(_loc5_ && Boolean(param1)))
            {
               var _loc3_:* = _loc2_;
               §§push(_loc3_.whichSet);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc4_:* = §§pop();
               if(_loc6_ || Boolean(param1))
               {
                  _loc3_.whichSet = _loc4_;
               }
               if(_loc6_)
               {
                  _loc2_.clip.inventory.panels.gotoAndPlay("prevset");
                  if(!_loc5_)
                  {
                     _loc2_.clip.inventory.next_btn.visible = false;
                     if(!_loc5_)
                     {
                        _loc2_.clip.inventory.prev_btn.visible = false;
                     }
                  }
               }
            }
         }
      }
      
      public function rolloverInvPanel(param1:MouseEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:FurniData = null;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:* = -1;
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(true)
            {
               if(§§pop() <= _loc2_.panelsPerSet)
               {
                  if(param1.currentTarget != _loc2_.clip.inventory.panels["panel" + _loc4_])
                  {
                     break;
                  }
                  if(!_loc10_)
                  {
                     §§push(_loc4_);
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                        if(_loc9_)
                        {
                           _loc3_ = §§pop();
                        }
                        §§goto(addr104);
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(_loc3_);
               if(_loc9_)
               {
                  if(§§pop() > -1)
                  {
                     _loc2_.clip.inventory.panels["panel" + _loc4_].hilite.visible = true;
                     if(!(_loc10_ && Boolean(this)))
                     {
                        §§push(_loc2_.panelsPerSet);
                        §§push(_loc2_.whichSet);
                        if(!_loc10_)
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc10_ && Boolean(this)))
                           {
                              addr104:
                              _loc5_ = §§pop();
                              addr109:
                              _loc6_ = _loc3_ - 1 + _loc5_;
                              addr107:
                              if(!_loc10_)
                              {
                                 _loc7_ = _loc2_.workingArray[_loc6_];
                              }
                              addr120:
                              _loc8_ = _loc2_.gameObj.§_-Cf§.getFurniFromTag(_loc7_);
                              if(_loc9_ || Boolean(this))
                              {
                                 _loc2_.clip.inventory.effect_txt.text = _loc8_.effect;
                              }
                              return;
                              §§push(§§pop() * §§pop());
                           }
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr104);
               }
               §§goto(addr107);
            }
            _loc4_++;
         }
      }
      
      public function rolloutInvPanel(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:* = -1;
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() <= _loc2_.panelsPerSet)
            {
               if(param1.currentTarget == _loc2_.clip.inventory.panels["panel" + _loc4_])
               {
                  if(_loc6_)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ || Boolean(this)))
                     {
                        continue;
                     }
                     §§push(§§pop());
                     if(_loc6_ || Boolean(this))
                     {
                        _loc3_ = §§pop();
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr79:
                        _loc2_.clip.inventory.panels["panel" + _loc4_].hilite.visible = false;
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr104:
                           _loc2_.clip.inventory.effect_txt.text = "";
                        }
                     }
                     if(§§pop() > -1)
                     {
                        §§goto(addr79);
                     }
                     §§goto(addr104);
                  }
                  break;
               }
               _loc4_++;
               if(!(_loc6_ || Boolean(_loc3_)))
               {
                  return;
               }
               continue loop0;
            }
            §§goto(addr77);
         }
      }
      
      public function grabFurniFromInventory(param1:MouseEvent) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         var _loc8_:FurniData = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc2_:LobbyEditorScreen = this;
         if(!(_loc11_ && Boolean(this)))
         {
            §§push(_loc2_.inventoryIsOpen);
            if(_loc12_)
            {
               §§push(§§pop());
               if(!_loc11_)
               {
                  if(!§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§pop();
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           §§push(_loc2_.isInvOpening);
                           if(_loc11_)
                           {
                           }
                        }
                        addr87:
                        _loc4_ = 1;
                        addr86:
                     }
                     §§push(§§pop());
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc11_ && Boolean(this)))
               {
                  §§push(-1);
                  if(!_loc11_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc11_ && Boolean(_loc3_)))
                     {
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr87);
               }
            }
            §§goto(addr510);
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(true)
            {
               if(§§pop() <= _loc2_.panelsPerSet)
               {
                  if(param1.currentTarget == _loc2_.clip.inventory.panels["panel" + _loc4_])
                  {
                     §§push(_loc4_);
                     if(!(_loc11_ && Boolean(param1)))
                     {
                        _loc3_ = §§pop();
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               if(_loc12_)
               {
                  break;
               }
               §§push(_loc3_ - 1);
               if(!_loc11_)
               {
                  addr174:
                  §§push(§§pop() + _loc5_);
               }
               _loc6_ = §§pop();
               _loc7_ = _loc2_.workingArray[_loc6_];
               _loc8_ = _loc2_.gameObj.§_-Cf§.getFurniFromTag(_loc7_);
               §§push(_loc8_.type);
               if(!_loc11_)
               {
                  §§push(FurniData.TYPE_WALLPAPER);
                  if(!(_loc11_ && Boolean(this)))
                  {
                     §§push(§§pop() == §§pop());
                     §§push(§§pop() == §§pop());
                     if(!(_loc11_ && Boolean(_loc2_)))
                     {
                        addr244:
                        if(!§§pop())
                        {
                           addr490:
                           if(_loc12_ || Boolean(this))
                           {
                              §§pop();
                              if(_loc12_ || Boolean(_loc3_))
                              {
                                 §§push(_loc8_.type);
                                 if(_loc12_ || Boolean(_loc3_))
                                 {
                                    §§push(FurniData.TYPE_FLOORING);
                                    if(_loc11_)
                                    {
                                    }
                                    addr309:
                                    if(§§pop() == §§pop())
                                    {
                                       addr318:
                                       _loc10_ = Number(_loc7_.split("floor")[1]);
                                       if(!_loc11_)
                                       {
                                          §§push(_loc2_.gameObj);
                                          if(!(_loc11_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop().userData);
                                             if(!_loc11_)
                                             {
                                                addr334:
                                                §§pop().lobbyFlooring = _loc10_;
                                             }
                                             addr416:
                                             §§push(§§pop().hasTrainedPoster);
                                             if(!_loc11_)
                                             {
                                                §§push(false);
                                                if(_loc11_)
                                                {
                                                }
                                                addr471:
                                                if(§§pop())
                                                {
                                                   if(_loc12_ || Boolean(_loc2_))
                                                   {
                                                   }
                                                }
                                                addr492:
                                                if(§§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      _loc2_.showContextTraining("furni");
                                                   }
                                                   addr509:
                                                   _loc2_.gameObj.userData.hasTrainedFurni = true;
                                                   addr508:
                                                }
                                             }
                                             §§pop();
                                             if(!_loc11_)
                                             {
                                                §§push(_loc2_.gameObj);
                                                if(!_loc11_)
                                                {
                                                   addr486:
                                                   §§push(§§pop().userData);
                                                   if(!_loc11_)
                                                   {
                                                      addr489:
                                                      §§push(§§pop().hasTrainedFurni);
                                                   }
                                                }
                                             }
                                             §§goto(addr508);
                                          }
                                          addr408:
                                          §§push(§§pop().userData);
                                          if(!(_loc11_ && Boolean(this)))
                                          {
                                             §§goto(addr416);
                                          }
                                          §§goto(addr508);
                                       }
                                       §§goto(addr510);
                                    }
                                    _loc2_.updateLobbyBitmap();
                                    _loc2_.clip.putaway_btn.visible = false;
                                    _loc2_.clip.inventory_btn.visible = true;
                                    if(!_loc11_)
                                    {
                                       _loc2_.closeInventory();
                                    }
                                    else
                                    {
                                       addr361:
                                       _loc2_.clip.inventory_btn.visible = false;
                                       if(_loc11_ && Boolean(_loc2_))
                                       {
                                       }
                                       addr457:
                                    }
                                    §§goto(addr510);
                                 }
                              }
                              _loc2_.closeInventory();
                              §§push(_loc8_.type);
                              if(!(_loc11_ && Boolean(_loc3_)))
                              {
                                 addr462:
                                 §§push(FurniData.TYPE_POSTER);
                                 if(!(_loc11_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() == §§pop());
                                    §§push(§§pop() == §§pop());
                                    if(!_loc11_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(_loc2_.gameObj);
                                          if(_loc12_ || Boolean(this))
                                          {
                                             §§goto(addr408);
                                          }
                                          §§goto(addr450);
                                       }
                                       addr430:
                                       if(§§pop())
                                       {
                                          _loc2_.showContextTraining("poster");
                                          if(!(_loc11_ && Boolean(_loc3_)))
                                          {
                                             §§push(_loc2_.gameObj);
                                             if(_loc12_ || Boolean(_loc3_))
                                             {
                                                addr450:
                                                §§push(§§pop().userData);
                                                if(!_loc11_)
                                                {
                                                   addr453:
                                                   §§push(true);
                                                   if(!_loc11_)
                                                   {
                                                      §§pop().hasTrainedPoster = §§pop();
                                                      §§goto(addr457);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr509);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr489);
                                                }
                                                §§goto(addr510);
                                             }
                                             else
                                             {
                                                §§goto(addr486);
                                             }
                                          }
                                          §§goto(addr509);
                                       }
                                       else
                                       {
                                          §§push(_loc8_.type);
                                       }
                                    }
                                    addr491:
                                    §§goto(addr492);
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc11_ && Boolean(this)))
                                 {
                                    §§goto(addr471);
                                 }
                                 §§goto(addr491);
                              }
                              addr460:
                              §§goto(addr462);
                              §§push(FurniData.TYPE_FURNI);
                           }
                           §§goto(addr491);
                           §§push(false);
                        }
                        if(§§pop())
                        {
                           §§push(_loc8_.type);
                           if(_loc11_ && Boolean(_loc3_))
                           {
                           }
                           addr305:
                           §§push(FurniData.TYPE_FLOORING);
                           if(_loc12_)
                           {
                              §§goto(addr309);
                           }
                           §§goto(addr462);
                        }
                        else
                        {
                           _loc2_.addFurni(_loc8_,true);
                           _loc2_.clip.putaway_btn.visible = true;
                        }
                        §§goto(addr361);
                     }
                     §§push(§§pop() == §§pop());
                     if(_loc12_ || Boolean(param1))
                     {
                        §§goto(addr430);
                     }
                     §§goto(addr490);
                  }
                  §§push(§§pop() == §§pop());
                  if(!_loc11_)
                  {
                     §§goto(addr244);
                  }
                  §§goto(addr490);
               }
               §§push(FurniData.TYPE_WALLPAPER);
               if(_loc12_ || Boolean(this))
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(Number(_loc7_.split("wall")[1]));
                     if(!_loc11_)
                     {
                        _loc9_ = §§pop();
                        if(_loc12_)
                        {
                           §§push(_loc2_.gameObj);
                           if(_loc12_)
                           {
                              §§push(§§pop().userData);
                              if(!_loc11_)
                              {
                                 §§push(_loc9_);
                                 if(_loc12_ || Boolean(this))
                                 {
                                    §§pop().lobbyWallpaper = §§pop();
                                 }
                                 else
                                 {
                                    §§goto(addr334);
                                 }
                                 §§goto(addr309);
                              }
                              §§goto(addr453);
                           }
                           §§goto(addr408);
                        }
                     }
                     else
                     {
                        §§goto(addr318);
                     }
                     §§goto(addr510);
                  }
                  else
                  {
                     §§push(_loc8_.type);
                     if(!_loc11_)
                     {
                        §§goto(addr305);
                     }
                  }
                  §§goto(addr460);
               }
               §§goto(addr462);
            }
            if(_loc3_ != -1)
            {
               if(_loc12_ || Boolean(_loc3_))
               {
                  §§push(_loc2_.gameObj);
                  if(_loc12_)
                  {
                     §§pop().soundManager.playSound("buttonclick.wav");
                     §§push(_loc2_.panelsPerSet);
                     if(_loc12_ || Boolean(param1))
                     {
                        §§push(_loc2_.whichSet);
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() - 1);
                           if(_loc12_)
                           {
                           }
                           §§goto(addr174);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc12_)
                        {
                           §§push(§§pop());
                           if(!(_loc11_ && Boolean(_loc2_)))
                           {
                              _loc5_ = §§pop();
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr185);
               }
               §§goto(addr183);
            }
            addr510:
            return;
            _loc4_++;
         }
      }
      
      public function refreshInventory() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:LobbyEditorScreen = this;
         if(_loc4_)
         {
            _loc1_.workingArray = _loc1_.gameObj.userData.getFurniAvailable(_loc1_.mode);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(_loc1_.mode);
               if(_loc4_ || Boolean(this))
               {
                  addr75:
                  §§push(FurniData.TYPE_WALLPAPER);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        §§push(_loc1_.mode);
                     }
                     addr87:
                     var _loc2_:Number = Math.ceil(_loc1_.workingArray.length / _loc1_.panelsPerSet);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop() >= 1);
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    if(_loc3_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr142);
                                 }
                              }
                           }
                           §§goto(addr127);
                        }
                        addr125:
                        addr127:
                        if(§§pop())
                        {
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              §§goto(addr142);
                           }
                        }
                        addr142:
                        _loc1_.whichSet = _loc2_;
                        return;
                        §§push(§§pop() > _loc2_);
                     }
                     §§goto(addr125);
                     §§push(_loc1_.whichSet);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_ && Boolean(this))
                     {
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr75);
               §§push(FurniData.TYPE_FLOORING);
            }
            §§push(_loc1_.workingArray);
            if(_loc4_)
            {
               §§pop().push("wall1");
               if(_loc4_)
               {
               }
               §§goto(addr87);
            }
            addr85:
            §§pop().push("floor1");
            §§goto(addr87);
         }
         §§goto(addr85);
         §§push(_loc1_.workingArray);
      }
      
      public function createGrids() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc1_:LobbyEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc8_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(_loc1_.wallGridHeight);
               if(_loc8_ || Boolean(_loc3_))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                           _loc4_ = §§pop();
                           if(_loc8_ || Boolean(_loc2_))
                           {
                           }
                           §§goto(addr181);
                        }
                        break;
                     }
                  }
                  else
                  {
                     §§push([]);
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        _loc5_ = §§pop();
                        _loc3_ = 0;
                        if(_loc8_ || Boolean(_loc2_))
                        {
                        }
                        while(_loc3_ < _loc1_.wallGridWidth)
                        {
                           _loc5_.push(0);
                           _loc3_++;
                        }
                        _loc1_.wallGrid.push(_loc5_);
                        if(_loc8_)
                        {
                           §§push(_loc4_);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc4_ = §§pop();
                        }
                        continue;
                     }
                     while(true)
                     {
                        _loc6_ = §§pop();
                        if(_loc8_)
                        {
                           _loc3_ = 0;
                           if(_loc8_ || Boolean(_loc1_))
                           {
                           }
                           while(_loc3_ < _loc1_.floorGridWidth)
                           {
                              _loc6_.push(0);
                              _loc3_++;
                           }
                           _loc1_.floorGrid.push(_loc6_);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              §§push(_loc4_);
                              if(_loc8_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc4_ = §§pop();
                           }
                           addr149:
                        }
                        §§goto(addr149);
                     }
                     addr126:
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     break loop0;
                  }
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§goto(addr181);
                  }
                  else
                  {
                     §§goto(addr126);
                     §§push([]);
                  }
               }
               addr180:
            }
            break;
         }
         while(true)
         {
            §§goto(addr180);
         }
         addr181:
      }
      
      public function createExistingFurni() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:FurniData = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc1_:LobbyEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < _loc2_.lobbyPlacement.length)
         {
            _loc4_ = _loc1_.gameObj.§_-Cf§.getFurniFromTag(_loc2_.lobbyPlacement[_loc3_][0]);
            §§push(_loc2_.lobbyPlacement);
            if(_loc9_)
            {
               §§push(_loc3_);
               if(_loc9_ || Boolean(_loc3_))
               {
                  §§push(Number(§§pop()[§§pop()][1]));
                  if(!(_loc10_ && Boolean(_loc1_)))
                  {
                     _loc5_ = §§pop();
                     if(!(_loc10_ && Boolean(this)))
                     {
                        §§push(_loc2_.lobbyPlacement);
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           §§push(_loc3_);
                           if(_loc9_)
                           {
                              §§push(Number(§§pop()[§§pop()][2]));
                              if(!_loc10_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc9_ || Boolean(this))
                                 {
                                    _loc1_.addFurni(_loc4_,false,_loc5_,_loc6_);
                                    §§push(_loc6_);
                                    if(_loc9_)
                                    {
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_ || Boolean(_loc1_))
                                       {
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc9_ || Boolean(_loc1_))
                                                   {
                                                      §§push(_loc4_.width);
                                                      if(_loc9_)
                                                      {
                                                         addr229:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc9_ || Boolean(_loc2_))
                                                         {
                                                            addr217:
                                                            if(§§pop() < §§pop())
                                                            {
                                                               §§push(_loc4_.type);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(FurniData.TYPE_POSTER);
                                                                  if(!(_loc10_ && Boolean(_loc1_)))
                                                                  {
                                                                     addr191:
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        §§push(_loc1_.wallGrid);
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc4_.type);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc8_++;
                                                                        continue loop2;
                                                                     }
                                                                     addr191:
                                                                  }
                                                                  addr183:
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr183);
                                                               §§push(FurniData.TYPE_FURNI);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               break loop2;
                                                            }
                                                            addr217:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               break loop1;
                                                            }
                                                            §§push(_loc5_);
                                                            continue loop1;
                                                         }
                                                         addr229:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr229);
                                                      }
                                                      addr228:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr228);
                                                   }
                                                   addr226:
                                                }
                                                break;
                                             }
                                          }
                                          continue loop0;
                                          addr141:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc9_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr226);
                                          }
                                          §§goto(addr229);
                                       }
                                    }
                                    if(!_loc10_)
                                    {
                                       _loc3_++;
                                    }
                                    continue;
                                 }
                                 while(true)
                                 {
                                    _loc7_++;
                                    §§goto(addr217);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§pop()[§§pop()][_loc8_] = 1;
                              if(!_loc10_)
                              {
                                 §§goto(addr191);
                              }
                              §§goto(addr217);
                           }
                           addr172:
                        }
                        while(true)
                        {
                           §§push(_loc7_);
                        }
                        addr186:
                     }
                     while(true)
                     {
                        §§goto(addr186);
                     }
                  }
                  §§push(§§pop());
                  if(_loc9_ || Boolean(_loc3_))
                  {
                     _loc7_ = §§pop();
                     §§goto(addr217);
                  }
                  §§goto(addr141);
               }
               while(true)
               {
                  §§pop()[§§pop()][_loc8_] = 1;
                  §§goto(addr191);
               }
               addr187:
            }
            while(true)
            {
               §§push(_loc7_);
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  §§goto(addr172);
               }
               §§goto(addr187);
            }
         }
         if(_loc9_)
         {
            _loc1_.existingFurniIsSet = true;
         }
      }
      
      public function isWallGridFree(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc5_:LobbyEditorScreen = this;
         var _loc6_:* = true;
         if(!(_loc9_ && Boolean(param2)))
         {
            §§push(param2);
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            _loc8_ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(_loc8_);
            loop1:
            while(true)
            {
               §§push(param2);
               if(_loc10_)
               {
                  while(true)
                  {
                     §§push(param4);
                     addr193:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                     }
                  }
                  addr192:
               }
               loop4:
               while(§§pop() < §§pop())
               {
                  _loc7_ = param1;
                  while(true)
                  {
                     §§push(_loc7_);
                     §§push(param1);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        §§push(param3);
                        if(_loc10_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc9_ && Boolean(param3)))
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc8_);
                                 if(_loc9_ && Boolean(this))
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() + 1);
                              }
                              else
                              {
                                 §§push(_loc8_);
                                 §§push(0);
                                 if(!(_loc9_ && Boolean(param1)))
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc9_ && Boolean(param1)))
                                       {
                                          if(!§§pop())
                                          {
                                             addr139:
                                             if(_loc10_ || Boolean(param2))
                                             {
                                                §§pop();
                                                §§push(_loc8_);
                                                if(_loc10_)
                                                {
                                                   addr115:
                                                   §§push(_loc5_.wallGrid);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() >= §§pop().length);
                                                   }
                                                   §§push(§§pop() >= §§pop()[0].length);
                                                   §§push(§§pop() >= §§pop()[0].length);
                                                }
                                             }
                                             _loc6_ = §§pop();
                                             break loop4;
                                          }
                                       }
                                       addr120:
                                       if(!§§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             §§pop();
                                             §§push(_loc5_.wallGrid[_loc8_][_loc7_] == 0);
                                             if(_loc10_)
                                             {
                                             }
                                          }
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          §§push(false);
                                          if(_loc10_)
                                          {
                                             §§goto(addr139);
                                          }
                                          §§goto(addr196);
                                       }
                                       §§push(_loc7_);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + 1);
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    §§push(§§pop());
                                    if(_loc10_ || Boolean(param1))
                                    {
                                       addr102:
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          addr113:
                                          §§push(_loc7_);
                                          if(_loc10_)
                                          {
                                             §§push(0);
                                          }
                                          §§goto(addr115);
                                          §§push(_loc5_.wallGrid);
                                       }
                                       §§push(§§pop());
                                       if(_loc10_ || Boolean(this))
                                       {
                                       }
                                       §§goto(addr120);
                                    }
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§goto(addr113);
                                       §§push(_loc7_);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr102);
                                 §§push(§§pop() < §§pop());
                              }
                              §§push(§§pop());
                              break;
                           }
                           continue loop4;
                        }
                     }
                     else
                     {
                        §§goto(addr192);
                     }
                     §§goto(addr193);
                     _loc7_ = §§pop();
                  }
                  continue loop0;
               }
               addr196:
               return §§pop();
            }
            _loc8_ = §§pop();
         }
      }
      
      public function isFloorGridFree(param1:Number, param2:Number, param3:Number, param4:Number = 1) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc5_:LobbyEditorScreen = this;
         var _loc6_:* = true;
         if(!(_loc10_ && Boolean(param3)))
         {
            §§push(param2);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            _loc8_ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(_loc8_);
            loop1:
            while(true)
            {
               §§push(param2);
               if(!_loc10_)
               {
                  §§push(param4);
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                  }
                  addr205:
               }
               loop3:
               while(§§pop() < §§pop())
               {
                  _loc7_ = param1;
                  loop4:
                  while(true)
                  {
                     §§push(_loc7_);
                     while(true)
                     {
                        §§push(param1);
                        if(_loc9_ || Boolean(param3))
                        {
                           §§push(param3);
                           if(!(_loc9_ || Boolean(param2)))
                           {
                              break loop4;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc10_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(_loc8_);
                                 §§push(0);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc9_)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_ || Boolean(param1))
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc9_)
                                             {
                                             }
                                             addr136:
                                             if(§§pop())
                                             {
                                                break;
                                             }
                                             §§push(_loc7_ + 1);
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             _loc7_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          addr79:
                                          §§push(§§pop());
                                          if(_loc9_)
                                          {
                                          }
                                          addr111:
                                          if(!§§pop())
                                          {
                                             addr142:
                                             if(!_loc10_)
                                             {
                                                §§pop();
                                                addr118:
                                                §§push(_loc7_ >= _loc5_.floorGrid[0].length);
                                             }
                                             _loc6_ = §§pop();
                                             if(_loc9_ || Boolean(param3))
                                             {
                                                addr150:
                                                break loop3;
                                             }
                                             continue loop0;
                                          }
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             §§push(_loc5_.floorGrid[_loc8_][_loc7_] != 0);
                                             if(_loc9_)
                                             {
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr136);
                                       }
                                       if(!§§pop())
                                       {
                                          if(!(_loc10_ && Boolean(param3)))
                                          {
                                             §§pop();
                                             if(!_loc10_)
                                             {
                                                §§push(_loc7_);
                                                §§push(0);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr208);
                                       }
                                       addr96:
                                       §§push(§§pop());
                                       if(_loc10_ && Boolean(param3))
                                       {
                                       }
                                       §§goto(addr111);
                                    }
                                    §§pop();
                                    if(_loc9_ || Boolean(param2))
                                    {
                                       §§push(_loc8_);
                                       §§push(_loc5_.floorGrid);
                                       if(_loc9_ || Boolean(param2))
                                       {
                                          §§goto(addr79);
                                          §§push(§§pop() >= §§pop().length);
                                       }
                                       §§goto(addr118);
                                    }
                                 }
                                 §§goto(addr96);
                                 §§push(§§pop() < §§pop());
                              }
                              §§push(_loc8_);
                              if(_loc10_ && Boolean(this))
                              {
                                 break loop1;
                              }
                              §§push(§§pop() + 1);
                              if(!_loc10_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        continue loop3;
                     }
                     if(!_loc10_)
                     {
                        §§push(false);
                        if(!_loc10_)
                        {
                           §§goto(addr142);
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr205);
               }
               addr208:
               return §§pop();
            }
            _loc8_ = §§pop();
         }
      }
      
      public function placeFurni(param1:FurniData, param2:Number, param3:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         var _loc4_:LobbyEditorScreen = this;
         var _loc5_:UserData = _loc4_.gameObj.userData;
         var _loc6_:int = param3;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            loop1:
            while(true)
            {
               §§push(param3);
               if(_loc8_)
               {
                  while(true)
                  {
                     §§push(param1.depth);
                     addr144:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                     }
                  }
                  addr142:
               }
               loop4:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     break loop1;
                  }
                  §§push(int(param2));
                  if(_loc8_)
                  {
                     _loc7_ = §§pop();
                     if(!(_loc9_ && Boolean(this)))
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                           if(_loc9_ && Boolean(param1))
                           {
                              continue loop1;
                           }
                           §§push(param2);
                           if(_loc8_ || Boolean(param2))
                           {
                              §§push(param1.width);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc9_)
                              {
                                 continue loop4;
                              }
                              if(§§pop() < §§pop())
                              {
                                 §§push(param1.type);
                                 if(_loc8_)
                                 {
                                    §§push(FurniData.TYPE_POSTER);
                                    if(_loc8_ || Boolean(param2))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             §§push(_loc4_.wallGrid);
                                             if(_loc8_)
                                             {
                                                §§push(_loc6_);
                                                if(!(_loc9_ && Boolean(param3)))
                                                {
                                                   §§pop()[§§pop()][_loc7_] = 1;
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                addr98:
                                                §§push(_loc6_);
                                             }
                                             §§pop()[§§pop()][_loc7_] = 1;
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             addr215:
                                             addr166:
                                             _loc4_.adjustFloorLayering(param3);
                                             if(!_loc9_)
                                             {
                                                §§goto(addr171);
                                             }
                                             §§goto(addr224);
                                             §§push(_loc4_.whichContextTraining);
                                          }
                                          else
                                          {
                                             addr154:
                                             §§push(param1.type);
                                             if(_loc9_ && Boolean(this))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(param1.type);
                                          if(_loc8_ || Boolean(param2))
                                          {
                                             §§push(FurniData.TYPE_FURNI);
                                             if(_loc8_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   continue;
                                                }
                                                if(_loc9_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr98);
                                                §§push(_loc4_.floorGrid);
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       §§push(§§pop() == "poster");
                                       if(_loc8_ || Boolean(param2))
                                       {
                                          §§goto(addr203);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr165);
                                 }
                                 addr165:
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr166);
                                 }
                                 addr171:
                                 §§push(Boolean(_loc4_.trainingClip));
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       §§goto(addr226);
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc8_ || Boolean(param2))
                                       {
                                       }
                                    }
                                    addr226:
                                    if(§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          §§pop();
                                          §§goto(addr229);
                                       }
                                       addr203:
                                       §§push(§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          §§goto(addr229);
                                       }
                                    }
                                    §§goto(addr229);
                                 }
                                 §§pop();
                                 if(_loc9_)
                                 {
                                 }
                                 addr229:
                                 if(_loc8_)
                                 {
                                    §§push(_loc4_.whichContextTraining);
                                    if(_loc9_)
                                    {
                                    }
                                    addr224:
                                    §§push(§§pop() == "furni");
                                 }
                                 _loc4_.removeContextTraining();
                                 _loc4_.refreshInventory();
                                 return;
                                 §§push(FurniData.TYPE_FURNI);
                              }
                           }
                           else
                           {
                              §§goto(addr142);
                           }
                           _loc7_++;
                        }
                        §§goto(addr144);
                     }
                     _loc6_++;
                     continue loop0;
                  }
                  continue loop1;
               }
            }
            _loc5_.placeFurniInLobby(param1.tag,param2,param3);
            if(_loc8_)
            {
               §§goto(addr154);
            }
            §§goto(addr215);
         }
      }
      
      public function pickupFurni(param1:FurniData, param2:Number, param3:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         var _loc4_:LobbyEditorScreen = this;
         var _loc5_:UserData = _loc4_.gameObj.userData;
         var _loc6_:int = param3;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            loop1:
            while(true)
            {
               §§push(param3);
               if(!(_loc8_ && Boolean(param3)))
               {
                  while(true)
                  {
                     §§push(param1.depth);
                     addr131:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                     }
                  }
                  addr129:
               }
               loop4:
               while(§§pop() < §§pop())
               {
                  §§push(int(param2));
                  if(_loc9_ || Boolean(param1))
                  {
                     _loc7_ = §§pop();
                     if(!_loc8_)
                     {
                        do
                        {
                           §§push(_loc7_);
                           if(!(_loc9_ || Boolean(this)))
                           {
                              continue loop1;
                           }
                           §§push(param2);
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§push(param1.width);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc9_)
                                 {
                                    continue loop4;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       addr148:
                                       _loc4_.refreshInventory();
                                       break;
                                    }
                                    _loc6_++;
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§push(param1.type);
                                 if(_loc9_)
                                 {
                                    addr80:
                                    §§push(FurniData.TYPE_POSTER);
                                    if(!_loc8_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§push(_loc4_.wallGrid);
                                          if(!_loc8_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc9_ || Boolean(this))
                                             {
                                                §§pop()[§§pop()][_loc7_] = 0;
                                                continue;
                                             }
                                          }
                                          addr84:
                                          §§pop()[§§pop()][_loc7_] = 0;
                                          continue;
                                       }
                                       §§push(param1.type);
                                       addr83:
                                       §§goto(addr84);
                                       §§push(_loc6_);
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       continue;
                                    }
                                    §§goto(addr83);
                                    §§push(_loc4_.floorGrid);
                                 }
                                 §§goto(addr80);
                                 §§push(FurniData.TYPE_FURNI);
                              }
                           }
                           else
                           {
                              §§goto(addr129);
                           }
                           §§goto(addr131);
                        }
                        while(_loc7_++, !_loc8_);
                        
                        §§goto(addr150);
                     }
                     break;
                  }
                  continue loop1;
               }
               _loc5_.removeFurniFromLobby(param1.tag,param2,param3);
               if(!_loc8_)
               {
                  §§goto(addr148);
               }
               addr150:
               return;
            }
         }
      }
      
      public function adjustFloorLayering(param1:Number) : void
      {
      }
      
      public function putAwayFurni(param1:FurnitureItem) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:SoundManager = _loc2_.gameObj.soundManager;
         var _loc4_:UserData = _loc2_.gameObj.userData;
         §§push(param1.data);
         if(!_loc7_)
         {
            §§push(§§pop().tag);
            if(_loc6_)
            {
               §§push(§§pop() == "furni_jukebox");
               if(_loc6_ || Boolean(param1))
               {
                  §§push(§§pop());
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§pop();
                           §§goto(addr173);
                        }
                        addr107:
                        if(§§pop())
                        {
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              addr115:
                              _loc3_.track_phonograph.soundTransform = new SoundTransform(0);
                              if(_loc7_)
                              {
                              }
                           }
                        }
                        else
                        {
                           addr126:
                           §§push(param1.data.tag);
                        }
                        §§goto(addr164);
                     }
                     if(§§pop())
                     {
                        _loc3_.track_jukebox.soundTransform = new SoundTransform(0);
                        if(_loc7_)
                        {
                           §§goto(addr115);
                        }
                     }
                     else
                     {
                        §§push(param1.data);
                        if(_loc6_ || Boolean(this))
                        {
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr164);
                  }
                  addr92:
                  if(§§pop())
                  {
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§pop();
                        §§goto(addr153);
                     }
                     §§push(!§§pop());
                  }
                  §§goto(addr107);
               }
               addr89:
               §§push(§§pop());
               if(!_loc7_)
               {
                  §§goto(addr92);
               }
               §§goto(addr144);
            }
            addr134:
            §§push(§§pop() == "furni_wingeria_music");
            if(_loc6_ || Boolean(this))
            {
               addr144:
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     §§goto(addr153);
                  }
                  §§goto(addr170);
               }
               addr153:
               if(!_loc7_)
               {
                  §§push(_loc4_.isFurniInLobby("phonograph"));
               }
               if(!_loc4_.isFurniInLobby("boombox"))
               {
                  _loc3_.track_boombox.soundTransform = new SoundTransform(0);
               }
               addr164:
               if(_loc2_.activeFurni == param1)
               {
                  if(!_loc7_)
                  {
                     addr170:
                     _loc2_.activeFurni = null;
                  }
               }
               addr173:
               if(!_loc7_)
               {
                  §§push(!_loc4_.isFurniInLobby("jukebox"));
               }
               var _loc5_:int = 0;
               while(true)
               {
                  if(_loc5_ >= _loc2_.furniItems.length)
                  {
                     if(_loc7_)
                     {
                     }
                     §§goto(addr260);
                  }
                  if(_loc2_.furniItems[_loc5_] == param1)
                  {
                     if(!_loc7_)
                     {
                        _loc2_.furniItems[_loc5_].destroy();
                        _loc2_.furniItems.splice(_loc5_,1);
                        if(_loc7_)
                        {
                        }
                        break;
                     }
                  }
                  else
                  {
                     _loc5_++;
                  }
                  continue;
                  §§push(Boolean(_loc2_.trainingClip));
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 break;
                              }
                              §§goto(addr265);
                           }
                        }
                     }
                     addr244:
                     if(!§§pop())
                     {
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§pop();
                           addr260:
                           §§goto(addr264);
                        }
                     }
                  }
                  addr264:
                  §§goto(addr262);
               }
               §§push(_loc2_.whichContextTraining);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(§§pop() == "poster");
                  if(_loc6_)
                  {
                     §§goto(addr244);
                     §§push(§§pop());
                  }
                  §§goto(addr260);
               }
               addr262:
               if(_loc2_.whichContextTraining == "furni")
               {
                  addr265:
                  _loc2_.removeContextTraining();
               }
               return;
               §§push(§§pop());
            }
            §§goto(addr153);
         }
         §§push(§§pop().tag);
         if(!(_loc7_ && Boolean(param1)))
         {
            §§goto(addr89);
            §§push(§§pop() == "furni_phonograph");
         }
         §§goto(addr134);
      }
      
      public function addFurni(param1:FurniData, param2:Boolean, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:LobbyEditorScreen = this;
         var _loc6_:SoundManager = _loc5_.gameObj.soundManager;
         var _loc7_:MovieClip = _loc5_.clip.moving_layer;
         §§push(param2);
         if(_loc10_ || Boolean(param3))
         {
            addr97:
            §§push(false);
            if(_loc10_ || Boolean(param3))
            {
               addr96:
               §§push(§§pop() == §§pop());
               if(!(_loc9_ && Boolean(param3)))
               {
                  §§push(§§pop());
                  if(!(_loc9_ && Boolean(param3)))
                  {
                     if(§§pop())
                     {
                        §§pop();
                        addr103:
                        §§push(param1.type);
                        if(_loc10_)
                        {
                           §§push(FurniData.TYPE_POSTER);
                           if(_loc10_ || param2)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc9_)
                              {
                              }
                              §§goto(addr106);
                           }
                           addr105:
                           addr106:
                           addr153:
                           if(§§pop())
                           {
                              addr107:
                              §§push(param4);
                              if(_loc10_ || Boolean(param1))
                              {
                                 §§push(0);
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc10_)
                                       {
                                          addr133:
                                          _loc7_ = _loc5_.clip.floor0_layer;
                                       }
                                    }
                                    else
                                    {
                                       §§push(param4);
                                    }
                                    addr142:
                                    _loc7_ = _loc5_.clip.floor1_layer;
                                 }
                                 addr141:
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr142);
                                 }
                                 else
                                 {
                                    _loc7_ = _loc5_.clip.floor2_layer;
                                 }
                              }
                              §§goto(addr141);
                              §§push(1);
                           }
                           var _loc8_:FurnitureItem = new FurnitureItem(_loc5_.gameObj,_loc7_,param1,param3,param4,param2);
                           _loc5_.furniItems.push(_loc8_);
                           if(param2)
                           {
                              if(!_loc9_)
                              {
                                 _loc5_.setActiveFurni(_loc8_);
                              }
                           }
                           §§push(param1.tag);
                           if(!_loc9_)
                           {
                              if(§§pop() == "furni_jukebox")
                              {
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    _loc6_.track_jukebox.soundTransform = new SoundTransform(1);
                                    if(_loc9_ && Boolean(param1))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr208:
                                    _loc6_.track_phonograph.soundTransform = new SoundTransform(1);
                                    if(_loc10_ || Boolean(param3))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(param1.tag);
                                 if(_loc10_)
                                 {
                                 }
                                 addr231:
                                 if(§§pop() == "furni_wingeria_music")
                                 {
                                    _loc6_.track_boombox.soundTransform = new SoundTransform(1);
                                 }
                              }
                              §§goto(addr239);
                           }
                           if(§§pop() == "furni_phonograph")
                           {
                              §§goto(addr208);
                           }
                           else
                           {
                              §§goto(addr231);
                              §§push(param1.tag);
                           }
                           addr239:
                           return;
                           §§push(§§pop() == §§pop());
                        }
                        §§goto(addr105);
                        §§push(FurniData.TYPE_FURNI);
                     }
                  }
               }
               §§push(§§pop());
            }
            if(§§pop())
            {
               §§pop();
               if(_loc10_)
               {
                  §§goto(addr103);
                  §§push(param1.type);
               }
               §§goto(addr133);
            }
            §§goto(addr106);
         }
         if(§§pop())
         {
            if(!(_loc9_ && param2))
            {
               _loc7_ = _loc5_.clip.wall_layer;
            }
            else
            {
               §§goto(addr107);
            }
         }
         else
         {
            §§push(param2);
            §§push(false);
            if(!_loc9_)
            {
               §§goto(addr96);
               §§push(§§pop() == §§pop());
            }
            §§goto(addr97);
         }
         §§goto(addr153);
      }
      
      public function setActiveFurni(param1:FurnitureItem) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LobbyEditorScreen = this;
         if(_loc3_)
         {
            if(_loc2_.activeFurni != null)
            {
               if(_loc4_ && _loc3_)
               {
               }
               §§goto(addr46);
            }
         }
         _loc2_.activeFurni = param1;
         addr46:
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:LobbyEditorScreen = this;
         if(!_loc8_)
         {
            §§push(_loc2_.existingFurniIsSet);
            if(_loc7_ || Boolean(_loc2_))
            {
               §§push(false);
               if(_loc7_ || Boolean(_loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc7_)
                     {
                        _loc2_.createExistingFurni();
                        if(_loc7_ || Boolean(_loc3_))
                        {
                        }
                        addr174:
                        if(_loc2_.clip.inventory.panels.currentFrame == 11)
                        {
                           _loc2_.populatePanels();
                           _loc2_.clip.inventory.panels.gotoAndPlay(1);
                           if(_loc8_ && Boolean(this))
                           {
                              addr252:
                              _loc2_.clip.inventory.y += _loc4_ / _loc2_.invOpenSpeed;
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 addr366:
                                 §§push(-1);
                                 if(_loc7_ || Boolean(this))
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                §§pop();
                                                §§push(_loc4_);
                                                §§push(1);
                                                if(!(_loc8_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                }
                                                else
                                                {
                                                   addr372:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      _loc2_.clip.inventory.y = _loc5_;
                                                      _loc2_.isInvOpening = false;
                                                      _loc2_.inventoryIsOpen = true;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr325:
                                                if(§§pop())
                                                {
                                                   addr327:
                                                   _loc5_ = 0;
                                                   §§push(_loc5_);
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop() - _loc2_.clip.inventory.y);
                                                   }
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             _loc2_.clip.inventory.y = _loc3_;
                                             addr312:
                                             _loc2_.isInvClosing = false;
                                          }
                                       }
                                    }
                                    addr367:
                                    §§push(§§pop());
                                 }
                                 §§goto(addr367);
                                 §§push(§§pop() >= §§pop());
                              }
                              _loc6_ = §§pop();
                           }
                           else
                           {
                              addr203:
                           }
                           §§goto(addr392);
                        }
                        else if(_loc2_.clip.inventory.panels.currentFrame == 22)
                        {
                           _loc2_.populatePanels();
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              _loc2_.clip.inventory.panels.gotoAndPlay(12);
                           }
                           else
                           {
                              §§goto(addr312);
                           }
                           §§goto(addr392);
                        }
                        addr145:
                        addr154:
                     }
                     _loc2_.clip.inventory.y += _loc6_ / _loc2_.invOpenSpeed;
                     §§push(_loc6_);
                     §§push(-1);
                     if(!(_loc8_ && Boolean(this)))
                     {
                        §§goto(addr366);
                     }
                     §§goto(addr372);
                  }
                  §§push(_loc2_.inventoryIsOpen);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc8_ && Boolean(_loc2_)))
                        {
                           §§push(_loc2_.clip.inventory.panels.currentFrame == 6);
                           if(_loc7_ || Boolean(this))
                           {
                              §§push(§§pop());
                              if(_loc7_ || Boolean(this))
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc2_.clip.inventory.panels.currentFrame == 17);
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       _loc2_.clip.inventory.panels.stop();
                                    }
                                    addr123:
                                    _loc2_.clip.inventory.next_btn.visible = true;
                                    if(_loc2_.shouldShowPrev)
                                    {
                                       _loc2_.clip.inventory.prev_btn.visible = true;
                                       §§goto(addr145);
                                    }
                                    else
                                    {
                                       _loc2_.clip.inventory.prev_btn.visible = false;
                                       if(_loc8_)
                                       {
                                          addr235:
                                          §§push(_loc3_);
                                          if(_loc7_ || Boolean(param1))
                                          {
                                             _loc4_ = §§pop() - _loc2_.clip.inventory.y;
                                             if(!_loc8_)
                                             {
                                                §§goto(addr252);
                                             }
                                             §§goto(addr312);
                                          }
                                       }
                                       §§goto(addr252);
                                    }
                                 }
                                 else
                                 {
                                    _loc2_.clip.inventory.next_btn.visible = false;
                                 }
                                 addr161:
                                 _loc2_.clip.inventory.prev_btn.visible = false;
                                 if(!(_loc8_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr174);
                                 }
                                 §§goto(addr203);
                              }
                           }
                           addr115:
                           if(§§pop())
                           {
                              if(!(_loc8_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr123);
                              }
                              else
                              {
                                 §§goto(addr161);
                              }
                           }
                           else
                           {
                              _loc2_.clip.inventory.next_btn.visible = false;
                           }
                           §§goto(addr123);
                        }
                        §§push(_loc2_.shouldShowNext);
                        if(_loc7_ || Boolean(param1))
                        {
                           §§goto(addr115);
                        }
                        §§goto(addr123);
                     }
                     else if(_loc2_.isInvClosing)
                     {
                        §§push(480);
                        if(!_loc8_)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr235);
                        }
                        §§goto(addr327);
                     }
                     else
                     {
                        §§push(_loc2_.isInvOpening);
                        if(_loc8_ && Boolean(param1))
                        {
                        }
                     }
                     §§goto(addr372);
                  }
                  §§goto(addr325);
               }
               if(!§§pop())
               {
               }
               §§goto(addr372);
            }
            §§pop();
            §§goto(addr372);
            §§push(_loc6_);
            §§push(1);
         }
         addr392:
      }
      
      public function populatePanels() : void
      {
         var screen:LobbyEditorScreen;
         var data:UserData;
         var gamedata:GameData;
         var offset:Number;
         var i:int;
         var index:Number;
         var mypanel:MovieClip;
         var whichTag:String;
         var furniData:FurniData;
         var amt:Number;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         §§push(NaN);
         if(!(_loc3_ && _loc1_))
         {
            §§pop().§§slot[6] = §§pop();
            §§push(§§newactivation());
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[7] = §§pop();
               §§push(§§newactivation());
               §§push(null);
               if(_loc3_ && _loc1_)
               {
               }
               addr49:
               §§pop().§§slot[9] = §§pop();
               addr52:
               §§push(§§newactivation());
               §§push(NaN);
               if(_loc3_ && _loc1_)
               {
               }
               addr121:
               §§pop().§§slot[4] = §§pop();
               addr123:
               i = 0;
               addr120:
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop().§§slot[5]);
                  loop1:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        if(§§pop() >= §§pop().§§slot[1].panelsPerSet)
                        {
                           §§push(screen);
                           if(!_loc3_)
                           {
                              if(§§pop().workingArray.length > offset + screen.panelsPerSet)
                              {
                                 §§push(§§newactivation());
                                 break loop0;
                              }
                              §§push(§§newactivation());
                              if(_loc4_ || _loc2_)
                              {
                                 addr550:
                                 §§push(§§pop().§§slot[1]);
                                 if(_loc4_)
                                 {
                                    §§push(false);
                                    if(!_loc3_)
                                    {
                                       §§pop().shouldShowNext = §§pop();
                                       addr557:
                                       §§push(screen);
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr567:
                                          if(§§pop().whichSet > 1)
                                          {
                                             §§push(screen);
                                             if(_loc4_ || _loc1_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(§§newactivation());
                                          }
                                       }
                                    }
                                    addr600:
                                    §§pop().shouldShowPrev = §§pop();
                                    break;
                                 }
                                 §§push(true);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    addr593:
                                    §§pop().shouldShowPrev = §§pop();
                                    if(_loc3_)
                                    {
                                    }
                                    break;
                                 }
                                 §§goto(addr600);
                              }
                           }
                           addr599:
                           §§goto(addr600);
                           §§push(false);
                        }
                        else
                        {
                           §§push(§§newactivation());
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              §§push(§§pop().§§slot[5] + offset);
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§pop().§§slot[6] = §§pop();
                                    if(!_loc4_)
                                    {
                                       break loop1;
                                    }
                                    §§push(§§newactivation());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                       }
                                       addr202:
                                       §§pop().§§slot[8] = §§pop().§§slot[1].workingArray[index];
                                       addr201:
                                       if(_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc4_ || _loc1_)
                                             {
                                                addr221:
                                                §§pop().§§slot[9] = §§pop().§§slot[3].getFurniFromTag(whichTag);
                                                §§push(§§newactivation());
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§pop().§§slot[7].visible = true;
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§pop().§§slot[7].title_txt.text = furniData.title;
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr550);
                                                   }
                                                   §§goto(addr550);
                                                }
                                                addr361:
                                                addr369:
                                                addr368:
                                                addr363:
                                                addr362:
                                                if(§§pop().§§slot[9].tag == "floor" + data.lobbyFlooring)
                                                {
                                                   mypanel.checkmark.visible = true;
                                                   mypanel.tally.visible = true;
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§pop().§§slot[7].tally.amount_txt.text = "";
                                                         if(_loc4_)
                                                         {
                                                            addr397:
                                                         }
                                                         addr452:
                                                         mypanel.thumb.addChild(screen.createThumbnail(furniData));
                                                         if(_loc4_)
                                                         {
                                                         }
                                                         §§push(§§newactivation());
                                                         addr428:
                                                      }
                                                   }
                                                   try
                                                   {
                                                      addr410:
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         addr418:
                                                         if(§§pop().§§slot[7].thumb.numChildren > 0)
                                                         {
                                                            mypanel.thumb.removeChildAt(0);
                                                         }
                                                         §§goto(addr428);
                                                      }
                                                   }
                                                   catch(err:Error)
                                                   {
                                                      var _loc2_:* = err;
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §_-5i§.error("Error removing thumb.");
                                                      }
                                                   }
                                                   §§goto(addr452);
                                                }
                                                else
                                                {
                                                   mypanel.checkmark.visible = false;
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§goto(addr410);
                                                   }
                                                }
                                                mypanel.hilite.visible = false;
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr452);
                                             }
                                             §§push(§§pop().§§slot[2].getFurniAmount(whichTag,false));
                                             if(_loc4_ || _loc1_)
                                             {
                                             }
                                          }
                                       }
                                       addr323:
                                       §§push(furniData);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().tag);
                                          if(!_loc3_)
                                          {
                                             §§push("wall" + data.lobbyWallpaper);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         §§pop();
                                                         addr360:
                                                         §§goto(addr361);
                                                         §§push(§§newactivation());
                                                      }
                                                   }
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr363);
                                       }
                                       §§goto(addr362);
                                    }
                                    §§push(§§pop().§§slot[5]);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§pop().§§slot[5] = §§pop();
                                             break loop1;
                                          }
                                          continue;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr269:
                                 §§pop().§§slot[10] = §§pop();
                                 §§push(§§newactivation());
                                 if(!_loc3_)
                                 {
                                    §§pop().§§slot[7].tally.amount_txt.text = String(amt);
                                    if(_loc4_ || _loc1_)
                                    {
                                       §§push(amt);
                                       if(_loc4_)
                                       {
                                          addr292:
                                          §§push(1);
                                          if(_loc4_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   mypanel.tally.visible = true;
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                   }
                                                   §§goto(addr410);
                                                }
                                                §§goto(addr397);
                                             }
                                             else
                                             {
                                                mypanel.tally.visible = false;
                                             }
                                             §§goto(addr323);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr567);
                                       }
                                       §§goto(addr567);
                                    }
                                    §§goto(addr360);
                                 }
                                 else
                                 {
                                    addr477:
                                    §§pop().§§slot[7].visible = false;
                                 }
                                 §§goto(addr452);
                              }
                              §§goto(addr269);
                              §§push(§§pop());
                           }
                           §§push(§§pop().§§slot[1]);
                           if(_loc4_)
                           {
                              §§pop().§§slot[7] = §§pop().clip.inventory.panels["panel" + (i + 1)];
                              §§push(§§newactivation());
                              if(_loc4_)
                              {
                                 §§push(§§pop().§§slot[6]);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() < screen.workingArray.length)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§goto(addr201);
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr418);
                                    }
                                    else
                                    {
                                       §§push(§§newactivation());
                                    }
                                    §§goto(addr477);
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr550);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr599);
                     }
                     return;
                  }
               }
               §§push(§§pop().§§slot[1]);
               if(_loc4_ || _loc3_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     §§pop().shouldShowNext = §§pop();
                     §§goto(addr557);
                  }
                  §§goto(addr593);
               }
               §§goto(addr567);
            }
            §§pop().§§slot[8] = §§pop();
            §§push(§§newactivation());
            if(_loc4_)
            {
               §§goto(addr49);
               §§push(null);
            }
            §§goto(addr52);
         }
         §§pop().§§slot[10] = §§pop();
         if(!_loc3_)
         {
            §§push(§§newactivation());
            if(_loc4_ || _loc1_)
            {
               §§pop().§§slot[1] = this;
               §§push(§§newactivation());
               if(_loc4_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr108:
                     §§push(§§pop().§§slot[1]);
                     if(!_loc3_)
                     {
                        §§push(§§pop().gameObj);
                        if(!_loc3_)
                        {
                           §§pop().§§slot[2] = §§pop().userData;
                        }
                        addr102:
                        §§pop().§§slot[3] = §§pop().§_-Cf§;
                        §§push(§§newactivation());
                        §§push(§§newactivation());
                     }
                     §§push(§§pop().panelsPerSet);
                     if(_loc4_)
                     {
                        §§push(screen.whichSet);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - 1);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr120);
                  }
                  addr107:
                  §§goto(addr108);
                  §§push(§§pop().§§slot[1]);
               }
               §§goto(addr123);
            }
            addr95:
            §§push(§§newactivation());
            if(!_loc3_)
            {
               §§push(§§pop().§§slot[1]);
               if(!_loc3_)
               {
                  §§goto(addr102);
                  §§push(§§pop().gameObj);
               }
               §§goto(addr108);
            }
            §§goto(addr107);
         }
         §§goto(addr95);
         §§push(§§newactivation());
      }
      
      public function createThumbnail(param1:FurniData) : MovieClip
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:* = NaN;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Class = null;
         var _loc13_:MovieClip = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:MovieClip = null;
         var _loc4_:Number = 73;
         var _loc5_:Number = 70;
         if(!(_loc19_ && Boolean(_loc2_)))
         {
            §§push(param1.type);
            if(!_loc19_)
            {
               §§push(FurniData.TYPE_FLOORING);
               if(_loc18_ || Boolean(this))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc19_)
                     {
                        §§push(Number(String(param1.tag).split("floor")[1]));
                        if(!_loc19_)
                        {
                           _loc6_ = §§pop();
                           if(_loc19_ && Boolean(_loc3_))
                           {
                           }
                        }
                        else
                        {
                           addr177:
                           _loc9_ = §§pop();
                        }
                        addr178:
                        _loc3_ = new MovieClip();
                        _loc10_ = new wallpaper_holder();
                        _loc10_.gotoAndStop(_loc9_);
                        _loc11_ = new wallpaper_holder();
                        _loc11_.gotoAndStop(_loc9_);
                        if(_loc18_ || Boolean(_loc2_))
                        {
                           _loc11_.x = _loc10_.width;
                           if(!_loc19_)
                           {
                              _loc3_.addChild(_loc10_);
                              if(_loc18_)
                              {
                              }
                           }
                           _loc3_.addChild(_loc11_);
                           if(_loc19_ && Boolean(param1))
                           {
                           }
                           addr244:
                        }
                        _loc3_.scaleX = 0.28;
                        if(!(_loc19_ && Boolean(param1)))
                        {
                           _loc3_.scaleY = 0.28;
                        }
                        §§goto(addr244);
                     }
                     _loc3_ = new MovieClip();
                     _loc7_ = new flooring_chunk();
                     _loc7_.gotoAndStop(_loc6_);
                     _loc8_ = new flooring_chunk();
                     _loc8_.gotoAndStop(_loc6_);
                     if(!(_loc19_ && Boolean(_loc2_)))
                     {
                        _loc8_.x = _loc7_.width;
                        if(!_loc19_)
                        {
                           _loc3_.addChild(_loc7_);
                           if(_loc18_)
                           {
                              _loc3_.addChild(_loc8_);
                              if(!(_loc19_ && Boolean(this)))
                              {
                                 _loc3_.scaleX = 0.3;
                                 if(_loc18_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                           }
                        }
                        addr158:
                     }
                     _loc3_.scaleY = 0.3;
                     §§goto(addr158);
                  }
                  else
                  {
                     §§push(param1.type);
                  }
                  §§goto(addr406);
               }
               §§goto(addr163);
            }
            addr163:
            if(§§pop() == §§pop())
            {
               if(_loc19_)
               {
               }
               §§goto(addr178);
            }
            else
            {
               _loc12_ = getDefinitionByName(param1.tag) as Class;
               _loc13_ = new _loc12_();
               _loc14_ = _loc13_.height / _loc13_.width;
               _loc15_ = _loc13_.width / _loc13_.height;
               §§push(_loc13_.height > _loc5_);
               if(_loc18_ || Boolean(this))
               {
                  if(!§§pop())
                  {
                     if(!(_loc19_ && Boolean(this)))
                     {
                        §§pop();
                        §§push(_loc13_.width > _loc4_);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc13_.height > _loc13_.width)
                  {
                     _loc13_.height = _loc5_;
                     if(_loc18_ || Boolean(this))
                     {
                        _loc13_.width = _loc13_.height * _loc15_;
                     }
                  }
                  else
                  {
                     _loc13_.width = _loc4_;
                     _loc13_.height = _loc13_.width * _loc14_;
                  }
               }
               §§push(_loc4_);
               if(_loc18_)
               {
                  §§push(§§pop() - _loc13_.width);
                  §§push(2);
                  if(!(_loc19_ && Boolean(this)))
                  {
                     _loc16_ = §§pop() / §§pop();
                     addr369:
                     if(_loc18_)
                     {
                        §§push(_loc5_ - _loc13_.height);
                        §§push(2);
                     }
                     _loc13_.x = _loc16_;
                     _loc13_.y = _loc5_ - _loc17_;
                     if(!(_loc18_ || Boolean(_loc2_)))
                     {
                        addr400:
                        _loc13_.y = _loc17_;
                     }
                     _loc3_ = _loc13_;
                  }
                  §§push(§§pop() / §§pop());
               }
               _loc17_ = §§pop();
               §§push(param1.type);
               if(!_loc19_)
               {
                  §§push(FurniData.TYPE_FURNI);
                  if(_loc18_ || Boolean(param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr369);
                     }
                     else
                     {
                        §§push(param1.type);
                     }
                     §§goto(addr369);
                  }
                  addr389:
                  if(§§pop() == §§pop())
                  {
                     _loc13_.x = _loc16_;
                     §§goto(addr400);
                  }
                  §§goto(addr369);
               }
               §§goto(addr389);
               §§push(FurniData.TYPE_POSTER);
            }
            addr406:
            return _loc3_;
            §§push(FurniData.TYPE_WALLPAPER);
         }
         §§goto(addr177);
         §§push(Number(String(param1.tag).split("wall")[1]));
      }
      
      public function clickOpenInventory(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.clip.putaway_btn.visible = false;
            _loc2_.clip.inventory_btn.visible = true;
            §§push(_loc2_.inventoryIsOpen);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
               }
               addr82:
               if(§§pop())
               {
                  _loc2_.closeInventory();
               }
               else
               {
                  if(_loc2_.activeFurni != null)
                  {
                  }
                  addr94:
                  _loc2_.openInventory();
               }
               §§goto(addr99);
            }
            §§push(§§pop());
            if(_loc4_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§pop();
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§push(_loc2_.isInvOpening);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr94);
                  }
                  addr99:
                  §§goto(addr100);
               }
               §§goto(addr82);
            }
            addr100:
            §§push(Boolean(_loc2_.trainingClip));
            if(Boolean(_loc2_.trainingClip))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr115:
                  §§pop();
                  §§push(_loc2_.whichContextTraining == "inventory");
               }
            }
            if(§§pop())
            {
               _loc2_.removeContextTraining();
            }
            return;
         }
         _loc2_.putAwayFurni(_loc2_.activeFurni);
         §§goto(addr94);
      }
      
      public function clickPutAway(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("minigame_putt_cup.wav");
            if(_loc4_ || Boolean(this))
            {
               _loc2_.clip.putaway_btn.visible = false;
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.clip.inventory_btn.visible = true;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(_loc2_.activeFurni != null)
                     {
                        if(!_loc3_)
                        {
                           _loc2_.putAwayFurni(_loc2_.activeFurni);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function openInventory() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LobbyEditorScreen = this;
         if(!_loc3_)
         {
            §§push(_loc1_.inventoryIsOpen);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                     }
                     addr48:
                     §§push(!§§pop());
                  }
               }
               §§pop();
               if(!_loc3_)
               {
                  §§push(_loc1_.isInvOpening);
                  if(_loc2_)
                  {
                     §§goto(addr48);
                  }
               }
               §§goto(addr68);
            }
            if(§§pop())
            {
               _loc1_.populatePanels();
               _loc1_.isInvClosing = false;
            }
            §§goto(addr68);
         }
         _loc1_.isInvOpening = true;
         _loc1_.inventoryIsOpen = false;
         addr68:
      }
      
      public function closeInventory() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LobbyEditorScreen = this;
         if(!_loc3_)
         {
            §§push(_loc1_.inventoryIsOpen);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
               }
               §§goto(addr41);
            }
            if(!§§pop())
            {
               if(_loc2_)
               {
                  §§goto(addr41);
               }
            }
            §§goto(addr49);
         }
         _loc1_.inventoryIsOpen = false;
         addr41:
         §§pop();
         if(_loc2_)
         {
            addr49:
            §§push(_loc1_.isInvOpening);
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  _loc1_.isInvClosing = true;
                  if(!_loc3_)
                  {
                     _loc1_.isInvOpening = false;
                     if(_loc3_)
                     {
                     }
                  }
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:LobbyEditorScreen = this;
         if(!(_loc5_ && Boolean(this)))
         {
            _loc1_.removeContextTraining();
         }
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               if(§§pop() < _loc1_.furniItems.length)
               {
                  _loc1_.furniItems[_loc2_].destroy();
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               _loc1_.furniItems = null;
               if(_loc1_.backdropBitmap != null)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     _loc1_.backdropBitmap.bitmapData.dispose();
                     if(_loc6_)
                     {
                        try
                        {
                           _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
                           if(_loc5_)
                           {
                           }
                           addr134:
                           _loc1_.clip.inventory.flooring_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
                           _loc1_.clip.inventory.next_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickNext);
                           _loc1_.clip.inventory.prev_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
                        }
                        catch(err:Error)
                        {
                           addr95:
                           _loc1_.backdropBitmap = null;
                        }
                        addr161:
                        break;
                     }
                  }
                  §§goto(addr95);
               }
               _loc1_.clip.inventory.furni_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
               if(_loc6_)
               {
                  _loc1_.clip.inventory.poster_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc1_.clip.inventory.wallpaper_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
                  }
                  §§goto(addr161);
               }
               §§goto(addr134);
            }
            break;
            _loc1_.furniItems[_loc2_] = null;
            _loc2_++;
         }
         var _loc3_:* = §§pop();
         do
         {
            if(_loc3_ <= _loc1_.panelsPerSet)
            {
               continue;
            }
            if(!(_loc5_ && _loc3_))
            {
               try
               {
                  _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
               }
               catch(err:Error)
               {
               }
               _loc1_.clip.backtogame_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBackToGame);
               if(_loc5_ && Boolean(this))
               {
               }
               addr279:
               _loc1_.clip.putaway_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPutAway);
               if(!_loc5_)
               {
                  _loc1_.clip.mute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMute);
                  _loc1_.clip.unmute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
                  if(!_loc5_)
                  {
                     _loc1_.clip.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.clickScreen);
                     _loc1_.gameObj.§_-BG§.removeChild(_loc1_.clip);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                     }
                     break;
                  }
                  _loc1_.clip = null;
               }
               break;
            }
            _loc1_.clip.inventory_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickOpenInventory);
            §§goto(addr279);
         }
         while(_loc1_.clip.inventory.panels["panel" + _loc3_].removeEventListener(MouseEvent.CLICK,_loc1_.grabFurniFromInventory), _loc1_.clip.inventory.panels["panel" + _loc3_].removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverInvPanel), if(_loc6_ || Boolean(this))
         {
            _loc1_.clip.inventory.panels["panel" + _loc3_].removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutInvPanel);
         }, _loc3_++, !(_loc5_ && _loc3_));
         
      }
      
      public function clickScreen(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LobbyEditorScreen = this;
         if(_loc3_)
         {
            addr103:
            §§push(_loc2_.activeFurni);
            if(_loc3_)
            {
               §§push(§§pop() == null);
               if(!_loc4_)
               {
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc3_ || Boolean(param1))
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(_loc2_))
                           {
                           }
                        }
                     }
                     §§goto(addr75);
                  }
                  §§pop();
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(param1.target == _loc2_.clip.inventory_btn);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(!§§pop());
                     }
                     §§goto(addr76);
                  }
               }
               addr75:
               if(§§pop())
               {
                  addr76:
                  §§pop();
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(param1.target != _loc2_.clip.backtogame_btn);
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                  }
               }
               return;
               §§push(§§pop());
            }
            §§pop().clickFurni(param1);
            §§goto(addr75);
         }
         §§goto(addr103);
         §§push(_loc2_.activeFurni);
      }
      
      public function clickMute(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.gameObj.soundManager.muteSound();
            if(_loc4_)
            {
            }
            §§goto(addr46);
         }
         _loc2_.updateMuteButton();
         addr46:
      }
      
      public function updateMuteButton() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LobbyEditorScreen = this;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.clip.mute_btn.visible = !_loc1_.gameObj.soundManager.isMute;
            if(_loc2_ || Boolean(_loc1_))
            {
            }
            §§goto(addr61);
         }
         _loc1_.clip.unmute_btn.visible = _loc1_.gameObj.soundManager.isMute;
         addr61:
      }
      
      public function clickUnmute(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LobbyEditorScreen = this;
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_.gameObj);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop().soundManager);
               if(_loc3_)
               {
                  §§pop().unmuteSound();
                  §§goto(addr66);
               }
               §§goto(addr48);
            }
            addr48:
            §§pop().playSound("buttonclick.wav");
            if(_loc4_ && Boolean(param1))
            {
            }
            addr66:
            if(_loc3_)
            {
               §§push(_loc2_.gameObj);
            }
            return;
            §§push(§§pop().soundManager);
         }
         _loc2_.updateMuteButton();
         §§goto(addr66);
      }
      
      public function showContextTraining(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         if(!_loc2_.trainingClip)
         {
            _loc2_.trainingClip = new trainingMC();
            _loc2_.clip.addChild(_loc2_.trainingClip);
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.trainingClip.mouseEnabled = false;
               _loc2_.trainingClip.mouseChildren = false;
               if(_loc3_)
               {
               }
               addr63:
               _loc2_.trainingClip.gotoAndStop(param1);
            }
            return;
         }
         _loc2_.whichContextTraining = param1;
         §§goto(addr63);
      }
      
      public function removeContextTraining() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LobbyEditorScreen = this;
         if(_loc3_ || _loc2_)
         {
            if(_loc1_.trainingClip)
            {
               if(!_loc2_)
               {
                  _loc1_.clip.removeChild(_loc1_.trainingClip);
                  if(_loc2_ && _loc2_)
                  {
                  }
               }
               _loc1_.trainingClip = null;
               if(_loc3_ || _loc3_)
               {
               }
            }
            _loc1_.whichContextTraining = "none";
         }
      }
      
      public function clickChangeMode(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LobbyEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:String = _loc3_[0];
         if(_loc6_ || Boolean(param1))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc6_ || Boolean(_loc2_))
            {
            }
            §§goto(addr70);
         }
         if(_loc2_.mode != _loc4_)
         {
            if(_loc6_)
            {
               §§goto(addr70);
            }
         }
         addr70:
         _loc2_.selectMode(_loc4_);
      }
      
      public function selectMode(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LobbyEditorScreen = this;
         if(!_loc4_)
         {
            _loc3_.mode = param1;
            _loc3_.clip.inventory.tabbg.gotoAndStop("inv_" + _loc3_.mode);
            _loc3_.refreshInventory();
            if(_loc5_)
            {
               _loc3_.whichSet = 1;
               if(_loc4_ && Boolean(_loc3_))
               {
               }
               addr56:
               _loc3_.clip.inventory.panels.gotoAndPlay("nextset");
               _loc3_.clip.inventory.next_btn.visible = false;
               if(_loc5_)
               {
                  _loc3_.clip.inventory.prev_btn.visible = false;
                  addr76:
               }
               else
               {
                  addr98:
                  _loc3_.clip.inventory.prev_btn.visible = false;
               }
               §§goto(addr104);
            }
            _loc3_.clip.inventory.next_btn.visible = false;
            §§goto(addr83);
         }
         if(!param2)
         {
            if(!_loc4_)
            {
               §§goto(addr56);
            }
            §§goto(addr76);
         }
         else
         {
            _loc3_.clip.inventory.panels.gotoAndPlay(1);
            addr83:
            if(!_loc4_)
            {
               §§goto(addr98);
            }
            addr104:
            return;
         }
         §§goto(addr56);
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc1_:LobbyEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new lobbyBackdropMC();
         if(!_loc7_)
         {
            _loc4_ = 1;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_ || Boolean(_loc2_))
            {
               §§push(10);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc8_ || Boolean(this))
                     {
                        §§push(1);
                        if(!_loc7_)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §§push(_loc4_);
                              break loop0;
                           }
                           addr119:
                        }
                     }
                     §§goto(addr128);
                  }
                  _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
                  §§push(_loc4_ + 1);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        _loc4_ = §§pop();
                        if(_loc8_ || Boolean(this))
                        {
                           §§goto(addr119);
                        }
                        addr122:
                        _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
                        addr128:
                        _loc5_.holder.countertop.gotoAndStop(_loc2_.lobbyWallpaper);
                        if(!_loc7_)
                        {
                           _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
                           _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
                        }
                        §§goto(addr150);
                     }
                     break loop0;
                  }
                  addr108:
               }
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
                     if(!_loc7_)
                     {
                        §§goto(addr108);
                        §§push(_loc4_ + 1);
                     }
                     addr150:
                     var _loc6_:BitmapData = new BitmapData(640,480,false,4294967295);
                     _loc6_.draw(_loc5_,null,null,null,new Rectangle(0,0,640,480));
                     _loc3_ = new Bitmap(_loc6_);
                     _loc5_ = null;
                     return _loc3_;
                  }
                  §§goto(addr122);
               }
               addr121:
            }
            break;
            _loc4_ = §§pop();
         }
         while(true)
         {
            §§goto(addr121);
         }
         §§goto(addr122);
      }
      
      public function updateLobbyBitmap() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:LobbyEditorScreen = this;
         if(!_loc4_)
         {
            if(_loc1_.backdropBitmap != null)
            {
               if(_loc4_ && Boolean(_loc1_))
               {
               }
               try
               {
                  _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
                  addr33:
                  if(!_loc4_)
                  {
                     addr60:
                     _loc1_.backdropBitmap = null;
                     if(_loc4_)
                     {
                     }
                     _loc1_.clip.backdrop_holder.addChild(_loc1_.backdropBitmap);
                  }
               }
               catch(err:Error)
               {
                  §§goto(addr60);
               }
               §§goto(addr84);
            }
            _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
            if(_loc3_)
            {
               §§goto(addr60);
            }
            addr84:
            return;
         }
         _loc1_.backdropBitmap.bitmapData.dispose();
         §§goto(addr33);
      }
   }
}

