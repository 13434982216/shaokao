package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-CI§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   import wingGame.screens.BuildScreen;
   
   public class FoodPlate
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var startX:Number = 111;
      
      public var startY:Number = 87;
      
      public var endX:Number = 780;
      
      public var tweenSpeed:Number = 2;
      
      public var foodItems:Vector.<FoodItem>;
      
      public var dipItems:Vector.<DipItem>;
      
      public var splatBitmap:Bitmap;
      
      public var splatBMP:BitmapData;
      
      public var splatsAdded:Number = 0;
      
      public var splatsX:Array;
      
      public var splatsY:Array;
      
      public var ticketHolderClip:MovieClip = null;
      
      public var ticketHolderTargetX:Number = -99;
      
      public var ticketHolderStartX:Number = -210;
      
      public var ticketHolderTargetY:Number = 67;
      
      public var ticketHolderSpeed:Number = 2;
      
      public var attachedTicket:Ticket;
      
      public var animatePlateOut:Boolean = false;
      
      public var isFinished:Boolean = false;
      
      public function FoodPlate(param1:§_-BY§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            this.splatsX = [];
            if(_loc2_ || _loc3_)
            {
               this.splatsY = [];
               if(!(_loc3_ && Boolean(param1)))
               {
                  super();
                  if(_loc3_ && Boolean(param1))
                  {
                  }
                  addr73:
                  this.setupPlate();
               }
            }
            this.gameObj = param1;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr73);
            }
         }
      }
      
      public function setupPlate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:FoodPlate = this;
         _loc1_.clip = new build_plate();
         §§push(_loc1_.gameObj);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop().§_-7q§);
            if(!_loc2_)
            {
               §§pop().clip.plateholder.addChild(_loc1_.clip);
               _loc1_.clip.mouseEnabled = false;
               if(_loc3_)
               {
                  _loc1_.clip.mouseChildren = true;
                  _loc1_.clip.splatholder.mouseEnabled = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.clip.splatholder.mouseChildren = false;
                     if(_loc3_)
                     {
                        _loc1_.clip.x = this.startX;
                     }
                     _loc1_.clip.y = this.startY;
                  }
                  addr222:
                  §§push(_loc1_.gameObj.§_-7q§);
               }
               _loc1_.foodItems = new Vector.<FoodItem>();
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.dipItems = new Vector.<DipItem>();
                  if(!_loc2_)
                  {
                     _loc1_.clip.plateinside.gotoAndStop(1);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§push(_loc1_.gameObj);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(§§pop().userData);
                           if(_loc3_)
                           {
                              §§push(§§pop().hasBonus("plateguide2"));
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       _loc1_.clip.plateinside.gotoAndStop(3);
                                       if(_loc3_)
                                       {
                                       }
                                       §§goto(addr222);
                                    }
                                    else
                                    {
                                       addr154:
                                       _loc1_.clip.plateinside.gotoAndStop(2);
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc1_.gameObj);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop().userData);
                                    }
                                 }
                              }
                              addr151:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr154);
                                 }
                                 §§goto(addr229);
                              }
                           }
                           §§goto(addr151);
                           §§push(§§pop().hasBonus("plateguide1"));
                        }
                        §§goto(addr222);
                     }
                     addr186:
                     _loc1_.clip.splatholder.addChild(_loc1_.splatBitmap);
                     if(!_loc2_)
                     {
                        §§push(_loc1_.gameObj);
                        if(_loc3_ || _loc2_)
                        {
                        }
                     }
                     §§goto(addr222);
                  }
               }
               _loc1_.splatBMP = new BitmapData(_loc1_.clip.width,_loc1_.clip.height,true,0);
               if(!_loc2_)
               {
                  _loc1_.splatBitmap = new Bitmap(_loc1_.splatBMP);
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr186);
                  }
                  §§goto(addr229);
               }
               §§goto(addr222);
            }
            §§goto(addr225);
         }
         §§push(§§pop().§_-7q§);
         if(!(_loc2_ && _loc3_))
         {
            §§pop().clip.done_btn.visible = false;
            §§goto(addr222);
         }
         addr225:
         §§pop().clip.trash_btn.visible = false;
         addr229:
      }
      
      public function addItemToPlate(param1:FoodItem) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FoodPlate = this;
         _loc2_.foodItems.push(param1);
         §§push(_loc2_.gameObj);
         if(_loc4_)
         {
            §§push(§§pop().§_-7q§);
            if(_loc4_)
            {
               §§pop().clip.done_btn.visible = true;
               §§push(_loc2_.gameObj);
               if(_loc4_ || Boolean(this))
               {
                  §§push(§§pop().§_-7q§);
                  if(_loc3_ && Boolean(param1))
                  {
                  }
                  §§goto(addr122);
               }
               addr121:
               addr122:
               addr126:
               if(§§pop().wingQueue.length == 0)
               {
                  addr129:
                  _loc2_.gameObj.§_-8o§();
               }
               return;
               §§push(§§pop().§_-7q§);
            }
            §§pop().clip.trash_btn.visible = true;
            if(_loc4_)
            {
               §§push(_loc2_.gameObj);
               if(_loc4_)
               {
               }
               §§goto(addr121);
            }
            addr91:
            §§push(_loc2_.gameObj);
            if(_loc4_)
            {
               §§push(§§pop().§_-DZ§ == 23);
               if(!_loc3_)
               {
                  addr100:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr126);
               }
               addr104:
               §§pop();
               §§push(_loc2_.gameObj);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§goto(addr121);
               }
            }
            §§goto(addr129);
         }
         §§push(§§pop().§_-3f§);
         if(!_loc3_)
         {
            §§push(§§pop());
            if(_loc4_ || _loc3_)
            {
            }
            §§goto(addr122);
         }
         §§push(§§pop());
         if(!(_loc3_ && _loc3_))
         {
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§pop();
                  if(_loc4_)
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr129);
               }
               §§goto(addr104);
            }
         }
         §§goto(addr100);
      }
      
      public function removeItemFromPlate(param1:FoodItem) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:FoodPlate = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.foodItems.length)
         {
            if(_loc2_.foodItems[_loc3_] == param1)
            {
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  _loc2_.foodItems.splice(_loc3_,1);
                  if(_loc4_)
                  {
                  }
               }
               break;
            }
            _loc3_++;
            if(!_loc4_)
            {
               break;
            }
         }
      }
      
      public function addDipToPlate(param1:DipItem) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FoodPlate = this;
         if(!_loc3_)
         {
            _loc2_.dipItems.push(param1);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(_loc2_.gameObj);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop().§_-7q§);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§pop().clip.done_btn.visible = true;
                     if(_loc4_)
                     {
                     }
                  }
                  addr70:
                  §§pop().clip.trash_btn.visible = true;
               }
               addr69:
               §§goto(addr70);
               §§push(§§pop().§_-7q§);
            }
            §§goto(addr69);
            §§push(_loc2_.gameObj);
         }
      }
      
      public function removeDipFromPlate(param1:DipItem) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:FoodPlate = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.dipItems.length)
         {
            if(_loc2_.dipItems[_loc3_] == param1)
            {
               if(_loc5_)
               {
                  break;
               }
               _loc2_.dipItems.splice(_loc3_,1);
               if(!_loc5_)
               {
                  break;
               }
            }
            else
            {
               _loc3_++;
               if(!_loc4_)
               {
                  break;
               }
            }
         }
      }
      
      public function sortDips() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:FoodPlate = this;
         var _loc2_:Vector.<DipItem> = _loc1_.dipItems.sort(_loc1_.sortFunction);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc1_.clip.dipholder.setChildIndex(_loc2_[_loc3_].clip,_loc1_.clip.dipholder.numChildren - 1);
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc3_++;
               if(_loc5_)
               {
                  break;
               }
            }
         }
      }
      
      public function sortFunction(param1:DipItem, param2:DipItem) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param1))
         {
            if(param1.clip.y < param2.clip.y)
            {
               if(_loc3_ || Boolean(param1))
               {
               }
            }
            else if(param1.clip.y > param2.clip.y)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(1);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr76);
                  }
               }
               §§goto(addr78);
            }
            addr78:
            return §§pop();
            §§push(0);
         }
         §§push(-1);
         if(!_loc4_)
         {
            return §§pop();
         }
         addr76:
         return §§pop();
      }
      
      public function sortItemFunction(param1:FoodItem, param2:FoodItem) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(this))
         {
            if(param1.clip.y < param2.clip.y)
            {
               if(_loc3_)
               {
                  §§push(-1);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  §§push(1);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
            }
            else if(param1.clip.y > param2.clip.y)
            {
               if(!_loc4_)
               {
                  §§goto(addr63);
               }
            }
            §§goto(addr68);
         }
         addr68:
         0;
         return §§pop();
      }
      
      public function addSauceSplat(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc10_:MovieClip = null;
         var _loc8_:FoodPlate = this;
         var _loc9_:MovieClip = new MovieClip();
         if(_loc15_ || Boolean(param2))
         {
            §§push(param1);
            if(_loc15_)
            {
               §§push(FoodData.MEAT_WING);
               if(!(_loc16_ && Boolean(param1)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc15_)
                     {
                        _loc10_ = new meat_wing_splat();
                     }
                     else
                     {
                        addr100:
                        _loc10_ = new meat_shrimp_splat();
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc16_ && Boolean(param1)))
                     {
                        §§push(FoodData.MEAT_BONELESS);
                        if(_loc16_)
                        {
                        }
                        addr108:
                        if(§§pop() == §§pop())
                        {
                           addr109:
                           _loc10_ = new meat_strips_splat();
                        }
                     }
                  }
                  addr113:
                  _loc10_.x = param3;
                  if(_loc15_)
                  {
                     _loc10_.y = param4;
                     _loc10_.rotation = param5;
                     if(!(_loc16_ && Boolean(param1)))
                     {
                        _loc10_.scaleX = param6;
                        _loc10_.scaleY = param7;
                        if(_loc15_ || Boolean(param2))
                        {
                           _loc10_.gotoAndStop(FoodData.getSauceFrame(param2));
                           _loc9_.addChild(_loc10_);
                        }
                     }
                  }
                  var _loc11_:MovieClip = new MovieClip();
                  _loc11_.graphics.beginFill(16711680,1);
                  if(!(_loc16_ && Boolean(param1)))
                  {
                     _loc11_.graphics.drawCircle(133,133,133);
                     if(_loc15_ || Boolean(this))
                     {
                        _loc11_.graphics.endFill();
                        if(!_loc16_)
                        {
                           _loc9_.addChild(_loc11_);
                           if(_loc16_ && Boolean(this))
                           {
                           }
                           addr206:
                           var _loc12_:BitmapData = new BitmapData(_loc8_.splatBMP.width,_loc8_.splatBMP.height,true,0);
                           _loc12_.draw(_loc9_);
                           if(!(_loc16_ && Boolean(param1)))
                           {
                              _loc8_.splatBMP.copyPixels(_loc12_,_loc12_.rect,new Point(0,0),null,null,true);
                              if(_loc15_ || Boolean(this))
                              {
                                 _loc12_.dispose();
                              }
                           }
                           _loc12_ = null;
                           if(!_loc16_)
                           {
                              _loc9_.removeChild(_loc11_);
                              if(_loc16_ && Boolean(param3))
                              {
                              }
                              addr268:
                              _loc9_ = null;
                              _loc11_ = null;
                              _loc10_ = null;
                              if(_loc15_ || Boolean(param1))
                              {
                                 var _loc13_:* = _loc8_;
                                 §§push(_loc13_.splatsAdded);
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc14_:* = §§pop();
                                 if(!_loc16_)
                                 {
                                    _loc13_.splatsAdded = _loc14_;
                                 }
                                 if(_loc16_ && Boolean(param2))
                                 {
                                 }
                                 addr336:
                                 _loc8_.splatsY.push(param4);
                                 addr337:
                                 return;
                                 addr333:
                                 addr335:
                              }
                              §§push(_loc8_.splatsX);
                              if(_loc15_ || Boolean(param3))
                              {
                                 §§push(param3);
                                 if(!_loc16_)
                                 {
                                    §§pop().push(§§pop());
                                    if(!(_loc16_ && Boolean(param1)))
                                    {
                                       §§goto(addr333);
                                    }
                                    §§goto(addr337);
                                 }
                                 §§goto(addr336);
                              }
                              §§goto(addr335);
                           }
                           _loc9_.removeChild(_loc10_);
                           §§goto(addr268);
                        }
                     }
                  }
                  _loc10_.mask = _loc11_;
                  §§goto(addr206);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc16_ && Boolean(this))
                  {
                     §§goto(addr100);
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc15_ || Boolean(param2))
                  {
                  }
                  addr106:
                  §§goto(addr108);
                  §§push(FoodData.MEAT_STRIPS);
               }
               §§goto(addr113);
            }
            §§push(FoodData.MEAT_SHRIMP);
            if(!(_loc16_ && Boolean(this)))
            {
               if(§§pop() == §§pop())
               {
                  if(!(_loc16_ && Boolean(param1)))
                  {
                     §§goto(addr100);
                  }
                  else
                  {
                     §§goto(addr109);
                  }
               }
               else
               {
                  §§goto(addr106);
                  §§push(param1);
               }
               §§goto(addr113);
            }
            §§goto(addr108);
         }
         _loc10_ = new meat_boneless_splat();
         §§goto(addr113);
      }
      
      public function eraseSplats(param1:Number, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:FoodPlate = this;
         var _loc4_:Number = 35;
         var _loc5_:* = 0;
         if(!_loc9_)
         {
            §§push(param1);
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               §§push(§§pop() - _loc3_.clip.x);
               if(_loc10_ || Boolean(_loc3_))
               {
                  param1 = §§pop();
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     §§push(param2 - _loc3_.clip.y);
                  }
               }
               param2 = §§pop();
            }
            addr64:
            var _loc6_:* = §§pop();
            while(true)
            {
               §§push(_loc6_);
               while(true)
               {
                  if(§§pop() < 0)
                  {
                     _loc3_.eraseCircle(param1,param2);
                     return;
                  }
                  §§push(Math.sqrt((param1 - _loc3_.splatsX[_loc6_]) * (param1 - _loc3_.splatsX[_loc6_]) + (param2 - _loc3_.splatsY[_loc6_]) * (param2 - _loc3_.splatsY[_loc6_])));
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop());
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        _loc5_ = §§pop();
                     }
                     addr122:
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           §§push(_loc3_.splatsX);
                           if(_loc10_)
                           {
                              §§push(_loc6_);
                              if(_loc10_)
                              {
                                 addr150:
                                 §§push(1);
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    §§pop().splice(§§pop(),§§pop());
                                    §§push(_loc3_.splatsY);
                                 }
                                 §§pop().splice(§§pop(),§§pop());
                              }
                              addr149:
                              §§goto(addr150);
                              §§push(1);
                           }
                           §§goto(addr149);
                           §§push(_loc6_);
                        }
                        var _loc7_:*;
                        §§push((_loc7_ = _loc3_).splatsAdded);
                        if(_loc10_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc8_:* = §§pop();
                        if(!_loc9_)
                        {
                           _loc7_.splatsAdded = _loc8_;
                        }
                     }
                     §§push(_loc6_);
                     if(_loc9_ && Boolean(_loc3_))
                     {
                        break;
                     }
                     §§push(§§pop() - 1);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr122);
                  §§push(_loc4_);
               }
               _loc6_ = §§pop();
            }
         }
         §§goto(addr64);
         §§push(_loc3_.splatsX.length - 1);
      }
      
      private function eraseCircle(param1:Number, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc3_:Number = 35;
         var _loc4_:uint = 0;
         var _loc5_:* = 0;
         var _loc6_:* = int(_loc3_);
         §§push(_loc3_);
         if(_loc14_ || Boolean(param2))
         {
            §§push(-§§pop());
         }
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               §§push(_loc6_);
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     return;
                  }
                  §§push(param1);
                  §§push(_loc5_);
                  if(_loc14_ || Boolean(param2))
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc13_)
                     {
                        addr272:
                        §§push(§§pop());
                        if(_loc14_)
                        {
                           _loc8_ = §§pop();
                           §§push(param1);
                        }
                        _loc7_ = §§pop();
                        continue loop0;
                     }
                     §§push(_loc6_);
                     if(_loc13_)
                     {
                     }
                     addr244:
                     if(§§pop() >= §§pop())
                     {
                        addr245:
                        §§push(_loc7_);
                        if(_loc14_)
                        {
                           §§push(_loc6_);
                           if(!_loc14_)
                           {
                              break;
                           }
                           addr251:
                           §§push(§§pop() - 1);
                           if(_loc14_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  _loc9_ = §§pop() - §§pop();
                  if(_loc14_ || Boolean(this))
                  {
                     §§push(_loc5_);
                     §§push(_loc5_);
                     if(_loc14_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc14_)
                        {
                           §§push(§§pop());
                           if(_loc14_ || Boolean(this))
                           {
                              _loc10_ = §§pop();
                              addr192:
                              §§push(_loc6_);
                              §§push(_loc6_);
                              if(_loc14_ || Boolean(_loc3_))
                              {
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop());
                              if(!(_loc13_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    §§push(§§pop());
                                    if(_loc14_)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc14_ || Boolean(param2))
                                       {
                                       }
                                       addr269:
                                       §§push(§§pop());
                                       if(_loc14_)
                                       {
                                          addr267:
                                          §§push(§§pop());
                                       }
                                       §§goto(addr272);
                                       §§push(int(§§pop() - (§§pop() + §§pop())));
                                    }
                                    _loc6_ = §§pop();
                                    §§goto(addr269);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc14_ || Boolean(_loc3_))
                              {
                                 var _loc12_:* = §§pop() + §§pop();
                                 §§push(_loc12_);
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    _loc7_ = §§pop();
                                    §§push(_loc12_);
                                 }
                                 if(_loc14_)
                                 {
                                    §§goto(addr244);
                                    §§push(0);
                                 }
                              }
                              §§goto(addr269);
                           }
                           addr103:
                           _loc11_ = §§pop();
                           §§push(this);
                           §§push(_loc8_);
                           §§push(param2);
                           if(_loc14_ || Boolean(this))
                           {
                              addr119:
                              §§push(_loc6_);
                              if(_loc14_)
                              {
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().eraseLine(§§pop(),§§pop(),§§pop(),_loc4_);
                              §§push(this);
                              §§push(_loc8_);
                              §§push(param2);
                              if(!(_loc13_ && Boolean(_loc3_)))
                              {
                                 addr143:
                                 §§push(_loc6_);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().eraseLine(§§pop(),§§pop(),§§pop(),_loc4_);
                                 if(_loc14_ || Boolean(this))
                                 {
                                    §§push(this);
                                    §§push(_loc9_);
                                    §§push(param2);
                                    if(_loc14_ || Boolean(_loc3_))
                                    {
                                       addr172:
                                       §§push(_loc5_);
                                       if(_loc14_ || Boolean(this))
                                       {
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().eraseLine(§§pop(),§§pop(),§§pop(),_loc4_);
                                       §§push(this);
                                       §§push(_loc9_);
                                       §§push(param2);
                                       if(!_loc13_)
                                       {
                                          addr184:
                                          §§push(_loc5_);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().eraseLine(§§pop(),§§pop(),§§pop(),_loc4_);
                                          if(_loc13_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc7_);
                                          §§push(_loc5_);
                                          if(!_loc13_)
                                          {
                                             §§goto(addr192);
                                          }
                                       }
                                       §§goto(addr184);
                                       §§push(_loc11_);
                                    }
                                    §§goto(addr172);
                                    §§push(_loc11_);
                                 }
                              }
                              §§goto(addr143);
                              §§push(_loc10_);
                           }
                           §§goto(addr119);
                           §§push(_loc10_);
                        }
                        §§goto(addr103);
                        §§push(§§pop());
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr245);
               }
               §§push(§§pop());
               if(!_loc13_)
               {
                  §§goto(addr269);
               }
               §§goto(addr267);
            }
         }
      }
      
      private function eraseLine(param1:Number, param2:Number, param3:Number, param4:uint) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:int = 0;
         while(_loc5_ < param3)
         {
            this.splatBMP.setPixel32(param1 + _loc5_,param2,param4);
            if(_loc6_ || Boolean(param1))
            {
               _loc5_++;
               if(_loc7_ && Boolean(param3))
               {
                  break;
               }
            }
         }
      }
      
      public function bumpLettuce() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FoodPlate = this;
         if(_loc2_)
         {
            _loc1_.clip.lettuce.gotoAndPlay("bump");
         }
      }
      
      public function resetLettuce() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FoodPlate = this;
         if(!_loc3_)
         {
            _loc1_.clip.lettuce.gotoAndStop(1);
         }
      }
      
      public function getSauceForCustomer() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:FoodPlate = this;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.foodItems.length)
         {
            if(_loc1_.foodItems[_loc3_].isMeat())
            {
               if(_loc4_)
               {
                  addr71:
                  break;
               }
               §§push(_loc1_.foodItems[_loc3_].sauceType);
               if(!_loc5_)
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
               if(_loc4_ && Boolean(_loc1_))
               {
                  break;
               }
            }
         }
         §§goto(addr71);
         §§push(_loc2_);
      }
      
      public function getIsOversaucedForCustomer() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:FoodPlate = this;
         var _loc2_:* = false;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.foodItems.length)
         {
            if(_loc1_.foodItems[_loc3_].isMeat())
            {
               if(!_loc4_)
               {
                  §§push(_loc1_.foodItems[_loc3_].isOversauced());
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                     }
                     break;
                  }
                  §§goto(addr76);
               }
               break;
            }
            _loc3_++;
            if(_loc4_ && Boolean(_loc3_))
            {
               break;
            }
         }
         addr76:
         _loc2_;
         return §§pop();
      }
      
      public function getFoodForCustomer() : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:MovieClip = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc1_:FoodPlate = this;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         if(_loc9_)
         {
            _loc2_ = 0;
         }
         while(_loc2_ < _loc1_.foodItems.length)
         {
            if(!_loc1_.foodItems[_loc2_].isMeat())
            {
               _loc2_++;
               if(!(_loc9_ || Boolean(_loc3_)))
               {
                  break;
               }
               continue;
            }
            if(_loc8_)
            {
               continue;
            }
            _loc3_ = _loc1_.foodItems[_loc2_].generateMeatForHand();
            if(_loc9_)
            {
               _loc1_.foodItems[_loc2_].clip.visible = false;
               _loc4_ = true;
               if(_loc9_)
               {
                  break;
               }
               addr180:
               addr184:
               if(_loc2_ < _loc1_.foodItems.length)
               {
                  addr215:
                  §§push("build_side_");
                  if(_loc9_)
                  {
                     §§push(§§pop() + _loc1_.foodItems[_loc2_].type);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(!_loc8_)
                        {
                           _loc6_ = §§pop();
                           _loc3_ = §_-CI§.§_-2l§(_loc6_,false,false);
                           if(_loc9_ || Boolean(_loc1_))
                           {
                              _loc3_.scaleX = _loc1_.foodItems[_loc2_].clip.scaleX;
                              if(_loc9_)
                              {
                              }
                              addr177:
                           }
                           _loc3_.scaleY = _loc1_.foodItems[_loc2_].clip.scaleY;
                           if(!_loc8_)
                           {
                              _loc1_.foodItems[_loc2_].clip.visible = false;
                              if(_loc9_)
                              {
                              }
                              §§goto(addr177);
                           }
                           _loc5_ = true;
                           §§goto(addr177);
                        }
                        addr222:
                        _loc7_ = §§pop();
                     }
                     addr221:
                     §§goto(addr222);
                     §§push(§§pop());
                  }
                  §§goto(addr221);
                  §§push(§§pop() + _loc1_.dipItems[0].type);
               }
               §§push(_loc4_);
               §§push(false);
               if(_loc9_)
               {
                  addr188:
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc9_)
                  {
                     §§goto(addr204);
                  }
               }
               addr204:
               if(§§pop())
               {
                  if(_loc9_ || Boolean(_loc2_))
                  {
                     §§pop();
                     §§push(_loc5_);
                     §§push(false);
                  }
               }
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     addr207:
                     if(_loc1_.dipItems.length > 0)
                     {
                        if(_loc9_)
                        {
                           §§goto(addr215);
                           §§push("build_side_");
                        }
                     }
                     else
                     {
                        _loc3_ = new MovieClip();
                     }
                  }
                  §§goto(addr284);
               }
               _loc3_.scaleX *= 0.6;
               if(_loc9_)
               {
                  §§goto(addr284);
               }
               addr284:
               _loc3_.scaleY *= 0.6;
               _loc3_.stop();
               return _loc3_;
               §§push(§§pop() == §§pop());
               addr108:
            }
            _loc3_ = §_-CI§.§_-2l§(_loc7_,false,false);
            if(!_loc8_)
            {
               _loc3_.gotoAndStop(3);
               if(!(_loc8_ && Boolean(_loc1_)))
               {
                  _loc3_.scaleY = 0.6;
                  if(_loc8_ && Boolean(_loc3_))
                  {
                  }
               }
               _loc3_.y = 8;
               if(_loc9_)
               {
               }
               addr264:
               §§goto(addr204);
            }
            _loc1_.dipItems[0].clip.visible = false;
            §§goto(addr264);
         }
         §§push(_loc4_);
         if(_loc9_ || Boolean(this))
         {
            §§push(false);
            if(_loc9_ || Boolean(this))
            {
               if(§§pop() == §§pop())
               {
                  §§push(0);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     _loc2_ = §§pop();
                     if(_loc9_)
                     {
                        §§goto(addr108);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr180);
               }
               §§goto(addr184);
            }
            §§goto(addr188);
         }
         §§goto(addr204);
      }
      
      public function moveToGiveOrder() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:FoodPlate = this;
         if(_loc5_)
         {
            _loc1_.clip.scaleX = 0.6;
            if(!_loc4_)
            {
               _loc1_.clip.scaleY = 0.6;
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc1_.clip.x = 82;
                  _loc1_.clip.y = 250;
                  if(!_loc4_)
                  {
                     _loc1_.clip.plateinside.scaleY = 0.51;
                  }
                  §§goto(addr150);
               }
               §§goto(addr82);
            }
            _loc1_.clip.lettuce.scaleY = 0.62;
            _loc1_.clip.frontholder.scaleY = 0.85;
            _loc1_.clip.backholder.scaleY = 0.75;
            if(_loc5_)
            {
               _loc1_.clip.frontholder.y -= 15;
               if(!_loc4_)
               {
                  addr82:
                  _loc1_.clip.backholder.y += 20;
                  _loc1_.clip.dipholder.scaleY = 0.75;
                  _loc1_.clip.dipholder.y += 20;
                  if(_loc5_)
                  {
                  }
               }
               §§goto(addr150);
            }
            addr140:
            _loc1_.clip.setChildIndex(_loc1_.clip.frontholder,_loc1_.clip.numChildren - 1);
            §§goto(addr150);
         }
         _loc1_.clip.splatholder.scaleY = 0.51;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            _loc1_.clip.splatholder.y = 60;
            if(_loc4_ && Boolean(_loc2_))
            {
            }
            addr150:
            _loc2_ = 0;
            while(_loc2_ < _loc1_.foodItems.length)
            {
               _loc1_.foodItems[_loc2_].adjustForGiveOrder();
               if(!_loc5_)
               {
                  break;
               }
               _loc2_++;
               if(_loc4_)
               {
                  break;
               }
            }
            var _loc3_:Vector.<FoodItem> = _loc1_.foodItems.sort(_loc1_.sortItemFunction);
            §§push(0);
            if(_loc5_)
            {
               _loc2_ = §§pop();
               if(_loc5_)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                  }
                  addr244:
               }
               while(true)
               {
                  _loc1_.clip.frontholder.setChildIndex(_loc3_[_loc2_].clip,_loc1_.clip.frontholder.numChildren - 1);
                  addr243:
                  while(true)
                  {
                     _loc2_++;
                     §§goto(addr244);
                  }
               }
               addr200:
            }
            while(§§pop() < _loc3_.length)
            {
               if(_loc3_[_loc2_].clip.parent == _loc1_.clip.frontholder)
               {
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     §§goto(addr200);
                  }
                  else
                  {
                     §§goto(addr263);
                  }
               }
               else if(_loc3_[_loc2_].clip.parent == _loc1_.clip.backholder)
               {
                  _loc1_.clip.backholder.setChildIndex(_loc3_[_loc2_].clip,_loc1_.clip.backholder.numChildren - 1);
                  if(!(_loc5_ || Boolean(_loc2_)))
                  {
                     break;
                  }
               }
               §§goto(addr243);
            }
            _loc1_.gameObj.§_-Bq§.clip.plate_holder.addChild(_loc1_.clip);
            addr263:
            return;
         }
         §§goto(addr140);
      }
      
      public function finishPlate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FoodPlate = this;
         if(!_loc3_)
         {
            _loc1_.isFinished = true;
            if(!_loc3_)
            {
               _loc1_.clip.mouseEnabled = false;
               if(_loc2_)
               {
               }
            }
            _loc1_.clip.mouseChildren = false;
            if(_loc3_ && _loc2_)
            {
            }
            §§goto(addr56);
         }
         _loc1_.addTicketHolder();
         addr56:
      }
      
      public function startDeliveringOrder() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:FoodPlate = this;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.animatePlateOut = true;
            if(!_loc2_)
            {
               _loc1_.gameObj.soundManager.playSound("trayslide.wav");
            }
         }
      }
      
      public function attachTicket(param1:Ticket) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = false;
         var _loc2_:FoodPlate = this;
         if(_loc5_ || Boolean(param1))
         {
            §§push(_loc2_.gameObj);
            if(_loc5_ || _loc3_)
            {
               §§pop().hud.disableStationButtons();
               if(!(_loc6_ && _loc3_))
               {
                  _loc2_.attachedTicket = param1;
               }
            }
            addr48:
            var _loc3_:BuildScreen = §§pop().§_-7q§;
            §§push(_loc3_.lastPattern);
            if(!(_loc6_ && Boolean(this)))
            {
               if(§§pop() > 0)
               {
                  if(!_loc6_)
                  {
                     _loc4_ = false;
                     if(_loc5_)
                     {
                        §§push(param1.customerType);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop() == 12);
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc3_.lastPattern);
                                    §§push(2);
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                       }
                                       addr282:
                                       addr283:
                                       if(§§pop())
                                       {
                                          addr293:
                                          if(!_loc6_)
                                          {
                                             addr286:
                                             §§pop();
                                             §§push(_loc3_.lastPattern == 8);
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             addr301:
                                             if(_loc4_)
                                             {
                                                _loc3_.gameObj.userData["hasTrainedPattern" + _loc3_.lastPattern] = true;
                                             }
                                          }
                                          _loc3_.lastPattern = 0;
                                       }
                                       if(§§pop())
                                       {
                                          addr292:
                                          §§goto(addr293);
                                          §§push(true);
                                       }
                                       §§goto(addr301);
                                    }
                                    addr199:
                                    if(§§pop() == §§pop())
                                    {
                                       addr201:
                                       _loc4_ = true;
                                    }
                                    else
                                    {
                                       §§push(param1.customerType);
                                       if(!_loc6_)
                                       {
                                          addr210:
                                          addr208:
                                          addr209:
                                          §§push(§§pop() == 23);
                                          §§push(§§pop() == 23);
                                          if(_loc5_)
                                          {
                                          }
                                          addr241:
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                addr249:
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   addr252:
                                                   §§push(_loc3_.lastPattern);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr286);
                                          }
                                          addr256:
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && Boolean(this)))
                                             {
                                                addr265:
                                                _loc4_ = true;
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1.customerType);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                                §§push(27);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr282);
                                                   }
                                                }
                                             }
                                             §§goto(addr286);
                                          }
                                       }
                                       addr255:
                                       §§goto(addr256);
                                       §§push(§§pop() == 7);
                                    }
                                    §§goto(addr301);
                                 }
                                 if(§§pop())
                                 {
                                    _loc4_ = true;
                                    if(!_loc5_)
                                    {
                                       addr229:
                                       §§push(true);
                                       if(!_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          §§goto(addr301);
                                       }
                                       else
                                       {
                                          §§goto(addr249);
                                       }
                                    }
                                    §§goto(addr293);
                                 }
                                 else
                                 {
                                    §§push(param1.customerType == 20);
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             addr217:
                                             §§push(_loc3_.lastPattern);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() == 3);
                                             }
                                             §§push(6);
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr228:
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr229);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1.customerType);
                                                   }
                                                }
                                                §§goto(addr286);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             _loc4_ = true;
                                          }
                                          else
                                          {
                                             §§push(param1.customerType);
                                          }
                                          §§goto(addr301);
                                       }
                                       §§goto(addr283);
                                    }
                                    addr214:
                                    §§pop();
                                    §§goto(addr217);
                                    §§push(_loc3_.lastPattern);
                                 }
                                 §§goto(addr255);
                              }
                              if(§§pop())
                              {
                                 §§goto(addr214);
                              }
                              §§goto(addr228);
                           }
                           addr158:
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 _loc4_ = true;
                                 if(!(_loc5_ || Boolean(_loc2_)))
                                 {
                                    §§goto(addr252);
                                 }
                              }
                              else
                              {
                                 §§goto(addr201);
                              }
                              §§goto(addr301);
                           }
                           else
                           {
                              §§push(param1.customerType);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop() == 22);
                                 if(_loc5_)
                                 {
                                    addr192:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop();
                                          §§goto(addr199);
                                          §§push(_loc3_.lastPattern);
                                          §§push(5);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr265);
                              }
                              §§goto(addr208);
                           }
                        }
                        §§push(§§pop() == 25);
                        §§push(§§pop() == 25);
                        if(!_loc6_)
                        {
                           §§goto(addr241);
                        }
                        §§goto(addr282);
                     }
                     §§goto(addr301);
                  }
                  §_-5i§.§_-CE§(">>>  Set flag for trained pattern: " + _loc3_.lastPattern);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§goto(addr293);
                  }
               }
               return;
            }
            §§push(§§pop() == 13);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr158);
               }
               §§goto(addr192);
            }
            §§pop();
            §§push(_loc3_.lastPattern);
            §§push(4);
            if(!_loc6_)
            {
               §§goto(addr158);
               §§push(§§pop() == §§pop());
            }
            §§goto(addr209);
         }
         §§goto(addr48);
         §§push(_loc2_.gameObj);
      }
      
      public function addTicketHolder() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FoodPlate = this;
         if(_loc2_)
         {
            if(_loc1_.ticketHolderClip == null)
            {
               if(!_loc3_)
               {
                  _loc1_.ticketHolderClip = new ticketHolderMC();
                  _loc1_.clip.addChild(_loc1_.ticketHolderClip);
                  _loc1_.ticketHolderClip.x = _loc1_.ticketHolderStartX;
               }
               _loc1_.ticketHolderClip.y = _loc1_.ticketHolderTargetY;
               if(_loc3_)
               {
               }
            }
            §§goto(addr66);
         }
         _loc1_.ticketHolderClip.addEventListener(Event.ENTER_FRAME,_loc1_.animateTicketHolder);
         addr66:
      }
      
      public function animateTicketHolder(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc2_:FoodPlate = this;
         §§push(_loc2_.ticketHolderTargetX);
         if(!_loc6_)
         {
            §§push(§§pop() - _loc2_.ticketHolderClip.x);
            if(!_loc6_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         _loc2_.ticketHolderClip.x += _loc3_ / _loc2_.ticketHolderSpeed;
         if(!_loc6_)
         {
            if(Math.abs(_loc3_) <= 1)
            {
               if(_loc5_ || _loc3_)
               {
                  _loc2_.ticketHolderClip.x = _loc2_.ticketHolderTargetX;
               }
               §§goto(addr146);
            }
            if(_loc2_.animatePlateOut)
            {
               §§push(_loc2_.endX);
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  §§push(§§pop() - _loc2_.clip.x);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
               }
               _loc4_ = §§pop();
               if(_loc5_ || Boolean(this))
               {
                  _loc2_.clip.x += _loc4_ / _loc2_.tweenSpeed;
                  if(Math.abs(_loc4_) <= 1)
                  {
                     if(_loc6_ && _loc3_)
                     {
                     }
                  }
               }
               _loc2_.ticketHolderClip.removeEventListener(Event.ENTER_FRAME,_loc2_.animateTicketHolder);
               addr141:
               _loc2_.gameObj.hud.startTransition("giveOrder");
               addr127:
            }
            addr146:
            return;
         }
         _loc2_.animatePlateOut = false;
         if(!(_loc6_ && Boolean(this)))
         {
            §§goto(addr127);
         }
         §§goto(addr141);
      }
      
      public function destroy() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:FoodPlate = this;
         if(_loc5_)
         {
            _loc1_.splatsX = null;
            if(_loc5_)
            {
            }
            try
            {
               addr29:
               _loc1_.ticketHolderClip.removeEventListener(Event.ENTER_FRAME,_loc1_.animateTicketHolder);
            }
            catch(err:Error)
            {
               var _loc3_:* = err;
            }
            if(_loc1_.splatBitmap)
            {
               try
               {
                  _loc1_.clip.splatholder.removeChild(_loc1_.splatBitmap);
                  if(_loc4_ && Boolean(this))
                  {
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     addr164:
                     while(true)
                     {
                        if(§§pop() >= _loc1_.dipItems.length)
                        {
                           _loc1_.foodItems = null;
                           try
                           {
                              _loc1_.clip.parent.removeChild(_loc1_.clip);
                              if(!_loc4_)
                              {
                                 addr179:
                              }
                              addr201:
                              if(_loc1_.attachedTicket)
                              {
                                 _loc1_.gameObj.§_-A7§.removeTicket(_loc1_.attachedTicket);
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    _loc1_.attachedTicket = null;
                                 }
                              }
                              break loop0;
                           }
                           catch(err:Error)
                           {
                           }
                           _loc1_.clip = null;
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              §§goto(addr201);
                           }
                           break loop0;
                        }
                        addr155:
                        _loc1_.dipItems[_loc2_].destroy();
                        while(true)
                        {
                           _loc1_.dipItems[_loc2_] = null;
                           _loc2_++;
                           if(_loc4_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr163:
               }
               catch(err:Error)
               {
                  _loc3_ = err;
               }
               return;
            }
            _loc1_.splatBitmap = null;
            if(_loc1_.splatBMP != null)
            {
               _loc1_.splatBMP.dispose();
            }
            _loc1_.splatBMP = null;
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(0);
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        if(§§pop() >= _loc1_.foodItems.length)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr164);
                        }
                        else
                        {
                           _loc1_.foodItems[_loc2_].destroy();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              continue;
                           }
                        }
                        §§goto(addr155);
                     }
                     break;
                     _loc1_.foodItems[_loc2_] = null;
                     _loc2_++;
                  }
               }
               _loc2_ = §§pop();
               §§goto(addr163);
            }
            §§goto(addr179);
         }
         _loc1_.splatsY = null;
         §§goto(addr29);
      }
      
      public function getMeatItems() : Vector.<FoodItem>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:FoodPlate = this;
         var _loc2_:Vector.<FoodItem> = new Vector.<FoodItem>();
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.foodItems.length)
         {
            if(_loc1_.foodItems[_loc3_].isMeat())
            {
               if(_loc5_ || Boolean(_loc1_))
               {
                  _loc2_.push(_loc1_.foodItems[_loc3_]);
                  if(_loc4_ && Boolean(_loc2_))
                  {
                     break;
                  }
               }
            }
            _loc3_++;
            if(!_loc5_)
            {
               break;
            }
         }
         return _loc2_;
      }
      
      public function getItemsOfDistro(param1:CustomerOrder, param2:String) : Vector.<FoodItem>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:FoodPlate = this;
         var _loc6_:Vector.<FoodItem> = new Vector.<FoodItem>();
         if(!_loc8_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            §§push(param1.wings);
            if(_loc7_ || Boolean(param1))
            {
               if(§§pop() < §§pop().length)
               {
                  §§push(param1.wings);
                  if(_loc7_ || Boolean(param1))
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        if(§§pop()[§§pop()][2] != param2)
                        {
                           continue;
                        }
                        §§push(0);
                        if(!_loc8_)
                        {
                           _loc5_ = §§pop();
                           if(!_loc8_)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    if(§§pop() >= _loc3_.foodItems.length)
                                    {
                                       if(!(_loc8_ && Boolean(param2)))
                                       {
                                          continue loop0;
                                       }
                                       addr245:
                                       while(true)
                                       {
                                          _loc4_++;
                                          if(_loc8_ && Boolean(this))
                                          {
                                          }
                                          §§goto(addr265);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc3_.foodItems[_loc5_].type == param1.wings[_loc4_][0]);
                                       if(!(_loc8_ && Boolean(param2)))
                                       {
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§pop();
                                                   §§push(_loc3_.foodItems[_loc5_].sauceType == param1.wings[_loc4_][3]);
                                                   if(_loc8_)
                                                   {
                                                   }
                                                   addr144:
                                                   §§pop();
                                                   addr157:
                                                   addr145:
                                                   if(_loc3_.foodItems[_loc5_].subSauceType == param1.wings[_loc4_][3])
                                                   {
                                                      _loc6_.push(_loc3_.foodItems[_loc5_]);
                                                   }
                                                   _loc5_++;
                                                   if(!(_loc8_ && Boolean(_loc3_)))
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                          }
                                          addr136:
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && Boolean(param1)))
                                             {
                                                §§goto(addr144);
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             _loc6_.push(_loc3_.foodItems[_loc5_]);
                                             if(_loc8_ && Boolean(param2))
                                             {
                                             }
                                             addr201:
                                          }
                                          else
                                          {
                                             §§goto(addr145);
                                          }
                                          §§goto(addr144);
                                       }
                                       else
                                       {
                                          §§push(_loc3_.foodItems[_loc5_].subMeatType == param1.wings[_loc4_][0]);
                                          if(!_loc8_)
                                          {
                                             §§goto(addr136);
                                             §§push(§§pop());
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       break loop1;
                                    }
                                    addr265:
                                    return _loc6_.sort(_loc3_.sortItemRotationFunction);
                                    addr253:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(param1.sides);
                                 break loop0;
                              }
                           }
                        }
                        addr200:
                        _loc4_ = §§pop();
                        §§goto(addr201);
                     }
                     while(true)
                     {
                        if(§§pop()[§§pop()][2] == param2)
                        {
                           _loc5_ = 0;
                           if(!_loc8_)
                           {
                              while(_loc5_ < _loc3_.foodItems.length)
                              {
                                 if(_loc3_.foodItems[_loc5_].type != param1.sides[_loc4_][0])
                                 {
                                    continue;
                                 }
                                 if(_loc7_)
                                 {
                                    _loc6_.push(_loc3_.foodItems[_loc5_]);
                                    if(_loc7_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr253);
                              }
                              addr240:
                           }
                           while(true)
                           {
                              _loc5_++;
                              §§goto(addr240);
                           }
                        }
                        §§goto(addr245);
                     }
                     addr206:
                  }
                  while(true)
                  {
                     §§goto(addr206);
                  }
                  addr205:
               }
               §§goto(addr200);
               §§push(0);
            }
            break;
            _loc4_++;
         }
         while(true)
         {
            if(§§pop() < §§pop().length)
            {
               §§goto(addr205);
               §§push(param1.sides);
            }
            §§goto(addr265);
         }
      }
      
      public function getItemsOnHalf(param1:CustomerOrder, param2:String) : Vector.<FoodItem>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc3_:FoodPlate = this;
         var _loc6_:Vector.<FoodItem> = new Vector.<FoodItem>();
         if(!_loc8_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(param1.wings);
               if(_loc7_ || Boolean(param2))
               {
                  if(§§pop() >= §§pop().length)
                  {
                     §§push(0);
                     if(_loc7_ || Boolean(param2))
                     {
                        _loc4_ = §§pop();
                     }
                     while(true)
                     {
                        §§push(param1.sides);
                        break loop1;
                     }
                     addr475:
                     return _loc6_.sort(_loc3_.sortItemRotationFunction);
                     addr464:
                  }
                  else
                  {
                     _loc5_ = 0;
                     if(!_loc8_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc7_ || Boolean(param2)))
                           {
                              continue loop1;
                           }
                           if(§§pop() >= _loc3_.foodItems.length)
                           {
                              if(_loc7_ || Boolean(param1))
                              {
                                 continue loop0;
                              }
                              addr372:
                              while(true)
                              {
                              }
                           }
                           else
                           {
                              §§push(_loc3_.foodItems[_loc5_].type == param1.wings[_loc4_][0]);
                              if(_loc3_.foodItems[_loc5_].type == param1.wings[_loc4_][0])
                              {
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    §§pop();
                                    addr435:
                                    if(!_loc8_)
                                    {
                                       §§push(_loc3_.foodItems[_loc5_].sauceType == param1.wings[_loc4_][3]);
                                    }
                                    while(true)
                                    {
                                       §§push(param2);
                                       addr436:
                                       while(true)
                                       {
                                          §§push(FoodData.DISTRO_RIGHT);
                                          addr438:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             §§push(§§pop() == §§pop());
                                             addr440:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   addr441:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§push(_loc3_.foodItems[_loc5_].getRotationOnPlate() >= 180);
                                                   }
                                                   addr441:
                                                }
                                                addr449:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc6_.push(_loc3_.foodItems[_loc5_]);
                                                   }
                                                   addr456:
                                                   while(true)
                                                   {
                                                      _loc5_++;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr435:
                                 }
                                 addr97:
                                 §§pop();
                                 addr105:
                                 §§push(_loc3_.foodItems[_loc5_].getRotationOnPlate() < 180);
                                 if(!(_loc3_.foodItems[_loc5_].getRotationOnPlate() < 180))
                                 {
                                    if(!(_loc8_ && Boolean(param2)))
                                    {
                                       addr114:
                                       §§pop();
                                       §§push(param2);
                                       if(!_loc8_)
                                       {
                                          addr400:
                                          §§push(FoodData.DISTRO_RIGHT);
                                          if(!_loc8_)
                                          {
                                             addr402:
                                             §§push(§§pop() == §§pop());
                                             §§push(§§pop() == §§pop());
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(!(_loc8_ && Boolean(param1)))
                                                   {
                                                      §§push(_loc3_.foodItems[_loc5_].getRotationOnPlate() >= 180);
                                                      if(_loc7_)
                                                      {
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§push(_loc3_.foodItems[_loc5_].getRotationOnPlate() < 180);
                                                         if(!(_loc8_ && Boolean(this)))
                                                         {
                                                            addr418:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc8_ && Boolean(this)))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc7_ || Boolean(param1))
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr435);
                                                                     }
                                                                  }
                                                                  §§goto(addr449);
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                            addr418:
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                      addr403:
                                                   }
                                                   else
                                                   {
                                                      addr195:
                                                      §§push(_loc3_.foodItems[_loc5_].subSauceType == param1.wings[_loc4_][3]);
                                                      if(_loc8_ && Boolean(this))
                                                      {
                                                      }
                                                      addr277:
                                                      §§pop();
                                                      §§push(param2);
                                                      if(_loc7_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr436);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr418);
                                             }
                                             addr402:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             break loop2;
                                          }
                                          addr400:
                                       }
                                       addr281:
                                       §§push(FoodData.DISTRO_RIGHT);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc7_)
                                          {
                                             addr288:
                                             §§push(§§pop());
                                             if(!(_loc8_ && Boolean(_loc3_)))
                                             {
                                                addr305:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(_loc3_.foodItems[_loc5_].getRotationOnPlate() >= 180);
                                                }
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   addr313:
                                                   _loc6_.push(_loc3_.foodItems[_loc5_]);
                                                   if(_loc7_ || Boolean(param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr435);
                                                }
                                             }
                                             §§goto(addr402);
                                          }
                                          §§goto(addr418);
                                       }
                                       §§goto(addr438);
                                    }
                                    addr214:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!(_loc8_ && Boolean(param2)))
                                    {
                                       §§push(param2);
                                       if(!(_loc8_ && Boolean(_loc3_)))
                                       {
                                          §§push(FoodData.DISTRO_LEFT);
                                          if(!(_loc8_ && Boolean(this)))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc8_ && Boolean(this)))
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc3_.foodItems[_loc5_].getRotationOnPlate() < 180);
                                                      if(_loc7_)
                                                      {
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                if(!§§pop())
                                                {
                                                   if(!(_loc8_ && Boolean(param1)))
                                                   {
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr449);
                                                }
                                                §§goto(addr305);
                                             }
                                             break;
                                          }
                                          §§goto(addr400);
                                       }
                                       §§goto(addr281);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    _loc6_.push(_loc3_.foodItems[_loc5_]);
                                    if(!_loc7_)
                                    {
                                       §§goto(addr456);
                                    }
                                 }
                                 continue;
                              }
                              if(!§§pop())
                              {
                                 §§push(_loc3_.foodItems[_loc5_].subMeatType == param1.wings[_loc4_][0]);
                                 if(_loc7_ || Boolean(this))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && Boolean(_loc3_)))
                                       {
                                          §§pop();
                                          if(!(_loc8_ && Boolean(param2)))
                                          {
                                             §§goto(addr195);
                                          }
                                          while(true)
                                          {
                                             _loc4_++;
                                          }
                                          addr462:
                                       }
                                       §§goto(addr441);
                                    }
                                 }
                                 break;
                              }
                              §§push(param2);
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 §§push(FoodData.DISTRO_LEFT);
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§goto(addr97);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr400);
                              }
                              §§goto(addr436);
                              §§goto(addr214);
                           }
                           _loc5_++;
                        }
                        while(true)
                        {
                           §§goto(addr402);
                        }
                     }
                     for(; _loc5_ < _loc3_.foodItems.length; _loc5_++)
                     {
                        if(_loc3_.foodItems[_loc5_].type != param1.sides[_loc4_][0])
                        {
                           continue;
                        }
                        if(!_loc7_)
                        {
                           continue;
                        }
                        §§push(param2);
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           §§push(FoodData.DISTRO_LEFT);
                           if(!_loc8_)
                           {
                              §§goto(addr400);
                           }
                           §§goto(addr438);
                        }
                        §§goto(addr436);
                     }
                     §§goto(addr462);
                  }
                  while(true)
                  {
                     §§goto(addr464);
                     _loc4_++;
                  }
               }
               break;
            }
            while(true)
            {
               if(§§pop() < §§pop().length)
               {
                  _loc5_ = 0;
                  §§goto(addr372);
               }
               §§goto(addr475);
            }
            _loc4_++;
         }
      }
      
      public function sortItemRotationFunction(param1:FoodItem, param2:FoodItem) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.getRotationOnPlate());
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param2.getRotationOnPlate());
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || Boolean(param1))
         {
            §§push(_loc3_);
            if(_loc6_ || Boolean(param2))
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc6_ || Boolean(param2))
                     {
                        §§push(-1);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc3_);
                  }
                  §§goto(addr92);
               }
               addr72:
               if(§§pop() > §§pop())
               {
                  if(_loc5_)
                  {
                  }
                  §§goto(addr92);
               }
               addr92:
               return §§pop();
               §§push(0);
            }
            §§goto(addr72);
            §§push(_loc4_);
         }
         §§push(1);
         if(!(_loc5_ && _loc3_))
         {
            return §§pop();
         }
         §§goto(addr92);
      }
      
      public function getToppingNames(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc6_:* = 0;
         var _loc2_:FoodPlate = this;
         var _loc3_:Array = [];
         var _loc5_:Array = [];
         if(_loc7_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            if(_loc4_ < param1.length)
            {
               §§push(0);
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  _loc6_ = §§pop();
                  while(true)
                  {
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        break loop0;
                     }
                     if(§§pop() >= param1[_loc4_].length)
                     {
                        §§push(_loc4_);
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           §§push(§§pop() + 1);
                           if(!_loc8_)
                           {
                              continue loop0;
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr244);
                     }
                     else
                     {
                        if(param1[_loc4_][_loc6_] == "")
                        {
                           continue;
                        }
                        _loc5_.push(param1[_loc4_][_loc6_]);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     _loc6_++;
                  }
                  §§goto(addr243);
               }
               break;
            }
            if(!_loc8_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  break;
               }
               addr198:
               §§push(§§pop());
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(_loc8_ && Boolean(this))
                  {
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
               }
               loop2:
               while(true)
               {
                  if(§§pop() < _loc2_.dipItems.length)
                  {
                     addr243:
                     if(_loc5_.indexOf(_loc2_.dipItems[_loc4_].type) > -1)
                     {
                        if(_loc3_.indexOf(_loc2_.dipItems[_loc4_].type) == -1)
                        {
                           if(_loc7_ || Boolean(_loc2_))
                           {
                           }
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        addr244:
                        while(true)
                        {
                           §§push(§§pop() + 1);
                           addr245:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              if(_loc8_ && Boolean(_loc2_))
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     addr243:
                  }
               }
               addr272:
               return _loc3_;
               addr255:
            }
            while(true)
            {
               _loc3_.push(_loc2_.dipItems[_loc4_].type);
               §§goto(addr243);
            }
            §_-5i§.§_-CE§("Get valid toppings for plate: " + _loc3_.toString());
            §§goto(addr272);
            _loc4_ = §§pop();
         }
         _loc4_ = §§pop();
         if(_loc7_ || Boolean(this))
         {
            loop5:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  if(§§pop() >= _loc2_.foodItems.length)
                  {
                     §§goto(addr198);
                     §§push(0);
                  }
                  else
                  {
                     if(_loc2_.foodItems[_loc4_].isMeat())
                     {
                        if(_loc5_.indexOf(_loc2_.foodItems[_loc4_].sauceType) > -1)
                        {
                           if(_loc3_.indexOf(_loc2_.foodItems[_loc4_].sauceType) == -1)
                           {
                              if(_loc7_)
                              {
                              }
                              §§goto(addr236);
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc5_.indexOf(_loc2_.foodItems[_loc4_].type) > -1)
                        {
                           if(!_loc8_)
                           {
                              if(_loc3_.indexOf(_loc2_.foodItems[_loc4_].type) == -1)
                              {
                                 if(!_loc8_)
                                 {
                                    _loc3_.push(_loc2_.foodItems[_loc4_].type);
                                    if(_loc7_)
                                    {
                                    }
                                 }
                                 §§goto(addr254);
                              }
                           }
                           §§goto(addr243);
                        }
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc8_)
                           {
                              _loc4_ = §§pop();
                              if(_loc7_ || Boolean(this))
                              {
                                 continue loop5;
                              }
                              §§goto(addr272);
                           }
                        }
                        break loop5;
                     }
                     addr144:
                  }
                  §§goto(addr244);
               }
               break;
            }
            §§goto(addr245);
         }
         while(true)
         {
            _loc3_.push(_loc2_.foodItems[_loc4_].sauceType);
            if(_loc7_)
            {
               §§goto(addr144);
            }
            §§goto(addr243);
         }
      }
   }
}

