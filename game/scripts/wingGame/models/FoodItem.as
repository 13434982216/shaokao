package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import wingGame.data.FoodData;
   import wingGame.screens.BuildScreen;
   
   public class FoodItem
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var type:String;
      
      public var isDragging:Boolean = false;
      
      public var isReturning:Boolean = false;
      
      public var isOnPlate:Boolean = false;
      
      public var tweenSpeed:Number = 2;
      
      public var cookAmount:Number;
      
      public var sauceType:String;
      
      public var sauceAmountValue:Number;
      
      public var sauceSpinValue:Number;
      
      public var sauceTumbleValue:Number;
      
      public var orderMeatAmount:Number;
      
      public var wingOrderID:Number = 0;
      
      public var subMeatType:String = null;
      
      public var subSauceType:String = null;
      
      public var targetX:Number;
      
      public var targetY:Number;
      
      public var targetRotation:Number;
      
      public var binX:Number;
      
      public var binY:Number;
      
      public var binRotation:Number;
      
      public var plateCenterX:Number = 244;
      
      public var plateCenterY:Number = 220;
      
      public var plateRadius:Number = 133;
      
      public var lettuceRadius:Number = 55;
      
      public var didBumpLettuce:Boolean = false;
      
      public var itemRadius:Number = 0;
      
      public var extraDefaultRotation:Number = 0;
      
      public var defaultScale:Number = 1;
      
      public var grabScaleBoost:Number = 0.05;
      
      public function FoodItem(param1:§_-BY§, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:String = null, param8:Number = 0, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || Boolean(param1))
         {
            super();
         }
         var _loc13_:FoodItem = this;
         _loc13_.gameObj = param1;
         _loc13_.type = param2;
         _loc13_.targetX = param3;
         _loc13_.targetY = param4;
         if(!_loc14_)
         {
            _loc13_.targetRotation = param5;
            if(!_loc14_)
            {
               _loc13_.binX = param3;
               if(_loc15_ || Boolean(param2))
               {
                  _loc13_.binY = param4;
                  if(_loc14_)
                  {
                  }
                  §§goto(addr78);
               }
               _loc13_.binRotation = param5;
               _loc13_.cookAmount = param6;
               if(!_loc14_)
               {
                  _loc13_.sauceType = param7;
                  addr78:
                  _loc13_.sauceAmountValue = param8;
                  if(!(_loc14_ && Boolean(this)))
                  {
                     _loc13_.orderMeatAmount = param9;
                     if(_loc14_)
                     {
                     }
                     addr109:
                     if(_loc13_.isMeat())
                     {
                        if(_loc15_)
                        {
                           _loc13_.setupMeat();
                           if(_loc15_)
                           {
                              addr125:
                           }
                           §§goto(addr131);
                        }
                     }
                     else
                     {
                        _loc13_.setupSide();
                     }
                  }
                  _loc13_.clickItem(null);
                  addr131:
                  return;
               }
               §§goto(addr125);
            }
            _loc13_.sauceSpinValue = param10;
            if(_loc15_ || Boolean(param2))
            {
               _loc13_.sauceTumbleValue = param11;
            }
         }
         _loc13_.wingOrderID = param12;
         §§goto(addr109);
      }
      
      public function updateItem(param1:Event) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:WingOrder = null;
         var _loc2_:FoodItem = this;
         if(_loc13_ || Boolean(this))
         {
            _loc2_.updateRotation();
            if(_loc2_.isDragging)
            {
               addr88:
               §§push(_loc2_.plateCenterX);
               if(_loc13_ || Boolean(this))
               {
                  §§push(_loc2_.gameObj);
                  if(_loc13_ || Boolean(_loc3_))
                  {
                     addr106:
                     §§push(§§pop() - §§pop().mouseX);
                     if(_loc13_ || Boolean(_loc2_))
                     {
                        _loc3_ = §§pop();
                        if(_loc12_ && Boolean(this))
                        {
                        }
                        addr326:
                        §§push(_loc2_.plateCenterY - _loc2_.clip.y);
                        if(!(_loc12_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop());
                           if(_loc13_ || Boolean(_loc2_))
                           {
                              _loc8_ = §§pop();
                              addr354:
                              _loc9_ = Math.atan2(_loc8_,_loc7_);
                              §§push(_loc9_);
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 _loc6_ = §§pop();
                                 _loc2_.clip.x = _loc2_.plateCenterX - Math.cos(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                                 addr379:
                                 _loc2_.clip.y = _loc2_.plateCenterY - Math.sin(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                                 if(!_loc2_.didBumpLettuce)
                                 {
                                    addr574:
                                    if(!(_loc12_ && Boolean(param1)))
                                    {
                                       §§push(_loc2_.gameObj);
                                       if(_loc13_)
                                       {
                                          addr410:
                                          §§pop().§_-7q§.currentPlate.bumpLettuce();
                                          addr411:
                                          _loc2_.didBumpLettuce = true;
                                          addr408:
                                       }
                                       §§goto(addr576);
                                    }
                                    else
                                    {
                                       addr505:
                                       if(_loc2_.isMeat())
                                       {
                                          if(_loc13_ || Boolean(_loc3_))
                                          {
                                          }
                                          addr570:
                                          §§push(_loc2_.gameObj);
                                       }
                                       §§push(_loc2_.gameObj);
                                       if(!_loc12_)
                                       {
                                          addr551:
                                          §§push(§§pop().§_-7q§.getMovingItemIndex(_loc2_));
                                       }
                                    }
                                    §§pop().§_-7q§.removeFromMovingItems(_loc10_,true);
                                    §§goto(addr576);
                                 }
                                 addr414:
                                 §§goto(addr576);
                              }
                              else
                              {
                                 addr427:
                                 §§push(§§pop() - _loc2_.clip.y);
                                 if(_loc13_)
                                 {
                                    addr433:
                                    §§push(§§pop());
                                    if(_loc13_ || Boolean(param1))
                                    {
                                    }
                                    addr555:
                                    _loc10_ = §§pop();
                                    if(!(_loc12_ && Boolean(param1)))
                                    {
                                       §§goto(addr570);
                                    }
                                    §§goto(addr576);
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc13_ || Boolean(this))
                                 {
                                    _loc2_.clip.x += _loc3_ / _loc2_.tweenSpeed;
                                    _loc2_.clip.y += _loc4_ / _loc2_.tweenSpeed;
                                    if(_loc13_ || Boolean(this))
                                    {
                                       §§push(Math.abs(_loc3_) <= 1);
                                       if(_loc13_)
                                       {
                                          addr485:
                                          if(§§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                §§pop();
                                                §§push(Math.abs(_loc4_) <= 1);
                                             }
                                             §§goto(addr505);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc13_ || Boolean(this))
                                          {
                                          }
                                       }
                                       §§goto(addr576);
                                    }
                                    §§goto(addr505);
                                 }
                              }
                              addr513:
                              §§push(_loc2_.gameObj.§_-7q§);
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 §§push(_loc2_.wingOrderID);
                                 if(_loc13_ || Boolean(_loc3_))
                                 {
                                    _loc11_ = §§pop().getWingOrderBowl(§§pop());
                                    if(_loc11_ != null)
                                    {
                                       if(_loc13_ || Boolean(param1))
                                       {
                                          _loc11_.flipLid();
                                       }
                                    }
                                    §§goto(addr505);
                                 }
                              }
                              §§goto(addr574);
                           }
                        }
                        addr554:
                        §§goto(addr555);
                        §§push(§§pop());
                     }
                     §§push(_loc2_.lettuceRadius);
                     if(!(_loc12_ && Boolean(param1)))
                     {
                        §§push(§§pop() + _loc2_.itemRadius);
                        if(!(_loc12_ && Boolean(_loc2_)))
                        {
                           if(§§pop() > §§pop())
                           {
                              _loc2_.clip.x = _loc2_.gameObj.mouseX;
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 _loc2_.clip.y = _loc2_.gameObj.mouseY;
                                 §§push(_loc2_.didBumpLettuce);
                                 if(!_loc12_)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(_loc2_.gameObj);
                                       if(_loc13_ || Boolean(this))
                                       {
                                          §§push(§§pop().§_-7q§);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop().currentPlate);
                                             if(_loc13_)
                                             {
                                                §§pop().resetLettuce();
                                                _loc2_.didBumpLettuce = false;
                                             }
                                             else
                                             {
                                                addr262:
                                                §§pop().bumpLettuce();
                                                _loc2_.didBumpLettuce = true;
                                                if(_loc13_)
                                                {
                                                   addr315:
                                                   §§goto(addr414);
                                                   addr268:
                                                }
                                                else
                                                {
                                                   §§goto(addr513);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr574);
                                    }
                                    §§goto(addr414);
                                 }
                                 §§goto(addr576);
                              }
                              else
                              {
                                 addr423:
                                 §§push(_loc2_.targetY);
                                 if(_loc13_)
                                 {
                                    §§goto(addr427);
                                 }
                              }
                              §§goto(addr554);
                           }
                           else
                           {
                              §§push(Math.atan2(_loc4_,_loc3_));
                              if(_loc13_ || Boolean(this))
                              {
                                 _loc6_ = §§pop();
                                 addr322:
                                 §§push(_loc5_);
                                 if(!(_loc12_ && Boolean(this)))
                                 {
                                    §§push(_loc2_.lettuceRadius);
                                 }
                                 _loc7_ = §§pop();
                                 if(_loc13_)
                                 {
                                    §§goto(addr326);
                                 }
                                 §§goto(addr411);
                              }
                              §§goto(addr234);
                           }
                        }
                        if(§§pop() > §§pop())
                        {
                           if(!_loc12_)
                           {
                              _loc2_.clip.x = _loc2_.plateCenterX - Math.cos(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                              _loc2_.clip.y = _loc2_.plateCenterY - Math.sin(_loc6_) * (_loc2_.lettuceRadius + _loc2_.itemRadius);
                              §§push(_loc5_);
                              if(_loc13_ || Boolean(param1))
                              {
                                 addr234:
                                 if(§§pop() < _loc2_.lettuceRadius + 15)
                                 {
                                    if(!_loc2_.didBumpLettuce)
                                    {
                                       if(_loc13_ || Boolean(_loc2_))
                                       {
                                          §§push(_loc2_.gameObj);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop().§_-7q§.currentPlate);
                                             if(!(_loc12_ && Boolean(param1)))
                                             {
                                                §§goto(addr262);
                                             }
                                             else
                                             {
                                                §§goto(addr410);
                                             }
                                          }
                                          §§goto(addr551);
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 else
                                 {
                                    §§push(_loc2_.didBumpLettuce);
                                    if(_loc13_ || Boolean(param1))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc13_ || Boolean(this))
                                          {
                                             §§push(_loc2_.gameObj);
                                             if(!(_loc12_ && Boolean(this)))
                                             {
                                                §§push(§§pop().§_-7q§.currentPlate);
                                                if(_loc13_ || Boolean(_loc3_))
                                                {
                                                   §§pop().resetLettuce();
                                                   _loc2_.didBumpLettuce = false;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr408);
                                             }
                                             §§goto(addr410);
                                          }
                                          §§goto(addr414);
                                       }
                                       §§goto(addr315);
                                    }
                                 }
                                 addr576:
                                 return;
                              }
                              §§goto(addr433);
                              §§goto(addr433);
                           }
                           else
                           {
                              §§goto(addr379);
                           }
                        }
                        else
                        {
                           §§goto(addr322);
                           §§push(_loc2_.plateCenterX - _loc2_.clip.x);
                        }
                        §§goto(addr410);
                     }
                     §§goto(addr354);
                  }
                  addr90:
                  _loc4_ = §§pop() - §§pop().mouseY;
                  §§goto(addr106);
                  _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
                  §§push(_loc5_);
               }
               §§goto(addr90);
               §§push(_loc2_.gameObj);
            }
            else
            {
               §§push(_loc2_.targetX - _loc2_.clip.x);
            }
            _loc3_ = §§pop();
            §§goto(addr423);
         }
         §§push(_loc2_.plateCenterY);
         if(_loc13_)
         {
            §§goto(addr88);
         }
         §§goto(addr322);
      }
      
      public function updateRotation() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc1_:FoodItem = this;
         var _loc2_:* = _loc1_.clip.rotation;
         _loc2_ %= 360;
         if(_loc2_ < 0)
         {
            §§push(_loc2_);
            §§push(360);
            if(_loc10_ || Boolean(this))
            {
               §§push(§§pop() + §§pop());
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  _loc2_ = §§pop();
                  if(_loc11_ && Boolean(_loc1_))
                  {
                  }
                  addr101:
                  §§push(_loc1_.plateCenterY);
                  if(!(_loc11_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop() - _loc1_.clip.y);
                  }
                  _loc4_ = §§pop();
                  if(_loc10_ || Boolean(this))
                  {
                     _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
                     _loc6_ = Math.atan2(_loc4_,_loc3_);
                     §§push(_loc6_ + Math.PI / 2);
                     if(_loc10_)
                     {
                        _loc6_ = §§pop();
                        addr154:
                        _loc7_ = §_-Bf§.radsToDegrees(_loc6_);
                        §§push(_loc7_ + _loc1_.extraDefaultRotation);
                        if(_loc10_ || Boolean(_loc2_))
                        {
                           _loc7_ = §§pop();
                           §§push(_loc7_);
                           if(!(_loc11_ && Boolean(_loc1_)))
                           {
                              §§goto(addr383);
                           }
                           §§push(_loc1_.plateRadius);
                           if(_loc10_ || Boolean(this))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc11_ && Boolean(_loc3_)))
                                 {
                                    _loc1_.clip.rotation = _loc2_ + _loc8_ / 2;
                                 }
                              }
                              else
                              {
                                 _loc1_.clip.rotation = _loc2_ + _loc8_ / 6;
                              }
                              addr369:
                           }
                           else
                           {
                              §§goto(addr383);
                           }
                           addr383:
                           addr322:
                           addr323:
                           addr313:
                           addr314:
                           §§push(360);
                           if(!(_loc11_ && Boolean(_loc1_)))
                           {
                              §§push(§§pop() % §§pop());
                           }
                           if(§§pop() < §§pop())
                           {
                              addr317:
                              §§push(_loc2_ + 360);
                           }
                           §§push(_loc7_);
                           §§push(_loc2_);
                           if(!(_loc11_ && Boolean(_loc3_)))
                           {
                              addr333:
                              _loc8_ = §§pop() - §§pop();
                              §§push(_loc5_);
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc10_ || Boolean(_loc2_))
                           {
                           }
                           §§goto(addr392);
                        }
                        addr392:
                        _loc9_ = §§pop();
                        addr400:
                        _loc1_.clip.rotation = _loc2_ + _loc9_ / _loc1_.tweenSpeed;
                        return;
                        §§push(§§pop());
                     }
                     §§push(§§pop());
                     if(_loc10_)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr322);
                     }
                     §§goto(addr323);
                  }
                  addr249:
                  §§push(_loc2_);
                  if(!_loc11_)
                  {
                     §§push(§§pop() > 270);
                     if(!(_loc11_ && Boolean(_loc1_)))
                     {
                        addr261:
                        if(§§pop())
                        {
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              §§push(_loc2_);
                              §§push(360);
                              if(_loc10_ || Boolean(this))
                              {
                                 _loc2_ = §§pop() - §§pop();
                                 if(_loc10_ || Boolean(_loc1_))
                                 {
                                 }
                                 §§goto(addr369);
                              }
                              else
                              {
                                 addr298:
                                 §§push(§§pop() > §§pop());
                              }
                           }
                           §§goto(addr383);
                        }
                        else
                        {
                           §§push(_loc7_);
                           if(!(_loc11_ && Boolean(_loc2_)))
                           {
                              §§goto(addr298);
                              §§push(270);
                           }
                        }
                        §§goto(addr383);
                     }
                     addr300:
                     if(§§pop())
                     {
                        §§pop();
                        if(_loc10_ || Boolean(_loc2_))
                        {
                           §§push(_loc2_);
                           §§push(90);
                           if(_loc10_)
                           {
                              §§goto(addr313);
                           }
                           §§goto(addr317);
                        }
                        §§goto(addr383);
                     }
                     §§goto(addr314);
                  }
                  §§goto(addr333);
               }
               §§push(§§pop());
               if(!(_loc11_ && Boolean(this)))
               {
                  _loc7_ = §§pop();
                  if(§§pop() < 0)
                  {
                     §§push(_loc7_);
                     §§push(360);
                     if(!(_loc11_ && Boolean(this)))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(!_loc11_)
                           {
                              _loc7_ = §§pop();
                              if(_loc10_ || Boolean(this))
                              {
                              }
                              §§goto(addr369);
                           }
                        }
                        addr235:
                        §§push(90);
                     }
                     §§goto(addr383);
                  }
                  _loc1_.targetRotation = _loc7_;
                  addr380:
                  if(_loc10_)
                  {
                     §§push(_loc7_);
                     if(!_loc11_)
                     {
                        §§goto(addr235);
                     }
                     addr382:
                     §§push(_loc2_);
                  }
                  §§goto(addr382);
                  §§push(_loc1_.targetRotation);
               }
               §§goto(addr383);
            }
            §§push(§§pop() < §§pop());
            if(!(_loc11_ && Boolean(_loc1_)))
            {
               §§push(§§pop());
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§goto(addr249);
                  }
                  §§goto(addr261);
               }
               §§goto(addr300);
            }
            else
            {
               addr372:
               if(§§pop())
               {
                  if(!(_loc11_ && Boolean(_loc2_)))
                  {
                     §§goto(addr380);
                  }
                  §§goto(addr400);
               }
            }
            §§goto(addr383);
         }
         §§push(_loc1_.isDragging);
         if(!(_loc11_ && Boolean(this)))
         {
            if(§§pop())
            {
               §§push(_loc1_.plateCenterX);
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  _loc3_ = §§pop() - _loc1_.clip.x;
                  if(_loc10_ || Boolean(_loc1_))
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr383);
               }
               §§goto(addr154);
            }
            else
            {
               §§push(_loc1_.isReturning);
            }
            §§goto(addr372);
         }
         §§goto(addr261);
      }
      
      public function clickItem(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FoodItem = this;
         §§push(!_loc2_.isDragging);
         §§push(!_loc2_.isDragging);
         if(_loc4_)
         {
            if(§§pop())
            {
               §§pop();
               addr40:
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr73:
                  §§push(_loc2_.isReturning);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  §§push(§§pop());
               }
               §§push(_loc2_.gameObj.§_-7q§);
               if(!_loc3_)
               {
                  §§push(§§pop().currentPlate);
                  if(_loc4_)
                  {
                     §§push(§§pop().isFinished);
                     if(_loc4_ || Boolean(this))
                     {
                        §§goto(addr302);
                     }
                     §§goto(addr192);
                  }
                  addr111:
                  §§pop().addSauceSplat(_loc2_.type,_loc2_.sauceType,_loc2_.clip.x,_loc2_.clip.y,_loc2_.clip.rotation,_loc2_.clip.scaleX,_loc2_.clip.scaleY);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.clip.scaleX = _loc2_.defaultScale + _loc2_.grabScaleBoost;
                     _loc2_.clip.scaleY = _loc2_.defaultScale + _loc2_.grabScaleBoost;
                     addr138:
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateItem);
                              if(_loc4_)
                              {
                              }
                           }
                           §§goto(addr273);
                        }
                        addr192:
                        if(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              addr202:
                              §§push(_loc2_.gameObj.§_-7q§);
                              if(!(_loc3_ && Boolean(_loc2_)))
                              {
                                 addr210:
                                 §§pop().addToMovingItems(_loc2_);
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    addr219:
                                    §§push(_loc2_.gameObj.§_-7q§);
                                    if(_loc3_)
                                    {
                                    }
                                    addr230:
                                    §§pop().clip.topholder.addChild(_loc2_.clip);
                                 }
                                 addr273:
                                 _loc2_.didBumpLettuce = false;
                                 §§push(_loc2_.gameObj);
                                 if(_loc4_)
                                 {
                                    §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
                                    if(!_loc3_)
                                    {
                                       addr294:
                                       §§push(_loc2_.gameObj);
                                    }
                                    §§goto(addr302);
                                 }
                                 §§pop().stage.addEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
                                 §§goto(addr302);
                              }
                              addr225:
                              §§pop().currentPlate.removeItemFromPlate(_loc2_);
                              §§goto(addr230);
                              §§push(_loc2_.gameObj.§_-7q§);
                           }
                           _loc2_.clip.x += _loc2_.gameObj.§_-7q§.currentPlate.clip.x;
                           if(_loc4_)
                           {
                              _loc2_.clip.y += _loc2_.gameObj.§_-7q§.currentPlate.clip.y;
                           }
                           §§goto(addr302);
                        }
                        _loc2_.isOnPlate = false;
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           §§goto(addr273);
                        }
                        addr302:
                        if(!§§pop())
                        {
                           if(_loc4_)
                           {
                              _loc2_.isDragging = true;
                              _loc2_.isReturning = false;
                           }
                           _loc2_.gameObj.soundManager.playSound("grabtopping.wav");
                           §§goto(addr73);
                           §§push(_loc2_.isMeat());
                        }
                        return;
                        §§push(_loc2_.isOnPlate);
                     }
                     §§goto(addr294);
                  }
                  §§goto(addr219);
               }
               §§push(§§pop().currentPlate);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr111);
               }
               §§goto(addr225);
            }
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§goto(addr40);
               }
               §§goto(addr192);
            }
            §§goto(addr302);
         }
         if(§§pop())
         {
            if(!_loc3_)
            {
               §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc2_.isOnPlate);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
               }
               §§goto(addr273);
            }
         }
         if(§§pop())
         {
            §§push(_loc2_.gameObj);
            if(_loc4_ || Boolean(param1))
            {
               §§push(§§pop().§_-7q§);
               if(!_loc3_)
               {
                  §§goto(addr40);
               }
               §§goto(addr210);
            }
            §§goto(addr202);
         }
         §§goto(addr138);
      }
      
      public function releaseItem(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FoodItem = this;
         if(!_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseItem);
               §§push(_loc2_.gameObj);
               if(_loc3_ && Boolean(_loc2_))
               {
               }
               §§pop().§_-7q§.currentPlate.resetLettuce();
               addr94:
               if(_loc2_.isWithinPlateBounds())
               {
                  _loc2_.addToPlate();
               }
               else
               {
                  _loc2_.startReturning();
               }
               return;
               addr84:
            }
            §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc2_.releaseItem);
            _loc2_.clip.scaleX = _loc2_.defaultScale;
            if(_loc3_ && Boolean(this))
            {
            }
            addr82:
            §§goto(addr84);
            §§push(_loc2_.gameObj);
         }
         _loc2_.clip.scaleY = _loc2_.defaultScale;
         if(_loc4_ || _loc3_)
         {
            _loc2_.isDragging = false;
            §§goto(addr82);
         }
         §§goto(addr94);
      }
      
      public function generateMeatForHand() : MovieClip
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc1_:FoodItem = this;
         var _loc3_:String = "meat_" + _loc1_.type;
         _loc2_ = §_-CI§.§_-2l§(_loc3_,false,false);
         var _loc4_:Number = 9;
         §§push(_loc1_.cookAmount);
         if(_loc11_ || Boolean(_loc3_))
         {
            §§push(§§pop() / FoodData.getMaxCookTime(_loc1_.type));
            if(_loc11_)
            {
            }
            addr53:
            var _loc5_:* = §§pop();
            var _loc6_:Number = Math.min(_loc4_,Math.floor(_loc5_ * (_loc4_ - 1)) + 1);
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               _loc2_.meat.gotoAndStop(_loc6_);
            }
            §§push(_loc1_.getSauceQualityFrame());
            if(_loc11_ || Boolean(this))
            {
               §§push(§§pop());
            }
            var _loc7_:* = §§pop();
            var _loc8_:Number = 5;
            §§push(FoodData.getSauceFrame(_loc1_.sauceType));
            if(!(_loc10_ && Boolean(_loc1_)))
            {
               §§push(§§pop() - 1);
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  §§push(_loc8_);
                  if(_loc11_)
                  {
                     §§goto(addr134);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                  }
                  §§goto(addr134);
               }
            }
            addr134:
            §§push(§§pop() * §§pop());
            if(_loc11_ || Boolean(_loc2_))
            {
               §§push(_loc7_);
            }
            var _loc9_:* = §§pop();
            if(!_loc10_)
            {
               _loc2_.sauce.gotoAndStop(_loc9_);
               if(_loc11_)
               {
                  _loc2_.scaleX = 0.6;
                  if(!_loc10_)
                  {
                     _loc2_.scaleY = 0.6;
                     if(_loc11_)
                     {
                     }
                  }
               }
               §§goto(addr173);
            }
            if(_loc1_.type == FoodData.MEAT_SHRIMP)
            {
               if(_loc11_)
               {
                  _loc2_.scaleY *= -1;
               }
            }
            addr173:
            return _loc2_;
            §§push(§§pop());
         }
         §§goto(addr53);
         §§push(§§pop());
      }
      
      public function setupMeat() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:FoodItem = this;
         var _loc2_:String = "meat_" + _loc1_.type;
         _loc1_.clip = §_-CI§.§_-2l§(_loc2_,true,true);
         if(!_loc10_)
         {
            _loc1_.clip.x = _loc1_.gameObj.mouseX;
            _loc1_.clip.y = _loc1_.gameObj.mouseY;
            if(!_loc10_)
            {
               _loc1_.extraDefaultRotation = 180;
            }
         }
         _loc1_.clip.rotation = _loc1_.targetRotation + _loc1_.extraDefaultRotation;
         _loc1_.clip.mouseEnabled = true;
         if(_loc9_ || Boolean(this))
         {
            _loc1_.clip.buttonMode = true;
            if(_loc9_)
            {
               _loc1_.clip.useHandCursor = true;
               _loc1_.gameObj.§_-7q§.clip.topholder.addChild(_loc1_.clip);
            }
         }
         var _loc3_:Number = 9;
         §§push(_loc1_.cookAmount);
         if(!_loc10_)
         {
            §§push(§§pop() / FoodData.getMaxCookTime(_loc1_.type));
            if(_loc9_ || Boolean(_loc2_))
            {
            }
            addr105:
            var _loc4_:* = §§pop();
            var _loc5_:Number = Math.min(_loc3_,Math.floor(_loc4_ * (_loc3_ - 1)) + 1);
            if(_loc9_ || Boolean(_loc3_))
            {
               _loc1_.clip.meat.gotoAndStop(_loc5_);
            }
            §§push(_loc1_.getSauceQualityFrame());
            if(_loc9_ || Boolean(_loc2_))
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            var _loc7_:Number = 5;
            §§push(FoodData.getSauceFrame(_loc1_.sauceType));
            if(_loc9_ || Boolean(_loc2_))
            {
               §§push(§§pop() - 1);
               if(_loc9_ || Boolean(_loc1_))
               {
                  addr183:
                  §§push(_loc7_);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc10_ && Boolean(_loc2_))
                     {
                     }
                     addr191:
                     §§push(§§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || Boolean(this))
                  {
                     §§goto(addr191);
                  }
               }
               var _loc8_:* = §§pop();
               if(_loc9_ || Boolean(this))
               {
                  _loc1_.clip.sauce.gotoAndStop(_loc8_);
                  _loc1_.clip.scaleX = 0.6;
                  _loc1_.clip.scaleY = 0.6;
                  if(_loc9_ || Boolean(_loc3_))
                  {
                     _loc1_.defaultScale = 0.6;
                     §§push(Math.random() < 0.5);
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        if(§§pop())
                        {
                           if(_loc10_ && Boolean(this))
                           {
                           }
                        }
                        §§goto(addr271);
                     }
                     §§pop();
                     §§push(_loc1_.type);
                     if(!(_loc10_ && Boolean(_loc2_)))
                     {
                        §§push(FoodData.MEAT_SHRIMP);
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc9_ || Boolean(_loc1_))
                           {
                              §§push(!§§pop());
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr291);
                  }
                  _loc1_.itemRadius = _loc1_.clip.height / 4;
                  if(_loc9_)
                  {
                     §§goto(addr293);
                  }
                  addr271:
                  if(!§§pop())
                  {
                  }
                  §§goto(addr280);
               }
               _loc1_.clip.scaleX *= -1;
               addr280:
               _loc1_.itemRadius = _loc1_.clip.height / 2;
               if(!_loc10_)
               {
                  addr293:
                  addr291:
                  if(_loc1_.type == FoodData.MEAT_STRIPS)
                  {
                     if(_loc9_ || Boolean(this))
                     {
                     }
                  }
                  _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
               }
               return;
            }
            §§goto(addr183);
            §§push(_loc6_);
         }
         §§goto(addr105);
         §§push(§§pop());
      }
      
      public function setupSide() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:FoodItem = this;
         var _loc2_:String = "build_side_" + _loc1_.type;
         _loc1_.clip = §_-CI§.§_-2l§(_loc2_,true,true);
         if(_loc1_.type == FoodData.SIDE_CHEESECUBES)
         {
            _loc1_.clip.gotoAndStop(Math.ceil(Math.random() * _loc1_.clip.totalFrames));
            if(_loc4_)
            {
            }
            §§goto(addr88);
         }
         _loc1_.clip.x = _loc1_.gameObj.mouseX;
         _loc1_.clip.y = _loc1_.gameObj.mouseY;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.itemRadius = _loc1_.clip.height / 2;
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§goto(addr88);
            }
            addr88:
            _loc1_.clip.rotation = _loc1_.targetRotation;
            if(_loc4_)
            {
               _loc1_.clip.mouseEnabled = true;
               addr99:
               _loc1_.clip.buttonMode = true;
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc1_.clip.useHandCursor = true;
               }
               §§goto(addr136);
            }
            _loc1_.gameObj.§_-7q§.clip.topholder.addChild(_loc1_.clip);
            if(_loc4_ || _loc3_)
            {
               §§goto(addr136);
            }
            addr136:
            _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
            return;
         }
         §§goto(addr99);
      }
      
      public function isMeat() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:FoodItem = this;
         if(_loc3_)
         {
            addr81:
            §§push(_loc1_.type);
            if(_loc3_)
            {
               §§push(FoodData.MEAT_BONELESS);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(_loc2_ && _loc2_)
                        {
                        }
                        §§goto(addr72);
                     }
                     addr51:
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(_loc3_ || _loc3_)
                              {
                                 addr72:
                                 §§push(_loc1_.type);
                                 if(_loc2_ && _loc3_)
                                 {
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr118);
                           }
                           addr95:
                           §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              addr112:
                              addr115:
                              addr114:
                              if(§§pop() == FoodData.MEAT_WING)
                              {
                                 if(_loc3_)
                                 {
                                    addr118:
                                    return true;
                                 }
                              }
                              return false;
                              §§push(_loc1_.type);
                           }
                           §§goto(addr72);
                        }
                        addr91:
                        §§push(§§pop());
                     }
                  }
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr115);
               }
               addr90:
               §§goto(addr91);
               §§push(§§pop() == §§pop());
            }
            §§push(FoodData.MEAT_STRIPS);
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr90);
            }
            §§goto(addr114);
         }
         §§push(_loc1_.type);
         if(_loc3_)
         {
            §§push(FoodData.MEAT_SHRIMP);
            if(!_loc2_)
            {
               §§push(§§pop() == §§pop());
               if(!_loc2_)
               {
                  §§goto(addr51);
               }
               §§goto(addr95);
            }
            §§goto(addr90);
         }
         §§goto(addr81);
      }
      
      public function startReturning() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:WingOrder = null;
         var _loc4_:Point = null;
         var _loc1_:FoodItem = this;
         var _loc2_:BuildScreen = _loc1_.gameObj.§_-7q§;
         if(_loc6_)
         {
            if(_loc1_.isMeat())
            {
               if(!_loc5_)
               {
                  _loc3_ = _loc2_.getWingOrderBowl(_loc1_.wingOrderID);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     if(_loc3_ == null)
                     {
                        if(_loc5_)
                        {
                        }
                        addr56:
                        _loc3_ = new WingOrder(_loc1_.gameObj,_loc1_.type,_loc1_.orderMeatAmount,_loc1_.cookAmount);
                        _loc3_.sauceType = _loc1_.sauceType;
                        _loc3_.sauceAmountValue = _loc1_.sauceAmountValue;
                        if(!_loc5_)
                        {
                           _loc3_.sauceSpinValue = _loc1_.sauceSpinValue;
                           _loc3_.sauceTumbleValue = _loc1_.sauceTumbleValue;
                        }
                        _loc3_.currentMeatAmount = 1;
                        _loc3_.id = _loc1_.wingOrderID;
                        _loc3_.createBowl();
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           _loc2_.addToWingQueue(_loc3_);
                           if(_loc5_ && Boolean(_loc2_))
                           {
                           }
                           addr206:
                           _loc1_.isDragging = false;
                           _loc1_.isOnPlate = false;
                           §§goto(addr212);
                        }
                        _loc2_.checkForBowlGaps();
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           _loc1_.targetX = _loc3_.getReturnPoint().x;
                           if(_loc5_)
                           {
                           }
                           addr212:
                           return;
                        }
                        _loc1_.targetY = _loc3_.getReturnPoint().y;
                        _loc1_.targetRotation = 90;
                     }
                     else
                     {
                        _loc4_ = _loc3_.getReturnPoint();
                        if(_loc6_)
                        {
                           _loc1_.targetX = _loc4_.x;
                           if(_loc6_)
                           {
                           }
                           addr167:
                           _loc1_.targetRotation = 90;
                           if(!_loc5_)
                           {
                              addr172:
                              _loc3_.returnMeatToBowl();
                           }
                        }
                        _loc1_.targetY = _loc4_.y;
                        if(_loc6_ || Boolean(this))
                        {
                           §§goto(addr167);
                        }
                        §§goto(addr172);
                     }
                  }
                  §_-5i§.§_-CE§("Bowl is gone, create a new one.");
                  §§goto(addr56);
               }
               else
               {
                  addr186:
                  _loc1_.targetY = _loc1_.binY;
                  if(_loc6_)
                  {
                  }
               }
               addr203:
               _loc1_.isReturning = true;
               §§goto(addr206);
            }
            else
            {
               _loc1_.targetX = _loc1_.binX;
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  §§goto(addr186);
               }
            }
         }
         _loc1_.targetRotation = _loc1_.binRotation;
         §§goto(addr203);
      }
      
      public function addToPlate() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:FoodItem = this;
         var _loc2_:FoodPlate = _loc1_.gameObj.§_-7q§.currentPlate;
         var _loc3_:BuildScreen = _loc1_.gameObj.§_-7q§;
         §§push(_loc1_.plateCenterX);
         if(_loc11_ || Boolean(_loc3_))
         {
            §§push(§§pop() - _loc1_.clip.x);
            if(_loc10_ && Boolean(this))
            {
            }
            addr49:
            var _loc4_:* = §§pop();
            §§push(_loc1_.plateCenterY);
            if(_loc11_ || Boolean(_loc1_))
            {
               §§push(§§pop() - _loc1_.clip.y);
               if(_loc11_ || Boolean(_loc3_))
               {
                  §§push(§§pop());
               }
            }
            var _loc5_:* = §§pop();
            var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            var _loc7_:* = Math.atan2(_loc5_,_loc4_);
            §§push(_loc7_);
            if(!(_loc10_ && Boolean(_loc1_)))
            {
               §§push(Math.PI / 2);
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  addr131:
                  §§push(§§pop() + §§pop());
                  if(!(_loc10_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop());
                     if(_loc10_)
                     {
                     }
                     addr130:
                     §§push(§§pop());
                  }
                  §§push(§§pop());
               }
               var _loc8_:* = §§pop();
               §§push(_loc1_.extraDefaultRotation);
               if(_loc11_ || Boolean(_loc3_))
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     §§push(§§pop());
                     if(!_loc10_)
                     {
                        _loc8_ = §§pop();
                        §§goto(addr174);
                     }
                  }
                  addr173:
                  addr174:
                  §§push(360);
                  if(_loc11_)
                  {
                     §§push(§§pop() % §§pop());
                     §§push(§§pop() % §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                  }
                  _loc8_ = §§pop();
                  if(_loc11_ || Boolean(this))
                  {
                     addr186:
                     _loc1_.targetRotation = _loc8_;
                     if(_loc10_)
                     {
                     }
                     §§goto(addr197);
                  }
                  _loc1_.clip.rotation = _loc8_;
                  if(_loc11_)
                  {
                     addr197:
                     _loc2_.addItemToPlate(_loc1_);
                     addr211:
                     var _loc9_:Number = _loc3_.getMovingItemIndex(_loc1_);
                     _loc3_.removeFromMovingItems(_loc9_);
                     _loc1_.isOnPlate = true;
                     §§goto(addr200);
                  }
                  addr200:
                  addr210:
                  if(!_loc10_)
                  {
                     _loc1_.clip.x -= _loc2_.clip.x;
                     if(!(_loc10_ && Boolean(_loc2_)))
                     {
                        _loc1_.clip.y -= _loc2_.clip.y;
                     }
                     if(_loc1_.clip.y > _loc1_.plateRadius)
                     {
                        if(_loc11_ || Boolean(_loc2_))
                        {
                           _loc2_.clip.frontholder.addChild(_loc1_.clip);
                        }
                     }
                     else
                     {
                        _loc2_.clip.backholder.addChild(_loc1_.clip);
                     }
                     §§push(_loc1_.isMeat());
                     if(!(_loc10_ && Boolean(_loc1_)))
                     {
                        addr299:
                        §§push(§§pop());
                        if(!(_loc10_ && Boolean(this)))
                        {
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                              }
                           }
                           addr300:
                           if(§§pop())
                           {
                              addr402:
                              §§push(_loc1_.gameObj);
                              if(!(_loc10_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop().§_-7q§);
                                 if(_loc11_ || Boolean(_loc3_))
                                 {
                                    addr374:
                                    §§push(§§pop().currentPlate);
                                    if(_loc11_ || Boolean(_loc2_))
                                    {
                                       §§push(_loc1_.type);
                                       if(_loc11_ || Boolean(this))
                                       {
                                          addr378:
                                          §§push(_loc1_.sauceType);
                                          if(_loc11_)
                                          {
                                             §§pop().addSauceSplat(§§pop(),§§pop(),_loc1_.clip.x,_loc1_.clip.y,_loc1_.clip.rotation + 15,_loc1_.clip.scaleX + 0.1,_loc1_.clip.scaleY + 0.1);
                                             if(_loc11_)
                                             {
                                                §§push(_loc1_.gameObj);
                                                if(_loc11_ || Boolean(this))
                                                {
                                                   §§push(§§pop().§_-7q§);
                                                }
                                             }
                                          }
                                          §§pop().addSauceSplat(§§pop(),§§pop(),_loc1_.clip.x,_loc1_.clip.y,_loc1_.clip.rotation - 15,_loc1_.clip.scaleX + 0.1,_loc1_.clip.scaleY + 0.1);
                                       }
                                       addr376:
                                       §§goto(addr378);
                                       §§push(_loc1_.sauceType);
                                    }
                                    §§goto(addr376);
                                    §§push(_loc1_.type);
                                 }
                                 §§goto(addr374);
                                 §§push(§§pop().currentPlate);
                              }
                              §§pop().soundManager.playSound("droptopping.wav");
                              _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
                           }
                           §§goto(addr402);
                           §§push(_loc1_.gameObj);
                        }
                        §§goto(addr300);
                        §§push(§§pop());
                     }
                     §§pop();
                     §§push(_loc1_.isOversauced());
                     if(_loc11_)
                     {
                        §§goto(addr299);
                     }
                     §§goto(addr300);
                  }
                  return;
                  §§push(360);
               }
               _loc8_ = §§pop();
               if(_loc11_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc10_ && Boolean(_loc1_)))
                        {
                           §§push(_loc8_);
                           if(!_loc10_)
                           {
                              §§goto(addr173);
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr174);
               }
               §§goto(addr211);
            }
            _loc7_ = §§pop();
            §§push(§_-Bf§.radsToDegrees(_loc7_));
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               §§goto(addr130);
            }
            §§goto(addr131);
         }
         §§goto(addr49);
         §§push(§§pop());
      }
      
      public function adjustForGiveOrder() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc1_:FoodItem = this;
         §§push(_loc1_.plateRadius);
         if(!_loc4_)
         {
            §§push(§§pop() * 2);
            if(_loc5_)
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc1_.clip.y > _loc1_.plateRadius)
            {
               if(_loc5_)
               {
                  §§push(_loc2_ - _loc1_.clip.y);
                  if(_loc5_)
                  {
                     §§push(_loc2_);
                     if(_loc5_ || Boolean(this))
                     {
                        §§push(§§pop() / §§pop());
                        §§push(50);
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           _loc3_ = §§pop() * §§pop();
                           if(_loc4_)
                           {
                           }
                           addr115:
                           _loc1_.clip.y += _loc3_;
                        }
                        §§goto(addr123);
                     }
                     else
                     {
                        addr96:
                        §§push(§§pop() / §§pop());
                        §§push(50);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(_loc1_.plateRadius);
               if(_loc5_)
               {
                  §§goto(addr96);
                  §§push(§§pop() - _loc1_.clip.y);
                  §§push(_loc1_.plateRadius);
               }
            }
            _loc3_ = §§pop();
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               §§goto(addr115);
            }
            §§goto(addr123);
         }
         _loc1_.clip.y += _loc3_;
         if(!_loc5_)
         {
            §§goto(addr115);
         }
         addr123:
      }
      
      public function isWithinPlateBounds() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:FoodItem = this;
         var _loc2_:* = false;
         if(!_loc3_)
         {
            if(_loc1_.getDistToCenter() <= _loc1_.plateRadius)
            {
               if(_loc3_)
               {
               }
            }
            addr52:
            return _loc2_;
            addr51:
         }
         §§push(true);
         if(_loc4_ || _loc3_)
         {
            _loc2_ = §§pop();
            §§goto(addr51);
         }
         §§goto(addr52);
      }
      
      public function getDistToCenter() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:FoodItem = this;
         §§push(_loc1_.plateCenterX);
         if(!_loc4_)
         {
            §§push(§§pop() - _loc1_.clip.x);
            if(_loc5_)
            {
            }
            §§goto(addr28);
         }
         addr28:
         var _loc2_:* = §§pop();
         §§push(_loc1_.plateCenterY);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - _loc1_.clip.y);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         §§pop();
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
      }
      
      public function isOversauced() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc1_:FoodItem = this;
         var _loc2_:* = false;
         if(_loc5_)
         {
            §§push(_loc1_.isMeat());
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(FoodData.getSauceNumberAmount(_loc1_.sauceAmountValue));
                     if(_loc5_)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc6_)
                           {
                              §§push(_loc1_.orderMeatAmount);
                              if(_loc5_ || Boolean(_loc1_))
                              {
                              }
                              addr80:
                              if(§§pop() > 1)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(true);
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        §§push(§§pop());
                        if(_loc5_ || Boolean(_loc1_))
                        {
                        }
                        addr78:
                        §§goto(addr80);
                        §§push(§§pop() - _loc4_);
                     }
                     _loc4_ = §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           §§goto(addr78);
                        }
                        §§goto(addr80);
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         addr101:
         _loc2_;
         return §§pop();
      }
      
      public function getSauceQualityFrame() : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc1_:FoodItem = this;
         var _loc2_:* = 1;
         var _loc3_:Number = 0;
         §§push(FoodData.getSauceNumberAmount(_loc1_.sauceAmountValue));
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(_loc1_.orderMeatAmount);
         if(_loc8_ || Boolean(_loc1_))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = Math.abs(_loc4_ - _loc5_);
         §§push(_loc6_);
         if(!(_loc9_ && Boolean(_loc2_)))
         {
            §§push(11);
            if(!_loc9_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc8_)
                  {
                     addr106:
                     §§push(1);
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        _loc6_ = §§pop();
                        if(_loc9_)
                        {
                        }
                        addr105:
                        §§push(1);
                     }
                     §§push(_loc6_);
                     if(_loc8_ || Boolean(this))
                     {
                        §§push(§§pop() / 12);
                     }
                     _loc3_ = §§pop() - §§pop();
                     §§goto(addr159);
                  }
               }
               §§push(_loc4_);
            }
            §§push(§§pop() / §§pop());
            if(!_loc9_)
            {
               addr157:
               §§push(§§pop());
            }
            addr159:
            addr119:
            §§push(_loc3_);
            §§push(_loc1_.sauceSpinValue);
            if(_loc8_)
            {
               §§push(§§pop() + §§pop());
               if(_loc8_)
               {
                  §§push(_loc1_.sauceTumbleValue);
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() + §§pop());
                  }
               }
               §§push(100);
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  §§push(§§pop() * §§pop());
                  §§push(3);
               }
            }
            var _loc7_:* = §§pop();
            §§push(90);
            if(!_loc9_)
            {
               if(§§pop() >= §§pop())
               {
                  addr216:
                  §§push(5);
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(!(_loc9_ && Boolean(this)))
                     {
                        _loc2_ = §§pop();
                     }
                     addr252:
                     §§push(_loc2_);
                  }
                  else
                  {
                     addr215:
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
                  if(_loc9_)
                  {
                     addr234:
                  }
                  §§goto(addr252);
               }
               else
               {
                  §§push(_loc7_);
                  §§push(80);
                  if(_loc8_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc8_)
                        {
                           §§push(4);
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              _loc2_ = §§pop();
                           }
                        }
                        else
                        {
                           addr207:
                           §§push(3);
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              §§goto(addr215);
                           }
                        }
                        §§goto(addr252);
                        if(_loc8_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc9_)
                           {
                              §§goto(addr234);
                           }
                        }
                        else
                        {
                           addr251:
                           _loc2_ = §§pop();
                        }
                        §§goto(addr252);
                     }
                     else
                     {
                        §§push(_loc7_);
                        if(_loc8_)
                        {
                           §§push(70);
                           if(_loc9_ && Boolean(_loc2_))
                           {
                           }
                        }
                     }
                     §§goto(addr216);
                  }
                  addr224:
                  if(§§pop() >= §§pop())
                  {
                     §§push(2);
                     if(_loc8_)
                     {
                        §§goto(addr228);
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§push(§§pop());
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     §§goto(addr251);
                  }
               }
               §§goto(addr253);
            }
            if(§§pop() >= §§pop())
            {
               §§goto(addr207);
            }
            else
            {
               §§push(_loc7_);
               if(_loc8_)
               {
                  §§goto(addr224);
                  §§push(60);
               }
            }
            addr253:
            return §§pop();
            §§push(§§pop());
         }
         §§push(_loc5_);
         if(_loc8_)
         {
            if(§§pop() > §§pop())
            {
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  §§push(0);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc8_ || Boolean(this))
                     {
                        _loc6_ = §§pop();
                        if(_loc9_ && Boolean(_loc3_))
                        {
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr106);
               }
               §§goto(addr119);
            }
            §§goto(addr105);
         }
         §§goto(addr106);
      }
      
      public function setMeatSubstitute(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:FoodItem = this;
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.subMeatType = param1;
            if(_loc4_ && Boolean(param1))
            {
            }
            §§goto(addr51);
         }
         _loc3_.subSauceType = param2;
         addr51:
      }
      
      public function getType() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FoodItem = this;
         if(_loc2_)
         {
            §§push(_loc1_.subMeatType);
            if(!_loc3_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§push(_loc1_.subMeatType);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        return §§pop();
                     }
                  }
               }
            }
            §§goto(addr57);
         }
         addr57:
         _loc1_.type;
         return §§pop();
      }
      
      public function getSauce() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FoodItem = this;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(_loc1_.subSauceType);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§push(_loc1_.subSauceType);
                     if(_loc2_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
               }
            }
            §§goto(addr62);
         }
         addr62:
         _loc1_.sauceType;
         return §§pop();
      }
      
      public function getTypeString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:FoodItem = this;
         if(!_loc2_)
         {
            §§push(_loc1_.subMeatType);
            if(!_loc2_)
            {
               §§push(null);
               if(!_loc2_)
               {
                  addr107:
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§push(!§§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 §§goto(addr132);
                              }
                           }
                        }
                        addr77:
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(_loc1_.subMeatType);
                              if(!_loc2_)
                              {
                                 §§push("_");
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       §§push(_loc1_.subSauceType);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc3_)
                                          {
                                             §§goto(addr135);
                                          }
                                       }
                                       §§goto(addr135);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr132);
                                 §§goto(addr132);
                              }
                           }
                        }
                        §§push(_loc1_.isMeat());
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§push(_loc1_.type);
                        if(_loc3_ || _loc2_)
                        {
                           addr132:
                           §§push(_loc1_.subSauceType);
                           if(!_loc2_)
                           {
                              §§push(null);
                           }
                           §§push(§§pop() + "_");
                           if(_loc3_)
                           {
                              addr135:
                              return §§pop() + _loc1_.sauceType;
                           }
                        }
                     }
                  }
               }
               §§push(§§pop() == §§pop());
               if(_loc3_ || _loc2_)
               {
                  §§push(!§§pop());
                  if(_loc3_ || Boolean(_loc1_))
                  {
                  }
                  §§goto(addr107);
               }
               §§goto(addr77);
            }
            §§goto(addr141);
         }
         addr141:
         _loc1_.type;
         return §§pop();
      }
      
      public function getRotationOnPlate() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:FoodItem = this;
         §§push(_loc1_.clip.rotation - _loc1_.extraDefaultRotation);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc3_ || Boolean(this))
            {
               §§push(360);
               if(_loc3_ || _loc2_)
               {
                  _loc2_ = §§pop() % §§pop();
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                     addr90:
                     _loc2_ = §§pop() + §§pop();
                     addr89:
                  }
               }
               if(§§pop() < §§pop())
               {
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr89);
                        §§push(360);
                     }
                     §§goto(addr90);
                  }
               }
            }
            §§goto(addr93);
         }
         addr93:
         _loc2_;
         return §§pop();
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:FoodItem = this;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            _loc1_.clip.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickItem);
         }
         try
         {
            §§push(_loc1_.gameObj);
            if(_loc3_ || _loc3_)
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_UP,_loc1_.releaseItem);
               if(_loc3_)
               {
                  §§push(_loc1_.gameObj);
               }
            }
            §§pop().stage.removeEventListener(Event.MOUSE_LEAVE,_loc1_.releaseItem);
            if(_loc3_ || Boolean(this))
            {
               addr80:
               if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  if(_loc4_ && Boolean(this))
                  {
                  }
                  addr134:
                  _loc1_.clip = null;
                  addr115:
               }
               try
               {
                  addr102:
                  _loc1_.clip.parent.removeChild(_loc1_.clip);
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr115);
                  }
               }
               catch(err:Error)
               {
                  §§goto(addr134);
               }
            }
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateItem);
            if(_loc3_)
            {
               §§goto(addr102);
            }
         }
         catch(err:Error)
         {
            var _loc2_:* = err;
            §§goto(addr80);
         }
      }
   }
}

