package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import wingGame.data.FoodData;
   import wingGame.screens.BuildScreen;
   
   public class WingOrder
   {
      private static var wingOrderCount:Number = 0;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(_loc1_)
      {
         wingOrderCount = 0;
      }
      
      public var gameObj:§_-BY§;
      
      public var id:Number;
      
      public var meatType:String;
      
      public var meatAmount:Number;
      
      public var cookAmount:Number;
      
      public var currentMeatAmount:Number;
      
      public var sauceType:String;
      
      public var sauceAmountValue:Number;
      
      public var sauceSpinValue:Number;
      
      public var sauceTumbleValue:Number;
      
      public var clip:MovieClip;
      
      public var isAttached:Boolean = false;
      
      private var meatClip:MovieClip;
      
      private var lidStickerClip:MovieClip;
      
      private var clipTargetX:Number = 0;
      
      private var isRollingOver:Boolean = false;
      
      private var isFinishing:Boolean = false;
      
      private var lidTweenSpeed:Number = 2;
      
      private var lidMaxY:Number = 50;
      
      private var emptyMaxY:Number = 120;
      
      private var emptyTweenSpeed:Number = 2;
      
      public function WingOrder(param1:§_-BY§, param2:String, param3:Number, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || Boolean(param3))
         {
            super();
            if(_loc6_)
            {
            }
            §§goto(addr82);
         }
         this.gameObj = param1;
         this.meatType = param2;
         if(_loc6_ || Boolean(param2))
         {
            this.meatAmount = param3;
            if(!_loc5_)
            {
               this.cookAmount = param4;
            }
         }
         this.currentMeatAmount = param3;
         §§push(WingOrder);
         §§push(WingOrder.wingOrderCount);
         if(!(_loc5_ && Boolean(param3)))
         {
            §§push(§§pop() + 1);
         }
         §§pop().wingOrderCount = §§pop();
         this.id = WingOrder.wingOrderCount;
         if(_loc6_)
         {
            §§goto(addr82);
         }
         addr82:
         §_-5i§.§_-CE§("New Order ID = " + this.id);
      }
      
      public function getSauceQualityFrame() : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:WingOrder = this;
         var _loc2_:* = 1;
         §§push(_loc1_.getSaucePercent());
         if(!_loc7_)
         {
            §§push(§§pop() * 100);
            if(!_loc7_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.sauceSpinValue);
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop() * 100);
            if(!_loc7_)
            {
               §§push(§§pop());
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.sauceTumbleValue);
         if(!_loc7_)
         {
            §§push(§§pop() * 100);
            if(_loc8_)
            {
               §§push(§§pop());
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_);
         if(_loc8_ || Boolean(_loc2_))
         {
            §§push(_loc4_);
            if(!(_loc7_ && Boolean(_loc1_)))
            {
               §§push(§§pop() + §§pop());
               if(_loc7_ && Boolean(_loc1_))
               {
               }
               addr111:
               addr112:
               addr113:
               var _loc6_:Number = §§pop();
               §§push(_loc6_);
               if(!_loc7_)
               {
                  §§push(90);
                  if(_loc8_ || Boolean(_loc1_))
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc8_ || _loc3_)
                        {
                           §§push(5);
                           if(!_loc7_)
                           {
                              _loc2_ = §§pop();
                              if(_loc8_ || Boolean(_loc2_))
                              {
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              addr219:
                              _loc2_ = §§pop();
                           }
                           addr221:
                           addr222:
                           return §§pop();
                           §§push(_loc2_);
                        }
                     }
                     else
                     {
                        §§push(_loc6_);
                        §§push(80);
                        if(_loc8_ || Boolean(_loc1_))
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(4);
                              if(_loc8_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc7_)
                                 {
                                 }
                                 §§goto(addr222);
                              }
                              addr204:
                              §§push(§§pop());
                              if(_loc8_)
                              {
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              §§push(_loc6_);
                              §§push(70);
                              if(_loc8_)
                              {
                              }
                           }
                           §§goto(addr221);
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc6_);
                           §§push(60);
                        }
                     }
                     §§goto(addr221);
                     §§goto(addr222);
                  }
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        §§push(2);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§goto(addr204);
                        }
                     }
                     §§goto(addr221);
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr219);
               }
               _loc2_ = §§pop();
               if(_loc7_)
               {
               }
               §§goto(addr221);
            }
            addr87:
            §§push(§§pop() + §§pop());
            if(_loc8_ || Boolean(this))
            {
               §§push(§§pop() / 3);
               if(!(_loc7_ && Boolean(this)))
               {
                  §§goto(addr111);
               }
            }
            §§goto(addr112);
         }
         §§push(_loc5_);
         if(!(_loc7_ && _loc3_))
         {
            §§goto(addr87);
         }
         §§goto(addr113);
      }
      
      public function getSaucePercent() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:WingOrder = this;
         var _loc2_:* = 0;
         §§push(FoodData.getSauceNumberAmount(_loc1_.sauceAmountValue));
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.meatAmount);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = Math.abs(_loc3_ - _loc4_);
         §§push(_loc5_);
         if(_loc7_)
         {
            if(§§pop() == 11)
            {
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  §§push(1);
                  if(_loc7_)
                  {
                     addr107:
                     §§push(§§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc5_ = §§pop();
                        if(_loc7_)
                        {
                        }
                        addr111:
                        §§push(_loc2_);
                     }
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        addr110:
                        _loc2_ = §§pop();
                        §§goto(addr111);
                     }
                  }
                  addr87:
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     §§push(§§pop() / 12);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc6_ && _loc3_))
                  {
                     §§goto(addr107);
                  }
                  §§goto(addr110);
               }
               addr86:
               §§goto(addr87);
               §§push(1);
            }
            if(_loc3_ > _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     _loc5_ = §§pop();
                     if(_loc6_)
                     {
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr111);
            }
            §§goto(addr86);
         }
         return §§pop();
      }
      
      public function createBowl() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:MovieClip = null;
         var _loc1_:WingOrder = this;
         _loc1_.clip = new build_meat_bowl();
         _loc1_.clip.gotoAndStop(FoodData.getSauceFrame(_loc1_.sauceType));
         _loc1_.clip.lid.gotoAndStop(FoodData.getSauceFrame(_loc1_.sauceType));
         if(_loc11_)
         {
            _loc1_.clip.lid.num_txt.text = String(_loc1_.currentMeatAmount);
            §§push(_loc1_.meatType);
            if(_loc11_)
            {
               addr99:
               §§push(FoodData.MEAT_WING);
               if(_loc11_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     _loc1_.meatClip = new buildbowl_meat_wing();
                     if(!(_loc12_ && Boolean(this)))
                     {
                        _loc1_.lidStickerClip = new meat_wing();
                        if(!(_loc11_ || Boolean(this)))
                        {
                           addr150:
                           _loc1_.lidStickerClip = new meat_strips();
                        }
                     }
                     addr154:
                  }
                  else
                  {
                     §§push(_loc1_.meatType);
                     if(_loc12_)
                     {
                     }
                     addr159:
                     if(§§pop() == FoodData.MEAT_SHRIMP)
                     {
                        addr160:
                        _loc1_.meatClip = new buildbowl_meat_shrimp();
                        if(_loc11_ || Boolean(_loc1_))
                        {
                        }
                     }
                  }
                  addr175:
                  var _loc2_:Number = 9;
                  §§push(_loc1_.cookAmount);
                  if(_loc11_)
                  {
                     §§push(§§pop() / FoodData.getMaxCookTime(_loc1_.meatType));
                     if(_loc12_ && _loc3_)
                     {
                     }
                     §§goto(addr195);
                  }
                  addr195:
                  var _loc3_:* = §§pop();
                  var _loc4_:Number = Math.min(_loc2_,Math.floor(_loc3_ * (_loc2_ - 1)) + 1);
                  §§push(_loc1_.getSauceQualityFrame());
                  if(_loc11_ || Boolean(_loc1_))
                  {
                     §§push(§§pop());
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:Number = 5;
                  §§push(FoodData.getSauceFrame(_loc1_.sauceType));
                  if(!_loc12_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc12_)
                     {
                        §§push(_loc6_);
                        if(_loc11_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc11_)
                           {
                              §§push(_loc5_);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_)
                        {
                           §§push(§§pop());
                        }
                     }
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:int = 1;
                  while(_loc8_ <= 3)
                  {
                     _loc10_ = _loc1_.meatClip["meat" + _loc8_];
                     _loc10_.meat.gotoAndStop(_loc4_);
                     if(_loc11_ || Boolean(this))
                     {
                        _loc10_.sauce.gotoAndStop(_loc7_);
                        if(!_loc11_)
                        {
                           continue;
                        }
                     }
                     _loc8_++;
                  }
                  _loc1_.clip.holder.addChild(_loc1_.meatClip);
                  if(_loc11_ || Boolean(this))
                  {
                     _loc1_.updateMeatVisibility();
                  }
                  _loc1_.meatClip.visible = false;
                  if(_loc11_ || Boolean(_loc2_))
                  {
                     _loc1_.lidStickerClip.sauce.gotoAndStop(1);
                     _loc1_.lidStickerClip.sauce.visible = false;
                     _loc1_.lidStickerClip.meat.gotoAndStop(_loc4_);
                     if(!(_loc12_ && Boolean(this)))
                     {
                        _loc1_.lidStickerClip.scaleX = 0.3;
                        _loc1_.lidStickerClip.scaleY = 0.3;
                        _loc1_.lidStickerClip.x = 69;
                        _loc1_.lidStickerClip.y = 45;
                        _loc1_.clip.lid.addChild(_loc1_.lidStickerClip);
                     }
                  }
                  var _loc9_:GlowFilter = new GlowFilter(16777215,1,5,5,10);
                  _loc1_.lidStickerClip.filters = [_loc9_];
                  if(_loc11_)
                  {
                     _loc1_.clip.buttonMode = true;
                     _loc1_.clip.useHandCursor = true;
                     if(_loc11_ || _loc3_)
                     {
                        _loc1_.clip.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBowl);
                        if(_loc11_ || Boolean(this))
                        {
                           _loc1_.clip.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBowl);
                        }
                     }
                  }
                  _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBowl);
                  return;
                  §§push(§§pop());
               }
               if(§§pop() == §§pop())
               {
                  if(!(_loc12_ && Boolean(_loc1_)))
                  {
                     _loc1_.meatClip = new buildbowl_meat_boneless();
                     if(_loc12_ && Boolean(_loc1_))
                     {
                     }
                  }
                  _loc1_.lidStickerClip = new meat_boneless();
                  if(!_loc11_)
                  {
                     §§goto(addr154);
                  }
               }
               else
               {
                  §§push(_loc1_.meatType);
                  if(_loc11_ || Boolean(this))
                  {
                     §§push(FoodData.MEAT_STRIPS);
                     if(_loc11_ || _loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           _loc1_.meatClip = new buildbowl_meat_strips();
                           if(!_loc12_)
                           {
                              §§goto(addr150);
                           }
                           else
                           {
                              §§goto(addr160);
                           }
                        }
                        else
                        {
                           §§push(_loc1_.meatType);
                        }
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr175);
            }
            §§push(FoodData.MEAT_BONELESS);
            if(_loc11_ || Boolean(_loc1_))
            {
               §§goto(addr99);
            }
            §§goto(addr159);
         }
         _loc1_.lidStickerClip = new meat_shrimp();
         §§goto(addr175);
      }
      
      private function rolloverBowl(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:WingOrder = this;
         §§push(_loc2_.gameObj);
         if(_loc3_ || Boolean(_loc2_))
         {
            addr56:
            §§push(§§pop().§_-7q§);
            if(_loc3_)
            {
               §§push(§§pop().currentPlate);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§pop();
                              §§push(_loc2_.gameObj);
                              if(_loc4_)
                              {
                              }
                              §§goto(addr137);
                           }
                           addr58:
                           §§push(false);
                           if(_loc3_)
                           {
                           }
                           addr88:
                           if(§§pop())
                           {
                              addr89:
                              §§pop();
                              addr122:
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(Math.abs(_loc2_.gameObj.§_-7q§.clip.bowlholder.x) <= 20);
                              }
                              if(_loc2_.clip.lid.y == 0)
                              {
                                 addr137:
                                 §§pop().soundManager.playSound("lidslide.wav");
                                 return;
                                 §§push(_loc2_.gameObj);
                              }
                              §§goto(addr137);
                           }
                           if(§§pop())
                           {
                              _loc2_.isRollingOver = true;
                              _loc2_.meatClip.visible = true;
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§goto(addr122);
                              }
                           }
                           §§goto(addr137);
                        }
                        addr62:
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              §§push(_loc2_.isFinishing);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr62);
                     §§push(§§pop() == §§pop());
                  }
                  §§push(!§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr88);
                     §§push(§§pop());
                  }
                  §§goto(addr89);
               }
               addr57:
               §§goto(addr58);
               §§push(§§pop().isFinished);
            }
            §§goto(addr57);
            §§push(§§pop().currentPlate);
         }
         §§goto(addr56);
         §§push(§§pop().§_-7q§);
      }
      
      private function rolloutBowl(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:WingOrder = this;
         if(_loc3_)
         {
            _loc2_.isRollingOver = false;
         }
      }
      
      private function clickBowl(param1:MouseEvent) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:FoodItem = null;
         var _loc2_:WingOrder = this;
         §§push(_loc2_.gameObj);
         if(_loc10_)
         {
            §§push(§§pop().§_-7q§);
            if(!(_loc9_ && Boolean(param1)))
            {
               addr70:
               §§push(§§pop().currentPlate);
               if(!(_loc9_ && Boolean(param1)))
               {
                  addr73:
                  §§push(§§pop());
                  if(_loc10_ || Boolean(param1))
                  {
                     §§push(§§pop());
                     if(_loc10_ || Boolean(param1))
                     {
                        §§goto(addr75);
                     }
                     addr74:
                     addr75:
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           §§pop();
                           §§push(_loc2_.gameObj);
                        }
                     }
                     if(§§pop())
                     {
                        §§push(_loc2_.currentMeatAmount);
                        if(!_loc9_)
                        {
                           if(§§pop() > 0)
                           {
                              §§push(_loc2_.clip.x + _loc2_.gameObj.§_-7q§.clip.bowlholder.x + _loc2_.clip.width / 2);
                              if(_loc10_)
                              {
                              }
                              addr133:
                              _loc4_ = §§pop();
                              addr136:
                              _loc5_ = 0;
                              _loc6_ = new FoodItem(_loc2_.gameObj,_loc2_.meatType,_loc3_,_loc4_,_loc5_,_loc2_.cookAmount,_loc2_.sauceType,_loc2_.sauceAmountValue,_loc2_.meatAmount,_loc2_.sauceSpinValue,_loc2_.sauceTumbleValue,_loc2_.id);
                              _loc2_.gameObj.§_-7q§.addToMovingItems(_loc6_);
                              var _loc7_:* = _loc2_;
                              §§push(_loc7_.currentMeatAmount);
                              if(_loc10_ || Boolean(_loc3_))
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc8_:* = §§pop();
                              if(_loc10_)
                              {
                                 _loc7_.currentMeatAmount = _loc8_;
                              }
                              _loc2_.updateMeatVisibility();
                              if(_loc2_.currentMeatAmount <= 0)
                              {
                                 if(_loc10_)
                                 {
                                    _loc2_.isRollingOver = false;
                                 }
                                 _loc2_.isFinishing = true;
                              }
                           }
                        }
                        _loc3_ = §§pop();
                        §§push(_loc2_.clip.y + _loc2_.gameObj.§_-7q§.clip.bowlholder.y + _loc2_.clip.height / 2);
                        if(_loc10_ || Boolean(param1))
                        {
                           §§goto(addr133);
                        }
                        §§goto(addr136);
                     }
                     return;
                     §§push(§§pop() == §§pop());
                  }
                  §§goto(addr74);
                  §§push(false);
               }
               §§push(§§pop().isFinished);
               if(_loc10_)
               {
                  §§goto(addr73);
               }
               §§goto(addr75);
            }
            addr69:
            §§goto(addr70);
            §§push(§§pop().currentPlate);
         }
         §§goto(addr69);
         §§push(§§pop().§_-7q§);
      }
      
      public function trashEmptyBowl() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:WingOrder = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            if(_loc1_.currentMeatAmount <= 0)
            {
               if(_loc3_)
               {
                  _loc1_.gameObj.§_-7q§.removeWingOrderBowl(_loc1_.id);
                  if(_loc3_)
                  {
                  }
               }
               else
               {
                  addr52:
                  _loc1_.isFinishing = false;
                  if(_loc2_ && _loc3_)
                  {
                  }
               }
            }
            else
            {
               _loc1_.clip.y = 0;
               if(!_loc2_)
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr71);
         }
         _loc1_.updateMeatVisibility();
         addr71:
      }
      
      public function attachBowl(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:WingOrder = this;
         _loc3_.gameObj.§_-7q§.clip.bowlholder.addChild(_loc3_.clip);
         if(!(_loc4_ && Boolean(this)))
         {
            _loc3_.clip.x = param1;
            if(_loc5_ || Boolean(param1))
            {
            }
            §§goto(addr81);
         }
         _loc3_.clip.y = 0;
         _loc3_.isAttached = true;
         if(!_loc4_)
         {
            _loc3_.clipTargetX = param1;
            if(_loc5_)
            {
            }
            §§goto(addr73);
         }
         if(param2)
         {
            addr73:
            _loc3_.clip.x += 640;
            §§goto(addr81);
         }
         addr81:
      }
      
      public function detachBowl() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:WingOrder = this;
         if(!_loc3_)
         {
            _loc1_.isAttached = false;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.clip.parent)
               {
               }
               §§goto(addr60);
            }
         }
         try
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
            if(!_loc3_)
            {
               §§goto(addr60);
            }
            §§goto(addr77);
         }
         catch(err:Error)
         {
            var _loc2_:* = err;
            §§goto(addr60);
         }
         addr60:
         if(_loc1_.isFinishing)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr77:
               _loc1_.trashEmptyBowl();
            }
         }
      }
      
      public function updateBowl() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc1_:WingOrder = this;
         if(_loc1_.clip.x != _loc1_.clipTargetX)
         {
            if(_loc5_ || Boolean(_loc2_))
            {
               _loc3_ = _loc1_.clipTargetX - _loc1_.clip.x;
               _loc1_.clip.x += _loc3_ / _loc1_.lidTweenSpeed;
               if(_loc5_ || Boolean(_loc3_))
               {
                  if(Math.abs(_loc3_) <= 1)
                  {
                     _loc1_.clip.x = _loc1_.clipTargetX;
                     if(_loc5_ || Boolean(_loc3_))
                     {
                     }
                     addr139:
                     _loc1_.clip.y += _loc4_ / _loc1_.emptyTweenSpeed;
                     if(!_loc6_)
                     {
                        if(Math.abs(_loc4_) <= 1)
                        {
                           _loc1_.trashEmptyBowl();
                        }
                        addr159:
                     }
                     else
                     {
                        addr259:
                        _loc1_.meatClip.visible = false;
                     }
                     §§goto(addr263);
                  }
               }
            }
            §§goto(addr194);
         }
         §§push(_loc1_.isFinishing);
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            if(§§pop())
            {
               if(_loc1_.clip.y < _loc1_.emptyMaxY)
               {
                  if(_loc5_ || Boolean(this))
                  {
                     §§push(_loc1_.emptyMaxY);
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§push(§§pop() - _loc1_.clip.y);
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                           if(_loc5_ || Boolean(this))
                           {
                              _loc4_ = §§pop();
                              if(_loc5_ || Boolean(_loc1_))
                              {
                                 §§goto(addr139);
                              }
                           }
                           else
                           {
                              addr172:
                              §§push(§§pop() - _loc1_.clip.lid.y);
                           }
                           addr235:
                           if(Math.abs(_loc2_) <= 1)
                           {
                              _loc1_.clip.lid.y = 0;
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr259);
                              }
                           }
                        }
                        _loc2_ = §§pop();
                        if(!_loc6_)
                        {
                           _loc1_.clip.lid.y += _loc2_ / _loc1_.lidTweenSpeed;
                           §§goto(addr194);
                        }
                     }
                     else
                     {
                        addr220:
                        _loc2_ = §§pop();
                     }
                  }
                  _loc1_.clip.lid.y += _loc2_ / _loc1_.lidTweenSpeed;
                  §§goto(addr235);
               }
               §§goto(addr159);
            }
            else
            {
               §§push(_loc1_.isRollingOver);
            }
            §§goto(addr139);
         }
         if(§§pop())
         {
            if(_loc1_.clip.lid.y < _loc1_.lidMaxY)
            {
               §§goto(addr172);
               §§push(_loc1_.lidMaxY);
            }
            addr194:
            if(Math.abs(_loc2_) <= 1)
            {
               if(_loc5_)
               {
                  _loc1_.clip.lid.y = _loc1_.lidMaxY;
               }
            }
            addr263:
            return;
         }
         if(_loc1_.clip.lid.y > 0)
         {
            §§goto(addr220);
            §§push(0 - _loc1_.clip.lid.y);
         }
         §§goto(addr139);
      }
      
      private function updateMeatVisibility() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:WingOrder = this;
         if(_loc3_)
         {
            if(_loc1_.meatClip != null)
            {
               if(_loc3_)
               {
                  §§push(_loc1_.currentMeatAmount);
                  if(_loc3_)
                  {
                     §§push(3);
                     if(_loc3_ || Boolean(this))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc3_ || Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           _loc1_.meatClip.meat3.visible = true;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr77:
                              §§push(_loc1_.currentMeatAmount);
                              if(_loc3_ || _loc2_)
                              {
                              }
                              addr117:
                              §§push(0);
                           }
                        }
                     }
                     addr118:
                     if(§§pop() == §§pop())
                     {
                        addr119:
                        _loc1_.meatClip.meat1.visible = false;
                        if(_loc3_ || _loc2_)
                        {
                        }
                     }
                     else
                     {
                        _loc1_.meatClip.meat1.visible = true;
                     }
                  }
                  §§push(2);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc2_ && _loc2_)
                        {
                        }
                        §§goto(addr119);
                     }
                     else
                     {
                        _loc1_.meatClip.meat2.visible = true;
                        if(!_loc2_)
                        {
                           addr115:
                           §§goto(addr117);
                           §§push(_loc1_.currentMeatAmount);
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr118);
               }
               _loc1_.meatClip.meat2.visible = false;
               §§goto(addr115);
            }
            _loc1_.clip.lid.num_txt.text = String(_loc1_.currentMeatAmount);
            addr153:
            return;
         }
         _loc1_.meatClip.meat3.visible = false;
         if(_loc3_ || _loc2_)
         {
         }
         §§goto(addr77);
      }
      
      public function getReturnPoint() : Point
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:WingOrder = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.§_-7q§;
         var _loc3_:Point = new Point(0,_loc2_.clip.bowlholder.y + 30);
         var _loc4_:Number = Number(_loc2_.wingQueue.indexOf(_loc1_));
         §§push(_loc2_.currentBowlSet);
         if(!(_loc7_ && Boolean(this)))
         {
            §§push(§§pop() * _loc2_.bowlsPerScreen);
            if(!(_loc7_ && Boolean(_loc1_)))
            {
               §§push(§§pop());
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_);
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            §§push(_loc5_);
            if(_loc6_ || Boolean(_loc3_))
            {
               §§push(§§pop() >= §§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_ && Boolean(_loc1_))
                     {
                     }
                  }
                  §§goto(addr119);
               }
               §§pop();
               §§push(_loc4_);
               if(_loc7_ && Boolean(this))
               {
               }
               §§goto(addr144);
            }
            addr118:
            addr119:
            if(§§pop())
            {
               _loc3_.x = _loc2_.clip.bowlholder.x + _loc2_.startBowlX + (_loc4_ - _loc5_) * _loc2_.bowlPadding + _loc1_.clip.width / 2;
            }
            else
            {
               addr144:
               §§push(_loc4_);
               §§push(_loc2_.currentBowlSet);
               if(!_loc7_)
               {
                  addr150:
                  §§push(§§pop() * _loc2_.bowlsPerScreen);
               }
               if(§§pop() < §§pop())
               {
                  _loc3_.x = -100;
               }
               else
               {
                  _loc3_.x = 740;
               }
            }
            return _loc3_;
            §§push(§§pop() < §§pop());
         }
         §§push(_loc5_);
         if(!_loc7_)
         {
            §§push(_loc2_.bowlsPerScreen);
            if(_loc6_)
            {
               §§push(§§pop() + §§pop());
               if(_loc6_ || Boolean(_loc1_))
               {
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr150);
      }
      
      public function setTargetX(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:WingOrder = this;
         if(_loc3_ || Boolean(this))
         {
            _loc2_.clipTargetX = param1;
         }
      }
      
      public function flipLid() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:WingOrder = this;
         var _loc2_:Number = _loc1_.getReturnPoint().x;
         if(_loc4_ || Boolean(this))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§goto(addr60);
               }
               addr59:
               addr60:
               §§push(§§pop() > §§pop());
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
               return;
               §§push(§§pop() < §§pop());
            }
            §§goto(addr59);
            §§push(640);
         }
         _loc1_.clip.lid.y = _loc1_.lidMaxY;
         §§goto(addr60);
      }
      
      public function returnMeatToBowl() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:WingOrder = this;
         if(!_loc5_)
         {
            var _loc2_:* = _loc1_;
            §§push(_loc2_.currentMeatAmount);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_.currentMeatAmount = _loc3_;
            }
            if(!_loc5_)
            {
               _loc1_.updateMeatVisibility();
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:WingOrder = this;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_.clip)
            {
               _loc1_.clip.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverBowl);
               _loc1_.clip.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutBowl);
               if(_loc2_ || _loc2_)
               {
                  _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickBowl);
               }
               addr130:
               _loc1_.meatClip = null;
               addr136:
               addr137:
               addr133:
               §§push(Boolean(_loc1_.clip));
               if(Boolean(_loc1_.clip))
               {
                  §§pop();
                  §§goto(addr167);
               }
               if(§§pop())
               {
                  _loc1_.clip.parent.removeChild(_loc1_.clip);
               }
               _loc1_.clip = null;
               §§goto(addr167);
            }
            §§push(Boolean(_loc1_.lidStickerClip));
            §§push(Boolean(_loc1_.lidStickerClip));
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§pop();
                     if(_loc2_ || _loc3_)
                     {
                        §§push(Boolean(_loc1_.lidStickerClip.parent));
                     }
                     addr167:
                     if(_loc2_ || _loc2_)
                     {
                        addr146:
                        §§push(Boolean(_loc1_.clip.parent));
                     }
                     return;
                  }
                  §§goto(addr136);
               }
               if(!§§pop())
               {
               }
               addr94:
               _loc1_.lidStickerClip = null;
               §§push(Boolean(_loc1_.meatClip));
               §§push(Boolean(_loc1_.meatClip));
               if(_loc3_ && Boolean(this))
               {
               }
               §§goto(addr137);
            }
            if(§§pop())
            {
               §§pop();
               §§push(Boolean(_loc1_.meatClip.parent));
            }
            if(§§pop())
            {
               if(_loc2_ || _loc2_)
               {
                  _loc1_.meatClip.parent.removeChild(_loc1_.meatClip);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr146);
               }
               §§goto(addr133);
            }
            §§goto(addr130);
         }
         _loc1_.lidStickerClip.parent.removeChild(_loc1_.lidStickerClip);
         §§goto(addr94);
      }
   }
}

