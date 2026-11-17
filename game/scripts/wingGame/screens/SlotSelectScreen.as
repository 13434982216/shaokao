package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-8r§.§_-7M§;
   import §_-C2§.§_-9m§;
   import fl.controls.TextInput;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.*;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   import wingGame.models.Worker;
   
   public class SlotSelectScreen
   {
      public var gameObj:§_-BY§;
      
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var selectedSlot:Number = 0;
      
      public var isClosing:Boolean = false;
      
      public var isNewSlot:Boolean = false;
      
      public var currentMode:String = "slots";
      
      public var nameContinueButton:§_-7M§;
      
      public var nameBackButton:§_-7M§;
      
      public var selectedCharacter:String = "marty";
      
      public var workerChuck:Worker = null;
      
      public var workerMandi:Worker = null;
      
      public var workerCustom1:Worker = null;
      
      public var workerCustom2:Worker = null;
      
      public function SlotSelectScreen(param1:§_-BY§, param2:MovieClip, param3:Object = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(param2)))
         {
            super();
         }
         var _loc4_:SlotSelectScreen = this;
         _loc4_.gameObj = param1;
         if(!(_loc6_ && Boolean(param2)))
         {
            _loc4_.container = param2;
            if(_loc5_ || Boolean(param2))
            {
               _loc4_.setupScreen();
            }
         }
      }
      
      public function setupScreen() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:MovieClip = null;
         var _loc1_:SlotSelectScreen = this;
         if(_loc6_)
         {
            _loc1_.clip = new slotSelectMC();
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            _loc5_ = _loc1_.clip.slots["slot" + _loc2_ + "MC"];
            _loc5_.new_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickNewSlot);
            _loc5_.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickExistingSlot);
            if(!(_loc7_ && Boolean(_loc1_)))
            {
               _loc5_.delete_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickDeleteSlot);
               if(!_loc7_)
               {
                  _loc5_.new_btn.tabEnabled = false;
                  _loc5_.select_btn.tabEnabled = false;
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc5_.delete_btn.tabEnabled = false;
                  }
                  _loc5_.confirmMC.yes_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickDeleteYes);
                  _loc5_.confirmMC.no_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickDeleteNo);
                  _loc5_.confirmMC.yes_btn.tabEnabled = false;
               }
               addr126:
               _loc2_++;
               continue;
            }
            _loc5_.confirmMC.no_btn.tabEnabled = false;
            _loc5_.confirmMC.visible = false;
            if(!(_loc6_ || Boolean(this)))
            {
               continue;
            }
            §§goto(addr126);
         }
         _loc1_.nameBackButton = new §_-7M§(null,"< BACK","small","button","clickNameCancel",null,false,false,false,null,false,112);
         if(_loc6_ || _loc3_)
         {
            §§push(_loc1_.nameBackButton);
            if(!(_loc7_ && _loc3_))
            {
               §§push(0);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§pop().x = §§pop();
                  §§push(_loc1_.nameBackButton);
                  if(_loc6_)
                  {
                  }
                  addr264:
                  §§pop().addEventListener("clickNameCancel",_loc1_.clickEnterNameCancel);
                  _loc1_.clip.character.marty_panel.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMarty);
                  _loc1_.clip.character.rita_panel.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickRita);
                  addr288:
                  _loc1_.clip.character.custom_panel.select_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickCustom);
                  addr298:
                  _loc1_.clip.character.marty_panel.name_txt.text = "Chuck";
                  _loc1_.clip.character.marty_panel.name_txt.visible = true;
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     addr319:
                     _loc1_.clip.character.marty_panel.custom_txt.visible = false;
                     if(_loc6_)
                     {
                        _loc1_.clip.character.rita_panel.name_txt.text = "Mandi";
                     }
                     addr377:
                     var _loc3_:TextFormat = new TextFormat();
                     if(!_loc7_)
                     {
                        _loc3_.font = "Arial";
                        if(_loc6_)
                        {
                        }
                        addr403:
                        _loc3_.align = TextFormatAlign.CENTER;
                        addr407:
                        var _loc4_:TextInput = _loc1_.clip.entername.input_holder.input_txt;
                        if(_loc6_)
                        {
                           _loc1_.clip.entername.input_holder.input_txt.setStyle("textFormat",_loc3_);
                           _loc1_.clip.entername.input_holder.input_txt.maxChars = 16;
                           if(_loc6_)
                           {
                              _loc1_.clip.entername.input_holder.input_txt.restrict = "0-9A-Za-z \'\\-";
                              _loc1_.container.addEventListener("clickBack",_loc1_.clickBack);
                              _loc1_.container.addChild(_loc1_.clip);
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                 }
                                 addr505:
                                 _loc1_.clip.character.gotoAndStop(1);
                                 _loc1_.showSlots();
                                 §§goto(addr512);
                              }
                              §§goto(addr486);
                           }
                           _loc1_.clip.addEventListener(KeyboardEvent.KEY_DOWN,_loc1_.keyListener);
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              addr486:
                              _loc1_.clip.entername.gotoAndStop(1);
                              if(_loc6_)
                              {
                              }
                              §§goto(addr512);
                           }
                           addr512:
                           return;
                        }
                        _loc1_.clip.slots.gotoAndStop(1);
                        §§goto(addr505);
                     }
                     _loc3_.size = 24;
                     if(_loc6_ || Boolean(this))
                     {
                        _loc3_.bold = true;
                        if(!_loc7_)
                        {
                           §§goto(addr403);
                        }
                     }
                     §§goto(addr407);
                  }
                  _loc1_.clip.character.rita_panel.name_txt.visible = true;
                  _loc1_.clip.character.rita_panel.custom_txt.visible = false;
                  _loc1_.clip.character.custom_panel.name_txt.text = "Custom";
                  _loc1_.clip.character.custom_panel.name_txt.visible = false;
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     _loc1_.clip.character.custom_panel.custom_txt.visible = true;
                  }
                  §§goto(addr377);
               }
               addr176:
               §§pop().y = §§pop();
               _loc1_.nameContinueButton = new §_-7M§(null,"CONTINUE >","small","button","clickNameOK",null,false,false,false,null,false,112);
               §§push(_loc1_.nameContinueButton);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§push(181);
                  if(!(_loc7_ && Boolean(_loc1_)))
                  {
                     §§pop().x = §§pop();
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(_loc1_.nameContinueButton);
                        if(!_loc7_)
                        {
                           §§push(75);
                        }
                     }
                     §§goto(addr298);
                  }
                  §§pop().y = §§pop();
                  if(_loc6_)
                  {
                     _loc1_.clip.entername.input_holder.addChild(_loc1_.nameBackButton);
                     _loc1_.clip.entername.input_holder.addChild(_loc1_.nameContinueButton);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr298);
                  }
                  §§goto(addr288);
               }
               §§pop().addEventListener("clickNameOK",_loc1_.clickEnterNameOK);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§goto(addr264);
                  §§push(_loc1_.nameBackButton);
               }
               §§goto(addr319);
            }
            §§goto(addr176);
            §§push(75);
         }
         §§goto(addr176);
         §§push(_loc1_.nameContinueButton);
      }
      
      public function keyListener(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         if(_loc3_ || Boolean(param1))
         {
            §§push(_loc2_.currentMode == "entername");
            if(_loc3_ || Boolean(_loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(param1.keyCode == Keyboard.ENTER);
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  _loc2_.clickEnterNameOK();
               }
            }
         }
      }
      
      public function clickBack(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(_loc2_.gameObj);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop().§_-4P§);
               if(!_loc4_)
               {
                  addr60:
                  §§push(§§pop().api);
                  if(!_loc4_)
                  {
                     §§pop().§_-76§("SplashScreen");
                     if(!_loc4_)
                     {
                        §§push(_loc2_.gameObj);
                     }
                  }
                  §§pop().§_-2K§("SlotSelect");
               }
               addr59:
               §§goto(addr60);
               §§push(§§pop().api);
            }
            §§goto(addr59);
            §§push(§§pop().§_-4P§);
         }
      }
      
      public function getSlotData() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:MovieClip = null;
         var _loc1_:SlotSelectScreen = this;
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            _loc3_ = _loc1_.gameObj.userData.loadLabelsForSlot(_loc2_);
            _loc4_ = _loc1_.clip.slots["slot" + _loc2_ + "MC"];
            if(_loc3_)
            {
               if(_loc6_)
               {
                  _loc4_.name_txt.text = String(_loc3_.name);
                  if(!_loc5_)
                  {
                     _loc4_.textclip.points_txt.text = §_-9m§.§_-3E§(Number(_loc3_.score)) + " POINTS";
                  }
               }
               _loc4_.textclip.rank_txt.text = _loc3_.rank;
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  _loc4_.textclip.rank_title.text = _loc3_.title;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc4_.select_btn.visible = true;
                     if(!_loc5_)
                     {
                        _loc4_.new_btn.visible = false;
                        if(_loc5_)
                        {
                           addr145:
                           _loc4_.delete_btn.visible = false;
                        }
                     }
                     addr149:
                     _loc2_++;
                  }
                  continue;
               }
               _loc4_.delete_btn.visible = true;
               §§goto(addr149);
            }
            else
            {
               _loc4_.name_txt.text = "Empty Slot";
               _loc4_.textclip.visible = false;
            }
            _loc4_.new_btn.visible = true;
            _loc4_.select_btn.visible = false;
            if(!_loc5_)
            {
               §§goto(addr145);
            }
            §§goto(addr149);
         }
      }
      
      public function clickNewSlot(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:* = 0;
         if(param1.currentTarget == _loc2_.clip.slots.slot1MC.new_btn)
         {
            if(_loc5_ || Boolean(this))
            {
               §§push(1);
               if(_loc5_ || Boolean(_loc3_))
               {
                  §§push(§§pop());
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc4_ = §§pop();
                  }
               }
               else
               {
                  addr77:
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     _loc4_ = §§pop();
                  }
               }
            }
            else
            {
               addr92:
               §§push(3);
            }
            addr94:
            _loc4_ = §§pop();
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.new_btn)
         {
            if(!_loc6_)
            {
               §§push(2);
               if(!_loc6_)
               {
                  §§goto(addr77);
               }
               §§goto(addr94);
            }
            else
            {
               §§goto(addr92);
            }
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.new_btn)
         {
            if(_loc5_)
            {
               §§goto(addr92);
            }
            §§goto(addr124);
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         _loc2_.selectedSlot = _loc4_;
         if(!_loc6_)
         {
            _loc2_.isNewSlot = true;
            if(_loc5_ || Boolean(this))
            {
            }
            §§goto(addr124);
         }
         _loc2_.showCharacter();
         addr124:
      }
      
      public function clickExistingSlot(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:* = 0;
         if(_loc5_ || Boolean(this))
         {
            if(param1.currentTarget == _loc2_.clip.slots.slot1MC.select_btn)
            {
               if(!_loc6_)
               {
                  §§push(1);
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        _loc4_ = §§pop();
                     }
                  }
                  else
                  {
                     addr77:
                     §§push(§§pop());
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        _loc4_ = §§pop();
                     }
                  }
                  addr99:
                  _loc4_ = §§pop();
               }
               _loc2_.gameObj.soundManager.playSound("dropticket.wav");
               _loc2_.clip.slots.gotoAndPlay("hide");
               _loc2_.startClosingScreen();
               addr125:
               return;
               addr106:
            }
            else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.select_btn)
            {
               §§push(2);
               if(_loc5_ || Boolean(_loc3_))
               {
                  §§goto(addr77);
               }
               else
               {
                  addr98:
                  §§push(§§pop());
               }
               §§goto(addr99);
            }
            else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.select_btn)
            {
               if(!_loc6_)
               {
                  §§goto(addr98);
                  §§push(3);
               }
               §§goto(addr125);
            }
            _loc3_.loadData(_loc4_);
         }
         _loc2_.isNewSlot = false;
         §§goto(addr106);
      }
      
      public function clickDeleteSlot(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:Number = 0;
         if(param1.currentTarget == _loc2_.clip.slots.slot1MC.delete_btn)
         {
            _loc2_.clip.slots.slot1MC.confirmMC.visible = true;
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.delete_btn)
         {
            if(_loc6_ || Boolean(this))
            {
               _loc2_.clip.slots.slot2MC.confirmMC.visible = true;
            }
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.delete_btn)
         {
            _loc2_.clip.slots.slot3MC.confirmMC.visible = true;
         }
      }
      
      public function clickDeleteYes(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:* = 0;
         if(param1.currentTarget == _loc2_.clip.slots.slot1MC.confirmMC.yes_btn)
         {
            §§push(1);
            if(_loc5_)
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  _loc4_ = §§pop();
               }
            }
            else
            {
               addr72:
               §§push(§§pop());
               if(_loc5_)
               {
                  _loc4_ = §§pop();
               }
            }
            addr97:
            _loc4_ = §§pop();
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot2MC.confirmMC.yes_btn)
         {
            if(_loc5_ || Boolean(_loc2_))
            {
               §§push(2);
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§goto(addr72);
               }
               else
               {
                  addr89:
                  §§push(§§pop());
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§goto(addr97);
                  }
               }
               §§goto(addr99);
            }
            _loc3_.eraseSlot(_loc4_);
            addr123:
            _loc2_.showSlots();
            §§goto(addr125);
         }
         else if(param1.currentTarget == _loc2_.clip.slots.slot3MC.confirmMC.yes_btn)
         {
            if(_loc5_)
            {
               §§goto(addr89);
               §§push(3);
            }
            §§goto(addr123);
         }
         addr99:
         if(§§pop() > 0)
         {
            if(!(_loc6_ && Boolean(this)))
            {
               _loc2_.gameObj.soundManager.playSound("droptopping.wav");
            }
            addr125:
         }
         else
         {
            trace("Unknown Target: " + param1.currentTarget);
         }
         _loc4_;
      }
      
      public function clickDeleteNo(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         if(_loc3_)
         {
            _loc2_.clip.slots.slot1MC.confirmMC.visible = false;
            if(!_loc4_)
            {
               _loc2_.clip.slots.slot2MC.confirmMC.visible = false;
               if(_loc4_ && _loc3_)
               {
               }
            }
            _loc2_.clip.slots.slot3MC.confirmMC.visible = false;
            if(_loc3_ || Boolean(_loc2_))
            {
            }
            §§goto(addr74);
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         addr74:
      }
      
      public function clickEnterNameOK(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SlotSelectScreen = this;
         §§push(_loc2_.gameObj);
         if(_loc4_ || _loc3_)
         {
            §§pop().soundManager.playSound("buttonclick.wav");
            §§push(_loc2_.selectedCharacter);
            if(!(_loc3_ && Boolean(param1)))
            {
               addr163:
               if(§§pop() == "marty")
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(_loc2_.gameObj);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop().§_-4P§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop().api);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§pop().§_-h§("Choose_Chuck","Slots");
                              addr140:
                              §§push(_loc2_.gameObj);
                              if(!(_loc3_ && Boolean(_loc2_)))
                              {
                                 addr149:
                                 §§push(§§pop().§_-4P§);
                              }
                           }
                           else
                           {
                              addr109:
                              §§pop().§_-h§("Choose_Mandi","Slots");
                              if(_loc4_)
                              {
                                 §§goto(addr140);
                              }
                           }
                        }
                     }
                     else
                     {
                        addr86:
                        §§push(§§pop().§_-4P§);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(§§pop().api);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr109);
                           }
                           else
                           {
                              addr130:
                              §§pop().§_-h§("Choose_Custom","Slots");
                              if(_loc4_ || Boolean(this))
                              {
                                 §§goto(addr140);
                              }
                           }
                           addr187:
                           _loc2_.startClosingScreen();
                        }
                     }
                     addr151:
                     §§pop().api.§_-h§("New_Game","Slots");
                     addr182:
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr161:
                        §§push(_loc2_.gameObj);
                     }
                     _loc2_.clip.entername.gotoAndPlay("hide");
                     §§goto(addr187);
                  }
                  return;
               }
               §§push(_loc2_.selectedCharacter);
               §§pop().userData.createNewSlot(_loc2_.selectedSlot,_loc2_.clip.entername.input_holder.input_txt.text,_loc2_.selectedCharacter);
               §§goto(addr182);
            }
            if(§§pop() == "rita")
            {
               if(_loc4_)
               {
                  §§push(_loc2_.gameObj);
                  if(_loc4_)
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr149);
               }
               §§goto(addr161);
            }
            else
            {
               §§push(_loc2_.gameObj);
               if(_loc3_ && _loc3_)
               {
               }
            }
            §§goto(addr163);
         }
         §§push(§§pop().§_-4P§);
         if(_loc4_)
         {
            §§push(§§pop().api);
            if(_loc4_)
            {
               §§goto(addr130);
            }
         }
         §§goto(addr151);
      }
      
      public function clickEnterNameCancel(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SlotSelectScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.showSlots();
            }
         }
      }
      
      public function clickMarty(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         §§push(_loc2_.gameObj);
         if(!_loc4_)
         {
            §§pop().soundManager.playSound("buttonclick.wav");
            if(_loc3_)
            {
               _loc2_.selectedCharacter = "marty";
               if(_loc3_)
               {
                  §§push(_loc2_.gameObj);
                  if(!_loc4_)
                  {
                     §§push(§§pop().§_-4P§);
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(§§pop().api);
                        if(!_loc4_)
                        {
                           §§pop().§_-h§("Choose_Chuck","Slots");
                           §§push(_loc2_.gameObj);
                           if(_loc4_)
                           {
                           }
                        }
                        addr61:
                        §§pop().§_-h§("New_Game","Slots");
                        if(!_loc4_)
                        {
                           §§push(_loc2_.gameObj);
                        }
                        _loc2_.startClosingScreen();
                     }
                     addr60:
                     §§goto(addr61);
                     §§push(§§pop().api);
                  }
                  §§pop().userData.createNewSlot(_loc2_.selectedSlot,"Chuck",_loc2_.selectedCharacter);
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.clip.character.gotoAndPlay("hide");
                  }
                  §§goto(addr61);
               }
            }
            return;
         }
         §§goto(addr60);
         §§push(§§pop().§_-4P§);
      }
      
      public function clickRita(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SlotSelectScreen = this;
         if(!_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(_loc4_ || Boolean(this))
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               §§goto(addr104);
            }
            §§pop().userData.createNewSlot(_loc2_.selectedSlot,"Mandi",_loc2_.selectedCharacter);
            §§goto(addr95);
         }
         _loc2_.startClosingScreen();
         addr104:
         if(_loc4_)
         {
            _loc2_.selectedCharacter = "rita";
            if(_loc4_)
            {
               §§push(_loc2_.gameObj);
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr75:
                  §§push(§§pop().§_-4P§);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(§§pop().api);
                     if(!_loc3_)
                     {
                        §§pop().§_-h§("Choose_Mandi","Slots");
                        if(!_loc3_)
                        {
                           §§push(_loc2_.gameObj);
                           if(_loc3_)
                           {
                           }
                        }
                        addr95:
                        _loc2_.clip.character.gotoAndPlay("hide");
                        if(_loc3_)
                        {
                        }
                     }
                     addr76:
                     §§pop().§_-h§("New_Game","Slots");
                     §§push(_loc2_.gameObj);
                  }
                  §§goto(addr76);
                  §§push(§§pop().api);
               }
               §§goto(addr75);
               §§push(§§pop().§_-4P§);
            }
         }
      }
      
      public function clickCustom(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         if(_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!_loc4_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc3_ || Boolean(_loc2_))
               {
                  _loc2_.selectedCharacter = "custom";
                  §§push(_loc2_.gameObj);
                  if(_loc3_)
                  {
                  }
                  addr71:
                  §§pop().§_-4P§.api.§_-h§("New_Game","Slots");
                  addr76:
                  _loc2_.gameObj.workerData.setupDefaults();
                  _loc2_.clip.character.gotoAndPlay("hide");
                  if(_loc4_ && Boolean(_loc2_))
                  {
                  }
                  addr69:
                  addr70:
               }
               §§goto(addr99);
            }
            §§push(§§pop().§_-4P§);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(§§pop().api);
               if(!(_loc4_ && _loc3_))
               {
                  §§pop().§_-h§("Choose_Custom","Slots");
                  §§push(_loc2_.gameObj);
                  if(!_loc4_)
                  {
                     §§goto(addr69);
                  }
                  §§goto(addr76);
               }
               §§goto(addr71);
            }
            §§goto(addr70);
         }
         _loc2_.startClosingScreen();
         addr99:
      }
      
      public function showSlots() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SlotSelectScreen = this;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.currentMode = "slots";
            if(_loc2_ || _loc2_)
            {
               _loc1_.clip.slots.slot1MC.confirmMC.visible = false;
               _loc1_.clip.slots.slot2MC.confirmMC.visible = false;
            }
            _loc1_.clip.slots.slot3MC.confirmMC.visible = false;
         }
         _loc1_.getSlotData();
         if(_loc2_)
         {
            §§push(_loc1_.clip.entername.currentFrame > 1);
            if(_loc2_)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(_loc1_.clip.entername.currentFrame < _loc1_.clip.entername.totalFrames);
                           if(_loc2_ || _loc2_)
                           {
                           }
                        }
                        addr144:
                        _loc1_.clip.character.gotoAndPlay("hide");
                        _loc1_.gameObj.soundManager.playSound("trayslide.wav");
                        addr149:
                        if(!_loc3_)
                        {
                           _loc1_.clip.slots.gotoAndPlay("show");
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr126);
                  }
                  if(§§pop())
                  {
                     _loc1_.clip.entername.gotoAndPlay("hide");
                  }
                  §§push(_loc1_.clip.character.currentFrame > 1);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr126);
               }
               if(§§pop())
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr126:
                     §§pop();
                     if(_loc3_ && Boolean(this))
                     {
                     }
                     addr168:
                     return;
                  }
               }
            }
            addr143:
            if(§§pop())
            {
               §§goto(addr144);
            }
            §§goto(addr149);
         }
         §§goto(addr143);
         §§push(_loc1_.clip.character.currentFrame < _loc1_.clip.character.totalFrames);
      }
      
      public function showCharacter() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:SlotSelectScreen = this;
         if(!(_loc6_ && _loc3_))
         {
            _loc1_.currentMode = "character";
         }
         var _loc2_:WorkerData = new WorkerData();
         if(!(_loc6_ && Boolean(this)))
         {
            _loc2_.setupPremadeMale();
            if(!_loc6_)
            {
               _loc1_.workerChuck = new Worker(_loc1_.gameObj,_loc1_.clip.character.marty_panel,_loc2_,134,70,0.55,false,true);
               if(_loc7_)
               {
               }
               addr64:
               var _loc3_:WorkerData = new WorkerData();
               if(!_loc6_)
               {
                  _loc3_.setupPremadeFemale();
                  if(!_loc6_)
                  {
                     _loc1_.workerMandi = new Worker(_loc1_.gameObj,_loc1_.clip.character.rita_panel,_loc3_,42,70,0.55);
                     if(_loc6_ && Boolean(_loc2_))
                     {
                     }
                  }
                  addr99:
                  var _loc4_:WorkerData = new WorkerData();
                  _loc4_.setupDefaults();
                  _loc4_.setGender(WorkerData.GENDER_MALE);
                  _loc4_.skinTone = 13537877;
                  _loc4_.eyeStyle = 2;
                  if(!(_loc6_ && Boolean(this)))
                  {
                     _loc4_.eyeDefaultExpression = 1;
                     _loc4_.mouthDefaultExpression = 12;
                     if(!_loc6_)
                     {
                        _loc4_.hairColor = 5718573;
                        if(_loc7_)
                        {
                           _loc4_.hair = "hair_wedge_1";
                           _loc4_.facialhair = "soulpatch";
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              _loc4_.accd = "glasses05";
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 _loc4_.eyeHeight = 2;
                                 if(_loc6_ && Boolean(_loc1_))
                                 {
                                 }
                                 addr188:
                                 _loc4_.headForward = 6;
                                 _loc1_.workerCustom1 = new Worker(_loc1_.gameObj,_loc1_.clip.character.custom_panel,_loc4_,92,70,0.55,false,true);
                              }
                           }
                           _loc1_.workerCustom1.clip.stop();
                        }
                        addr178:
                        _loc4_.mouthHeight = -2;
                        if(_loc7_)
                        {
                           _loc4_.headHeight = -3;
                           if(_loc7_)
                           {
                           }
                           §§goto(addr188);
                        }
                     }
                     _loc4_.eyeSpacing = 0;
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        §§goto(addr178);
                     }
                     §§goto(addr188);
                  }
                  var _loc5_:WorkerData = new WorkerData();
                  _loc5_.setupDefaults();
                  _loc5_.setGender(WorkerData.GENDER_FEMALE);
                  if(_loc7_)
                  {
                     _loc5_.skinTone = 15511933;
                     if(!_loc6_)
                     {
                        _loc5_.eyeStyle = 7;
                        _loc5_.eyeDefaultExpression = 13;
                        _loc5_.mouthDefaultExpression = 1;
                        _loc5_.hairColor = 16044913;
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           _loc5_.hair = "hair_wavy_1";
                           if(_loc6_ && Boolean(this))
                           {
                           }
                        }
                        addr344:
                        _loc1_.clip.entername.gotoAndPlay("hide");
                        addr349:
                        §§push(_loc1_.clip.slots.currentFrame > 1);
                        if(_loc7_)
                        {
                           addr358:
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 addr361:
                                 §§pop();
                                 if(_loc6_ && Boolean(_loc2_))
                                 {
                                 }
                                 _loc1_.clip.character.gotoAndPlay("show");
                                 addr410:
                                 _loc1_.gameObj.§_-4P§.api.§_-CY§("CHOOSE YOUR CHARACTER");
                                 return;
                                 addr398:
                              }
                           }
                        }
                        addr378:
                        if(§§pop())
                        {
                           if(_loc7_ || Boolean(this))
                           {
                              _loc1_.clip.slots.gotoAndPlay("hide");
                              if(_loc6_ && Boolean(_loc1_))
                              {
                              }
                              §§goto(addr410);
                           }
                        }
                        §§goto(addr398);
                     }
                     §§goto(addr378);
                     §§push(_loc1_.clip.slots.currentFrame < _loc1_.clip.slots.totalFrames);
                  }
                  _loc5_.eyeHeight = 4;
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     _loc5_.mouthHeight = 3;
                     _loc1_.workerCustom2 = new Worker(_loc1_.gameObj,_loc1_.clip.character.custom_panel,_loc5_,83,70,0.55);
                  }
                  _loc1_.workerCustom2.clip.stop();
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     §§push(_loc1_.clip.entername.currentFrame > 1);
                     if(_loc7_ || Boolean(_loc1_))
                     {
                        §§push(§§pop());
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || Boolean(this))
                              {
                                 §§pop();
                                 §§push(_loc1_.clip.entername.currentFrame < _loc1_.clip.entername.totalFrames);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr361);
                              }
                           }
                           if(§§pop())
                           {
                              §§goto(addr344);
                           }
                        }
                        §§goto(addr358);
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr349);
               }
               _loc1_.workerMandi.clip.stop();
               §§goto(addr99);
            }
         }
         _loc1_.workerChuck.clip.stop();
         §§goto(addr64);
      }
      
      public function showEnterName() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SlotSelectScreen = this;
         _loc1_.currentMode = "entername";
         _loc1_.clip.entername.input_holder.input_txt.text = "";
         if(_loc2_)
         {
            _loc1_.clip.entername.input_holder.input_txt.setFocus();
            §§push(_loc1_.clip.slots.currentFrame > 1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        §§push(_loc1_.clip.slots.currentFrame < _loc1_.clip.slots.totalFrames);
                        if(_loc3_ && Boolean(this))
                        {
                        }
                     }
                     addr93:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     _loc1_.clip.slots.gotoAndPlay("hide");
                     if(_loc3_)
                     {
                     }
                  }
                  §§push(_loc1_.clip.character.currentFrame > 1);
                  if(_loc2_)
                  {
                     §§goto(addr93);
                  }
                  addr107:
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.clip.character.gotoAndPlay("hide");
                        if(_loc3_ && Boolean(this))
                        {
                        }
                     }
                     §§goto(addr145);
                  }
                  _loc1_.clip.entername.gotoAndPlay("show");
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr107);
            }
            §§pop();
            §§goto(addr107);
            §§push(_loc1_.clip.character.currentFrame < _loc1_.clip.character.totalFrames);
         }
         _loc1_.gameObj.§_-4P§.api.§_-CY§("ENTER YOUR NAME");
         addr145:
      }
      
      public function animateScreen(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         if(_loc3_ || Boolean(this))
         {
            §§goto(addr92);
         }
         addr92:
         if(_loc2_.isClosing)
         {
            §§push(_loc2_.currentMode);
            if(_loc3_)
            {
               §§push(§§pop() == "character");
               §§push(§§pop() == "character");
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc2_.clip.character.currentFrame == _loc2_.clip.character.totalFrames);
                  }
                  if(§§pop())
                  {
                     _loc2_.closeSlotSelectScreen();
                     if(!_loc3_)
                     {
                        addr90:
                        _loc2_.closeSlotSelectScreen();
                     }
                  }
                  else
                  {
                     §§push(_loc2_.currentMode);
                  }
               }
               addr64:
               if(§§pop())
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§pop();
                     §§push(_loc2_.clip.slots.currentFrame == _loc2_.clip.slots.totalFrames);
                  }
               }
               if(§§pop())
               {
                  §§goto(addr90);
               }
            }
            §§goto(addr64);
            §§push(§§pop() == "slots");
            §§push(§§pop() == "slots");
         }
      }
      
      public function clickStart(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SlotSelectScreen = this;
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.clip.iris.gotoAndPlay("irisout");
            if(_loc3_)
            {
            }
            §§goto(addr50);
         }
         _loc2_.gameObj.§_-4P§.api.§_-DU§("SlotSelectScreen");
         addr50:
      }
      
      public function destroy() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:MovieClip = null;
         var _loc1_:SlotSelectScreen = this;
         §§push(_loc1_.workerChuck);
         if(_loc5_)
         {
            addr38:
            if(§§pop())
            {
               §§push(_loc1_.workerChuck);
            }
            §§push(_loc1_.workerMandi);
            if(_loc5_)
            {
               addr49:
               if(§§pop())
               {
                  §§push(_loc1_.workerMandi);
               }
               §§push(_loc1_.workerCustom1);
               if(_loc5_ || _loc2_)
               {
                  if(§§pop())
                  {
                     addr74:
                     if(!_loc4_)
                     {
                        §§push(_loc1_.workerCustom1);
                     }
                     _loc1_.workerCustom2.destroy();
                     if(!(_loc4_ && _loc2_))
                     {
                        _loc1_.workerCustom2 = null;
                        addr87:
                        if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
                        {
                        }
                        addr102:
                        _loc1_.container.removeEventListener("clickBack",_loc1_.clickBack);
                        addr108:
                        var _loc2_:int = 1;
                        while(_loc2_ <= 3)
                        {
                           _loc3_ = _loc1_.clip.slots["slot" + _loc2_ + "MC"];
                           if(!_loc4_)
                           {
                              _loc3_.new_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickNewSlot);
                              _loc3_.select_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickExistingSlot);
                           }
                           _loc3_.delete_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickDeleteSlot);
                           _loc3_.confirmMC.yes_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickDeleteYes);
                           _loc3_.confirmMC.no_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickDeleteNo);
                           _loc2_++;
                        }
                        if(_loc5_)
                        {
                           _loc1_.clip.entername.input_holder.removeChild(_loc1_.nameContinueButton);
                           _loc1_.clip.entername.input_holder.removeChild(_loc1_.nameBackButton);
                           if(_loc4_ && Boolean(this))
                           {
                           }
                           §§goto(addr220);
                        }
                        §§push(_loc1_.nameContinueButton);
                        if(!_loc4_)
                        {
                           §§pop().removeEventListener("clickNameOK",_loc1_.clickEnterNameOK);
                           if(!_loc4_)
                           {
                              §§push(_loc1_.nameBackButton);
                              if(!_loc4_)
                              {
                                 §§pop().removeEventListener("clickNameCancel",_loc1_.clickEnterNameCancel);
                              }
                              §§goto(addr219);
                           }
                           §§push(_loc1_.nameContinueButton);
                        }
                        §§pop().destroy();
                        addr219:
                        §§pop().destroy();
                        addr220:
                        _loc1_.nameContinueButton = null;
                        _loc1_.nameBackButton = null;
                        _loc1_.clip.character.marty_panel.select_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMarty);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           _loc1_.clip.character.rita_panel.select_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickRita);
                           _loc1_.clip.removeEventListener(KeyboardEvent.KEY_DOWN,_loc1_.keyListener);
                        }
                        _loc1_.container.removeChild(_loc1_.clip);
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           _loc1_.clip = null;
                        }
                        return;
                        §§push(_loc1_.nameBackButton);
                     }
                     _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateScreen);
                     if(_loc5_)
                     {
                        §§goto(addr102);
                     }
                     §§goto(addr108);
                  }
                  addr69:
                  §§push(_loc1_.workerCustom2);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr74);
               }
               §§pop().destroy();
               if(_loc5_)
               {
                  _loc1_.workerCustom1 = null;
                  §§goto(addr69);
               }
               §§goto(addr87);
            }
            §§pop().destroy();
            _loc1_.workerMandi = null;
            §§goto(addr49);
         }
         §§pop().destroy();
         if(_loc5_ || Boolean(_loc1_))
         {
            _loc1_.workerChuck = null;
            §§goto(addr38);
         }
         §§goto(addr74);
      }
      
      public function startClosingScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SlotSelectScreen = this;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.isClosing = true;
            if(_loc3_ || Boolean(_loc1_))
            {
            }
            §§goto(addr53);
         }
         _loc1_.gameObj.§_-4P§.api.§_-DU§();
         addr53:
      }
      
      public function closeSlotSelectScreen(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SlotSelectScreen = this;
         _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.animateScreen);
         if(_loc4_)
         {
            §§push(_loc2_.isNewSlot);
            if(_loc4_)
            {
               §§push(§§pop());
            }
            §§push(§§pop());
            if(_loc4_)
            {
               if(§§pop())
               {
                  addr74:
                  if(_loc4_)
                  {
                     §§pop();
                     addr105:
                     if(!_loc3_)
                     {
                        §§push(_loc2_.selectedCharacter == "custom");
                     }
                  }
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc2_.gameObj);
                     if(_loc4_)
                     {
                        §§pop().§_-6C§(_loc2_.selectedSlot);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr88:
                        if(§§pop().userData.currentDay != 1)
                        {
                           §§push(_loc2_.gameObj);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              §§pop().§_-6l§();
                           }
                        }
                     }
                     §§push(_loc2_.gameObj);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop().§_-CV§();
                        if(!_loc3_)
                        {
                           §§goto(addr105);
                        }
                     }
                  }
               }
               else
               {
                  §§push(_loc2_.isNewSlot);
                  if(_loc4_)
                  {
                     §§goto(addr74);
                  }
                  addr78:
                  §§pop();
                  §§push(_loc2_.gameObj);
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr88);
                  }
               }
               §§goto(addr125);
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  §§goto(addr78);
               }
            }
            §§goto(addr88);
         }
         addr125:
         §§pop().§_-4P§.api.§_-2K§("SlotSelect");
         _loc2_.gameObj;
      }
   }
}

