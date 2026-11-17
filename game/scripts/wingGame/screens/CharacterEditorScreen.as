package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.§_-3K§;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-9m§;
   import fl.controls.TextInput;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import wingGame.data.*;
   import wingGame.models.Worker;
   
   public class CharacterEditorScreen
   {
      public var gameObj:§_-BY§;
      
      public var workerData:WorkerData;
      
      public var worker:Worker;
      
      public var workerReverse:Worker;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var params:Object;
      
      public var endaction:String = "none";
      
      public var sliderStartX:Number = 8;
      
      public var sliderRange:Number = 162;
      
      public var draggingWhichSlider:String = null;
      
      public var workerScale:Number = 0.7;
      
      public var workerX:Number = 185;
      
      public var workerY:Number = 104;
      
      public var workerReverseX:Number = 104;
      
      public var workerReverseY:Number = 73;
      
      public var available_pants:Array;
      
      public var available_shirt:Array;
      
      public var available_jacket:Array;
      
      public var available_hair:Array;
      
      public var available_shoes:Array;
      
      public var available_facialhair:Array;
      
      public var available_acca:Array;
      
      public var available_accb:Array;
      
      public var available_accc:Array;
      
      public var available_accd:Array;
      
      public var which_pants:Number = 0;
      
      public var which_shirt:Number = 0;
      
      public var which_jacket:Number = 0;
      
      public var which_hair:Number = 0;
      
      public var which_shoes:Number = 0;
      
      public var which_facialhair:Number = 0;
      
      public var which_acca:Number = 0;
      
      public var which_accb:Number = 0;
      
      public var which_accc:Number = 0;
      
      public var which_accd:Number = 0;
      
      public var firsttime:Boolean = false;
      
      public var inMenu:Boolean = false;
      
      public var didChange:Boolean = false;
      
      public var thumb_shirt:MovieClip;
      
      public var thumb_jacket:MovieClip;
      
      public var thumb_pants:MovieClip;
      
      public var thumb_hair:MovieClip;
      
      public var thumb_shoes:MovieClip;
      
      public var thumb_acca:MovieClip;
      
      public var thumb_accb:MovieClip;
      
      public var thumb_accc:MovieClip;
      
      public var thumb_accd:MovieClip;
      
      public var mannequinColor:uint = 14540253;
      
      public var backdropBitmap:Bitmap;
      
      public var mirrorBitmap:Bitmap;
      
      public var photoBitmap:Bitmap = null;
      
      public function CharacterEditorScreen(param1:§_-BY§, param2:MovieClip, param3:Object = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.available_pants = [];
         this.available_shirt = [];
         if(!_loc5_)
         {
            this.available_jacket = [];
            if(_loc6_)
            {
               this.available_hair = [];
               this.available_shoes = [];
               this.available_facialhair = [];
               if(!_loc5_)
               {
                  this.available_acca = [];
               }
               §§goto(addr46);
            }
         }
         this.available_accb = [];
         if(_loc6_)
         {
            addr46:
            this.available_accc = [];
            this.available_accd = [];
            §§goto(addr49);
         }
         addr49:
         if(!_loc5_)
         {
            super();
         }
         var _loc4_:CharacterEditorScreen = this;
         _loc4_.gameObj = param1;
         _loc4_.container = param2;
         _loc4_.params = param3;
         if(_loc6_)
         {
            if(param3 != null)
            {
               if(_loc6_ || Boolean(this))
               {
                  if(param3.hasOwnProperty("firsttime"))
                  {
                     _loc4_.firsttime = param3.firsttime;
                     if(_loc6_)
                     {
                     }
                     addr110:
                     _loc4_.inMenu = param3.inMenu;
                  }
               }
            }
            §§goto(addr114);
         }
         if(param3.hasOwnProperty("inMenu"))
         {
            if(!_loc5_)
            {
               §§goto(addr110);
            }
         }
         addr114:
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:CharacterEditorScreen = this;
         _loc1_.clip = new characterEditorMC();
         §§push(_loc1_.firsttime);
         if(_loc2_)
         {
            if(§§pop())
            {
               _loc1_.clip.menu.y = 21;
               _loc1_.clip.menu.custom_input.visible = true;
               addr64:
               _loc1_.workerData = _loc1_.gameObj.workerData;
               _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.holder,_loc1_.workerData,_loc1_.workerX,_loc1_.workerY,_loc1_.workerScale,false,true);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.workerReverse = new Worker(_loc1_.gameObj,_loc1_.clip.mirror_holder,_loc1_.workerData,_loc1_.workerReverseX,_loc1_.workerReverseY,_loc1_.workerScale,true,true);
                  if(_loc2_)
                  {
                     _loc1_.getAvailableClothing();
                     if(_loc3_ && Boolean(this))
                     {
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr147);
               }
            }
            else
            {
               _loc1_.clip.menu.custom_input.visible = false;
               _loc1_.clip.menu.gender_panel.visible = false;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.clip.menu.accd_panel.visible = false;
                  if(_loc2_)
                  {
                     §§goto(addr64);
                  }
                  addr147:
                  _loc1_.createBackdrop();
                  addr149:
                  _loc1_.setupInterface();
                  _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                  §§goto(addr160);
               }
            }
            §§push(_loc1_.firsttime);
            if(_loc3_)
            {
            }
            addr160:
            if(_loc1_.firsttime)
            {
               _loc1_.container.addEventListener("clickBack",_loc1_.clickBack);
               _loc1_.container.addEventListener("clickContinue",_loc1_.clickContinue);
               if(_loc2_ || Boolean(_loc1_))
               {
               }
               §§goto(addr194);
            }
            _loc1_.container.addChild(_loc1_.clip);
            if(!_loc3_)
            {
               §§goto(addr194);
            }
            addr194:
            _loc1_.gameObj.soundManager.switchMusic("order");
            return;
         }
         if(§§pop() == false)
         {
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.setupStats();
            }
            §§goto(addr149);
         }
         §§goto(addr147);
      }
      
      public function getAvailableClothing(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         _loc2_.available_hair = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_HAIR,_loc2_.workerData.gender,false,_loc2_.firsttime);
         _loc2_.which_hair = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
         if(!_loc4_)
         {
            _loc2_.available_accd = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_ACC_FACE,_loc2_.workerData.gender,false,_loc2_.firsttime);
            if(_loc3_)
            {
               §§push(_loc2_.available_accd);
               if(_loc3_ || param1)
               {
                  §§push("");
                  if(!(_loc4_ && param1))
                  {
                     §§pop().unshift(§§pop());
                     if(_loc3_ || _loc3_)
                     {
                        _loc2_.which_accd = _loc2_.available_accd.indexOf(_loc2_.workerData.accd);
                     }
                     addr137:
                     _loc2_.available_pants = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_PANTS,_loc2_.workerData.gender,false);
                     _loc2_.which_pants = _loc2_.available_pants.indexOf(_loc2_.workerData.pants);
                     _loc2_.available_shirt = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_SHIRT,_loc2_.workerData.gender,false);
                     _loc2_.which_shirt = _loc2_.available_shirt.indexOf(_loc2_.workerData.shirt);
                     _loc2_.available_jacket = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_JACKET,_loc2_.workerData.gender,false);
                     §§push(_loc2_.available_jacket);
                     if(_loc3_)
                     {
                        §§push("");
                        if(_loc3_ || param1)
                        {
                        }
                        addr315:
                        §§pop().unshift(§§pop());
                     }
                  }
                  §§pop().unshift(§§pop());
                  _loc2_.which_jacket = _loc2_.available_jacket.indexOf(_loc2_.workerData.jacket);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr224:
                     _loc2_.available_shoes = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_SHOES,_loc2_.workerData.gender,false);
                     if(_loc4_ && param1)
                     {
                     }
                     §§goto(addr355);
                  }
                  _loc2_.which_shoes = _loc2_.available_shoes.indexOf(_loc2_.workerData.shoes);
                  _loc2_.available_acca = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_ACC_BODY,_loc2_.workerData.gender,false);
                  §§push(_loc2_.available_acca);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr312);
               }
               §§push("");
               if(!(_loc4_ && _loc3_))
               {
                  addr275:
                  §§pop().unshift(§§pop());
                  _loc2_.which_acca = _loc2_.available_acca.indexOf(_loc2_.workerData.acca);
                  _loc2_.available_accb = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_ACC_BELT,_loc2_.workerData.gender,false);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(_loc2_.available_accb);
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr312);
                     }
                     addr338:
                     addr312:
                     §§push("");
                     if(_loc3_)
                     {
                        §§goto(addr315);
                     }
                     §§pop().unshift(§§pop());
                     _loc2_.which_accc = _loc2_.available_accc.indexOf(_loc2_.workerData.accc);
                     addr355:
                     return;
                     §§push("");
                  }
                  §§goto(addr355);
               }
               §§goto(addr315);
            }
            _loc2_.available_facialhair = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_FACIALHAIR,_loc2_.workerData.gender,false,_loc2_.firsttime);
            §§push(_loc2_.available_facialhair);
            if(_loc3_ || _loc3_)
            {
               §§push("");
               if(_loc3_)
               {
                  §§pop().unshift(§§pop());
                  if(!_loc4_)
                  {
                     _loc2_.which_facialhair = _loc2_.available_facialhair.indexOf(_loc2_.workerData.facialhair);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(_loc2_.firsttime == false)
                        {
                        }
                        §§goto(addr355);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr224);
               }
               §§goto(addr275);
            }
            §§goto(addr312);
         }
         _loc2_.which_accb = _loc2_.available_accb.indexOf(_loc2_.workerData.accb);
         _loc2_.available_accc = _loc2_.gameObj.§_-1B§.getAvailableClothingTags(ClothingItem.TYPE_ACC_ARMS,_loc2_.workerData.gender,false);
         §§goto(addr338);
         §§push(_loc2_.available_accc);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:SimpleButton = null;
         var _loc6_:* = NaN;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:* = 0;
         var _loc4_:Number = 0;
         if(_loc2_.draggingWhichSlider != null)
         {
            if(!_loc7_)
            {
               if(_loc2_.draggingWhichSlider == "eyeheight")
               {
                  if(!_loc7_)
                  {
                     _loc5_ = _loc2_.clip.menu.eyeheight_panel.slider;
                     §§push(Number(_loc2_.clip.menu.eyeheight_panel.mouseX));
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        _loc6_ = §§pop();
                        _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                        if(!_loc7_)
                        {
                           §§push(Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.EYE_HEIGHT_MAX - WorkerData.EYE_HEIGHT_MIN)) + WorkerData.EYE_HEIGHT_MIN);
                           if(_loc8_ || Boolean(param1))
                           {
                              _loc3_ = §§pop();
                              addr119:
                              §§push(_loc2_.workerData);
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop().eyeHeight);
                              }
                              §§pop().adjustValue("eyeHeight",_loc3_);
                           }
                        }
                        _loc2_.worker.updateFacialLayout();
                        _loc2_.workerReverse.updateFacialLayout();
                        addr128:
                     }
                     if(§§pop() != _loc3_)
                     {
                        §§goto(addr119);
                        §§push(_loc2_.workerData);
                     }
                     §§goto(addr128);
                  }
                  addr750:
                  §§push(_loc2_.worker);
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        addr755:
                        §§push(_loc2_.worker);
                     }
                  }
                  §§pop().animateModel();
                  addr732:
               }
               else
               {
                  §§push(_loc2_.draggingWhichSlider);
                  if(!_loc7_)
                  {
                     if(§§pop() == "eyespacing")
                     {
                        _loc5_ = _loc2_.clip.menu.eyespacing_panel.slider;
                        if(_loc8_ || Boolean(param1))
                        {
                           §§push(Number(_loc2_.clip.menu.eyespacing_panel.mouseX));
                           if(_loc8_ || Boolean(param1))
                           {
                              _loc6_ = §§pop();
                              if(_loc8_ || Boolean(this))
                              {
                              }
                              addr250:
                              _loc2_.workerReverse.updateFacialLayout();
                           }
                           addr226:
                           if(§§pop() != _loc3_)
                           {
                              if(_loc8_ || Boolean(this))
                              {
                                 addr237:
                                 _loc2_.workerData.adjustValue("eyeSpacing",_loc3_);
                                 _loc2_.worker.updateFacialLayout();
                                 if(_loc7_ && Boolean(_loc3_))
                                 {
                                 }
                              }
                           }
                           §§goto(addr250);
                        }
                        _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                        if(!_loc7_)
                        {
                           §§push(Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.EYE_SPACING_MAX - WorkerData.EYE_SPACING_MIN)) + WorkerData.EYE_SPACING_MIN);
                           if(_loc8_ || Boolean(param1))
                           {
                              _loc3_ = §§pop();
                              if(_loc8_)
                              {
                                 §§push(_loc2_.workerData);
                                 if(_loc8_ || Boolean(this))
                                 {
                                    §§push(§§pop().eyeSpacing);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr250);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr237);
                     }
                     else if(_loc2_.draggingWhichSlider == "mouthheight")
                     {
                        if(_loc8_)
                        {
                           _loc5_ = _loc2_.clip.menu.mouthheight_panel.slider;
                           if(_loc8_)
                           {
                              §§push(Number(_loc2_.clip.menu.mouthheight_panel.mouseX));
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 _loc6_ = §§pop();
                                 _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                                 §§push(Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.MOUTH_HEIGHT_MAX - WorkerData.MOUTH_HEIGHT_MIN)) + WorkerData.MOUTH_HEIGHT_MIN);
                                 if(!(_loc7_ && Boolean(param1)))
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc8_)
                                    {
                                       addr336:
                                       §§push(_loc2_.workerData);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop().mouthHeight);
                                       }
                                       §§pop().adjustValue("mouthHeight",_loc3_);
                                    }
                                    _loc2_.worker.updateFacialLayout();
                                 }
                              }
                              addr345:
                              if(§§pop() != _loc3_)
                              {
                                 §§goto(addr336);
                                 §§push(_loc2_.workerData);
                              }
                           }
                           _loc2_.workerReverse.updateFacialLayout();
                           §§goto(addr345);
                        }
                        else
                        {
                           addr590:
                           _loc5_ = _loc2_.clip.menu.headheight_panel.slider;
                           §§push(Number(_loc2_.clip.menu.headheight_panel.mouseX));
                           if(!(_loc7_ && Boolean(this)))
                           {
                              _loc6_ = §§pop();
                              _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                              §§push(Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.HEAD_HEIGHT_MAX - WorkerData.HEAD_HEIGHT_MIN)) + WorkerData.HEAD_HEIGHT_MIN);
                              if(_loc7_ && Boolean(param1))
                              {
                              }
                              addr658:
                              if(§§pop() != _loc3_)
                              {
                                 addr662:
                                 _loc2_.workerData.adjustValue("headHeight",_loc3_);
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    _loc2_.worker.updateFacialLayout();
                                    if(_loc7_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 _loc2_.workerReverse.updateFacialLayout();
                              }
                           }
                           _loc3_ = §§pop();
                           §§push(_loc2_.workerData);
                           if(_loc8_)
                           {
                              §§goto(addr658);
                              §§push(§§pop().headHeight);
                           }
                           §§goto(addr662);
                        }
                     }
                     else
                     {
                        §§push(_loc2_.draggingWhichSlider);
                        if(_loc7_)
                        {
                        }
                        addr588:
                        if(§§pop() == "headheight")
                        {
                           §§goto(addr590);
                        }
                     }
                  }
                  if(§§pop() == "headforward")
                  {
                     _loc5_ = _loc2_.clip.menu.headforward_panel.slider;
                     §§push(Number(_loc2_.clip.menu.headforward_panel.mouseX));
                     if(!_loc7_)
                     {
                        _loc6_ = §§pop();
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                           §§push(Math.round((_loc5_.x - _loc2_.sliderStartX) / _loc2_.sliderRange * (WorkerData.HEAD_FORWARD_MAX - WorkerData.HEAD_FORWARD_MIN)) + WorkerData.HEAD_FORWARD_MIN);
                           if(_loc8_ || Boolean(param1))
                           {
                              _loc3_ = §§pop();
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 addr452:
                                 §§push(_loc2_.workerData);
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop().headForward);
                                 }
                                 §§pop().adjustValue("headForward",_loc3_);
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                              addr465:
                              _loc2_.workerReverse.updateFacialLayout();
                           }
                        }
                        _loc2_.worker.updateFacialLayout();
                        §§goto(addr465);
                     }
                     if(§§pop() != _loc3_)
                     {
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           §§goto(addr452);
                           §§push(_loc2_.workerData);
                        }
                     }
                     §§goto(addr465);
                  }
                  else if(_loc2_.draggingWhichSlider == "headscale")
                  {
                     if(_loc8_)
                     {
                        _loc5_ = _loc2_.clip.menu.headscale_panel.slider;
                        §§push(Number(_loc2_.clip.menu.headscale_panel.mouseX));
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           _loc6_ = §§pop();
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              _loc5_.x = Math.min(Math.max(_loc6_,_loc2_.sliderStartX),_loc2_.sliderStartX + _loc2_.sliderRange);
                              if(!_loc7_)
                              {
                                 §§push(_loc5_.x - _loc2_.sliderStartX);
                                 §§push(_loc2_.sliderRange);
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(WorkerData.HEAD_SCALE_MAX);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() - WorkerData.HEAD_SCALE_MIN);
                                          if(_loc8_)
                                          {
                                          }
                                          addr571:
                                          if(§§pop() != §§pop())
                                          {
                                          }
                                       }
                                    }
                                    addr563:
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                                 §§push(WorkerData.HEAD_SCALE_MIN);
                                 if(!(_loc7_ && Boolean(param1)))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr563);
                                    }
                                 }
                                 §§goto(addr571);
                              }
                              addr574:
                              _loc2_.workerData.adjustValue("headScale",_loc3_);
                           }
                           _loc2_.worker.updateFacialLayout();
                           _loc2_.workerReverse.updateFacialLayout();
                           §§goto(addr571);
                        }
                        _loc3_ = §§pop();
                        §§push(_loc2_.workerData);
                        if(!_loc7_)
                        {
                           §§goto(addr571);
                           §§push(§§pop().headScale);
                           §§push(_loc3_);
                        }
                        §§goto(addr574);
                     }
                     §§goto(addr750);
                  }
                  else
                  {
                     §§push(_loc2_.draggingWhichSlider);
                     if(_loc8_)
                     {
                        §§goto(addr588);
                     }
                  }
               }
               addr696:
               if(§§pop() == "back")
               {
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     §§push(_loc2_.gameObj);
                     if(_loc8_)
                     {
                        §§push(§§pop().§_-4P§);
                        if(!_loc7_)
                        {
                           addr730:
                           §§push(§§pop().api);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              §§pop().§_-76§("SlotSelect");
                              if(!_loc7_)
                              {
                                 §§push(_loc2_.gameObj);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop().§_-4P§);
                                 }
                              }
                           }
                           §§pop().§_-2K§("CharacterEditor");
                           §§goto(addr732);
                        }
                        §§goto(addr730);
                        §§push(§§pop().api);
                     }
                  }
                  §§goto(addr755);
               }
               else
               {
                  §§push(_loc2_.gameObj);
                  if(!_loc7_)
                  {
                     §§pop().§_-CV§();
                     §§push(_loc2_.gameObj);
                  }
               }
               §§pop().§_-Ak§();
               if(!_loc7_)
               {
                  §§goto(addr750);
               }
               §§goto(addr755);
            }
            return;
         }
         if(_loc2_.clip.fader.currentFrame == _loc2_.clip.fader.totalFrames)
         {
            §§goto(addr696);
            §§push(_loc2_.endaction);
         }
         §§goto(addr750);
      }
      
      public function setupInterface(param1:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:TextFormat = null;
         var _loc4_:TextInput = null;
         var _loc5_:* = NaN;
         var _loc6_:TextFormat = null;
         var _loc7_:TextInput = null;
         var _loc2_:CharacterEditorScreen = this;
         §§push(param1);
         if(!_loc9_)
         {
            if(§§pop())
            {
               §§push(_loc2_.firsttime);
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  if(§§pop())
                  {
                     _loc2_.clip.menu.visible = true;
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        _loc2_.clip.clothes.visible = false;
                        _loc2_.clip.stats.visible = false;
                        if(_loc8_ || param1)
                        {
                           _loc2_.clip.tabs.visible = false;
                           _loc2_.clip.name_txt.visible = false;
                           _loc2_.clip.namerollover_btn.visible = false;
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              addr231:
                              _loc2_.clip.changeNameMC.visible = false;
                              _loc2_.clip.name_txt.mouseEnabled = false;
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 _loc2_.clip.namerollover_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeName);
                                 _loc2_.clip.name_txt.text = String(_loc2_.gameObj.userData.myName);
                                 _loc3_ = new TextFormat();
                                 if(!_loc9_)
                                 {
                                    _loc3_.font = "Arial";
                                    if(!_loc9_)
                                    {
                                       _loc3_.size = 14;
                                       if(_loc9_ && Boolean(_loc3_))
                                       {
                                       }
                                    }
                                    _loc3_.bold = true;
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                    }
                                    addr301:
                                    _loc4_ = _loc2_.clip.changeNameMC.input_txt;
                                    _loc2_.clip.changeNameMC.input_txt.setStyle("textFormat",_loc3_);
                                    if(_loc8_ || Boolean(this))
                                    {
                                       _loc2_.clip.changeNameMC.input_txt.maxChars = 16;
                                       if(!(_loc9_ && Boolean(this)))
                                       {
                                          _loc2_.clip.changeNameMC.input_txt.restrict = "0-9A-Za-z \'\\-";
                                          _loc2_.clip.changeNameMC.input_txt.text = String(_loc2_.gameObj.userData.myName);
                                          if(!_loc9_)
                                          {
                                             _loc2_.clip.tabs.stats_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionStats);
                                             _loc2_.clip.tabs.clothes_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionClothes);
                                             _loc2_.clip.tabs.customize_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionCustomize);
                                             if(_loc8_ || Boolean(_loc2_))
                                             {
                                                _loc2_.clip.menu.eyeheight_panel.label_txt.text = "Eye Position";
                                                _loc2_.clip.menu.eyeheight_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                                                _loc2_.clip.menu.eyeheight_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.eyeHeight - WorkerData.EYE_HEIGHT_MIN) / (WorkerData.EYE_HEIGHT_MAX - WorkerData.EYE_HEIGHT_MIN) * _loc2_.sliderRange;
                                                if(_loc8_ || param1)
                                                {
                                                   _loc2_.clip.menu.eyespacing_panel.label_txt.text = "Eye Spacing";
                                                   _loc2_.clip.menu.eyespacing_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                                                   _loc2_.clip.menu.eyespacing_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.eyeSpacing - WorkerData.EYE_SPACING_MIN) / (WorkerData.EYE_SPACING_MAX - WorkerData.EYE_SPACING_MIN) * _loc2_.sliderRange;
                                                   _loc2_.clip.menu.mouthheight_panel.label_txt.text = "Mouth Position";
                                                   _loc2_.clip.menu.mouthheight_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                                                   _loc2_.clip.menu.mouthheight_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.mouthHeight - WorkerData.MOUTH_HEIGHT_MIN) / (WorkerData.MOUTH_HEIGHT_MAX - WorkerData.MOUTH_HEIGHT_MIN) * _loc2_.sliderRange;
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      _loc2_.clip.menu.headforward_panel.label_txt.text = "Head Position";
                                                      _loc2_.clip.menu.headforward_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                                                      _loc2_.clip.menu.headforward_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.headForward - WorkerData.HEAD_FORWARD_MIN) / (WorkerData.HEAD_FORWARD_MAX - WorkerData.HEAD_FORWARD_MIN) * _loc2_.sliderRange;
                                                      if(_loc8_ || Boolean(_loc2_))
                                                      {
                                                         _loc2_.clip.menu.headscale_panel.label_txt.text = "Head Size";
                                                         _loc2_.clip.menu.headscale_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                                                         _loc2_.clip.menu.headscale_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.headScale - WorkerData.HEAD_SCALE_MIN) / (WorkerData.HEAD_SCALE_MAX - WorkerData.HEAD_SCALE_MIN) * _loc2_.sliderRange;
                                                         if(_loc8_)
                                                         {
                                                            _loc2_.clip.menu.headheight_panel.label_txt.text = "Neck Length";
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               _loc2_.clip.menu.headheight_panel.slider.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                                                               _loc2_.clip.menu.headheight_panel.slider.x = _loc2_.sliderStartX + (_loc2_.workerData.headHeight - WorkerData.HEAD_HEIGHT_MIN) / (WorkerData.HEAD_HEIGHT_MAX - WorkerData.HEAD_HEIGHT_MIN) * _loc2_.sliderRange;
                                                               if(_loc8_)
                                                               {
                                                                  §§push(WorkerData.skinToneOptions);
                                                                  §§push(_loc2_.workerData.skinTone);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Number(§§pop().indexOf(§§pop())));
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        _loc2_.clip.menu.skin_panel.label_txt.text = "Skin Color";
                                                                        _loc2_.clip.menu.skin_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
                                                                        if(!_loc9_)
                                                                        {
                                                                           _loc2_.clip.menu.skin_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
                                                                           _loc2_.clip.menu.skin_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.skinToneOptions.length);
                                                                           addr1627:
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(WorkerData.hairColorOptions);
                                                                              §§push(_loc2_.workerData.hairColor);
                                                                           }
                                                                           _loc2_.clip.clothes.hair_panel.addChild(_loc2_.thumb_hair);
                                                                           §§push(_loc2_.available_acca);
                                                                           §§push(_loc2_.workerData.acca);
                                                                           if(_loc8_)
                                                                           {
                                                                              addr1641:
                                                                              _loc5_ = Number(§§pop().indexOf(§§pop()));
                                                                              _loc2_.clip.clothes.acca_panel.label_txt.text = "Extra A";
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr1653:
                                                                                 _loc2_.clip.clothes.acca_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                 _loc2_.clip.clothes.acca_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                 _loc2_.clip.clothes.acca_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_acca.length);
                                                                                 if(!(_loc9_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr1697:
                                                                                    _loc2_.thumb_acca = _loc2_.generateClothingThumb(_loc2_.workerData.acca);
                                                                                    _loc2_.clip.clothes.acca_panel.addChild(_loc2_.thumb_acca);
                                                                                 }
                                                                                 addr2042:
                                                                                 _loc2_.clip.menu.gender_panel.female_btn.useHandCursor = true;
                                                                                 addr2049:
                                                                                 _loc2_.clip.menu.gender_panel.female_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
                                                                                 addr2059:
                                                                                 _loc6_ = new TextFormat();
                                                                                 _loc6_.font = "Arial";
                                                                                 if(!(_loc9_ && Boolean(this)))
                                                                                 {
                                                                                    _loc6_.size = 24;
                                                                                    if(_loc8_ || Boolean(_loc3_))
                                                                                    {
                                                                                    }
                                                                                    addr2092:
                                                                                    _loc7_ = _loc2_.clip.menu.custom_input.input_txt;
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       _loc2_.clip.menu.custom_input.input_txt.setStyle("textFormat",_loc6_);
                                                                                    }
                                                                                    _loc2_.clip.menu.custom_input.input_txt.maxChars = 16;
                                                                                    _loc2_.clip.menu.custom_input.input_txt.restrict = "0-9A-Za-z \'\\-";
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       _loc2_.clip.menu.custom_input.noname.gotoAndStop(1);
                                                                                       _loc2_.clip.clothes.photopanel.photo_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickTakePhoto);
                                                                                    }
                                                                                    _loc2_.clip.poloroid.visible = false;
                                                                                    _loc2_.clip.poloroid.holder.mask = _loc2_.clip.poloroid.masker;
                                                                                    _loc2_.clip.poloroid.flasher.gotoAndStop(1);
                                                                                    _loc2_.clip.poloroid.save_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSavePhoto);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       _loc2_.clip.poloroid.close_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickClosePhoto);
                                                                                    }
                                                                                 }
                                                                                 _loc6_.bold = true;
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    _loc6_.align = TextFormatAlign.CENTER;
                                                                                 }
                                                                                 §§goto(addr2092);
                                                                              }
                                                                              addr1792:
                                                                              §§push(_loc2_.available_accb);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr1715:
                                                                                 §§push(_loc2_.workerData.accb);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(Number(§§pop().indexOf(§§pop())));
                                                                                 }
                                                                              }
                                                                              _loc5_ = Number(§§pop().indexOf(_loc2_.workerData.accc));
                                                                              if(_loc8_ || Boolean(this))
                                                                              {
                                                                                 _loc2_.clip.clothes.accc_panel.label_txt.text = "Extra C";
                                                                                 addr1872:
                                                                                 if(_loc8_ || Boolean(this))
                                                                                 {
                                                                                    addr1819:
                                                                                    _loc2_.clip.clothes.accc_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                    _loc2_.clip.clothes.accc_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                    addr1839:
                                                                                    _loc2_.clip.clothes.accc_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accc.length);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       _loc2_.thumb_accc = _loc2_.generateClothingThumb(_loc2_.workerData.accc);
                                                                                       if(_loc8_ || Boolean(_loc2_))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr2059);
                                                                                    }
                                                                                    addr1886:
                                                                                    §§push(_loc2_.available_accd);
                                                                                    §§push(_loc2_.workerData.accd);
                                                                                 }
                                                                                 _loc2_.clip.clothes.accc_panel.addChild(_loc2_.thumb_accc);
                                                                                 if(!(_loc9_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§goto(addr1886);
                                                                                 }
                                                                                 addr2016:
                                                                                 _loc2_.clip.menu.gender_panel.male_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc2_.clip.menu.gender_panel.female_btn.buttonMode = true;
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       §§goto(addr2042);
                                                                                    }
                                                                                    §§goto(addr2049);
                                                                                 }
                                                                                 §§goto(addr2042);
                                                                              }
                                                                              addr1911:
                                                                              _loc2_.clip.clothes.accd_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                              addr1921:
                                                                              _loc2_.clip.clothes.accd_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accd.length);
                                                                              addr1938:
                                                                              _loc2_.thumb_accd = _loc2_.generateClothingThumb(_loc2_.workerData.accd);
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr1947:
                                                                                 _loc2_.clip.clothes.accd_panel.addChild(_loc2_.thumb_accd);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr1956:
                                                                                    if(_loc2_.workerData.gender == WorkerData.GENDER_MALE)
                                                                                    {
                                                                                       addr1962:
                                                                                       _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(2);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr1971:
                                                                                          _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(1);
                                                                                          if(_loc9_ && Boolean(this))
                                                                                          {
                                                                                          }
                                                                                          addr2002:
                                                                                          _loc2_.clip.menu.gender_panel.male_btn.buttonMode = true;
                                                                                       }
                                                                                       addr2009:
                                                                                       _loc2_.clip.menu.gender_panel.male_btn.useHandCursor = true;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(1);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr2016);
                                                                                 }
                                                                                 §§goto(addr2042);
                                                                              }
                                                                              _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(2);
                                                                              §§goto(addr2002);
                                                                           }
                                                                           _loc5_ = Number(§§pop().indexOf(§§pop()));
                                                                           _loc2_.clip.clothes.accd_panel.label_txt.text = "Extra D";
                                                                           _loc2_.clip.clothes.accd_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                           §§goto(addr1911);
                                                                        }
                                                                        addr1097:
                                                                        _loc2_.clip.menu.facialhair_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_facialhair.length);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr1116:
                                                                           §§push(_loc2_.available_accd);
                                                                           if(!(_loc9_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(_loc2_.workerData.accd);
                                                                              if(!(_loc9_ && Boolean(this)))
                                                                              {
                                                                                 addr1137:
                                                                                 _loc5_ = Number(§§pop().indexOf(§§pop()));
                                                                                 _loc2_.clip.menu.accd_panel.label_txt.text = "Extras";
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    _loc2_.clip.menu.accd_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeAccessory);
                                                                                    addr1157:
                                                                                    _loc2_.clip.menu.accd_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeAccessory);
                                                                                    if(!(_loc9_ && Boolean(this)))
                                                                                    {
                                                                                       _loc2_.clip.menu.accd_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accd.length);
                                                                                       if(_loc8_ || Boolean(_loc2_))
                                                                                       {
                                                                                          if(!_loc2_.firsttime)
                                                                                          {
                                                                                             §§push(_loc2_.available_shirt);
                                                                                          }
                                                                                          §§goto(addr1956);
                                                                                       }
                                                                                       §§goto(addr1872);
                                                                                    }
                                                                                    §§goto(addr1819);
                                                                                 }
                                                                                 _loc2_.clip.clothes.shoes_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                 if(!(_loc9_ && Boolean(this)))
                                                                                 {
                                                                                    _loc2_.clip.clothes.shoes_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_shoes.length);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       _loc2_.thumb_shoes = _loc2_.generateClothingThumb(_loc2_.workerData.shoes);
                                                                                       if(_loc8_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr1458:
                                                                                          _loc2_.clip.clothes.shoes_panel.addChild(_loc2_.thumb_shoes);
                                                                                          addr1465:
                                                                                          §§push(_loc2_.available_jacket);
                                                                                          if(_loc8_ || Boolean(this))
                                                                                          {
                                                                                             addr1479:
                                                                                             _loc5_ = Number(§§pop().indexOf(_loc2_.workerData.jacket));
                                                                                             _loc2_.clip.clothes.jacket_panel.label_txt.text = "Jacket";
                                                                                             _loc2_.clip.clothes.jacket_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr2009);
                                                                                          }
                                                                                          §§goto(addr1792);
                                                                                       }
                                                                                       §§goto(addr1921);
                                                                                    }
                                                                                    addr1576:
                                                                                    _loc2_.clip.clothes.hair_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                    _loc2_.clip.clothes.hair_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                                    if(_loc8_ || Boolean(_loc3_))
                                                                                    {
                                                                                       _loc2_.clip.clothes.hair_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_hair.length);
                                                                                       _loc2_.thumb_hair = _loc2_.generateClothingThumb(_loc2_.workerData.hair);
                                                                                       §§goto(addr1627);
                                                                                    }
                                                                                    §§goto(addr1697);
                                                                                 }
                                                                                 §§goto(addr1938);
                                                                              }
                                                                              addr1295:
                                                                              _loc5_ = Number(§§pop().indexOf(§§pop()));
                                                                              _loc2_.clip.clothes.pants_panel.label_txt.text = "Pants";
                                                                              if(_loc8_)
                                                                              {
                                                                              }
                                                                              _loc2_.thumb_accb = _loc2_.generateClothingThumb(_loc2_.workerData.accb);
                                                                              if(_loc9_)
                                                                              {
                                                                              }
                                                                              §§goto(addr1792);
                                                                           }
                                                                           §§push(Number(§§pop().indexOf(_loc2_.workerData.shirt)));
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              _loc2_.clip.clothes.shirt_panel.label_txt.text = "Shirt";
                                                                              _loc2_.clip.clothes.shirt_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                              _loc2_.clip.clothes.shirt_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 _loc2_.clip.clothes.shirt_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_shirt.length);
                                                                                 _loc2_.thumb_shirt = _loc2_.generateClothingThumb(_loc2_.workerData.shirt);
                                                                                 _loc2_.clip.clothes.shirt_panel.addChild(_loc2_.thumb_shirt);
                                                                                 §§push(_loc2_.available_pants);
                                                                                 if(!(_loc9_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§push(_loc2_.workerData.pants);
                                                                                    if(_loc8_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§goto(addr1295);
                                                                                    }
                                                                                    §§goto(addr1641);
                                                                                 }
                                                                                 §§goto(addr1715);
                                                                              }
                                                                              §§goto(addr1465);
                                                                           }
                                                                           §§goto(addr1479);
                                                                        }
                                                                        §§goto(addr1971);
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                  }
                                                                  §§push(Number(§§pop().indexOf(§§pop())));
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(_loc8_ || Boolean(_loc2_))
                                                                     {
                                                                        _loc2_.clip.menu.haircolor_panel.label_txt.text = "Hair Color";
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           _loc2_.clip.menu.haircolor_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
                                                                           _loc2_.clip.menu.haircolor_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
                                                                           if(!(_loc9_ && Boolean(_loc3_)))
                                                                           {
                                                                              _loc2_.clip.menu.haircolor_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.hairColorOptions.length);
                                                                              addr932:
                                                                              §§push(_loc2_.workerData);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(Number(§§pop().eyeStyle));
                                                                              }
                                                                              _loc5_ = Number(§§pop().mouthDefaultExpression);
                                                                              _loc2_.clip.menu.mouthdefault_panel.label_txt.text = "Mouth Look";
                                                                              if(_loc8_)
                                                                              {
                                                                                 _loc2_.clip.menu.mouthdefault_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    _loc2_.clip.menu.mouthdefault_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
                                                                                    _loc2_.clip.menu.mouthdefault_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.MOUTH_DEFAULT_MAX);
                                                                                    §§push(Number(_loc2_.available_hair.indexOf(_loc2_.workerData.hair)));
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       _loc2_.clip.menu.hair_panel.label_txt.text = "Hair";
                                                                                       _loc2_.clip.menu.hair_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
                                                                                       _loc2_.clip.menu.hair_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
                                                                                       if(_loc9_ && Boolean(this))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr1962);
                                                                                    }
                                                                                    §§goto(addr1137);
                                                                                 }
                                                                                 §§goto(addr1116);
                                                                              }
                                                                           }
                                                                           §§goto(addr1157);
                                                                        }
                                                                        §§goto(addr1947);
                                                                     }
                                                                     §§goto(addr1137);
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     _loc2_.clip.menu.eyetype_panel.label_txt.text = "Eye Type";
                                                                     _loc2_.clip.menu.eyetype_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
                                                                     _loc2_.clip.menu.eyetype_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        _loc2_.clip.menu.eyetype_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.EYE_STYLE_MAX);
                                                                     }
                                                                     addr1790:
                                                                     §§goto(addr1641);
                                                                     §§push(_loc2_.available_accc);
                                                                  }
                                                                  §§goto(addr1839);
                                                               }
                                                            }
                                                            _loc2_.clip.clothes.accb_panel.addChild(_loc2_.thumb_accb);
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§goto(addr1790);
                                                            }
                                                            §§goto(addr1819);
                                                         }
                                                         addr1353:
                                                         _loc2_.clip.clothes.pants_panel.addChild(_loc2_.thumb_pants);
                                                         §§push(_loc2_.available_shoes);
                                                         §§push(_loc2_.workerData);
                                                         if(_loc8_ || Boolean(_loc2_))
                                                         {
                                                            _loc5_ = Number(§§pop().indexOf(§§pop().shoes));
                                                            _loc2_.clip.clothes.shoes_panel.label_txt.text = "Shoes";
                                                            if(!_loc9_)
                                                            {
                                                               _loc2_.clip.clothes.shoes_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                               if(_loc8_ || param1)
                                                               {
                                                                  §§goto(addr1137);
                                                               }
                                                               §§goto(addr1962);
                                                            }
                                                         }
                                                         §§goto(addr1819);
                                                      }
                                                      _loc2_.clip.clothes.pants_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                      if(_loc8_)
                                                      {
                                                         _loc2_.clip.clothes.pants_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                                         _loc2_.clip.clothes.pants_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_pants.length);
                                                         _loc2_.thumb_pants = _loc2_.generateClothingThumb(_loc2_.workerData.pants);
                                                         §§goto(addr1353);
                                                      }
                                                      addr1562:
                                                      _loc2_.clip.clothes.hair_panel.label_txt.text = "Hat";
                                                      if(!(_loc9_ && Boolean(_loc3_)))
                                                      {
                                                         §§goto(addr1576);
                                                      }
                                                      §§goto(addr1653);
                                                   }
                                                   _loc5_ = Number(WorkerData.eyeDefaultOptions.indexOf(_loc2_.workerData.eyeDefaultExpression));
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      _loc2_.clip.menu.eyedefault_panel.label_txt.text = "Eye Look";
                                                      _loc2_.clip.menu.eyedefault_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
                                                   }
                                                   addr909:
                                                   _loc2_.clip.menu.eyedefault_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.eyeDefaultOptions.length);
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc2_.workerData);
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr932);
                                                      }
                                                      §§goto(addr1956);
                                                   }
                                                   §§goto(addr1353);
                                                }
                                                _loc2_.clip.menu.eyedefault_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
                                                §§goto(addr909);
                                             }
                                             _loc2_.clip.clothes.jacket_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                             _loc2_.clip.clothes.jacket_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_jacket.length);
                                             _loc2_.thumb_jacket = _loc2_.generateClothingThumb(_loc2_.workerData.jacket);
                                             _loc2_.clip.clothes.jacket_panel.addChild(_loc2_.thumb_jacket);
                                             §§push(_loc2_.available_hair);
                                             if(_loc8_ || Boolean(this))
                                             {
                                                §§push(_loc2_.workerData.hair);
                                                if(!(_loc9_ && Boolean(this)))
                                                {
                                                   _loc5_ = Number(§§pop().indexOf(§§pop()));
                                                   §§goto(addr1562);
                                                }
                                             }
                                             §§goto(addr1641);
                                          }
                                          addr1070:
                                          _loc2_.clip.menu.facialhair_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
                                          if(!(_loc9_ && Boolean(_loc3_)))
                                          {
                                             _loc2_.clip.menu.facialhair_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
                                             §§goto(addr1097);
                                          }
                                          §§goto(addr1458);
                                       }
                                       _loc2_.clip.clothes.accb_panel.label_txt.text = "Extra B";
                                       _loc2_.clip.clothes.accb_panel.next_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                       _loc2_.clip.clothes.accb_panel.prev_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                       _loc2_.clip.clothes.accb_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_accb.length);
                                       §§goto(addr1295);
                                    }
                                    _loc2_.clip.menu.hair_panel.amount_txt.text = String(_loc5_ + 1 + "/" + _loc2_.available_hair.length);
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       §§push(_loc2_.available_facialhair);
                                       §§push(_loc2_.workerData.facialhair);
                                       if(!_loc9_)
                                       {
                                          _loc5_ = Number(§§pop().indexOf(§§pop()));
                                          _loc2_.clip.menu.facialhair_panel.label_txt.text = "Facial Hair";
                                          §§goto(addr1070);
                                       }
                                       §§goto(addr1641);
                                    }
                                    §§goto(addr1137);
                                 }
                                 _loc3_.align = TextFormatAlign.CENTER;
                                 §§goto(addr301);
                              }
                           }
                           §§goto(addr2784);
                        }
                        addr2663:
                        _loc2_.clip.clothes.pants_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                        if(!_loc9_)
                        {
                           addr2675:
                           _loc2_.clip.clothes.pants_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                           _loc2_.clip.clothes.shoes_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                           if(_loc8_)
                           {
                           }
                           §§goto(addr2784);
                        }
                        §§goto(addr2707);
                     }
                     addr2697:
                     _loc2_.clip.clothes.shoes_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                     addr2707:
                     _loc2_.clip.clothes.hair_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                     if(_loc8_)
                     {
                        _loc2_.clip.clothes.hair_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                        _loc2_.clip.menu.gender_panel.male_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
                        addr2739:
                        _loc2_.clip.menu.gender_panel.female_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickGender);
                        addr2749:
                        _loc2_.clip.clothes.photopanel.photo_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickTakePhoto);
                        _loc2_.clip.poloroid.save_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSavePhoto);
                     }
                     _loc2_.clip.poloroid.close_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickClosePhoto);
                     §§goto(addr2784);
                  }
                  else
                  {
                     _loc2_.clip.menu.visible = false;
                     _loc2_.clip.clothes.visible = false;
                     _loc2_.clip.stats.visible = true;
                     _loc2_.clip.tabs.visible = true;
                     _loc2_.clip.tabs.gotoAndStop("stats");
                  }
                  _loc2_.clip.tabs.newstar.visible = _loc2_.gameObj.userData.hasNewClothing;
                  _loc2_.clip.tabs.newstar.mouseEnabled = false;
                  if(!_loc9_)
                  {
                     _loc2_.clip.tabs.newstar.mouseChildren = false;
                     if(_loc8_)
                     {
                        _loc2_.clip.name_txt.visible = true;
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           _loc2_.clip.namerollover_btn.visible = true;
                           if(_loc9_ && Boolean(_loc3_))
                           {
                           }
                           addr2251:
                           _loc2_.clip.tabs.customize_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionCustomize);
                           _loc2_.clip.menu.eyeheight_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                           _loc2_.clip.menu.eyespacing_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                           if(!_loc9_)
                           {
                              _loc2_.clip.menu.mouthheight_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                              _loc2_.clip.menu.headforward_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                              _loc2_.clip.menu.headscale_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                           }
                           _loc2_.clip.menu.headheight_panel.slider.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSlider);
                           if(_loc9_ && param1)
                           {
                           }
                           _loc2_.clip.menu.hair_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
                           _loc2_.clip.menu.facialhair_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              _loc2_.clip.menu.facialhair_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeFacialHair);
                              if(!_loc9_)
                              {
                                 _loc2_.clip.clothes.acca_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    _loc2_.clip.clothes.acca_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       _loc2_.clip.clothes.accb_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                    }
                                    §§goto(addr2784);
                                 }
                                 _loc2_.clip.clothes.accb_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                 addr2562:
                                 _loc2_.clip.clothes.accc_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                 if(!(_loc9_ && param1))
                                 {
                                    addr2579:
                                    _loc2_.clip.clothes.accc_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                    addr2589:
                                    _loc2_.clip.clothes.accd_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                    _loc2_.clip.clothes.accd_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       _loc2_.clip.clothes.shirt_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                    }
                                    _loc2_.clip.clothes.jacket_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
                                    §§goto(addr2663);
                                 }
                                 §§goto(addr2784);
                              }
                              §§goto(addr2749);
                           }
                           §§goto(addr2675);
                        }
                        addr2219:
                        §§push(_loc2_.gameObj);
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§push(§§pop().userData);
                           if(_loc8_ || param1)
                           {
                              §§push(§§pop().whichCharacter);
                              if(_loc8_)
                              {
                                 §§push(§§pop() == "marty");
                                 if(_loc8_)
                                 {
                                 }
                              }
                              addr210:
                              if(§§pop() == "rita")
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    _loc2_.clip.tabs.customize_btn.visible = false;
                                    _loc2_.clip.namerollover_btn.visible = false;
                                 }
                                 §§goto(addr2675);
                              }
                              §§goto(addr231);
                           }
                           addr209:
                           §§goto(addr210);
                           §§push(§§pop().whichCharacter);
                        }
                        §§pop().removeEventListener(KeyboardEvent.KEY_DOWN,_loc2_.keyListener);
                        if(_loc8_ || param1)
                        {
                           _loc2_.clip.tabs.stats_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionStats);
                           _loc2_.clip.tabs.clothes_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickSectionClothes);
                           if(_loc8_)
                           {
                              §§goto(addr2251);
                           }
                           §§goto(addr2589);
                        }
                        §§goto(addr2251);
                     }
                     _loc2_.clip.menu.skin_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
                     _loc2_.clip.menu.skin_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeSkin);
                     if(!(_loc9_ && Boolean(this)))
                     {
                        _loc2_.clip.menu.haircolor_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           _loc2_.clip.menu.haircolor_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHairColor);
                           _loc2_.clip.menu.eyetype_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
                           if(!(_loc9_ && param1))
                           {
                              _loc2_.clip.menu.eyetype_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeType);
                              if(!(_loc9_ && param1))
                              {
                                 _loc2_.clip.menu.eyedefault_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
                                 if(_loc8_)
                                 {
                                    _loc2_.clip.menu.eyedefault_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeEyeDefault);
                                    _loc2_.clip.menu.mouthdefault_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
                                    _loc2_.clip.menu.mouthdefault_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeMouthDefault);
                                    _loc2_.clip.menu.hair_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeHair);
                                 }
                                 addr2784:
                                 return;
                              }
                              §§goto(addr2251);
                           }
                           §§goto(addr2739);
                        }
                        §§goto(addr2562);
                     }
                     §§goto(addr2579);
                  }
                  §§goto(addr2697);
               }
               if(!§§pop())
               {
                  if(_loc9_)
                  {
                  }
               }
               §§goto(addr210);
            }
            else
            {
               _loc2_.clip.namerollover_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeName);
               if(_loc8_)
               {
                  §§push(_loc2_.gameObj);
                  if(_loc8_ || Boolean(this))
                  {
                     addr2212:
                     §§pop().removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickScreenChangingName);
                     §§push(_loc2_.gameObj);
                  }
                  §§goto(addr2219);
               }
            }
            _loc2_.clip.clothes.shirt_panel.prev_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
            if(_loc8_ || Boolean(_loc2_))
            {
               _loc2_.clip.clothes.jacket_panel.next_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickChangeClothing);
               §§goto(addr2579);
            }
            §§goto(addr2663);
         }
         §§pop();
         §§push(_loc2_.gameObj);
         if(!(_loc9_ && Boolean(_loc2_)))
         {
            §§goto(addr209);
            §§push(§§pop().userData);
         }
         else
         {
            §§goto(addr2212);
         }
         §§goto(addr2675);
      }
      
      public function clickSectionStats(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         if(!_loc4_)
         {
            _loc2_.clip.tabs.gotoAndStop("stats");
            if(!_loc4_)
            {
               _loc2_.clip.stats.visible = true;
               if(_loc3_ || Boolean(_loc2_))
               {
                  _loc2_.clip.clothes.visible = false;
                  if(_loc4_)
                  {
                  }
               }
            }
            §§goto(addr70);
         }
         _loc2_.clip.menu.visible = false;
         if(!_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         }
         addr70:
      }
      
      public function clickSectionClothes(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:CharacterEditorScreen = this;
         _loc2_.clip.tabs.gotoAndStop("clothes");
         _loc2_.clip.stats.visible = false;
         _loc2_.clip.clothes.visible = true;
         _loc2_.clip.menu.visible = false;
         _loc2_.clip.tabs.newstar.visible = false;
         §§push(_loc2_.gameObj);
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().userData.hasNewClothing = false;
            §§push(_loc2_.gameObj);
         }
         §§pop().soundManager.playSound("buttonclick.wav");
      }
      
      public function clickSectionCustomize(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.clip.tabs.gotoAndStop("customize");
            if(_loc4_ && _loc3_)
            {
            }
            addr70:
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            §§goto(addr75);
         }
         _loc2_.clip.stats.visible = false;
         if(_loc3_)
         {
            _loc2_.clip.clothes.visible = false;
            if(_loc3_)
            {
            }
            addr75:
            return;
         }
         _loc2_.clip.menu.visible = true;
         if(_loc3_)
         {
         }
         §§goto(addr70);
      }
      
      public function clickSlider(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         if(param1.currentTarget == _loc2_.clip.menu.eyeheight_panel.slider)
         {
            if(!_loc4_)
            {
               _loc2_.draggingWhichSlider = "eyeheight";
               if(_loc3_)
               {
               }
               addr116:
               §§push(_loc2_.gameObj);
               if(_loc3_)
               {
                  §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseSlider);
                  if(!_loc4_)
                  {
                     addr127:
                     §§push(_loc2_.gameObj);
                     if(_loc3_ || Boolean(_loc2_))
                     {
                     }
                     addr154:
                     §§pop().soundManager.playSound("buttonclick.wav");
                  }
               }
               §§pop().stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseSlider);
               _loc2_.didChange = true;
               §§goto(addr154);
               §§push(_loc2_.gameObj);
            }
            else
            {
               addr80:
               _loc2_.draggingWhichSlider = "headforward";
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr116);
               }
            }
            return;
         }
         if(param1.currentTarget == _loc2_.clip.menu.eyespacing_panel.slider)
         {
            _loc2_.draggingWhichSlider = "eyespacing";
         }
         else if(param1.currentTarget == _loc2_.clip.menu.mouthheight_panel.slider)
         {
            if(!_loc4_)
            {
               _loc2_.draggingWhichSlider = "mouthheight";
            }
         }
         else if(param1.currentTarget == _loc2_.clip.menu.headforward_panel.slider)
         {
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr80);
            }
            §§goto(addr116);
         }
         else if(param1.currentTarget != _loc2_.clip.menu.headscale_panel.slider)
         {
            if(param1.currentTarget == _loc2_.clip.menu.headheight_panel.slider)
            {
               _loc2_.draggingWhichSlider = "headheight";
               if(_loc3_)
               {
               }
               §§goto(addr127);
            }
         }
         §§goto(addr116);
         _loc2_.draggingWhichSlider = "headscale";
         §§goto(addr116);
      }
      
      public function releaseSlider(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:CharacterEditorScreen = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            addr78:
            §§push(_loc2_.gameObj);
            if(!(_loc3_ && Boolean(this)))
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseSlider);
               if(_loc4_)
               {
               }
               addr76:
               §§push(_loc2_.gameObj);
            }
            §§pop().soundManager.playSound("buttonclick.wav");
            §§goto(addr81);
         }
         §§push(_loc2_.gameObj);
         if(!(_loc3_ && _loc3_))
         {
            §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseSlider);
            if(!_loc3_)
            {
               _loc2_.draggingWhichSlider = null;
               if(!_loc3_)
               {
                  §§goto(addr76);
               }
            }
            addr81:
            return;
         }
         §§goto(addr78);
      }
      
      public function clickGender(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         if(_loc3_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            §§push(param1.currentTarget == _loc2_.clip.menu.gender_panel.male_btn);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           §§push(_loc2_.workerData);
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§goto(addr369);
                           }
                           addr89:
                           §§push(WorkerData.GENDER_MALE);
                           if(_loc3_ || Boolean(this))
                           {
                              §§pop().setGender(§§pop());
                              addr360:
                              §§push(_loc2_.worker);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§pop().updateModelLook();
                                 §§push(_loc2_.workerReverse);
                                 if(!_loc4_)
                                 {
                                    §§pop().updateModelLook();
                                    addr365:
                                    if(_loc3_)
                                    {
                                       _loc2_.clip.menu.facialhair_panel.visible = true;
                                       if(!_loc4_)
                                       {
                                          _loc2_.clip.menu.hair_panel.amount_txt.text = String(_loc2_.available_hair.indexOf(_loc2_.workerData.hair) + 1 + "/" + _loc2_.available_hair.length);
                                          _loc2_.which_hair = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
                                       }
                                       else
                                       {
                                          addr261:
                                          §§push(_loc2_.workerData);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§push(WorkerData.GENDER_FEMALE);
                                          }
                                       }
                                       addr368:
                                       addr369:
                                       addr371:
                                       §§push(§§pop().gender);
                                       if(_loc3_)
                                       {
                                          §§push(WorkerData.GENDER_MALE);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc4_ && Boolean(_loc2_))
                                                {
                                                }
                                             }
                                          }
                                          addr256:
                                          §§push(§§pop() == §§pop());
                                          if(!_loc4_)
                                          {
                                             addr259:
                                             §§push(!§§pop());
                                          }
                                       }
                                       if(§§pop() == WorkerData.GENDER_MALE)
                                       {
                                          _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(2);
                                          addr379:
                                          _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(1);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          _loc2_.clip.menu.gender_panel.male_btn.gotoAndStop(1);
                                          _loc2_.clip.menu.gender_panel.female_btn.gotoAndStop(2);
                                       }
                                       return;
                                       §§push(§§pop().gender);
                                    }
                                    _loc2_.which_facialhair = _loc2_.available_facialhair.indexOf(_loc2_.workerData.facialhair);
                                    if(_loc3_)
                                    {
                                       _loc2_.didChange = true;
                                       §§push(_loc2_.worker);
                                       if(!_loc4_)
                                       {
                                          §§push("react1");
                                          if(_loc3_)
                                          {
                                             §§pop().playAnimation(§§pop());
                                             if(!(_loc3_ || Boolean(this)))
                                             {
                                                addr335:
                                                _loc2_.which_facialhair = _loc2_.available_facialhair.indexOf(_loc2_.workerData.facialhair);
                                             }
                                          }
                                          addr361:
                                          §§pop().playAnimation(§§pop());
                                          §§push(_loc2_.workerReverse);
                                       }
                                    }
                                    §§push(_loc2_.workerReverse);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§push("react1_mirror");
                                       if(_loc3_)
                                       {
                                          §§pop().playAnimation(§§pop());
                                       }
                                       addr366:
                                       §§goto(addr368);
                                       §§push(_loc2_.workerData);
                                    }
                                    else
                                    {
                                       addr354:
                                       §§pop().updateModelLook();
                                       _loc2_.didChange = true;
                                       §§push(_loc2_.worker);
                                    }
                                    §§pop().playAnimation(§§pop());
                                    §§goto(addr366);
                                 }
                                 addr364:
                                 §§goto(addr365);
                                 §§push("react1_mirror");
                              }
                              §§goto(addr361);
                              §§push("react1");
                           }
                           §§pop().setGender(§§pop());
                           §§push(_loc2_.workerData);
                           if(_loc3_ || Boolean(this))
                           {
                              addr282:
                              §§pop().facialhair = "";
                              if(_loc3_)
                              {
                                 _loc2_.clip.menu.facialhair_panel.amount_txt.text = String("1/" + _loc2_.available_facialhair.length);
                              }
                              _loc2_.clip.menu.facialhair_panel.visible = false;
                              _loc2_.clip.menu.hair_panel.amount_txt.text = String(_loc2_.available_hair.indexOf(_loc2_.workerData.hair) + 1 + "/" + _loc2_.available_hair.length);
                              _loc2_.which_hair = _loc2_.available_hair.indexOf(_loc2_.workerData.hair);
                              §§goto(addr335);
                           }
                           §§goto(addr368);
                        }
                        §§push(_loc2_.worker);
                        if(!_loc4_)
                        {
                           §§pop().updateModelLook();
                           if(_loc3_)
                           {
                           }
                           §§goto(addr379);
                        }
                        §§goto(addr360);
                     }
                     addr260:
                     if(§§pop())
                     {
                        §§goto(addr261);
                     }
                     §§goto(addr366);
                  }
                  if(§§pop())
                  {
                     §§push(_loc2_.workerData);
                     if(_loc3_ || Boolean(param1))
                     {
                        §§goto(addr89);
                     }
                     else
                     {
                        addr244:
                        §§push(§§pop().gender);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§push(WorkerData.GENDER_FEMALE);
                           if(!_loc4_)
                           {
                              §§goto(addr256);
                           }
                           §§goto(addr371);
                        }
                     }
                     §§goto(addr369);
                  }
                  else
                  {
                     §§push(param1.currentTarget == _loc2_.clip.menu.gender_panel.female_btn);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr259);
               }
               if(§§pop())
               {
                  if(_loc4_ && Boolean(_loc2_))
                  {
                  }
               }
               §§goto(addr260);
            }
            §§pop();
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(_loc2_.workerData);
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr244);
               }
            }
            §§goto(addr282);
         }
         §§push(_loc2_.workerReverse);
         if(_loc3_)
         {
            §§goto(addr354);
         }
         §§goto(addr364);
      }
      
      public function clickChangeName(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         _loc2_.clip.changeNameMC.visible = true;
         _loc2_.clip.changeNameMC.input_txt.setFocus();
         param1.stopImmediatePropagation();
         if(_loc3_ || Boolean(this))
         {
            §§push(_loc2_.gameObj);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§pop().addEventListener(MouseEvent.MOUSE_DOWN,_loc2_.clickScreenChangingName);
            }
            addr81:
            §§pop().soundManager.playSound("buttonclick.wav");
            §§goto(addr84);
         }
         §§push(_loc2_.gameObj);
         if(!(_loc4_ && Boolean(this)))
         {
            §§pop().addEventListener(KeyboardEvent.KEY_DOWN,_loc2_.keyListener);
            if(_loc3_)
            {
               §§push(_loc2_.gameObj);
            }
            addr84:
            return;
         }
         §§goto(addr81);
      }
      
      public function keyListener(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:CharacterEditorScreen = this;
         if(!_loc3_)
         {
            if(param1.keyCode == Keyboard.ENTER)
            {
               if(_loc3_)
               {
               }
            }
            §§goto(addr37);
         }
         _loc2_.clickScreenChangingName(null,true);
         addr37:
      }
      
      public function clickScreenChangingName(param1:MouseEvent = null, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:CharacterEditorScreen = this;
         §§push(param2);
         if(_loc4_ || Boolean(param1))
         {
            §§push(§§pop());
            if(_loc4_ || param2)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(_loc4_)
                     {
                        §§push(param1.target.parent == _loc3_.clip.changeNameMC.input_txt);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(_loc4_)
            {
               §§push(_loc3_.gameObj);
               if(_loc4_)
               {
                  §§pop().stage.focus = _loc3_.gameObj.stage;
                  _loc3_.clip.changeNameMC.visible = false;
                  _loc3_.clip.name_txt.text = String(_loc3_.clip.changeNameMC.input_txt.text);
                  addr85:
                  §§push(_loc3_.gameObj);
                  if(_loc4_)
                  {
                     addr89:
                     §§pop().removeEventListener(MouseEvent.MOUSE_DOWN,_loc3_.clickScreenChangingName);
                     §§goto(addr110);
                  }
                  §§pop().removeEventListener(KeyboardEvent.KEY_DOWN,_loc3_.keyListener);
                  addr110:
                  if(!_loc5_)
                  {
                     addr103:
                     §§push(_loc3_.gameObj);
                  }
                  return;
               }
               §§goto(addr89);
            }
            §§goto(addr103);
         }
         §§goto(addr89);
      }
      
      public function clickChangeSkin(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:* = 1;
         if(_loc6_ || Boolean(_loc2_))
         {
            if(_loc3_[0] == "prev")
            {
               if(_loc7_)
               {
               }
            }
            addr52:
            addr61:
            var _loc5_:* = WorkerData.skinToneOptions.indexOf(_loc2_.workerData.skinTone) + _loc4_;
            §§push(_loc5_);
            if(_loc6_ || Boolean(this))
            {
               if(§§pop() >= WorkerData.skinToneOptions.length)
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     §§goto(addr170);
                  }
                  addr147:
                  _loc2_.workerData.skinTone = WorkerData.skinToneOptions[_loc5_];
                  _loc2_.worker.updateSkinTone();
                  _loc2_.workerReverse.updateSkinTone();
                  _loc2_.didChange = true;
                  §§goto(addr145);
               }
               else
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc6_)
                        {
                           §§push(WorkerData.skinToneOptions.length - 1);
                           if(!_loc7_)
                           {
                              §§goto(addr107);
                           }
                        }
                        addr145:
                        if(_loc7_)
                        {
                        }
                        §§goto(addr170);
                     }
                     addr111:
                     _loc2_.clip.menu.skin_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.skinToneOptions.length);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(_loc2_.workerData);
                        if(!_loc7_)
                        {
                           if(§§pop().skinTone != WorkerData.skinToneOptions[_loc5_])
                           {
                           }
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr147);
                  }
               }
               _loc5_ = §§pop();
               if(!_loc7_)
               {
                  §§goto(addr111);
               }
               addr170:
               §§push(0);
               if(!_loc6_)
               {
                  addr107:
                  §§push(§§pop());
               }
               _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               return;
            }
            _loc5_ = §§pop();
            §§goto(addr111);
         }
         §§push(-1);
         if(_loc6_ || Boolean(this))
         {
            _loc4_ = §§pop();
            §§goto(addr52);
         }
         §§goto(addr61);
      }
      
      public function clickChangeEyeType(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:* = 1;
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            if(_loc3_[0] == "prev")
            {
               if(_loc6_ || Boolean(this))
               {
                  §§push(-1);
                  if(_loc6_)
                  {
                     _loc4_ = §§pop();
                  }
                  addr62:
                  §§push(_loc4_);
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     addr74:
                     §§push(§§pop() + §§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop());
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_)
                  {
                     §§push(WorkerData.EYE_STYLE_MAX);
                     if(_loc6_ || Boolean(this))
                     {
                        if(§§pop() > §§pop())
                        {
                           §§push(1);
                           if(!_loc6_)
                           {
                              addr117:
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 §§goto(addr121);
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              if(§§pop() < 1)
                              {
                                 §§push(WorkerData.EYE_STYLE_MAX);
                                 if(_loc6_)
                                 {
                                    §§goto(addr117);
                                 }
                              }
                              addr121:
                              §§goto(addr130);
                           }
                        }
                        §§push(_loc5_);
                     }
                     if(§§pop() != §§pop())
                     {
                        addr130:
                        §§push(_loc2_.workerData);
                        if(_loc6_)
                        {
                           §§push(§§pop().eyeStyle);
                        }
                        §§pop().adjustValue("eyeStyle",_loc5_);
                        if(_loc6_)
                        {
                           _loc2_.worker.redoClothing(ClothingItem.TYPE_HAIR);
                        }
                        _loc2_.workerReverse.redoClothing(ClothingItem.TYPE_HAIR);
                        if(!_loc7_)
                        {
                           _loc2_.didChange = true;
                           if(_loc7_)
                           {
                           }
                           §§goto(addr180);
                        }
                        _loc2_.clip.menu.eyetype_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.EYE_STYLE_MAX);
                        if(_loc6_ || Boolean(this))
                        {
                           §§goto(addr180);
                        }
                        addr180:
                        _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
                        return;
                        §§push(_loc2_.workerData);
                     }
                     §§goto(addr121);
                  }
                  _loc5_ = §§pop();
                  if(!(_loc7_ && Boolean(this)))
                  {
                     §§goto(addr121);
                  }
                  §§goto(addr180);
               }
            }
         }
         §§push(_loc2_.workerData.eyeStyle);
         if(_loc6_ || Boolean(param1))
         {
            §§goto(addr62);
         }
         §§goto(addr74);
      }
      
      public function clickChangeEyeDefault(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:* = 1;
         if(_loc6_)
         {
            if(_loc3_[0] == "prev")
            {
               if(_loc6_ || Boolean(this))
               {
               }
            }
            addr52:
            addr61:
            var _loc5_:* = WorkerData.eyeDefaultOptions.indexOf(_loc2_.workerData.eyeDefaultExpression) + _loc4_;
            §§push(_loc5_);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(WorkerData.eyeDefaultOptions);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  if(§§pop() >= §§pop().length)
                  {
                     §§push(0);
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        _loc5_ = §§pop();
                     }
                     else
                     {
                        addr95:
                        if(§§pop() < 0)
                        {
                           §§push(WorkerData.eyeDefaultOptions);
                           if(!_loc7_)
                           {
                              §§push(§§pop().length - 1);
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop());
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc6_)
                                    {
                                    }
                                    §§goto(addr171);
                                 }
                              }
                           }
                           addr130:
                           §§push(§§pop().length > _loc5_);
                           if(!_loc7_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    if(_loc6_ || Boolean(this))
                                    {
                                       addr168:
                                       §§push(_loc2_.workerData);
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§push(§§pop().eyeDefaultExpression);
                                       }
                                       §§pop().adjustValue("eyeDefault",_loc5_);
                                       §§goto(addr171);
                                    }
                                    addr171:
                                    _loc2_.worker.updateFacialLayout();
                                    if(_loc6_ || Boolean(this))
                                    {
                                       _loc2_.workerReverse.updateFacialLayout();
                                       if(_loc6_)
                                       {
                                          _loc2_.didChange = true;
                                          if(!(_loc7_ && Boolean(this)))
                                          {
                                             addr196:
                                             _loc2_.clip.menu.eyedefault_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.eyeDefaultOptions.length);
                                             if(_loc7_ && Boolean(_loc2_))
                                             {
                                             }
                                          }
                                       }
                                       _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
                                    }
                                    return;
                                 }
                              }
                              addr165:
                              if(§§pop())
                              {
                                 §§goto(addr168);
                                 §§push(_loc2_.workerData);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr165);
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr130);
                     §§push(WorkerData.eyeDefaultOptions);
                  }
                  else
                  {
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        §§goto(addr95);
                     }
                  }
               }
               addr159:
               §§push(§§pop() == §§pop()[_loc5_]);
               if(!_loc7_)
               {
                  §§goto(addr130);
               }
               §§goto(addr165);
            }
            §§goto(addr159);
            §§push(WorkerData.eyeDefaultOptions);
         }
         §§push(-1);
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            _loc4_ = §§pop();
            §§goto(addr52);
         }
         §§goto(addr61);
      }
      
      public function clickChangeMouthDefault(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:* = 1;
         if(!(_loc7_ && Boolean(this)))
         {
            if(_loc3_[0] == "prev")
            {
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(-1);
                  if(!_loc7_)
                  {
                     _loc4_ = §§pop();
                  }
                  addr73:
                  addr75:
                  addr74:
                  var _loc5_:* = §§pop();
                  §§push(_loc5_);
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     §§push(WorkerData.MOUTH_DEFAULT_MAX);
                     if(_loc6_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc7_)
                           {
                              §§push(1);
                              if(!_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc6_ || Boolean(param1))
                                 {
                                 }
                                 _loc2_.clip.menu.mouthdefault_panel.amount_txt.text = String(_loc5_ + "/" + WorkerData.MOUTH_DEFAULT_MAX);
                                 §§goto(addr158);
                              }
                              else
                              {
                                 addr113:
                                 if(§§pop() < 1)
                                 {
                                    §§push(WorkerData.MOUTH_DEFAULT_MAX);
                                    if(_loc7_)
                                    {
                                    }
                                    addr122:
                                    _loc5_ = §§pop();
                                 }
                              }
                              addr123:
                              addr139:
                              §§push(_loc2_.workerData);
                              if(_loc6_ || Boolean(param1))
                              {
                                 addr133:
                                 §§push(§§pop().mouthDefaultExpression);
                                 §§push(_loc5_);
                              }
                              §§pop().adjustValue("mouthDefault",_loc5_);
                              _loc2_.worker.updateFacialLayout();
                              _loc2_.workerReverse.updateFacialLayout();
                              _loc2_.didChange = true;
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§goto(addr158);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr123);
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              §§goto(addr113);
                           }
                        }
                     }
                     if(§§pop() != §§pop())
                     {
                        if(_loc6_)
                        {
                           §§goto(addr139);
                           §§push(_loc2_.workerData);
                        }
                        §§goto(addr123);
                     }
                     addr158:
                     if(!_loc7_)
                     {
                        addr181:
                        _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
                     }
                     return;
                  }
                  §§push(§§pop());
                  if(!_loc7_)
                  {
                     §§goto(addr122);
                  }
                  §§goto(addr133);
               }
            }
         }
         §§push(_loc2_.workerData.mouthDefaultExpression);
         if(!(_loc7_ && Boolean(this)))
         {
            §§push(_loc4_);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(§§pop() + §§pop());
               if(!_loc7_)
               {
                  §§goto(addr73);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr74);
      }
      
      public function clickChangeHairColor(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:* = 1;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            if(_loc3_[0] == "prev")
            {
               if(_loc6_)
               {
               }
            }
            §§goto(addr52);
         }
         §§push(-1);
         if(_loc6_ || Boolean(param1))
         {
            _loc4_ = §§pop();
            addr52:
            §§goto(addr61);
         }
         addr61:
         var _loc5_:* = WorkerData.hairColorOptions.indexOf(_loc2_.workerData.hairColor) + _loc4_;
         §§push(_loc5_);
         if(_loc6_ || Boolean(_loc3_))
         {
            if(§§pop() >= WorkerData.hairColorOptions.length)
            {
               §§push(0);
               if(_loc6_ || Boolean(param1))
               {
                  _loc5_ = §§pop();
               }
               §§goto(addr110);
            }
            else
            {
               §§push(_loc5_);
               if(_loc7_ && Boolean(this))
               {
               }
            }
            addr109:
            _loc5_ = §§pop();
            §§goto(addr108);
         }
         if(§§pop() < 0)
         {
            §§push(WorkerData.hairColorOptions.length - 1);
            if(!_loc7_)
            {
               addr108:
               §§goto(addr110);
            }
            §§goto(addr109);
         }
         addr110:
         _loc2_.clip.menu.haircolor_panel.amount_txt.text = String(_loc5_ + 1 + "/" + WorkerData.hairColorOptions.length);
         §§push(_loc2_.workerData);
         if(_loc6_ || Boolean(param1))
         {
            §§goto(addr179);
         }
         §§pop().hairColor = WorkerData.hairColorOptions[_loc5_];
         _loc2_.worker.updateHairColor();
         if(_loc6_ || Boolean(this))
         {
            _loc2_.workerReverse.updateHairColor();
            if(_loc7_ && Boolean(_loc3_))
            {
            }
            §§goto(addr179);
         }
         _loc2_.didChange = true;
         addr179:
         if(§§pop().hairColor != WorkerData.hairColorOptions[_loc5_])
         {
            §§push(_loc2_.workerData);
         }
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
      }
      
      public function clickChangeHair(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var dir:Number;
         var type:String;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         type = null;
         §§push(§§newactivation());
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(NaN);
            if(!(_loc5_ && Boolean(this)))
            {
               §§pop().§§slot[7] = §§pop();
               e = param1;
               ob = this;
               if(!(_loc5_ && _loc3_))
               {
                  splitter = String(e.currentTarget.name).split("_");
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(1);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§pop().§§slot[4] = §§pop();
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           if(§§pop().§§slot[3][0] == "prev")
                           {
                              §§push(§§newactivation());
                              §§push(-1);
                              if(_loc5_)
                              {
                              }
                              addr316:
                              §§pop().§§slot[7] = §§pop();
                              addr317:
                              §§push(§§newactivation());
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr330);
                              }
                              §§pop().§§slot[8] = "";
                              §§goto(addr343);
                              addr315:
                           }
                           addr95:
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                           }
                           addr103:
                           §§push(§§newactivation());
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop().§§slot[2]);
                              if(!_loc5_)
                              {
                                 §§push("which_" + type);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()[§§pop()]));
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                          §§push(§§newactivation());
                                          if(_loc4_ || Boolean(param1))
                                          {
                                          }
                                          addr238:
                                          §§push(§§pop().§§slot[2]);
                                       }
                                       §§goto(addr317);
                                    }
                                    §§goto(addr158);
                                 }
                                 addr243:
                                 §§push(§§pop()[§§pop()].length - 1);
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    §§pop().§§slot[7] = §§pop();
                                 }
                                 else
                                 {
                                    §§goto(addr316);
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr243);
                              §§push("available_" + type);
                           }
                           §§push(§§pop().§§slot[6]);
                        }
                        §§pop().§§slot[5] = "hair";
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§goto(addr103);
                        }
                        §§goto(addr194);
                     }
                     §§pop().§§slot[4] = §§pop();
                     §§goto(addr95);
                  }
                  addr314:
                  §§goto(addr315);
                  §§push(0);
               }
               §§goto(addr314);
               §§push(§§newactivation());
            }
            §§push(§§pop() + dir);
            if(_loc4_ || Boolean(param1))
            {
               §§push(§§pop());
            }
            addr158:
            §§pop().§§slot[7] = §§pop();
            §§push(§§newactivation());
            if(_loc4_)
            {
               §§push(§§pop().§§slot[7]);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() < 0);
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     addr282:
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ && _loc3_)
                           {
                           }
                           addr312:
                           if(!§§pop())
                           {
                           }
                           §§goto(addr317);
                        }
                        addr235:
                        if(§§pop())
                        {
                           §§push(§§newactivation());
                        }
                        else
                        {
                           §§push(§§newactivation());
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              §§push(§§pop().§§slot[7]);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr285:
                           §§pop();
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              §§push(§§pop().§§slot[2]);
                              if(_loc4_ || _loc2_)
                              {
                                 addr300:
                                 §§push("available_" + type);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop()[§§pop()].length > 0);
                                 }
                              }
                              §§goto(addr330);
                           }
                           §§goto(addr317);
                        }
                     }
                     §§goto(addr312);
                  }
                  §§pop();
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     addr194:
                     §§push(§§pop().§§slot[2]);
                     if(!_loc5_)
                     {
                        §§push("available_");
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop().§§slot[5]);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§push(§§pop()[§§pop()].length > 0);
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§goto(addr235);
                                    }
                                    §§goto(addr285);
                                 }
                                 §§goto(addr330);
                              }
                           }
                        }
                     }
                     §§goto(addr300);
                  }
               }
               §§push(§§pop() >= ob["available_" + type].length);
               if(_loc4_ || Boolean(this))
               {
                  §§goto(addr282);
                  §§push(§§pop());
               }
               §§goto(addr285);
            }
            addr330:
            §§pop().§§slot[2]["which_" + type] = targetIndex;
            if(_loc4_ || _loc2_)
            {
               §§push(§§newactivation());
            }
            try
            {
               addr343:
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[8] = ob["available_" + type][targetIndex];
                  addr412:
                  §§push(ob);
                  if(_loc4_ || Boolean(this))
                  {
                     §§pop().workerData[type] = tag;
                     §§push(§§newactivation());
                     if(_loc4_)
                     {
                        addr506:
                        §§push(§§pop().§§slot[2].worker);
                        if(_loc4_ || _loc3_)
                        {
                           §§pop().redoClothing(type);
                           §§push(§§newactivation());
                           if(_loc4_ || _loc3_)
                           {
                              addr720:
                              §§push(§§pop().§§slot[2]);
                              if(_loc4_)
                              {
                                 §§push(§§pop().workerReverse);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§pop().redoClothing(type);
                                    ob.clip.menu.hair_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
                                    ob.didChange = true;
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    addr772:
                                    ob.gameObj.soundManager.playSound("buttonclick.wav");
                                    addr742:
                                 }
                                 addr513:
                                 §§pop().playAnimation("react2_mirror");
                                 if(_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_ && Boolean(param1))
                                    {
                                    }
                                    addr693:
                                    §§push(§§pop().§§slot[2]);
                                 }
                              }
                              §§pop().clip.clothes[type + "_panel"].addChild(ob["thumb_" + type]);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§goto(addr742);
                              }
                           }
                           §§push(§§pop().§§slot[2]);
                           if(_loc4_)
                           {
                              addr528:
                              §§pop().clip.clothes[type + "_panel"].amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[2].which_hair = ob.available_hair.indexOf(ob.workerData.hair);
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                       addr652:
                                       §§push(§§pop().§§slot[2]);
                                       §§push("thumb_");
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             §§push(§§pop().§§slot[5]);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc4_)
                                                {
                                                   addr685:
                                                   if(§§pop()[§§pop()] != null)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc5_ && Boolean(this))
                                                      {
                                                      }
                                                      addr648:
                                                      §§push(§§pop().§§slot[2]);
                                                   }
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || Boolean(param1))
                                                   {
                                                      §§goto(addr693);
                                                   }
                                                }
                                                addr698:
                                                §§pop()[§§pop()] = ob.generateClothingThumb(tag);
                                                §§push(§§newactivation());
                                                if(_loc5_ && Boolean(param1))
                                                {
                                                }
                                             }
                                             addr676:
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§pop()[§§pop()].parent.removeChild(ob["thumb_" + type]);
                                                §§goto(addr648);
                                                §§push(§§newactivation());
                                             }
                                             §§pop()[§§pop()] = null;
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                §§goto(addr685);
                                             }
                                          }
                                          addr697:
                                          §§goto(addr698);
                                          §§push(§§pop() + §§pop().§§slot[5]);
                                       }
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop().§§slot[5]);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr668:
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§goto(addr676);
                                             }
                                             §§goto(addr698);
                                          }
                                       }
                                       §§goto(addr697);
                                    }
                                    §§push(§§pop().§§slot[2]);
                                    §§push("thumb_");
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop().§§slot[5]);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§goto(addr676);
                                          }
                                          §§goto(addr668);
                                       }
                                       §§goto(addr697);
                                    }
                                    §§goto(addr652);
                                 }
                                 catch(err:Error)
                                 {
                                    §_-5i§.error("Error regenerating thumb: " + err.message);
                                    §§goto(addr742);
                                 }
                              }
                              §§goto(addr742);
                           }
                           §§push("thumb_");
                           if(!_loc5_)
                           {
                              §§goto(addr652);
                           }
                           addr695:
                           §§goto(addr697);
                           §§push(§§newactivation());
                        }
                        §§pop().playAnimation("react2");
                        §§push(ob);
                        if(!_loc5_)
                        {
                           §§goto(addr513);
                           §§push(§§pop().workerReverse);
                        }
                        §§goto(addr652);
                     }
                     §§push(§§pop().§§slot[2]);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr720);
                     }
                     §§goto(addr772);
                  }
                  §§goto(addr695);
                  §§push("thumb_");
               }
               §§push(§§pop().§§slot[2]);
               if(_loc4_)
               {
                  §§goto(addr506);
                  §§push(§§pop().worker);
               }
               §§goto(addr528);
            }
            catch(err:Error)
            {
               var _loc3_:* = err;
               §§push(§_-5i§);
               §§push("Could not get new tag: type = " + type);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() + ", index = ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + targetIndex);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + ". Error: ");
                     }
                  }
               }
               §§pop().error(§§pop() + err.message);
               §§goto(addr412);
            }
            return;
         }
         §§goto(addr238);
         §§push(§§newactivation());
      }
      
      public function clickChangeFacialHair(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var dir:Number;
         var type:String;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && Boolean(this)))
         {
            §§pop().§§slot[5] = null;
            if(_loc5_)
            {
               §§push(§§newactivation());
               if(_loc5_ || _loc2_)
               {
                  §§pop().§§slot[7] = NaN;
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        §§pop().§§slot[1] = param1;
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  addr77:
                  §§push(§§newactivation());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(1);
                     if(_loc5_ || Boolean(this))
                     {
                        §§pop().§§slot[4] = §§pop();
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc5_ || _loc3_)
                           {
                           }
                           addr318:
                           §§push(§§pop().§§slot[2]);
                           if(!_loc4_)
                           {
                              addr291:
                              §§push("available_");
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    addr293:
                                    §§push(§§pop().§§slot[5]);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop()[§§pop()].length > 0);
                                          if(!_loc4_)
                                          {
                                             addr229:
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr233:
                                                   §§push(§§newactivation());
                                                   §§push(ob["available_" + type].length - 1);
                                                   if(_loc5_ || Boolean(param1))
                                                   {
                                                      §§pop().§§slot[7] = §§pop();
                                                   }
                                                   else
                                                   {
                                                      addr313:
                                                      §§pop().§§slot[7] = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         addr316:
                                                         §§push(ob);
                                                      }
                                                   }
                                                }
                                                addr258:
                                                §§goto(addr316);
                                             }
                                             else
                                             {
                                                addr260:
                                                addr261:
                                                §§push(targetIndex >= ob["available_" + type].length);
                                                if(_loc5_)
                                                {
                                                }
                                                addr276:
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                }
                                             }
                                             addr326:
                                             tag = "";
                                             try
                                             {
                                                tag = ob["available_" + type][targetIndex];
                                             }
                                             catch(err:Error)
                                             {
                                                var _loc3_:* = err;
                                                §§push(§_-5i§);
                                                §§push("Could not get new tag: type = " + type);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() + ", index = ");
                                                   if(_loc4_ && Boolean(param1))
                                                   {
                                                   }
                                                   addr381:
                                                   §§pop().error(§§pop() + ". Error: " + err.message);
                                                   addr379:
                                                }
                                                §§push(§§pop() + targetIndex);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr381);
                                             }
                                             §§push(ob);
                                             if(_loc5_)
                                             {
                                                §§pop().workerData[type] = tag;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr461:
                                                   §§push(ob);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§pop().worker.redoClothing(type);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§goto(addr505);
                                                      }
                                                      addr503:
                                                      §§goto(addr504);
                                                      §§push(§§newactivation());
                                                   }
                                                   §§pop().clip.menu.facialhair_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
                                                   §§goto(addr483);
                                                }
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§push(§§pop().§§slot[2]);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§goto(addr461);
                                                   }
                                                   addr505:
                                                   §§push(ob);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§pop().workerReverse.redoClothing(type);
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                      }
                                                      addr483:
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop().§§slot[2]);
                                                         if(_loc4_)
                                                         {
                                                         }
                                                      }
                                                      addr504:
                                                      §§push(§§pop().§§slot[2]);
                                                   }
                                                   §§pop().gameObj.soundManager.playSound("buttonclick.wav");
                                                   return;
                                                }
                                                §§goto(addr483);
                                             }
                                             §§pop().didChange = true;
                                             §§goto(addr503);
                                             addr325:
                                          }
                                          addr273:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr276);
                                             }
                                          }
                                          addr305:
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   addr311:
                                                   §§goto(addr313);
                                                   §§push(0);
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr316);
                                       }
                                       addr301:
                                       §§goto(addr305);
                                       §§push(§§pop()[§§pop()].length > 0);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§goto(addr301);
                                    }
                                    §§pop()[§§pop()] = targetIndex;
                                    §§goto(addr326);
                                 }
                                 addr292:
                                 §§goto(addr293);
                                 §§push(§§pop().§§slot[5]);
                              }
                              §§goto(addr292);
                              §§push(§§newactivation());
                           }
                           §§goto(addr293);
                           §§push("which_" + type);
                        }
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           §§push(§§pop().§§slot[2]);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§goto(addr291);
                              §§push("available_");
                           }
                           §§goto(addr318);
                        }
                        §§goto(addr311);
                     }
                     addr121:
                     §§pop().§§slot[4] = §§pop();
                     addr123:
                     §§push(§§newactivation());
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§pop().§§slot[5] = "facialhair";
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                        }
                        §§goto(addr233);
                     }
                     §§push(§§newactivation());
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop().§§slot[2]);
                        if(_loc5_)
                        {
                           §§push("which_" + type);
                           if(_loc5_)
                           {
                              §§pop().§§slot[6] = Number(§§pop()[§§pop()]);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(§§newactivation());
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().§§slot[6] + dir);
                                    if(!_loc4_)
                                    {
                                       §§pop().§§slot[7] = §§pop();
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr233);
                                 }
                              }
                              addr202:
                              §§goto(addr318);
                              §§push(§§newactivation());
                           }
                        }
                     }
                     §§goto(addr233);
                  }
               }
               if(§§pop().§§slot[3][0] == "prev")
               {
                  if(_loc5_)
                  {
                     §§push(§§newactivation());
                     §§push(-1);
                     if(_loc5_)
                     {
                        §§goto(addr121);
                     }
                     §§goto(addr311);
                  }
               }
               §§goto(addr123);
            }
            §§push(§§newactivation());
            if(!(_loc4_ && Boolean(this)))
            {
               §§pop().§§slot[2] = this;
               splitter = String(e.currentTarget.name).split("_");
               §§goto(addr77);
            }
            §§goto(addr260);
         }
         §§push(§§pop().§§slot[7]);
         if(_loc5_)
         {
            §§push(§§pop() < 0);
            if(_loc5_ || Boolean(param1))
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        §§goto(addr202);
                     }
                  }
                  §§goto(addr229);
               }
            }
            §§goto(addr273);
         }
         §§goto(addr261);
      }
      
      public function clickChangeAccessory(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var dir:Number;
         var type:String;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[5] = null;
            §§push(§§newactivation());
            if(_loc4_)
            {
               §§pop().§§slot[7] = NaN;
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[1] = param1;
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§pop().§§slot[2] = this;
                     if(_loc4_ || Boolean(param1))
                     {
                        splitter = String(e.currentTarget.name).split("_");
                        §§push(§§newactivation());
                        if(_loc4_ || _loc2_)
                        {
                           addr314:
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§pop().§§slot[4] = §§pop();
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                              }
                              addr312:
                              §§push(0);
                           }
                           §§pop().§§slot[7] = §§pop();
                           if(_loc4_)
                           {
                              addr317:
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 addr325:
                                 §§pop().§§slot[2]["which_" + type] = targetIndex;
                                 addr321:
                                 addr320:
                                 if(_loc5_ && _loc2_)
                                 {
                                 }
                                 try
                                 {
                                    addr338:
                                    tag = ob["available_" + type][targetIndex];
                                 }
                                 catch(err:Error)
                                 {
                                    var _loc3_:* = err;
                                    §§push(§_-5i§);
                                    §§push("Could not get new tag: type = " + type);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + ", index = ");
                                       if(_loc4_ || _loc3_)
                                       {
                                       }
                                       addr391:
                                       §§pop().error(§§pop() + err.message);
                                    }
                                    §§push(§§pop() + targetIndex);
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + ". Error: ");
                                    }
                                    §§goto(addr391);
                                 }
                                 §§push(ob);
                                 if(_loc4_)
                                 {
                                    §§pop().workerData[type] = tag;
                                    addr484:
                                    §§push(ob.worker);
                                    if(!_loc5_)
                                    {
                                       §§pop().redoClothing(type);
                                       addr494:
                                       §§push(§§newactivation());
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          §§push(§§pop().§§slot[2]);
                                          if(!_loc5_)
                                          {
                                             addr496:
                                             §§push(§§pop().workerReverse);
                                             if(_loc4_)
                                             {
                                                §§pop().redoClothing(type);
                                                addr501:
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   §§pop().§§slot[2].clip.menu.accd_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop().§§slot[2]);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().didChange = true;
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(§§pop().§§slot[2]);
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr532:
                                                   §§push(§§pop().§§slot[2]);
                                                }
                                                §§push(§§pop().§§slot[2]);
                                                if(_loc4_)
                                                {
                                                   addr534:
                                                   §§push(§§pop().gameObj);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(§§pop().soundManager);
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr536);
                                                      }
                                                      addr535:
                                                      addr536:
                                                      §§push("buttonclick.wav");
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§pop().playSound(§§pop());
                                                         addr531:
                                                         §§goto(addr532);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§pop().playSound(§§pop());
                                                      return;
                                                      §§push("buttonclick.wav");
                                                   }
                                                   §§goto(addr535);
                                                   §§push(§§pop().soundManager);
                                                }
                                             }
                                             §§pop().playAnimation("react2_mirror");
                                             §§push(§§newactivation());
                                             if(!_loc5_)
                                             {
                                                §§goto(addr501);
                                             }
                                             §§goto(addr532);
                                          }
                                          §§goto(addr534);
                                          §§push(§§pop().gameObj);
                                       }
                                       §§goto(addr496);
                                       §§push(§§pop().§§slot[2].workerReverse);
                                    }
                                    §§pop().playAnimation("react2");
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr494);
                                       §§push(§§newactivation());
                                    }
                                    §§goto(addr531);
                                 }
                                 §§goto(addr484);
                                 §§push(§§pop().worker);
                              }
                           }
                           §§push(§§newactivation());
                        }
                        §§pop().§§slot[8] = "";
                        §§goto(addr338);
                     }
                     addr140:
                     §§push(§§newactivation());
                     §§push(§§newactivation());
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop().§§slot[6]);
                        if(_loc4_ || _loc3_)
                        {
                           addr160:
                           §§push(§§pop() + dir);
                           if(_loc4_ || _loc2_)
                           {
                              §§pop().§§slot[7] = §§pop();
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§push(§§pop().§§slot[7]);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop() < 0);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr280:
                                       §§push(§§pop());
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          addr233:
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§pop();
                                                §§push(§§newactivation());
                                             }
                                          }
                                          §§goto(addr317);
                                          §§push(!!§§pop() ? (§§push(§§newactivation()), §§newactivation()) : targetIndex);
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr288:
                                             §§pop();
                                             if(_loc4_)
                                             {
                                                §§push(ob);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr303:
                                                   §§push("available_" + type);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop()[§§pop()].length > 0);
                                                   }
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr317);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          addr311:
                                          §§goto(addr312);
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr317);
                                    }
                                    addr279:
                                    §§goto(addr280);
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() >= ob["available_" + type].length);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§goto(addr279);
                                 }
                                 §§goto(addr280);
                              }
                           }
                           addr252:
                           §§pop().§§slot[7] = §§pop();
                           addr251:
                           §§goto(addr317);
                        }
                        §§goto(addr314);
                     }
                     §§push(§§pop().§§slot[2]["available_" + type].length - 1);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§goto(addr251);
                     }
                     §§goto(addr252);
                  }
                  §§push(§§pop().§§slot[2]);
                  if(_loc4_ || _loc2_)
                  {
                     §§push("available_");
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§push(§§pop().§§slot[5]);
                           if(_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§push(§§pop()[§§pop()].length > 0);
                                 if(_loc4_)
                                 {
                                    §§goto(addr233);
                                 }
                                 §§goto(addr288);
                              }
                              §§goto(addr325);
                           }
                        }
                     }
                     §§goto(addr303);
                  }
                  §§goto(addr325);
               }
            }
            addr86:
            §§push(-1);
            if(_loc4_)
            {
               §§pop().§§slot[4] = §§pop();
               addr91:
               §§push(§§newactivation());
               if(_loc4_ || Boolean(param1))
               {
                  addr99:
                  §§pop().§§slot[5] = "accd";
                  if(_loc4_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§push(§§newactivation());
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop().§§slot[2]);
                           if(_loc4_)
                           {
                              §§push("which_" + type);
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()[§§pop()]));
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop().§§slot[6] = §§pop();
                                    if(_loc4_)
                                    {
                                       §§goto(addr140);
                                    }
                                    §§goto(addr311);
                                 }
                                 §§goto(addr160);
                              }
                           }
                        }
                        §§goto(addr140);
                     }
                  }
                  §§goto(addr317);
               }
               §§goto(addr320);
            }
            §§goto(addr314);
         }
         if(§§pop().§§slot[3][0] == "prev")
         {
            §§push(§§newactivation());
            if(!(_loc5_ && _loc2_))
            {
               §§goto(addr86);
            }
            §§goto(addr99);
         }
         §§goto(addr91);
      }
      
      public function clickChangeClothing(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:CharacterEditorScreen;
         var splitter:Array;
         var type:String;
         var dir:Number;
         var currentIndex:Number;
         var targetIndex:Number;
         var tag:String;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(_loc5_ || Boolean(this))
         {
            §§pop().§§slot[4] = §§pop();
            addr105:
            if(!_loc4_)
            {
               §§push(§§newactivation());
               if(_loc5_ || Boolean(this))
               {
                  §§pop().§§slot[7] = NaN;
                  §§push(§§newactivation());
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§pop().§§slot[1] = param1;
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        §§pop().§§slot[2] = this;
                        if(!(_loc4_ && _loc2_))
                        {
                           addr274:
                           addr280:
                           addr276:
                           addr275:
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              §§pop().§§slot[3] = String(e.currentTarget.name).split("_");
                              §§push(§§newactivation());
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(String(e.currentTarget.parent.name).split("_")[0]);
                              }
                           }
                           §§push(ob["available_" + type].length - 1);
                           if(!_loc4_)
                           {
                              addr286:
                              §§pop().§§slot[7] = §§pop();
                              if(_loc5_)
                              {
                              }
                           }
                           else
                           {
                              addr359:
                              §§pop().§§slot[7] = §§pop();
                           }
                           addr360:
                           §§push(§§newactivation());
                        }
                        §§goto(addr360);
                     }
                     addr229:
                     §§push(§§pop().§§slot[2]);
                     if(_loc5_)
                     {
                        addr344:
                        §§push("available_");
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc3_))
                           {
                              addr346:
                              §§push(§§pop().§§slot[4]);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    §§push(§§pop()[§§pop()].length > 0);
                                    if(!_loc4_)
                                    {
                                       addr265:
                                       if(§§pop())
                                       {
                                          addr266:
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§goto(addr274);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                          if(_loc5_ || Boolean(this))
                                          {
                                             addr299:
                                             §§push(§§pop().§§slot[7] >= ob["available_" + type].length);
                                             if(_loc5_ || _loc3_)
                                             {
                                             }
                                             addr353:
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr357:
                                                   §§goto(addr359);
                                                   §§push(§§newactivation());
                                                   §§push(0);
                                                }
                                                try
                                                {
                                                   addr379:
                                                   tag = ob["available_" + type][targetIndex];
                                                   if(_loc5_ || Boolean(param1))
                                                   {
                                                      addr446:
                                                      §§push(ob.workerData);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§pop()[type] = tag;
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop().§§slot[2].worker);
                                                            if(_loc5_ || Boolean(param1))
                                                            {
                                                               §§pop().redoClothing(type);
                                                               §§push(§§newactivation());
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop().§§slot[2].workerReverse);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().redoClothing(type);
                                                                     §§push(§§newactivation());
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().§§slot[2].clip.clothes[type + "_panel"].amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
                                                                        ob.didChange = true;
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc4_ && Boolean(param1)))
                                                                           {
                                                                              §§push(§§pop().§§slot[4]);
                                                                              §§push("hair");
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(§§pop() == §§pop()))
                                                                                 {
                                                                                    addr861:
                                                                                    addr860:
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr814:
                                                                                          §§push(§§pop().§§slot[4]);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() == "accd");
                                                                                             if(_loc4_)
                                                                                             {
                                                                                             }
                                                                                             addr974:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§pop();
                                                                                                addr981:
                                                                                                §§push(ob.workerData.shoes == "shoes1");
                                                                                                if(!(_loc4_ && Boolean(param1)))
                                                                                                {
                                                                                                   addr990:
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr992:
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr995:
                                                                                                   §§push(§§pop().§§slot[2].gameObj);
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      §§pop().challengeManager.recordTagged("changeclothes");
                                                                                                   }
                                                                                                   addr1017:
                                                                                                   §§pop().soundManager.playSound("buttonclick.wav");
                                                                                                }
                                                                                                addr1015:
                                                                                                §§goto(addr1017);
                                                                                                §§push(§§pop().§§slot[2].gameObj);
                                                                                             }
                                                                                             §§goto(addr1015);
                                                                                             §§push(§§newactivation());
                                                                                          }
                                                                                          §§push("hair");
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr869:
                                                                                             addr868:
                                                                                             §§push(§§pop().§§slot[2].workerData);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop().shirt);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() != "shirt_00_female");
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr887:
                                                                                                   §§pop();
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(ob.workerData);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr981);
                                                                                             }
                                                                                             §§push(§§pop().pants);
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                addr901:
                                                                                                §§push(§§pop() == "pants_01_male");
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr906:
                                                                                                   §§push(!§§pop());
                                                                                                   §§push(!§§pop());
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr917:
                                                                                                            §§pop();
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc5_ || Boolean(param1))
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr981);
                                                                                                            }
                                                                                                            §§goto(addr992);
                                                                                                         }
                                                                                                         §§goto(addr990);
                                                                                                      }
                                                                                                      addr948:
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc5_ || Boolean(this))
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr974);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr974);
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             §§goto(addr981);
                                                                                          }
                                                                                          §§push(§§pop().§§slot[2].workerData);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             addr945:
                                                                                             §§push(§§pop().pants != "pants_01_female");
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§goto(addr948);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§pop();
                                                                                       addr958:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr961:
                                                                                          §§push(§§pop().§§slot[2].workerData);
                                                                                       }
                                                                                       §§goto(addr992);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr887);
                                                                                    }
                                                                                    §§goto(addr906);
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§pop();
                                                                                          addr733:
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() == "acca");
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr945);
                                                                                                }
                                                                                                §§goto(addr901);
                                                                                             }
                                                                                             addr651:
                                                                                             §§push(§§pop().§§slot[2].worker);
                                                                                          }
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr995);
                                                                                       }
                                                                                       §§goto(addr917);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc4_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop().§§slot[2].worker);
                                                                                             if(_loc5_ || Boolean(param1))
                                                                                             {
                                                                                                §§pop().playAnimation("react2");
                                                                                                §§push(ob);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop().workerReverse);
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§pop().playAnimation("react2_mirror");
                                                                                                   }
                                                                                                   try
                                                                                                   {
                                                                                                      addr669:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   catch(err:Error)
                                                                                                   {
                                                                                                      var _loc3_:* = err;
                                                                                                      §_-5i§.error("Error regenerating thumb: " + err.message);
                                                                                                      addr812:
                                                                                                      §§goto(addr814);
                                                                                                   }
                                                                                                }
                                                                                                addr675:
                                                                                                §§push("thumb_");
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            if(§§pop()[§§pop()] != null)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc4_ && _loc2_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr776:
                                                                                                               §§pop().§§slot[2].clip.clothes[type + "_panel"].addChild(ob["thumb_" + type]);
                                                                                                            }
                                                                                                            addr753:
                                                                                                            §§push(ob);
                                                                                                            if(!(_loc4_ && Boolean(param1)))
                                                                                                            {
                                                                                                               addr763:
                                                                                                               §§push("thumb_");
                                                                                                               §§push(§§newactivation());
                                                                                                            }
                                                                                                            §§goto(addr776);
                                                                                                         }
                                                                                                         addr723:
                                                                                                         §§pop()[§§pop()].parent.removeChild(ob["thumb_" + type]);
                                                                                                         §§goto(addr733);
                                                                                                      }
                                                                                                      addr746:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§pop()[§§pop()] = null;
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr753);
                                                                                                         }
                                                                                                         §§goto(addr981);
                                                                                                      }
                                                                                                      addr766:
                                                                                                      §§pop()[§§pop()] = ob.generateClothingThumb(tag);
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr776);
                                                                                                      }
                                                                                                      §§goto(addr961);
                                                                                                   }
                                                                                                   addr765:
                                                                                                   §§goto(addr766);
                                                                                                   §§push(§§pop() + §§pop().§§slot[4]);
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr743:
                                                                                                   §§push(§§pop().§§slot[4]);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr746);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr765);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr655:
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop().§§slot[2]);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop().workerReverse);
                                                                                          }
                                                                                          §§goto(addr869);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                       {
                                                                                          §§goto(addr651);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop().§§slot[2]);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr675);
                                                                                    }
                                                                                    §§goto(addr961);
                                                                                 }
                                                                                 §§goto(addr861);
                                                                              }
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr992);
                                                                              }
                                                                              addr849:
                                                                              §§push(§§newactivation());
                                                                              if(_loc4_)
                                                                              {
                                                                              }
                                                                              §§goto(addr868);
                                                                           }
                                                                           §§push(§§pop().§§slot[2]);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push("thumb_");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop().§§slot[4]);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr723);
                                                                                       }
                                                                                       §§goto(addr746);
                                                                                    }
                                                                                    §§goto(addr765);
                                                                                 }
                                                                                 §§goto(addr743);
                                                                              }
                                                                              §§goto(addr763);
                                                                           }
                                                                           §§goto(addr869);
                                                                        }
                                                                        §§goto(addr812);
                                                                     }
                                                                     §§pop().§§slot[2].clip.menu.hair_panel.amount_txt.text = String(targetIndex + 1 + "/" + ob["available_" + type].length);
                                                                     if(_loc5_ || Boolean(param1))
                                                                     {
                                                                        §§goto(addr849);
                                                                     }
                                                                     §§goto(addr958);
                                                                  }
                                                                  §§pop().playAnimation("react1_mirror");
                                                                  §§goto(addr669);
                                                               }
                                                               §§push(§§pop().§§slot[2]);
                                                               §§push("thumb_");
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr675);
                                                               }
                                                               §§goto(addr763);
                                                            }
                                                            §§pop().playAnimation("react1");
                                                            §§goto(addr655);
                                                         }
                                                         §§push(§§pop().§§slot[2].workerData.shirt != "shirt_00_male");
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr860);
                                                         }
                                                         §§goto(addr990);
                                                      }
                                                      §§push(§§pop().jacket);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         §§goto(addr901);
                                                         §§push(§§pop() == "");
                                                      }
                                                      §§goto(addr981);
                                                   }
                                                   §§goto(addr669);
                                                }
                                                catch(err:Error)
                                                {
                                                   _loc3_ = err;
                                                   §§push(§_-5i§);
                                                   §§push("Could not get new tag: type = " + type);
                                                   if(_loc5_ || Boolean(param1))
                                                   {
                                                      §§push(§§pop() + ", index = ");
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() + targetIndex);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                         }
                                                      }
                                                      §§push(§§pop() + ". Error: ");
                                                   }
                                                   §§pop().error(§§pop() + err.message);
                                                   §§goto(addr446);
                                                }
                                                return;
                                             }
                                             §§goto(addr274);
                                          }
                                       }
                                    }
                                    addr316:
                                    if(§§pop())
                                    {
                                       if(_loc5_ || Boolean(this))
                                       {
                                          §§pop();
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(§§pop().§§slot[2]);
                                                if(_loc4_)
                                                {
                                                }
                                                addr366:
                                                §§pop()["which_" + type] = targetIndex;
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§push(§§newactivation());
                                                }
                                                §§goto(addr379);
                                             }
                                          }
                                          §§goto(addr357);
                                       }
                                    }
                                    §§goto(addr353);
                                 }
                                 addr349:
                                 §§goto(addr353);
                                 §§push(§§pop()[§§pop()].length > 0);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 §§goto(addr349);
                              }
                              §§goto(addr366);
                           }
                           addr345:
                           §§goto(addr346);
                           §§push(§§pop().§§slot[4]);
                        }
                        §§goto(addr345);
                        §§push(§§newactivation());
                     }
                     §§goto(addr344);
                     §§push("available_");
                  }
                  §§pop().§§slot[8] = "";
                  §§goto(addr379);
               }
               §§goto(addr366);
               §§push(§§pop().§§slot[2]);
            }
            §§push(§§newactivation());
            §§push(1);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  §§pop().§§slot[5] = §§pop();
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     if(§§pop().§§slot[3][0] == "prev")
                     {
                        §§push(§§newactivation());
                        §§push(-1);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                        §§goto(addr357);
                     }
                     addr146:
                     §§push(§§newactivation());
                     if(_loc4_ && Boolean(param1))
                     {
                     }
                     §§goto(addr274);
                  }
                  §§push(§§newactivation());
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop().§§slot[2]);
                     if(_loc5_ || Boolean(param1))
                     {
                        §§push("which_" + type);
                        if(_loc5_)
                        {
                           §§pop().§§slot[6] = Number(§§pop()[§§pop()]);
                           §§push(§§newactivation());
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              §§push(§§pop().§§slot[6] + dir);
                              if(_loc5_ || _loc2_)
                              {
                              }
                              §§goto(addr359);
                           }
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr276);
                  }
                  §§goto(addr275);
               }
               §§pop().§§slot[7] = §§pop();
               if(_loc5_ || Boolean(this))
               {
                  addr203:
                  §§push(targetIndex);
                  if(_loc5_)
                  {
                     §§push(§§pop() < 0);
                     if(_loc5_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(_loc5_ || Boolean(param1))
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                              }
                              §§goto(addr353);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr316);
                     }
                     §§pop();
                     §§goto(addr229);
                     §§push(§§newactivation());
                  }
                  §§goto(addr299);
               }
               §§goto(addr266);
            }
            §§push(§§pop());
            if(!(_loc4_ && _loc3_))
            {
               §§pop().§§slot[5] = §§pop();
               if(_loc5_)
               {
                  §§goto(addr146);
               }
               §§goto(addr203);
            }
            §§goto(addr286);
         }
         §§pop().§§slot[4] = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            §§goto(addr105);
         }
         §§goto(addr203);
      }
      
      public function clickBack(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:CharacterEditorScreen = this;
         if(!_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!_loc3_)
            {
               addr55:
               §§push(§§pop().§_-4P§);
               if(_loc4_)
               {
                  §§push(§§pop().api);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§pop().§_-76§("SlotSelect");
                     if(_loc4_)
                     {
                        §§push(_loc2_.gameObj);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                        addr74:
                        §§pop().soundManager.playSound("buttonclick.wav");
                     }
                  }
                  addr56:
                  §§pop().§_-2K§("CharacterEditor");
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr74);
                     §§push(_loc2_.gameObj);
                  }
               }
               §§goto(addr56);
               §§push(§§pop().api);
            }
            §§goto(addr55);
            §§push(§§pop().§_-4P§);
         }
      }
      
      public function clickContinue(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:CharacterEditorScreen = this;
         if(!_loc4_)
         {
            §§push(_loc2_.gameObj);
            if(!_loc4_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§push(_loc2_.endaction);
                  if(_loc5_)
                  {
                     §§goto(addr188);
                  }
                  §§push(§§pop() == "");
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop());
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        if(!§§pop())
                        {
                           if(_loc4_)
                           {
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr110);
                  }
                  §§pop();
                  §§push(_loc3_);
                  if(_loc5_ || Boolean(this))
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr123);
               }
            }
            §§pop().userData.createNewSlot(_loc2_.params.selectedSlot,_loc3_,"custom");
            §§goto(addr166);
         }
         _loc2_.clip.fader.gotoAndPlay("quickfadeout");
         addr188:
         if(§§pop() == "none")
         {
            addr123:
            §§push(_loc2_.clip.menu.custom_input.input_txt.text);
            if(_loc5_ || Boolean(_loc3_))
            {
               _loc3_ = §§pop();
               §§push(_loc3_);
               if(_loc4_ && Boolean(this))
               {
               }
               addr101:
               §§push(§§pop() == " ");
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr110:
                  if(!§§pop())
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        addr119:
                        §§pop();
                        addr133:
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                        }
                        _loc2_.clip.menu.custom_input.noname.gotoAndPlay(2);
                        _loc2_.clip.menu.custom_input.input_txt.setFocus();
                        if(!(_loc5_ || Boolean(param1)))
                        {
                           addr166:
                           _loc2_.clip.mouseEnabled = false;
                           if(!_loc4_)
                           {
                              _loc2_.clip.mouseChildren = false;
                           }
                        }
                     }
                  }
               }
               addr125:
               if(§§pop())
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr133);
                  }
                  §§goto(addr166);
               }
               else
               {
                  _loc2_.endaction = "continue";
               }
               §§push(_loc2_.gameObj);
            }
            §§goto(addr125);
            §§push(§§pop() == "  ");
         }
      }
      
      public function destroy() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:CharacterEditorScreen = this;
         if(!_loc5_)
         {
            _loc1_.clip.stats.bonus.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBonusFacebook);
            if(_loc4_ || Boolean(this))
            {
               _loc1_.clip.stats.bonus.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBonusTwitter);
               if(_loc4_ || _loc3_)
               {
               }
            }
            if(_loc1_.photoBitmap != null)
            {
               if(_loc5_)
               {
               }
               try
               {
                  addr65:
                  _loc1_.clip.poloroid.holder.removeChild(_loc1_.photoBitmap);
                  if(_loc4_ || _loc3_)
                  {
                     addr91:
                     _loc1_.photoBitmap = null;
                     if(_loc4_ || Boolean(this))
                     {
                     }
                  }
                  addr571:
                  _loc1_.container.removeChild(_loc1_.clip);
                  _loc1_.clip = null;
               }
               catch(err:Error)
               {
                  var _loc3_:* = err;
                  §§goto(addr91);
               }
               addr579:
               return;
            }
            if(_loc1_.backdropBitmap != null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  _loc1_.backdropBitmap.bitmapData.dispose();
                  try
                  {
                     _loc1_.clip.bgholder.removeChild(_loc1_.backdropBitmap);
                  }
                  catch(err:Error)
                  {
                     _loc3_ = err;
                  }
                  _loc1_.backdropBitmap = null;
               }
               addr229:
               §§push(_loc2_);
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr258:
                  §§push(§§pop() == "  ");
                  if(_loc4_)
                  {
                     addr243:
                     §§push(!§§pop() && §§pop().userData);
                  }
                  if(§§pop())
                  {
                     §§push(_loc1_.gameObj);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§push(§§pop().userData);
                        if(_loc4_)
                        {
                           §§pop().myName = _loc2_;
                           if(_loc4_)
                           {
                              §§push(_loc1_.didChange);
                              if(!_loc5_)
                              {
                                 addr279:
                                 if(!§§pop())
                                 {
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§goto(addr294);
                                    }
                                    §§goto(addr417);
                                 }
                              }
                              §§goto(addr329);
                           }
                           §§goto(addr403);
                        }
                        §§goto(addr333);
                     }
                     §§goto(addr303);
                  }
                  §§goto(addr312);
               }
               §§push(§§pop() == "   ");
               if(!_loc5_)
               {
                  §§goto(addr258);
                  §§push(!§§pop());
               }
               §§goto(addr279);
            }
            if(_loc1_.mirrorBitmap != null)
            {
               _loc1_.mirrorBitmap.bitmapData.dispose();
               try
               {
                  _loc1_.clip.mirrorbgholder.removeChild(_loc1_.mirrorBitmap);
               }
               catch(err:Error)
               {
                  _loc3_ = err;
               }
            }
            §§push(_loc1_.firsttime);
            if(!(_loc5_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(_loc1_.clip.changeNameMC.input_txt.text);
                     if(!_loc5_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              §§push(§§pop() != "");
                              §§push(§§pop() != "");
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                 }
                                 addr222:
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr243);
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    §§goto(addr229);
                                 }
                                 §§goto(addr433);
                              }
                           }
                        }
                        §§goto(addr417);
                     }
                     §§goto(addr258);
                  }
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() == " ");
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        §§push(!§§pop());
                        if(!(_loc5_ && Boolean(_loc1_)))
                        {
                           §§goto(addr222);
                        }
                        §§goto(addr312);
                     }
                  }
                  §§goto(addr258);
               }
               §§goto(addr312);
            }
            §§goto(addr243);
         }
         _loc1_.photoBitmap.bitmapData.dispose();
         §§goto(addr65);
      }
      
      public function clickBonusFacebook(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:String = "http://www.facebook.com/pages/Flipline-Studios/121045844606187";
         if(_loc3_.didClickFacebook == false)
         {
            §§push(_loc2_.gameObj);
            if(!_loc6_)
            {
               §§pop().§_-4P§.api.§_-DI§(_loc4_,"BonusTipsFacebook","BonusLinks");
               if(_loc5_ || Boolean(_loc2_))
               {
                  _loc3_.didClickFacebook = true;
                  §§push(_loc3_);
                  §§push(_loc3_.totalTips);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 5000);
                  }
                  §§pop().totalTips = §§pop();
               }
               _loc3_.saveData();
               if(_loc5_ || Boolean(this))
               {
                  _loc2_.clip.stats.tipstotal_txt.text = _loc3_.getTipsTotal(true,true);
                  _loc2_.clip.stats.bonus.facebook_btn.visible = false;
                  if(_loc6_)
                  {
                  }
               }
               §§push(_loc2_.gameObj);
            }
            §§pop().soundManager.playSound("buttonclick.wav");
         }
      }
      
      public function clickBonusTwitter(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:String = "http://www.twitter.com/FliplineStudios";
         if(_loc5_ || Boolean(this))
         {
            if(_loc3_.didClickTwitter == false)
            {
               if(!_loc6_)
               {
                  §§push(_loc2_.gameObj);
                  if(!_loc6_)
                  {
                     §§pop().§_-4P§.api.§_-DI§(_loc4_,"BonusTipsTwitter","BonusLinks");
                     _loc3_.didClickTwitter = true;
                     §§push(_loc3_);
                     §§push(_loc3_.totalTips);
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§push(§§pop() + 5000);
                     }
                     §§pop().totalTips = §§pop();
                  }
                  addr96:
                  §§pop().soundManager.playSound("buttonclick.wav");
               }
               _loc3_.saveData();
            }
            return;
         }
         _loc2_.clip.stats.tipstotal_txt.text = _loc3_.getTipsTotal(true,true);
         _loc2_.clip.stats.bonus.twitter_btn.visible = false;
         §§goto(addr96);
         §§push(_loc2_.gameObj);
      }
      
      public function setupStats() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc1_:CharacterEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc12_)
         {
            _loc1_.clip.stats.xpbar.bar.mask = _loc1_.clip.stats.xpbar.masker;
            if(_loc12_)
            {
               _loc1_.clip.stats.xpbar.bar.x = _loc2_.getCurrentPointPercentage() * 384;
               if(!(_loc11_ && Boolean(this)))
               {
                  if(_loc1_.clip.stats.xpbar.bar.x == 384)
                  {
                     if(_loc11_)
                     {
                     }
                  }
               }
            }
            _loc1_.clip.stats.xpbar.bar.x = 408;
         }
         §§push(_loc2_.getDay());
         if(_loc12_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc11_)
         {
            §§push(§§pop() - 1);
            if(!(_loc11_ && Boolean(_loc1_)))
            {
               §§push(§§pop() % 7);
               if(_loc11_)
               {
               }
            }
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(!_loc11_)
         {
            _loc3_ = 0;
         }
         while(_loc3_ <= 6)
         {
            _loc10_ = _loc1_.clip.stats["day" + _loc3_];
            if(_loc12_ || Boolean(_loc3_))
            {
               §§push(_loc3_);
               if(_loc12_)
               {
                  if(§§pop() == 6)
                  {
                     if(_loc12_)
                     {
                        _loc10_.gotoAndStop(2);
                        if(!(_loc11_ && Boolean(_loc1_)))
                        {
                           _loc10_.payday.visible = true;
                        }
                        addr237:
                        _loc10_.day.visible = false;
                        addr241:
                        _loc10_.calx.visible = false;
                     }
                     addr245:
                     _loc3_++;
                     continue;
                  }
                  _loc10_.payday.visible = false;
                  §§push(_loc3_);
                  if(_loc12_ || Boolean(this))
                  {
                  }
                  addr184:
                  §§push(_loc5_);
                  if(!_loc11_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc12_ || Boolean(_loc3_)))
                        {
                           continue;
                        }
                        _loc10_.circle.visible = true;
                        if(_loc12_)
                        {
                           _loc10_.day.visible = true;
                           _loc10_.payday.visible = false;
                        }
                        else
                        {
                           §§goto(addr241);
                        }
                     }
                     else
                     {
                        addr224:
                        §§push(_loc3_);
                        §§push(_loc5_);
                     }
                     §§goto(addr245);
                  }
                  if(§§pop() > §§pop())
                  {
                     _loc10_.circle.visible = false;
                     if(!(_loc11_ && Boolean(_loc1_)))
                     {
                        §§goto(addr237);
                     }
                  }
                  §§goto(addr245);
               }
               §§push(_loc5_);
               if(_loc12_)
               {
                  if(§§pop() < §§pop())
                  {
                     _loc10_.circle.visible = false;
                     if(_loc12_)
                     {
                        _loc10_.day.visible = false;
                     }
                     _loc10_.calx.visible = true;
                     if(!(_loc12_ || Boolean(_loc1_)))
                     {
                        §§goto(addr237);
                     }
                  }
                  else
                  {
                     §§push(_loc3_);
                     if(_loc12_)
                     {
                        §§goto(addr184);
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr245);
               }
               §§goto(addr184);
            }
            _loc10_.calx.visible = false;
            _loc10_.day.day_txt.text = String(_loc4_);
            if(_loc11_)
            {
            }
            §§goto(addr245);
         }
         var _loc6_:Number = _loc2_.getTipsToday();
         §§push(_loc2_.getTodayTotalScore());
         if(_loc12_ || Boolean(_loc3_))
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         if(_loc12_)
         {
            _loc1_.clip.stats.tipstoday_txt.text = _loc2_.getTipsToday(true);
            if(!(_loc11_ && Boolean(_loc2_)))
            {
               _loc1_.clip.stats.tipstotal_txt.text = _loc2_.getTipsTotal(true,true);
               if(!_loc11_)
               {
                  _loc1_.clip.stats.pointstoday_txt.text = §_-9m§.§_-3E§(_loc2_.getTodayTotalScore());
                  _loc1_.clip.stats.pointstotal_txt.text = §_-9m§.§_-3E§(_loc2_.getTotalPoints(true));
               }
            }
            addr339:
            §§push(_loc6_);
            if(_loc12_)
            {
               §§push(0);
               if(!(_loc11_ && Boolean(this)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc12_ || Boolean(_loc2_))
                     {
                        _loc1_.clip.stats.tipstoday_txt.text = "--";
                     }
                     addr382:
                     §§push(_loc2_.getPointsUntilNextRank(true));
                     if(_loc11_ && Boolean(_loc3_))
                     {
                     }
                     addr393:
                     var _loc8_:* = §§pop();
                     §§push(_loc8_);
                     if(!(_loc11_ && Boolean(_loc3_)))
                     {
                        if(§§pop() < 0)
                        {
                           §§goto(addr459);
                        }
                        §§goto(addr416);
                     }
                     _loc8_ = §§pop();
                     if(_loc12_ || Boolean(this))
                     {
                        addr416:
                        _loc1_.clip.stats.morepoints_txt.htmlText = "<b>" + §_-9m§.§_-3E§(_loc8_) + " more points to Rank " + (_loc2_.getRank() + 1) + "</b>";
                        if(_loc12_ || Boolean(this))
                        {
                           _loc1_.clip.stats.wage_txt.text = _loc2_.getWeeklyWage(true);
                           if(_loc11_)
                           {
                           }
                           addr459:
                           §§goto(addr452);
                        }
                        addr452:
                        if(!_loc11_)
                        {
                           §§push(0);
                        }
                        _loc1_.clip.stats.payday_txt.text = _loc2_.getPaydayMessage();
                        var _loc9_:Boolean = true;
                        if(_loc1_.inMenu)
                        {
                           _loc9_ = false;
                        }
                        if(_loc9_)
                        {
                           if(!_loc11_)
                           {
                              §§push(_loc2_.didClickFacebook);
                              if(_loc12_ || Boolean(_loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc11_ && Boolean(_loc2_)))
                                    {
                                       _loc1_.clip.stats.bonus.facebook_btn.visible = false;
                                       if(_loc11_)
                                       {
                                       }
                                       addr506:
                                       _loc1_.clip.stats.bonus.twitter_btn.visible = false;
                                       if(!_loc11_)
                                       {
                                          addr515:
                                          §§push(_loc2_.didClickFacebook);
                                          if(_loc12_ || Boolean(this))
                                          {
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc11_)
                                             {
                                                _loc1_.clip.stats.bonus.visible = false;
                                                if(_loc12_ || Boolean(_loc3_))
                                                {
                                                }
                                                addr570:
                                             }
                                             §§goto(addr570);
                                          }
                                          else
                                          {
                                             _loc1_.clip.stats.bonus.visible = true;
                                             if(_loc12_ || Boolean(this))
                                             {
                                                §§goto(addr570);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§push(_loc2_.didClickTwitter);
                                 if(!(_loc11_ && Boolean(_loc2_)))
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr506);
                                    }
                                    §§goto(addr515);
                                 }
                                 addr529:
                                 §§pop();
                              }
                              §§push(§§pop());
                              if(§§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    §§goto(addr529);
                                 }
                              }
                              §§goto(addr515);
                           }
                           §§push(_loc2_.didClickTwitter);
                           if(!(_loc11_ && Boolean(this)))
                           {
                              §§push(§§pop());
                           }
                           §§goto(addr515);
                        }
                        else
                        {
                           _loc1_.clip.stats.bonus.visible = false;
                        }
                        _loc1_.clip.stats.bonus.facebook_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBonusFacebook);
                        _loc1_.clip.stats.bonus.twitter_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBonusTwitter);
                        return;
                     }
                     §§goto(addr459);
                  }
                  §§push(_loc7_);
                  if(_loc12_ || Boolean(_loc2_))
                  {
                     §§push(0);
                  }
                  §§goto(addr393);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc12_)
                  {
                     _loc1_.clip.stats.pointstoday_txt.text = "--";
                  }
               }
            }
            §§goto(addr382);
            §§push(§§pop());
         }
         _loc1_.clip.stats.rank_txt.text = _loc2_.getRank();
         if(!(_loc11_ && Boolean(_loc3_)))
         {
            _loc1_.clip.stats.rank_title.text = _loc2_.getRankTitle();
         }
         §§goto(addr339);
      }
      
      public function generateClothingThumb(param1:String) : MovieClip
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2041
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function createColorTransform(param1:Number) : ColorTransform
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorTransform = new ColorTransform();
         if(!_loc3_)
         {
            _loc2_.redMultiplier = ((param1 & 0xFF0000) >>> 16) / 255;
            if(_loc3_)
            {
            }
            §§goto(addr61);
         }
         _loc2_.greenMultiplier = ((param1 & 0xFF00) >>> 8) / 255;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§goto(addr61);
         }
         addr61:
         _loc2_.blueMultiplier = (param1 & 0xFF) / 255;
         return _loc2_;
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc1_:CharacterEditorScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new nowindowBackdropMC();
         var _loc6_:* = 1;
         var _loc7_:* = 1;
         if(_loc9_ || Boolean(this))
         {
            if(!_loc1_.firsttime)
            {
               if(_loc9_ || Boolean(this))
               {
                  §§push(_loc2_.lobbyWallpaper);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
                     {
                        _loc6_ = §§pop();
                        if(_loc9_)
                        {
                           §§push(_loc2_.lobbyFlooring);
                           if(_loc10_ && Boolean(_loc1_))
                           {
                           }
                           addr75:
                           _loc7_ = §§pop();
                           if(_loc10_)
                           {
                           }
                        }
                     }
                  }
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     §§goto(addr75);
                  }
                  addr80:
                  _loc4_ = §§pop();
               }
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  §§push(10);
                  if(!(_loc10_ && Boolean(_loc3_)))
                  {
                     if(§§pop() <= §§pop())
                     {
                        continue;
                     }
                     §§push(1);
                     if(!_loc10_)
                     {
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           while(true)
                           {
                              break loop0;
                           }
                           §§goto(addr138);
                        }
                        addr135:
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr135);
                     }
                  }
                  break;
                  _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc6_);
                  _loc4_++;
               }
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr138:
                     _loc5_.holder.trim.gotoAndStop(_loc6_);
                     if(!_loc10_)
                     {
                        _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
                        }
                     }
                     var _loc8_:BitmapData = new BitmapData(706,552,true,0);
                     _loc8_.draw(_loc5_,null,null,null,new Rectangle(0,0,706,552));
                     _loc3_ = new Bitmap(_loc8_);
                     _loc5_ = null;
                     return _loc3_;
                  }
                  _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc7_);
                  §§push(_loc4_ + 1);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  §§goto(addr134);
               }
            }
         }
         §§goto(addr80);
         §§push(1);
      }
      
      public function createBackdrop() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:CharacterEditorScreen = this;
         if(_loc5_ || Boolean(this))
         {
            if(_loc1_.backdropBitmap != null)
            {
               if(_loc5_ || Boolean(_loc1_))
               {
               }
               try
               {
                  addr38:
                  _loc1_.clip.bgholder.removeChild(_loc1_.backdropBitmap);
               }
               catch(err:Error)
               {
               }
               _loc1_.backdropBitmap = null;
               if(_loc5_)
               {
               }
               §§goto(addr89);
            }
            _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
            _loc1_.clip.bgholder.addChild(_loc1_.backdropBitmap);
            _loc1_.clip.bgholder.mask = _loc1_.clip.bgmask;
            _loc1_.backdropBitmap.x = -3;
            if(!(_loc6_ && Boolean(this)))
            {
               addr89:
               _loc1_.backdropBitmap.y = -20;
               §§goto(addr93);
            }
            addr93:
            var _loc2_:BitmapData = new BitmapData(100,270,false,4294967295);
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               _loc2_.copyPixels(_loc1_.backdropBitmap.bitmapData,new Rectangle(33,80,100,270),new Point(0,0));
               if(_loc5_ || Boolean(_loc1_))
               {
                  _loc2_.colorTransform(_loc2_.rect,new ColorTransform(1,1,1,1,100,100,100,0));
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc1_.mirrorBitmap = new Bitmap(_loc2_);
                     if(_loc6_)
                     {
                     }
                  }
                  _loc1_.mirrorBitmap.smoothing = true;
               }
            }
            var _loc3_:Matrix = new Matrix();
            if(_loc5_ || Boolean(_loc3_))
            {
               _loc3_.b = 0.25;
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  _loc3_.ty = 25;
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     _loc1_.mirrorBitmap.transform.matrix = _loc3_;
                     if(_loc6_)
                     {
                     }
                  }
                  _loc1_.clip.mirrorbgholder.addChild(_loc1_.mirrorBitmap);
               }
            }
            return;
         }
         _loc1_.backdropBitmap.bitmapData.dispose();
         §§goto(addr38);
      }
      
      public function clickTakePhoto(param1:MouseEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         if(_loc9_)
         {
            if(_loc2_.photoBitmap)
            {
               if(!_loc10_)
               {
                  _loc2_.photoBitmap.bitmapData.dispose();
                  if(_loc9_ || Boolean(_loc2_))
                  {
                  }
                  addr47:
                  _loc2_.photoBitmap = null;
               }
            }
            addr50:
            var _loc3_:MovieClip = new MovieClip();
            var _loc4_:BitmapData = _loc2_.backdropBitmap.bitmapData;
            var _loc5_:Bitmap = new Bitmap(_loc4_);
            if(_loc9_)
            {
               _loc3_.addChild(_loc5_);
               if(_loc9_ || Boolean(param1))
               {
                  _loc5_.x = -300;
               }
            }
            var _loc6_:MovieClip = new MovieClip();
            _loc6_.graphics.beginFill(0,0.25);
            _loc6_.graphics.drawCircle(0,0,55);
            if(!(_loc10_ && Boolean(this)))
            {
               _loc6_.graphics.endFill();
               _loc6_.scaleY = 0.55;
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  _loc6_.x = 144;
                  if(_loc9_)
                  {
                     _loc6_.y = 328;
                     if(_loc9_ || Boolean(param1))
                     {
                     }
                  }
                  addr139:
                  var _loc7_:Worker = new Worker(_loc2_.gameObj,_loc3_,_loc2_.gameObj.workerData,80,60,0.9);
                  var _loc8_:BitmapData = new BitmapData(315,370,false,4278190080);
                  _loc8_.draw(_loc3_,null,null,null,new Rectangle(0,0,315,370),true);
                  if(!(_loc10_ && Boolean(this)))
                  {
                     _loc2_.photoBitmap = new Bitmap(_loc8_,"auto",true);
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        _loc2_.clip.poloroid.holder.addChild(_loc2_.photoBitmap);
                        _loc2_.photoBitmap.scaleX = 0.8;
                        if(!(_loc10_ && Boolean(_loc2_)))
                        {
                           _loc2_.photoBitmap.scaleY = 0.8;
                           if(_loc9_)
                           {
                           }
                           addr222:
                           _loc2_.photoBitmap.y = 0;
                           if(_loc9_)
                           {
                           }
                           addr233:
                           _loc2_.clip.poloroid.flasher.gotoAndPlay(2);
                           if(!(_loc10_ && Boolean(this)))
                           {
                              _loc2_.clip.poloroid.fader.gotoAndPlay(2);
                              _loc2_.gameObj.soundManager.playSound("takephoto.wav");
                           }
                        }
                        return;
                     }
                     _loc2_.clip.poloroid.visible = true;
                     §§goto(addr233);
                  }
                  _loc2_.photoBitmap.x = -14;
                  §§goto(addr222);
               }
            }
            _loc3_.addChild(_loc6_);
            §§goto(addr139);
         }
         _loc2_.photoBitmap.parent.removeChild(_loc2_.photoBitmap);
         if(_loc9_ || Boolean(param1))
         {
            §§goto(addr47);
         }
         §§goto(addr50);
      }
      
      public function clickSavePhoto(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var screen:CharacterEditorScreen;
         var saveBMP:BitmapData;
         var logomc:MovieClip;
         var logobmp:BitmapData;
         var jpgEncoder:§_-3K§;
         var byteArray:ByteArray;
         var fileReference:FileReference;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(_loc5_)
         {
            §§pop().§§slot[6] = §§pop();
            if(!_loc4_)
            {
               §§push(§§newactivation());
               §§push(null);
               if(_loc4_)
               {
               }
               §§goto(addr137);
            }
            addr32:
            §§push(§§newactivation());
            if(_loc5_ || _loc2_)
            {
               §§push(null);
               if(_loc5_ || Boolean(this))
               {
                  §§pop().§§slot[8] = §§pop();
                  e = param1;
                  screen = this;
                  §§push(§§newactivation());
               }
               §§goto(addr137);
            }
            §§pop().§§slot[3] = screen.photoBitmap.bitmapData.clone();
            §§push(§§newactivation());
            if(!_loc4_)
            {
               §§pop().§§slot[4] = new poloroid_logo();
               if(_loc5_ || Boolean(param1))
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§pop().§§slot[5] = new BitmapData(saveBMP.width,saveBMP.height,true,0);
                     logobmp.draw(logomc);
                     if(!_loc4_)
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                        }
                     }
                     addr125:
                     §§push(§§newactivation());
                     if(_loc5_ || _loc3_)
                     {
                        §§pop().§§slot[5].dispose();
                     }
                  }
                  addr136:
                  addr137:
                  §§pop().§§slot[5] = §§pop();
                  try
                  {
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        §§pop().§§slot[6] = new §_-3K§(90);
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc5_ || _loc2_)
                           {
                           }
                           addr169:
                           §§pop().§§slot[8] = new FileReference();
                           if(_loc5_ || Boolean(param1))
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 addr183:
                                 §§pop().§§slot[8].save(byteArray,screen.gameObj.userData.myName + ".jpg");
                                 if(_loc4_ && _loc3_)
                                 {
                                 }
                              }
                              addr230:
                              §§pop().§§slot[2].clip.poloroid.visible = false;
                           }
                           §§goto(addr230);
                           §§push(§§newactivation());
                        }
                     }
                     §§pop().§§slot[7] = jpgEncoder.§_-AI§(saveBMP);
                     if(!_loc4_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§goto(addr169);
                        }
                        §§goto(addr183);
                     }
                  }
                  catch(err:Error)
                  {
                     §_-5i§.error("Error saving photo: " + err.message);
                     §§goto(addr169);
                  }
                  return;
                  §§push(null);
               }
               §§goto(addr136);
               §§push(§§newactivation());
            }
            §§pop().§§slot[3].copyPixels(logobmp,logobmp.rect,new Point(0,0),null,null,true);
            §§goto(addr125);
         }
         §§pop().§§slot[7] = §§pop();
         §§goto(addr32);
      }
      
      public function clickClosePhoto(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CharacterEditorScreen = this;
         if(_loc3_)
         {
            _loc2_.clip.poloroid.visible = false;
         }
      }
   }
}

