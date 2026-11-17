package wingGame.models
{
   import §_-1d§.*;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-CI§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import wingGame.data.*;
   
   public class Worker
   {
      public var gameObj:§_-BY§;
      
      public var workerData:WorkerData;
      
      public var holder:MovieClip;
      
      public var clip:MovieClip;
      
      public var x:Number;
      
      public var y:Number;
      
      public var scale:Number;
      
      public var flipped:Boolean = false;
      
      public var backwards:Boolean = false;
      
      public var skinToneTransform:ColorTransform = null;
      
      public var hairColorTransform:ColorTransform = null;
      
      public var blinkTimer:Number = 0;
      
      public var blinkTimerMax:Number = 100;
      
      public var eyesOffsetY:Number = -23;
      
      public var eyesOffsetX:Number = -18;
      
      public var mouthOffsetY:Number = -9;
      
      public var mouthOffsetX:Number = -26;
      
      public var beardBackwardsX:Number = -13;
      
      public var mouthClip:MovieClip;
      
      public var eyeLeftClip:MovieClip;
      
      public var eyeRightClip:MovieClip;
      
      public var hairClip:MovieClip = null;
      
      public var backHairClip:MovieClip = null;
      
      public var facialHairMouthClip:MovieClip = null;
      
      public var facialHairBaseClip:MovieClip = null;
      
      public var faceAccClip:MovieClip = null;
      
      public var faceAccBackClip:MovieClip = null;
      
      public var lastEyeFrame:Number = 0;
      
      public var lastMouthFrame:Number = 0;
      
      public var lastFrontShoeFrame:Number = 1;
      
      public var lastBackShoeFrame:Number = 1;
      
      public var lastFrontHandFrame:Number = 1;
      
      public var lastBackHandFrame:Number = 1;
      
      public function Worker(param1:§_-BY§, param2:MovieClip, param3:WorkerData, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = false)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || Boolean(param1))
         {
            super();
         }
         var _loc9_:Worker = this;
         _loc9_.gameObj = param1;
         _loc9_.holder = param2;
         _loc9_.workerData = param3;
         if(_loc11_ || Boolean(param1))
         {
            _loc9_.x = param4;
            if(_loc11_ || Boolean(param1))
            {
               _loc9_.y = param5;
               _loc9_.scale = param6;
               _loc9_.flipped = param8;
            }
         }
         _loc9_.backwards = param7;
         if(!(_loc10_ && Boolean(param1)))
         {
            _loc9_.createModel();
         }
      }
      
      public function playAnimation(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Worker = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.clip.gotoAndPlay(param1);
         }
      }
      
      public function createModel() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Worker = this;
         if(_loc2_)
         {
            _loc1_.clip = new workerModel();
            if(_loc1_.workerData.gender == WorkerData.GENDER_MALE)
            {
               _loc1_.clip.body.male_skin.visible = true;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.clip.body.female_skin.visible = false;
               }
               addr145:
               _loc1_.clip.neck.skin.gotoAndStop(1);
               _loc1_.clip.front_hand.skin.gotoAndStop(1);
               _loc1_.clip.back_hand.skin.gotoAndStop(1);
               _loc1_.clip.gotoAndPlay("stand");
               addr167:
               _loc1_.clip.x = _loc1_.x;
               _loc1_.clip.y = _loc1_.y;
               if(!_loc3_)
               {
                  _loc1_.clip.scaleX = _loc1_.scale;
                  if(!_loc3_)
                  {
                     _loc1_.clip.scaleY = _loc1_.scale;
                     addr193:
                     if(_loc1_.flipped)
                     {
                        if(_loc2_)
                        {
                           _loc1_.clip.scaleX *= -1;
                        }
                     }
                     addr204:
                     _loc1_.holder.addChild(_loc1_.clip);
                     _loc1_.clip.eyeFrame = 0;
                     _loc1_.clip.mouthFrame = 0;
                     _loc1_.clip.frontShoeFrame = 1;
                     _loc1_.clip.backShoeFrame = 1;
                     if(_loc2_)
                     {
                        _loc1_.clip.frontHandFrame = 1;
                     }
                     §§goto(addr244);
                  }
                  _loc1_.clip.backHandFrame = 1;
               }
               _loc1_.lastEyeFrame = 0;
               addr238:
               _loc1_.lastMouthFrame = 0;
               §§goto(addr241);
            }
            else
            {
               _loc1_.clip.body.male_skin.visible = false;
               _loc1_.clip.body.female_skin.visible = true;
            }
            _loc1_.updateSkinTone();
            if(!_loc3_)
            {
               _loc1_.updateHairColor();
               if(_loc2_)
               {
                  _loc1_.updateFacialParts();
                  _loc1_.redoClothing(ClothingItem.TYPE_SHIRT);
                  _loc1_.redoClothing(ClothingItem.TYPE_HAIR);
               }
               addr241:
               _loc1_.lastFrontShoeFrame = 1;
               addr244:
               _loc1_.lastBackShoeFrame = 1;
               §§goto(addr247);
            }
            §§goto(addr204);
         }
         _loc1_.redoClothing(ClothingItem.TYPE_SHOES);
         §§push(_loc1_.backwards);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(_loc2_)
               {
                  _loc1_.clip.body.male_skin.gotoAndStop(2);
                  _loc1_.clip.body.female_skin.gotoAndStop(2);
                  _loc1_.clip.neck.skin.gotoAndStop(2);
                  _loc1_.clip.front_hand.skin.gotoAndStop(3);
                  if(!_loc3_)
                  {
                     _loc1_.clip.back_hand.skin.gotoAndStop(4);
                     _loc1_.clip.gotoAndPlay("turnaround");
                  }
                  addr247:
                  _loc1_.lastFrontHandFrame = 1;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.lastBackHandFrame = 1;
                  }
                  _loc1_.gameObj.§_-4P§.api.addEventListener("workerChange",_loc1_.updateModelLook);
                  return;
               }
               §§goto(addr238);
            }
            else
            {
               _loc1_.clip.body.male_skin.gotoAndStop(1);
               _loc1_.clip.body.female_skin.gotoAndStop(1);
               §§goto(addr145);
            }
         }
         §§goto(addr193);
      }
      
      public function animateModel(param1:Event = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Worker = this;
         if(!_loc6_)
         {
            if(_loc2_.clip.eyeFrame != _loc2_.lastEyeFrame)
            {
            }
            addr79:
            if(_loc2_.clip.mouthFrame != _loc2_.lastMouthFrame)
            {
               if(_loc7_)
               {
                  _loc2_.lastMouthFrame = _loc2_.clip.mouthFrame;
                  §§push(_loc2_.lastMouthFrame);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     addr172:
                     §§push(0);
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc6_)
                           {
                              _loc2_.mouthClip.gotoAndStop(_loc2_.gameObj.workerData.mouthDefaultExpression);
                              if(_loc6_ && Boolean(_loc3_))
                              {
                              }
                              addr278:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    if(§§pop() >= _loc2_.clip.front_foot.numChildren)
                                    {
                                       addr311:
                                       §§push(_loc2_.clip.backShoeFrame != _loc2_.lastBackShoeFrame);
                                       §§push(_loc2_.clip.backShoeFrame != _loc2_.lastBackShoeFrame);
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(_loc2_.backwards);
                                             if(!(_loc6_ && Boolean(this)))
                                             {
                                                §§push(!§§pop());
                                                if(_loc7_ || Boolean(this))
                                                {
                                                }
                                                addr435:
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      addr440:
                                                      §§push(_loc2_.blinkTimer);
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         addr449:
                                                         §§push(_loc2_.blinkTimerMax);
                                                         if(_loc7_ || Boolean(param1))
                                                         {
                                                            §§push(3);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() == §§pop() + §§pop());
                                                               if(_loc6_ && Boolean(_loc2_))
                                                               {
                                                               }
                                                               §§goto(addr545);
                                                            }
                                                            addr541:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc7_)
                                                            {
                                                               addr544:
                                                               addr545:
                                                               if(§§pop())
                                                               {
                                                                  _loc2_.eyeLeftClip.gotoAndStop(3);
                                                                  if(_loc7_)
                                                                  {
                                                                     _loc2_.eyeRightClip.gotoAndStop(3);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr585:
                                                                     _loc2_.blinkTimer = 0;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr561:
                                                                  §§push(_loc2_.blinkTimer);
                                                                  §§push(_loc2_.blinkTimerMax + 4);
                                                               }
                                                               return;
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            §§goto(addr561);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            _loc2_.eyeLeftClip.gotoAndStop(_loc2_.workerData.eyeDefaultExpression);
                                                            if(!_loc6_)
                                                            {
                                                               _loc2_.eyeRightClip.gotoAndStop(_loc2_.workerData.eyeDefaultExpression);
                                                               §§goto(addr585);
                                                            }
                                                         }
                                                         §§goto(addr545);
                                                      }
                                                      addr531:
                                                      §§push(_loc2_.blinkTimerMax);
                                                      §§push(2);
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         §§goto(addr541);
                                                      }
                                                      §§goto(addr561);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      addr471:
                                                      _loc2_.eyeLeftClip.gotoAndStop(2);
                                                      if(_loc7_ || Boolean(_loc2_))
                                                      {
                                                         _loc2_.eyeRightClip.gotoAndStop(2);
                                                         if(_loc6_ && Boolean(this))
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr585);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_.blinkTimer);
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         §§push(_loc2_.blinkTimerMax);
                                                         §§push(1);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc7_ || Boolean(_loc2_))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc7_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr545);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr561);
                                                   }
                                                }
                                             }
                                             addr526:
                                             §§pop();
                                             §§push(_loc2_.blinkTimer);
                                             if(_loc7_)
                                             {
                                                §§goto(addr531);
                                             }
                                             §§goto(addr561);
                                          }
                                          if(§§pop())
                                          {
                                             _loc2_.lastBackShoeFrame = _loc2_.clip.backShoeFrame;
                                             §§push(0);
                                             if(_loc7_ || Boolean(_loc2_))
                                             {
                                                break;
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                if(§§pop() >= _loc2_.clip.back_foot.numChildren)
                                                {
                                                   if(_loc6_ && Boolean(_loc2_))
                                                   {
                                                   }
                                                   §§goto(addr545);
                                                }
                                                else
                                                {
                                                   _loc2_.clip.back_foot.getChildAt(_loc3_).gotoAndStop(_loc2_.lastBackShoeFrame);
                                                   _loc3_++;
                                                   if(_loc6_ && Boolean(this))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             §§goto(addr471);
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          §§goto(addr526);
                                       }
                                       §§goto(addr545);
                                    }
                                    else
                                    {
                                       _loc2_.clip.front_foot.getChildAt(_loc3_).gotoAndStop(_loc2_.lastFrontShoeFrame);
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(_loc2_.lastEyeFrame);
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       if(§§pop() == 0)
                                       {
                                          var _loc4_:* = _loc2_;
                                          §§push(_loc4_.blinkTimer);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc5_:* = §§pop();
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                             _loc4_.blinkTimer = _loc5_;
                                          }
                                          if(!_loc6_)
                                          {
                                             §§push(_loc2_.blinkTimer);
                                             if(!_loc6_)
                                             {
                                                §§push(_loc2_.blinkTimerMax);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr435);
                                                   }
                                                   §§goto(addr526);
                                                }
                                                §§goto(addr544);
                                             }
                                             §§goto(addr449);
                                          }
                                          §§goto(addr440);
                                       }
                                       §§goto(addr545);
                                    }
                                    §§goto(addr561);
                                 }
                                 break;
                                 _loc3_++;
                              }
                              _loc3_ = §§pop();
                              §§goto(addr378);
                           }
                           addr198:
                           _loc2_.lastFrontHandFrame = _loc2_.clip.frontHandFrame;
                           _loc2_.clip.front_hand.gotoAndStop(_loc2_.lastFrontHandFrame);
                           if(!_loc6_)
                           {
                              _loc2_.clip.front_hand.skin.gotoAndStop(_loc2_.lastFrontHandFrame);
                              if(!_loc6_)
                              {
                                 addr220:
                                 if(_loc2_.clip.backHandFrame != _loc2_.lastBackHandFrame)
                                 {
                                    _loc2_.lastBackHandFrame = _loc2_.clip.backHandFrame;
                                    if(!_loc6_)
                                    {
                                       _loc2_.clip.back_hand.gotoAndStop(_loc2_.lastBackHandFrame);
                                       _loc2_.clip.back_hand.skin.gotoAndStop(_loc2_.lastBackHandFrame);
                                    }
                                    addr271:
                                    _loc2_.lastFrontShoeFrame = _loc2_.clip.frontShoeFrame;
                                 }
                              }
                              §§push(_loc2_.clip.frontShoeFrame == _loc2_.lastFrontShoeFrame);
                              if(!_loc6_)
                              {
                                 addr268:
                                 §§push(!§§pop());
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(_loc2_.backwards);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr271);
                                    }
                                 }
                                 §§goto(addr311);
                              }
                              §§goto(addr268);
                              §§push(!§§pop());
                           }
                           _loc3_ = 0;
                           §§goto(addr278);
                        }
                        else
                        {
                           _loc2_.mouthClip.gotoAndStop(_loc2_.lastMouthFrame);
                           if(_loc6_ && Boolean(_loc2_))
                           {
                           }
                        }
                        addr165:
                        if(!_loc2_.backwards)
                        {
                           addr169:
                           §§push(_loc2_.lastMouthFrame);
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        _loc2_.facialHairMouthClip.gotoAndStop(_loc2_.workerData.mouthDefaultExpression);
                        if(_loc6_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        _loc2_.facialHairMouthClip.gotoAndStop(_loc2_.lastMouthFrame);
                     }
                  }
                  §§goto(addr172);
                  §§push(0);
               }
               §§push(_loc2_.facialHairMouthClip == null);
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(!§§pop());
                  §§push(!§§pop());
                  if(_loc7_ || Boolean(param1))
                  {
                     if(§§pop())
                     {
                        if(_loc7_)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§goto(addr165);
                           }
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr165);
                  }
               }
               §§goto(addr268);
            }
            if(_loc2_.clip.frontHandFrame != _loc2_.lastFrontHandFrame)
            {
               §§goto(addr198);
            }
            §§goto(addr220);
         }
         _loc2_.lastEyeFrame = _loc2_.clip.eyeFrame;
         §§push(_loc2_.lastEyeFrame);
         if(_loc7_ || Boolean(_loc2_))
         {
            §§push(0);
            if(!_loc6_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc7_)
                  {
                     _loc2_.eyeLeftClip.gotoAndStop(_loc2_.gameObj.workerData.eyeDefaultExpression);
                     if(_loc7_ || Boolean(this))
                     {
                        _loc2_.eyeRightClip.gotoAndStop(_loc2_.gameObj.workerData.eyeDefaultExpression);
                     }
                  }
                  §§goto(addr79);
               }
               else
               {
                  _loc2_.eyeLeftClip.gotoAndStop(_loc2_.lastEyeFrame);
               }
               _loc2_.eyeRightClip.gotoAndStop(_loc2_.lastEyeFrame);
               §§goto(addr79);
            }
         }
         §§goto(addr172);
      }
      
      public function runOwnAnimations() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Worker = this;
         if(!_loc3_)
         {
            if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
            {
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.animateModel);
               }
            }
         }
      }
      
      public function updateModelLook(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Worker = this;
         if(_loc4_)
         {
            if(_loc2_.workerData.gender == WorkerData.GENDER_MALE)
            {
               _loc2_.clip.body.male_skin.visible = true;
               _loc2_.clip.body.female_skin.visible = false;
               if(_loc3_ && Boolean(this))
               {
                  addr65:
                  _loc2_.clip.body.female_skin.visible = true;
               }
            }
            else
            {
               _loc2_.clip.body.male_skin.visible = false;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr65);
               }
            }
            §§goto(addr86);
         }
         _loc2_.updateSkinTone();
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.updateHairColor();
            if(_loc4_)
            {
               _loc2_.updateFacialParts();
            }
            §§goto(addr86);
         }
         addr86:
         _loc2_.redoClothing(ClothingItem.TYPE_SHIRT);
         if(_loc4_)
         {
            _loc2_.redoClothing(ClothingItem.TYPE_HAIR);
            if(_loc4_)
            {
            }
            §§goto(addr109);
         }
         _loc2_.redoClothing(ClothingItem.TYPE_SHOES);
         addr109:
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Worker = this;
         _loc1_.gameObj.§_-4P§.api.removeEventListener("workerChange",_loc1_.updateModelLook);
         if(_loc4_ || _loc2_)
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateModel);
            if(_loc4_)
            {
               _loc1_.removeExistingHeadItems();
               if(_loc4_)
               {
                  _loc1_.removeExistingClothing(_loc1_.clip.front_foot);
                  _loc1_.removeExistingClothing(_loc1_.clip.back_foot);
                  _loc1_.removeExistingClothing(_loc1_.clip.body);
                  if(_loc4_ || _loc2_)
                  {
                     _loc1_.removeExistingClothing(_loc1_.clip.front_bicep);
                     if(_loc4_ || _loc3_)
                     {
                     }
                     addr127:
                     if(!_loc1_.holder)
                     {
                     }
                     §§goto(addr159);
                  }
                  try
                  {
                     addr130:
                     _loc1_.holder.removeChild(_loc1_.clip);
                     if(!_loc3_)
                     {
                        addr156:
                        _loc1_.clip = null;
                     }
                  }
                  catch(err:Error)
                  {
                     §§goto(addr156);
                  }
                  addr159:
                  return;
               }
               addr103:
               _loc1_.removeExistingClothing(_loc1_.clip.back_forearm);
               addr108:
               _loc1_.removeExistingClothing(_loc1_.clip.neck);
               _loc1_.removeExistingClothing(_loc1_.clip.back_acca);
               if(!_loc3_)
               {
                  _loc1_.removeExistingClothing(_loc1_.clip.front_acca);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr130);
               }
               §§goto(addr127);
            }
            _loc1_.removeExistingClothing(_loc1_.clip.front_forearm);
            if(_loc3_ && _loc2_)
            {
            }
            §§goto(addr108);
         }
         _loc1_.removeExistingClothing(_loc1_.clip.back_bicep);
         §§goto(addr103);
      }
      
      public function updateSkinTone() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Worker = this;
         _loc1_.skinToneTransform = _loc1_.createColorTransform(_loc1_.workerData.skinTone);
         if(_loc3_ || Boolean(this))
         {
            _loc1_.clip.head.inside.skin.transform.colorTransform = _loc1_.skinToneTransform;
         }
         _loc1_.clip.neck.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.front_bicep.skin.transform.colorTransform = _loc1_.skinToneTransform;
         if(!_loc2_)
         {
            _loc1_.clip.back_bicep.skin.transform.colorTransform = _loc1_.skinToneTransform;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.clip.front_forearm.skin.transform.colorTransform = _loc1_.skinToneTransform;
               _loc1_.clip.back_forearm.skin.transform.colorTransform = _loc1_.skinToneTransform;
            }
            §§goto(addr104);
         }
         _loc1_.clip.front_hand.skin.transform.colorTransform = _loc1_.skinToneTransform;
         addr104:
         _loc1_.clip.back_hand.skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.body.male_skin.transform.colorTransform = _loc1_.skinToneTransform;
         _loc1_.clip.body.female_skin.transform.colorTransform = _loc1_.skinToneTransform;
         if(_loc3_ || _loc2_)
         {
            _loc1_.redoClothing(ClothingItem.TYPE_HAIR);
         }
      }
      
      public function updateHairColor() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Worker = this;
         if(_loc4_)
         {
            _loc1_.hairColorTransform = _loc1_.createColorTransform(_loc1_.workerData.hairColor);
            if(_loc4_ || _loc2_)
            {
            }
            try
            {
               addr37:
               _loc1_.hairClip.hair.transform.colorTransform = _loc1_.hairColorTransform;
            }
            catch(err:Error)
            {
            }
            addr56:
            if(_loc1_.backHairClip != null)
            {
               try
               {
                  _loc1_.backHairClip.hair.transform.colorTransform = _loc1_.hairColorTransform;
               }
               catch(err:Error)
               {
               }
            }
            if(_loc1_.facialHairBaseClip != null)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  try
                  {
                     _loc1_.facialHairBaseClip.transform.colorTransform = _loc1_.hairColorTransform;
                  }
                  catch(err:Error)
                  {
                  }
               }
               addr174:
               return;
               addr155:
            }
            if(_loc1_.facialHairMouthClip != null)
            {
               try
               {
                  _loc1_.facialHairMouthClip.transform.colorTransform = _loc1_.hairColorTransform;
               }
               catch(err:Error)
               {
               }
            }
            try
            {
               _loc1_.eyeLeftClip.hair.inside.transform.colorTransform = _loc1_.hairColorTransform;
               if(!_loc3_)
               {
                  _loc1_.eyeRightClip.hair.inside.transform.colorTransform = _loc1_.hairColorTransform;
               }
               §§goto(addr155);
            }
            catch(err:Error)
            {
            }
            §§goto(addr174);
         }
         if(_loc1_.hairClip != null)
         {
            §§goto(addr37);
         }
         §§goto(addr56);
      }
      
      public function updateFacialParts(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:Worker = this;
         var _loc7_:Number = Number(WorkerData.skinToneOptions.indexOf(_loc6_.workerData.skinTone));
         var _loc8_:String = "light";
         var _loc9_:String = "light";
         if(!_loc11_)
         {
            §§push(_loc7_);
            if(_loc10_ || param1)
            {
               §§push(3);
               if(!_loc11_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc11_ && param1))
                  {
                     §§push(§§pop());
                     if(!_loc11_)
                     {
                        if(!§§pop())
                        {
                           if(_loc10_)
                           {
                              §§pop();
                              if(_loc10_)
                              {
                                 §§push(_loc7_);
                                 if(_loc10_ || param1)
                                 {
                                 }
                                 addr87:
                                 §§push(6);
                                 if(_loc11_ && param1)
                                 {
                                 }
                                 addr106:
                                 if(§§pop() == §§pop())
                                 {
                                 }
                                 addr111:
                                 if(_loc6_.workerData.gender == WorkerData.GENDER_FEMALE)
                                 {
                                    _loc9_ = "female";
                                 }
                                 §§push(param1);
                                 if(_loc10_)
                                 {
                                    if(§§pop())
                                    {
                                       addr246:
                                       if(_loc10_)
                                       {
                                          if(_loc6_.eyeLeftClip != null)
                                          {
                                             if(!(_loc11_ && param3))
                                             {
                                                _loc6_.eyeLeftClip.parent.removeChild(_loc6_.eyeLeftClip);
                                                if(_loc11_)
                                                {
                                                }
                                                addr237:
                                                _loc6_.clip.head.inside.addChild(_loc6_.eyeRightClip);
                                             }
                                             _loc6_.eyeLeftClip = null;
                                             if(_loc10_ || param2)
                                             {
                                             }
                                             addr252:
                                             _loc6_.mouthClip.parent.removeChild(_loc6_.mouthClip);
                                             §§goto(addr258);
                                          }
                                          if(_loc6_.eyeRightClip != null)
                                          {
                                             _loc6_.eyeRightClip.parent.removeChild(_loc6_.eyeRightClip);
                                             if(!(_loc11_ && param1))
                                             {
                                                _loc6_.eyeRightClip = null;
                                             }
                                             addr258:
                                             _loc6_.mouthClip = null;
                                             §§goto(addr261);
                                          }
                                          §§push(_loc6_);
                                          §§push(§_-CI§);
                                          §§push("worker_eyes_" + _loc8_);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + "_L_");
                                             if(!(_loc11_ && Boolean(this)))
                                             {
                                                §§push(§§pop() + _loc6_.workerData.eyeStyle);
                                             }
                                          }
                                          §§pop().eyeLeftClip = §§pop().§_-2l§(§§pop());
                                          §§push(_loc6_);
                                          §§push(§_-CI§);
                                          §§push("worker_eyes_" + _loc8_);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + "_R_");
                                             if(_loc10_)
                                             {
                                             }
                                             addr218:
                                             §§pop().eyeRightClip = §§pop().§_-2l§(§§pop());
                                             _loc6_.eyeLeftClip.stop();
                                             if(_loc10_)
                                             {
                                                _loc6_.eyeRightClip.stop();
                                                _loc6_.clip.head.inside.addChild(_loc6_.eyeLeftClip);
                                                if(_loc11_)
                                                {
                                                }
                                                addr261:
                                                §§push(_loc6_);
                                                §§push(§_-CI§);
                                                §§push("worker_mouth_" + _loc9_);
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() + "_");
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() + _loc6_.workerData.mouthStyle);
                                                   }
                                                }
                                                §§pop().mouthClip = §§pop().§_-2l§(§§pop());
                                                _loc6_.mouthClip.stop();
                                                _loc6_.clip.head.inside.addChild(_loc6_.mouthClip);
                                                if(_loc10_)
                                                {
                                                   addr297:
                                                   _loc6_.updateFacialLayout();
                                                }
                                                return;
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr218);
                                          §§push(§§pop() + _loc6_.workerData.eyeStyle);
                                       }
                                       if(_loc6_.mouthClip != null)
                                       {
                                          if(_loc10_)
                                          {
                                          }
                                       }
                                       §§goto(addr252);
                                    }
                                    §§push(param2);
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr246);
                                 }
                                 §§goto(addr297);
                              }
                           }
                        }
                        addr72:
                        §§push(§§pop());
                     }
                     if(!§§pop())
                     {
                        if(!_loc11_)
                        {
                           §§pop();
                           addr99:
                           if(_loc10_ || param1)
                           {
                              §§push(_loc7_);
                              if(!_loc11_)
                              {
                                 §§goto(addr87);
                              }
                              addr105:
                              §§goto(addr106);
                              §§push(4);
                           }
                           _loc8_ = "med";
                           if(!_loc11_)
                           {
                              §§goto(addr111);
                           }
                           §§goto(addr252);
                        }
                     }
                  }
                  addr96:
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§goto(addr99);
                     }
                  }
                  else
                  {
                     §§goto(addr105);
                     §§push(_loc7_);
                  }
                  §§goto(addr87);
               }
               addr95:
               §§goto(addr96);
               §§push(§§pop() == §§pop());
            }
            §§push(5);
            if(_loc10_)
            {
               §§push(§§pop() == §§pop());
               if(_loc10_)
               {
                  §§goto(addr72);
               }
               §§goto(addr96);
            }
            §§goto(addr95);
         }
         _loc8_ = "dark";
         _loc9_ = "dark";
         §§goto(addr87);
      }
      
      public function updateFacialLayout() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Worker = this;
         _loc1_.eyeLeftClip.x = _loc1_.eyesOffsetX - _loc1_.workerData.eyeSpacing;
         _loc1_.eyeLeftClip.y = _loc1_.eyesOffsetY + _loc1_.workerData.eyeHeight;
         _loc1_.eyeRightClip.x = _loc1_.eyesOffsetX + _loc1_.workerData.eyeSpacing;
         _loc1_.eyeRightClip.y = _loc1_.eyesOffsetY + _loc1_.workerData.eyeHeight;
         _loc1_.mouthClip.x = _loc1_.mouthOffsetX;
         _loc1_.mouthClip.y = _loc1_.mouthOffsetY + _loc1_.workerData.mouthHeight;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.clip.head.inside.y = _loc1_.workerData.headHeight;
            _loc1_.clip.head.inside.x = _loc1_.workerData.headForward;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.clip.head.inside.scaleX = _loc1_.workerData.headScale;
               if(_loc3_ || Boolean(_loc1_))
               {
               }
               addr217:
               _loc1_.mouthClip.gotoAndStop(_loc1_.workerData.mouthDefaultExpression);
            }
            _loc1_.clip.head.inside.scaleY = _loc1_.workerData.headScale;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.clip.back_hair.inside.y = _loc1_.workerData.headHeight;
               _loc1_.clip.back_hair.inside.x = _loc1_.workerData.headForward;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.clip.back_hair.inside.scaleX = _loc1_.workerData.headScale;
                  _loc1_.clip.back_hair.inside.scaleY = _loc1_.workerData.headScale;
                  _loc1_.clip.back_beard.inside.y = _loc1_.workerData.headHeight;
                  _loc1_.clip.back_beard.inside.x = _loc1_.workerData.headForward;
               }
            }
            _loc1_.clip.back_beard.inside.scaleX = _loc1_.workerData.headScale;
            _loc1_.clip.back_beard.inside.scaleY = _loc1_.workerData.headScale;
            _loc1_.eyeLeftClip.gotoAndStop(_loc1_.workerData.eyeDefaultExpression);
            _loc1_.eyeRightClip.gotoAndStop(_loc1_.workerData.eyeDefaultExpression);
            §§goto(addr217);
         }
         if(_loc1_.facialHairMouthClip != null)
         {
            §§push(_loc1_.backwards);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  _loc1_.facialHairMouthClip.gotoAndStop(_loc1_.workerData.mouthDefaultExpression);
               }
               else
               {
                  _loc1_.facialHairMouthClip.gotoAndStop(23);
               }
               _loc1_.facialHairMouthClip.x = _loc1_.mouthOffsetX;
               _loc1_.facialHairMouthClip.y = _loc1_.mouthOffsetY + _loc1_.workerData.mouthHeight;
               if(_loc3_ || _loc2_)
               {
               }
               §§goto(addr334);
            }
            §§goto(addr271);
         }
         §§push(_loc1_.faceAccClip != null);
         if(_loc1_.faceAccClip != null)
         {
            addr271:
            §§pop();
            if(_loc3_ || _loc3_)
            {
               addr289:
               if(_loc1_.gameObj.§_-1B§.clothingHasOption(_loc1_.workerData.accd,ClothingItem.OPTIONS_TRACKEYES))
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.faceAccClip.y = _loc1_.workerData.eyeHeight;
                     _loc1_.faceAccBackClip.y = _loc1_.workerData.eyeHeight;
                  }
                  §§goto(addr320);
               }
               if(_loc1_.backwards)
               {
                  _loc1_.eyeLeftClip.visible = false;
                  _loc1_.eyeRightClip.visible = false;
                  addr320:
                  _loc1_.mouthClip.visible = false;
                  _loc1_.clip.head.inside.x = _loc1_.workerData.headForward * -1;
                  §§goto(addr334);
               }
            }
            addr334:
            _loc1_.clip.back_hair.inside.x = _loc1_.workerData.headForward * -1;
            if(!_loc2_)
            {
               _loc1_.clip.back_beard.inside.x = _loc1_.workerData.headForward * -1;
            }
            return;
         }
         §§goto(addr289);
      }
      
      private function createColorTransform(param1:Number) : ColorTransform
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Worker = this;
         var _loc3_:ColorTransform = new ColorTransform();
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.redMultiplier = ((param1 & 0xFF0000) >>> 16) / 255;
            if(_loc5_ || Boolean(param1))
            {
            }
            §§goto(addr74);
         }
         _loc3_.greenMultiplier = ((param1 & 0xFF00) >>> 8) / 255;
         if(_loc5_ || Boolean(param1))
         {
            §§goto(addr74);
         }
         addr74:
         _loc3_.blueMultiplier = (param1 & 0xFF) / 255;
         return _loc3_;
      }
      
      public function redoClothing(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc2_:Worker = this;
         var _loc3_:ClothingData = _loc2_.gameObj.§_-1B§;
         §§push(param1);
         if(_loc5_ || Boolean(_loc2_))
         {
            §§push(ClothingItem.TYPE_FACIALHAIR);
            if(_loc5_ || Boolean(_loc2_))
            {
               §§push(§§pop() == §§pop());
               §§push(§§pop() == §§pop());
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(!_loc6_)
                     {
                        §§push(param1);
                        §§push(ClothingItem.TYPE_HAIR);
                        if(_loc5_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc5_)
                           {
                           }
                           addr467:
                           if(§§pop())
                           {
                              §§push(_loc2_);
                              §§push(§_-CI§);
                              §§push("worker_" + _loc2_.workerData.hair);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + "_back");
                              }
                              §§pop().backHairClip = §§pop().§_-2l§(§§pop(),false,false);
                           }
                           §§goto(addr506);
                        }
                     }
                     addr483:
                     _loc2_.clip.back_hair.inside.addChild(_loc2_.backHairClip);
                     if(!_loc6_)
                     {
                        if(_loc2_.backwards)
                        {
                           if(_loc5_)
                           {
                              _loc2_.backHairClip.gotoAndStop(2);
                           }
                           §§goto(addr1073);
                        }
                        else
                        {
                           _loc2_.backHairClip.gotoAndStop(1);
                        }
                        §§goto(addr506);
                     }
                     §§goto(addr1149);
                  }
                  if(!§§pop())
                  {
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§pop();
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(ClothingItem.TYPE_ACC_FACE);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§push(§§pop() == §§pop());
                           }
                           §§goto(addr963);
                        }
                        §§goto(addr1260);
                     }
                     §§goto(addr905);
                  }
                  if(§§pop())
                  {
                     _loc2_.removeExistingHeadItems();
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        if(_loc2_.workerData.facialhair != "")
                        {
                           if(!_loc6_)
                           {
                              if(_loc3_.clothingHasOption(_loc2_.workerData.facialhair,ClothingItem.OPTIONS_HAS_BASE_FACIALHAIR))
                              {
                                 §§push(_loc2_);
                                 §§push(§_-CI§);
                                 §§push("worker_" + _loc2_.workerData.facialhair);
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    §§push(§§pop() + "_base");
                                 }
                                 §§pop().facialHairBaseClip = §§pop().§_-2l§(§§pop(),false,false);
                                 _loc2_.clip.head.inside.addChild(_loc2_.facialHairBaseClip);
                                 if(_loc2_.backwards)
                                 {
                                    if(_loc5_)
                                    {
                                       _loc2_.facialHairBaseClip.gotoAndStop(2);
                                    }
                                    addr581:
                                    if(_loc2_.backwards)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr588:
                                          _loc4_ = 4;
                                       }
                                       §§goto(addr1073);
                                    }
                                    _loc2_.addClothing(_loc2_.clip.front_foot,_loc2_.workerData.shoes,_loc4_);
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       _loc2_.addClothing(_loc2_.clip.back_foot,_loc2_.workerData.shoes,_loc4_);
                                       addr614:
                                       _loc2_.clip.front_foot.skin.visible = false;
                                       if(_loc5_ || Boolean(this))
                                       {
                                          _loc2_.clip.back_foot.skin.visible = false;
                                          if(!_loc5_)
                                          {
                                             §§goto(addr1395);
                                          }
                                          else
                                          {
                                             addr635:
                                          }
                                          addr506:
                                          _loc2_.updateHairColor();
                                          if(!(_loc5_ || Boolean(_loc3_)))
                                          {
                                             addr663:
                                             _loc2_.removeExistingClothing(_loc2_.clip.back_forearm);
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                _loc2_.removeExistingClothing(_loc2_.clip.neck);
                                                _loc2_.removeExistingClothing(_loc2_.clip.back_acca);
                                                addr1161:
                                                if(_loc5_)
                                                {
                                                   addr687:
                                                   _loc2_.removeExistingClothing(_loc2_.clip.front_acca);
                                                   §§push(_loc2_.workerData);
                                                   if(_loc5_ || Boolean(_loc2_))
                                                   {
                                                      if(§§pop().acca != "")
                                                      {
                                                         if(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_BACKBODY))
                                                         {
                                                            §§push(_loc2_.backwards);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr719:
                                                                  §§push(§§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_ACCSTAYSBACK));
                                                                        if(_loc6_ && Boolean(param1))
                                                                        {
                                                                        }
                                                                        addr1170:
                                                                        §§push(§§pop());
                                                                        §§push(§§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                        addr1353:
                                                                        if(§§pop())
                                                                        {
                                                                           §§pop();
                                                                           addr1355:
                                                                           §§push(!_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HIDE_JACKETNECK));
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           addr1376:
                                                                           if(§§pop())
                                                                           {
                                                                              addr1367:
                                                                              §§pop();
                                                                              §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_JACKETNECK));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.jacket + "_neck");
                                                                           }
                                                                           addr1394:
                                                                           if(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HAS_BICEP))
                                                                           {
                                                                              addr1395:
                                                                              _loc2_.addClothing(_loc2_.clip.front_bicep,_loc2_.workerData.jacket + "_upperarm");
                                                                              _loc2_.addClothing(_loc2_.clip.back_bicep,_loc2_.workerData.jacket + "_upperarm");
                                                                           }
                                                                           addr1415:
                                                                           addr1422:
                                                                           if(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HAS_FOREARM))
                                                                           {
                                                                              if(_loc5_ || Boolean(_loc2_))
                                                                              {
                                                                                 _loc2_.addClothing(_loc2_.clip.front_forearm,_loc2_.workerData.jacket + "_forearm");
                                                                                 addr1440:
                                                                                 _loc2_.addClothing(_loc2_.clip.back_forearm,_loc2_.workerData.jacket + "_forearm");
                                                                                 if(_loc6_)
                                                                                 {
                                                                                 }
                                                                                 _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.acca + "_neck");
                                                                                 addr1513:
                                                                              }
                                                                              addr1465:
                                                                              _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.acca + "_front");
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr1484:
                                                                                 §§push(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_NECK));
                                                                                 if(_loc5_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr1513);
                                                                           }
                                                                           §§push(_loc2_.workerData);
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc6_ && Boolean(this)))
                                                                        {
                                                                           addr747:
                                                                           _loc2_.addClothing(_loc2_.clip.front_acca,_loc2_.workerData.acca + "_back");
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc2_.addClothing(_loc2_.clip.back_acca,_loc2_.workerData.acca + "_back");
                                                                     }
                                                                  }
                                                                  addr1174:
                                                                  if(§§pop())
                                                                  {
                                                                     addr1175:
                                                                     §§pop();
                                                                     §§push(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HIDE_SHIRTFOREARM));
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     §§goto(addr1394);
                                                                  }
                                                                  addr1192:
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_SHIRTFOREARM));
                                                                        if(_loc6_)
                                                                        {
                                                                        }
                                                                        §§goto(addr1484);
                                                                     }
                                                                     §§goto(addr1440);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        _loc2_.addClothing(_loc2_.clip.front_forearm,_loc2_.workerData.shirt + "_forearm");
                                                                        if(!(_loc6_ && Boolean(this)))
                                                                        {
                                                                           _loc2_.addClothing(_loc2_.clip.back_forearm,_loc2_.workerData.shirt + "_forearm");
                                                                           if(_loc6_)
                                                                           {
                                                                           }
                                                                           addr1296:
                                                                           _loc2_.addClothing(_loc2_.clip.back_forearm,_loc2_.workerData.accc);
                                                                        }
                                                                        §§goto(addr1355);
                                                                     }
                                                                     addr1304:
                                                                     §§push(_loc2_.workerData);
                                                                     if(!(_loc6_ && Boolean(param1)))
                                                                     {
                                                                        addr1313:
                                                                        §§push(§§pop().jacket);
                                                                        if(_loc5_ || Boolean(_loc3_))
                                                                        {
                                                                           addr1322:
                                                                           if(§§pop() != "")
                                                                           {
                                                                              addr1323:
                                                                              _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.jacket + "_body");
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr1335:
                                                                                 §§push(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HAS_NECK));
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr1344:
                                                                                    §§push(§§pop());
                                                                                    if(_loc6_ && Boolean(_loc2_))
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1376);
                                                                                 }
                                                                                 §§goto(addr1353);
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr1376);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(_loc2_.workerData);
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr1252:
                                                                     §§push(§§pop().accc);
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        addr1260:
                                                                        §§push("");
                                                                        if(_loc5_)
                                                                        {
                                                                           addr1263:
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 _loc2_.addClothing(_loc2_.clip.front_forearm,_loc2_.workerData.accc);
                                                                                 if(!(_loc6_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§push(_loc3_.clothingHasOption(_loc2_.workerData.accc,ClothingItem.OPTIONS_ONLYONEARM));
                                                                                    if(_loc5_ || Boolean(param1))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§goto(addr1296);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1344);
                                                                                 }
                                                                                 §§goto(addr1415);
                                                                              }
                                                                              §§goto(addr1335);
                                                                           }
                                                                           §§goto(addr1304);
                                                                        }
                                                                     }
                                                                     §§goto(addr1322);
                                                                  }
                                                                  §§goto(addr1313);
                                                               }
                                                               addr1512:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr1440);
                                                               }
                                                            }
                                                            addr1023:
                                                            §§pop();
                                                         }
                                                      }
                                                      §§push(_loc3_.clothingExists(_loc2_.workerData.pants));
                                                      if(!_loc6_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(_loc2_.workerData);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§push(§§pop().gender);
                                                               §§push(WorkerData.GENDER_FEMALE);
                                                               if(_loc6_)
                                                               {
                                                               }
                                                               addr963:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  §§push(_loc2_.workerData);
                                                                  if(_loc5_ || Boolean(this))
                                                                  {
                                                                  }
                                                                  §§goto(addr1313);
                                                               }
                                                               else
                                                               {
                                                                  addr980:
                                                                  _loc2_.workerData.shirt = "shirt_00_male";
                                                               }
                                                               addr982:
                                                               if(_loc2_.workerData.shirt != "")
                                                               {
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.shirt + "_body");
                                                                     addr1012:
                                                                     §§push(_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HAS_NECK));
                                                                     §§push(_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HAS_NECK));
                                                                     if(_loc5_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc6_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§goto(addr1023);
                                                                           }
                                                                           addr1093:
                                                                           §§push(§§pop());
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HIDE_SHIRTBICEP));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc5_ || Boolean(_loc3_))
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr1367);
                                                                                    }
                                                                                    §§goto(addr1512);
                                                                                 }
                                                                                 §§goto(addr1175);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr1128:
                                                                                    §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_SHIRTBICEP));
                                                                                 }
                                                                                 §§goto(addr1484);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    _loc2_.addClothing(_loc2_.clip.front_bicep,_loc2_.workerData.shirt + "_upperarm");
                                                                                    addr1149:
                                                                                    _loc2_.addClothing(_loc2_.clip.back_bicep,_loc2_.workerData.shirt + "_upperarm");
                                                                                    if(_loc6_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1296);
                                                                                 }
                                                                                 §§goto(addr1395);
                                                                              }
                                                                           }
                                                                           §§goto(addr1355);
                                                                        }
                                                                        addr1041:
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ && Boolean(this)))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc5_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(!_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HIDE_SHIRTNECK));
                                                                                 if(_loc5_ || Boolean(this))
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr1376);
                                                                              }
                                                                              §§goto(addr1353);
                                                                           }
                                                                           addr1073:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.shirt + "_neck");
                                                                              }
                                                                              §§goto(addr1376);
                                                                           }
                                                                           §§goto(addr1093);
                                                                           §§push(_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HAS_BICEP));
                                                                        }
                                                                        §§goto(addr1192);
                                                                     }
                                                                     §§goto(addr1174);
                                                                  }
                                                                  §§goto(addr1323);
                                                               }
                                                               §§goto(addr1174);
                                                            }
                                                            §§pop().shirt = "shirt_00_female";
                                                            if(_loc5_)
                                                            {
                                                               addr977:
                                                               §§goto(addr982);
                                                            }
                                                            §§goto(addr1440);
                                                         }
                                                         addr816:
                                                         §§push(_loc2_.workerData);
                                                         if(!_loc6_)
                                                         {
                                                            addr822:
                                                            addr820:
                                                            if(§§pop().pants != "")
                                                            {
                                                               if(!(_loc6_ && Boolean(_loc2_)))
                                                               {
                                                                  _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.pants);
                                                               }
                                                               addr945:
                                                               §§push(_loc3_.clothingExists(_loc2_.workerData.shirt));
                                                               if(!(_loc6_ && Boolean(_loc2_)))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr963);
                                                                     §§push(_loc2_.workerData.gender);
                                                                     §§push(WorkerData.GENDER_FEMALE);
                                                                  }
                                                                  §§goto(addr963);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr1465);
                                                               }
                                                               §§goto(addr1484);
                                                            }
                                                            §§push(_loc2_.workerData);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop().accb);
                                                               §§push("");
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr859:
                                                                        _loc2_.addClothing(_loc2_.clip.body,_loc2_.workerData.accb);
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                        }
                                                                        addr890:
                                                                        §§push(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_NECK));
                                                                        if(!(_loc6_ && Boolean(param1)))
                                                                        {
                                                                           addr905:
                                                                           §§push(§§pop());
                                                                           §§push(§§pop());
                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr1038:
                                                                                    §§push(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_BEHINDCOLLAR));
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§push(!§§pop());
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr1041);
                                                                                    }
                                                                                    §§goto(addr1073);
                                                                                 }
                                                                                 addr1511:
                                                                                 §§goto(addr1512);
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_ || Boolean(_loc2_))
                                                                                 {
                                                                                    _loc2_.addClothing(_loc2_.clip.neck,_loc2_.workerData.acca + "_neck");
                                                                                 }
                                                                                 §§goto(addr1395);
                                                                              }
                                                                              §§goto(addr945);
                                                                           }
                                                                           §§goto(addr1353);
                                                                        }
                                                                        §§goto(addr1012);
                                                                     }
                                                                     §§goto(addr1175);
                                                                  }
                                                                  §§push(_loc2_.workerData.acca);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push("");
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr890);
                                                                           }
                                                                        }
                                                                        §§goto(addr945);
                                                                     }
                                                                     §§goto(addr1263);
                                                                  }
                                                               }
                                                               §§goto(addr1322);
                                                            }
                                                            §§goto(addr1252);
                                                         }
                                                         §§goto(addr980);
                                                      }
                                                      addr1501:
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr1511);
                                                         §§push(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_BEHINDCOLLAR));
                                                      }
                                                   }
                                                   §§push(§§pop().acca);
                                                }
                                                §§push(_loc3_.clothingHasOption(_loc2_.workerData.shirt,ClothingItem.OPTIONS_HAS_FOREARM));
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr1170);
                                                }
                                                §§goto(addr1335);
                                             }
                                             §§push(_loc3_.clothingHasOption(_loc2_.workerData.jacket,ClothingItem.OPTIONS_HIDE_SHIRTNECK));
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§goto(addr1038);
                                             }
                                             §§goto(addr1422);
                                          }
                                          return;
                                       }
                                       §§goto(addr747);
                                       §§goto(addr1501);
                                    }
                                    else
                                    {
                                       §§goto(addr687);
                                    }
                                 }
                                 else
                                 {
                                    _loc2_.facialHairBaseClip.gotoAndStop(1);
                                 }
                              }
                           }
                           addr1457:
                           §§goto(addr945);
                           §§push(_loc3_.clothingHasOption(_loc2_.workerData.acca,ClothingItem.OPTIONS_HAS_FRONTBODY));
                        }
                        _loc2_.updateFacialParts();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push(_loc2_.workerData.facialhair);
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              §§push("");
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(_loc3_.clothingHasOption(_loc2_.workerData.facialhair,ClothingItem.OPTIONS_HAS_MOUTH_FACIALHAIR));
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§push(_loc2_);
                                                §§push(§_-CI§);
                                                §§push("worker_" + _loc2_.workerData.facialhair);
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   §§push(§§pop() + "_mouth");
                                                }
                                                §§pop().facialHairMouthClip = §§pop().§_-2l§(§§pop(),false,false);
                                                if(_loc5_)
                                                {
                                                   §§push(_loc2_.backwards);
                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc2_.facialHairMouthClip.gotoAndStop(23);
                                                         _loc2_.clip.back_beard.inside.addChild(_loc2_.facialHairMouthClip);
                                                         addr256:
                                                         _loc2_.facialHairMouthClip.x = _loc2_.mouthOffsetX;
                                                         _loc2_.facialHairMouthClip.y = _loc2_.mouthOffsetY + _loc2_.workerData.mouthHeight;
                                                         if(_loc5_)
                                                         {
                                                         }
                                                         §§goto(addr483);
                                                      }
                                                      else
                                                      {
                                                         _loc2_.facialHairMouthClip.gotoAndStop(_loc2_.workerData.mouthDefaultExpression);
                                                         _loc2_.clip.head.inside.addChild(_loc2_.facialHairMouthClip);
                                                         if(!(_loc6_ && Boolean(_loc3_)))
                                                         {
                                                            §§goto(addr256);
                                                         }
                                                      }
                                                      §§goto(addr635);
                                                   }
                                                   §§goto(addr905);
                                                }
                                                addr804:
                                                §§goto(addr816);
                                             }
                                             §§goto(addr1296);
                                          }
                                       }
                                       §§goto(addr719);
                                    }
                                    §§goto(addr614);
                                 }
                                 §§push(_loc2_.workerData.accd);
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§push("");
                                    if(_loc5_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          _loc2_.faceAccClip = §_-CI§.§_-2l§("worker_" + _loc2_.workerData.accd,false,false);
                                       }
                                    }
                                    §§goto(addr1322);
                                 }
                                 §§goto(addr963);
                              }
                              addr429:
                              if(§§pop() != §§pop())
                              {
                                 _loc2_.hairClip = §_-CI§.§_-2l§("worker_" + _loc2_.workerData.hair,false,false);
                                 _loc2_.clip.head.inside.addChild(_loc2_.hairClip);
                                 if(_loc2_.backwards)
                                 {
                                    _loc2_.hairClip.gotoAndStop(2);
                                 }
                                 else
                                 {
                                    _loc2_.hairClip.gotoAndStop(1);
                                 }
                                 §§goto(addr467);
                                 §§push(_loc3_.clothingHasOption(_loc2_.workerData.hair,ClothingItem.OPTIONS_HAS_BACK_HAIR));
                              }
                              §§goto(addr467);
                           }
                           addr426:
                           §§push("");
                           if(_loc5_)
                           {
                              §§goto(addr429);
                           }
                           else
                           {
                              addr559:
                              if(§§pop() != §§pop())
                              {
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    §§push(1);
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             §§goto(addr581);
                                          }
                                          §§goto(addr1465);
                                       }
                                    }
                                    §§goto(addr588);
                                 }
                                 else
                                 {
                                    addr641:
                                    _loc2_.removeExistingClothing(_loc2_.clip.front_bicep);
                                    _loc2_.removeExistingClothing(_loc2_.clip.front_forearm);
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.removeExistingClothing(_loc2_.clip.back_bicep);
                                       §§goto(addr663);
                                    }
                                 }
                                 §§goto(addr663);
                              }
                              §§goto(addr635);
                           }
                        }
                        addr423:
                        §§goto(addr426);
                        §§push(_loc2_.workerData.hair);
                     }
                     _loc2_.clip.head.inside.addChild(_loc2_.faceAccClip);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(_loc2_);
                        §§push(§_-CI§);
                        §§push("worker_" + _loc2_.workerData.accd);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + "_back");
                        }
                        §§pop().faceAccBackClip = §§pop().§_-2l§(§§pop(),false,false);
                        if(_loc5_ || Boolean(this))
                        {
                           _loc2_.clip.head.inside.addChildAt(_loc2_.faceAccBackClip,0);
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              if(_loc2_.backwards)
                              {
                                 _loc2_.faceAccClip.gotoAndStop(2);
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    _loc2_.faceAccBackClip.gotoAndStop(2);
                                    addr382:
                                    if(_loc3_.clothingHasOption(_loc2_.workerData.accd,ClothingItem.OPTIONS_TRACKEYES))
                                    {
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          _loc2_.faceAccClip.y = _loc2_.workerData.eyeHeight;
                                          if(_loc6_ && Boolean(this))
                                          {
                                          }
                                          §§goto(addr467);
                                       }
                                       §§goto(addr1012);
                                    }
                                    §§goto(addr423);
                                 }
                                 §§goto(addr1395);
                              }
                              else
                              {
                                 _loc2_.faceAccClip.gotoAndStop(1);
                                 _loc2_.faceAccBackClip.gotoAndStop(1);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    §§goto(addr382);
                                 }
                              }
                              §§goto(addr1161);
                           }
                           _loc2_.faceAccBackClip.y = _loc2_.workerData.eyeHeight;
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§goto(addr423);
                           }
                           §§goto(addr1073);
                        }
                        §§goto(addr859);
                     }
                     §§goto(addr977);
                  }
                  else
                  {
                     §§push(param1);
                     §§push(ClothingItem.TYPE_SHOES);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        if(§§pop() == §§pop())
                        {
                           _loc2_.removeExistingClothing(_loc2_.clip.front_foot);
                           if(!_loc6_)
                           {
                              _loc2_.removeExistingClothing(_loc2_.clip.back_foot);
                              §§push(_loc2_.workerData);
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§push(§§pop().shoes);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push("");
                                    if(!_loc6_)
                                    {
                                       §§goto(addr559);
                                    }
                                    §§goto(addr822);
                                 }
                                 §§goto(addr1260);
                              }
                              §§goto(addr820);
                           }
                           §§goto(addr1149);
                        }
                        else
                        {
                           _loc2_.removeExistingClothing(_loc2_.clip.body);
                        }
                        §§goto(addr641);
                     }
                  }
                  §§goto(addr963);
               }
               if(§§pop())
               {
                  if(_loc5_ || Boolean(this))
                  {
                     §§goto(addr1501);
                  }
               }
               §§goto(addr1512);
            }
            if(§§pop() == §§pop())
            {
               _loc2_.workerData.pants = "pants_01_female";
               if(!_loc6_)
               {
                  §§goto(addr804);
               }
               §§goto(addr963);
            }
            else
            {
               _loc2_.workerData.pants = "pants_01_male";
               if(_loc5_ || Boolean(this))
               {
                  §§goto(addr816);
               }
            }
            §§goto(addr1128);
         }
         if(§§pop() != "")
         {
            §§goto(addr1457);
         }
         §§goto(addr467);
      }
      
      public function removeExistingHeadItems() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Worker = this;
         if(_loc2_ || Boolean(_loc1_))
         {
            if(_loc1_.hairClip != null)
            {
               _loc1_.clip.head.inside.removeChild(_loc1_.hairClip);
               _loc1_.hairClip = null;
            }
            if(_loc1_.facialHairBaseClip != null)
            {
               _loc1_.clip.head.inside.removeChild(_loc1_.facialHairBaseClip);
               _loc1_.facialHairBaseClip = null;
            }
            if(_loc1_.facialHairMouthClip != null)
            {
               _loc1_.facialHairMouthClip.parent.removeChild(_loc1_.facialHairMouthClip);
               if(!_loc3_)
               {
                  _loc1_.facialHairMouthClip = null;
               }
               §§goto(addr126);
            }
            if(_loc1_.faceAccClip != null)
            {
               _loc1_.clip.head.inside.removeChild(_loc1_.faceAccClip);
               _loc1_.faceAccClip = null;
            }
         }
         if(_loc1_.faceAccBackClip != null)
         {
            _loc1_.clip.head.inside.removeChild(_loc1_.faceAccBackClip);
            _loc1_.faceAccBackClip = null;
         }
         if(_loc1_.backHairClip != null)
         {
            if(_loc2_ || _loc3_)
            {
               _loc1_.clip.back_hair.inside.removeChild(_loc1_.backHairClip);
            }
            §§goto(addr126);
         }
         addr126:
         _loc1_.backHairClip = null;
      }
      
      public function removeExistingClothing(param1:MovieClip) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Worker = this;
         var _loc3_:* = param1.numChildren - 1;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() >= 0)
            {
               if(param1.getChildAt(_loc3_).name.indexOf("skin") == -1)
               {
                  if(_loc4_)
                  {
                     param1.removeChildAt(_loc3_);
                     if(_loc4_)
                     {
                     }
                  }
                  break;
               }
               §§push(_loc3_);
               if(_loc4_ || Boolean(this))
               {
                  §§push(§§pop() - 1);
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               _loc3_ = §§pop();
               if(!(_loc4_ || Boolean(this)))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function addClothing(param1:MovieClip, param2:String, param3:Number = -1) : void
      {
         var whichClip:MovieClip;
         var tag:String;
         var forceFrame:Number;
         var ob:Worker;
         var part:MovieClip;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[5] = null;
            if(!_loc6_)
            {
               §§push(§§newactivation());
               if(_loc7_ || Boolean(this))
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc6_ && Boolean(param3)))
                  {
                     §§push(§§newactivation());
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§push(param2);
                        if(_loc7_)
                        {
                           §§pop().§§slot[2] = §§pop();
                           if(_loc7_ || Boolean(param3))
                           {
                           }
                           addr74:
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                           }
                        }
                        §§goto(addr93);
                     }
                     addr77:
                     §§pop().§§slot[4] = this;
                     if(_loc6_ && Boolean(this))
                     {
                     }
                     §§goto(addr94);
                  }
                  addr87:
                  §§push(§§newactivation());
               }
               addr93:
               §§pop().§§slot[2] = §§pop();
               try
               {
                  part = §_-CI§.§_-2l§(tag,false,false);
                  addr94:
                  if(_loc7_ || Boolean(this))
                  {
                     if(forceFrame > -1)
                     {
                        if(_loc7_ || Boolean(param1))
                        {
                           part.gotoAndStop(forceFrame);
                        }
                     }
                     else
                     {
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           if(§§pop().§§slot[4].backwards)
                           {
                              part.gotoAndStop(2);
                           }
                           else
                           {
                              §§push(§§newactivation());
                              if(_loc6_ && Boolean(this))
                              {
                              }
                           }
                           addr157:
                           §§pop().§§slot[1].addChild(part);
                        }
                        §§pop().§§slot[5].gotoAndStop(1);
                     }
                     addr156:
                     §§goto(addr157);
                     §§push(§§newactivation());
                  }
                  §§goto(addr156);
               }
               catch(err:Error)
               {
                  §§push(§_-5i§);
                  §§push("Error adding clothing " + tag);
                  if(_loc7_)
                  {
                     §§push(§§pop() + " to ");
                     if(_loc7_)
                     {
                        §§push(§§pop() + whichClip);
                        if(_loc6_)
                        {
                        }
                     }
                     §§push(§§pop() + ": Error: ");
                  }
                  §§pop().error(§§pop() + err.message);
               }
               return;
               §§push("worker_" + tag);
            }
            §§push(§§newactivation());
            if(_loc7_)
            {
            }
            §§goto(addr77);
         }
         §§pop().§§slot[3] = param3;
         if(!(_loc6_ && Boolean(this)))
         {
            §§goto(addr74);
         }
         §§goto(addr87);
      }
   }
}

