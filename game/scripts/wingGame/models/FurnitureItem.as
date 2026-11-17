package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   import wingGame.data.FurniData;
   import wingGame.screens.LobbyEditorScreen;
   
   public class FurnitureItem
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var data:FurniData;
      
      public var xtile:Number;
      
      public var ytile:Number;
      
      public var isDragging:Boolean = true;
      
      public var posterOffsetX:Number = -16;
      
      public var posterOffsetY:Number = -16;
      
      public var furniOffsetX:Number = -16;
      
      public var furniOffsetY:Number = 16;
      
      public var wallX:Number = 117;
      
      public var wallY:Number = 13;
      
      public var floorX:Array;
      
      public var floorY:Array;
      
      public var tileWidth:Number = 32;
      
      public var isLobby:Boolean = false;
      
      public var isOccupied:Boolean = false;
      
      public function FurnitureItem(param1:§_-BY§, param2:MovieClip, param3:FurniData, param4:Number = 0, param5:Number = 0, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || Boolean(param3))
         {
            this.floorX = [140,121,102];
            if(_loc9_ || Boolean(param1))
            {
               this.floorY = [290,358,425];
               if(_loc9_)
               {
               }
            }
            §§goto(addr50);
         }
         super();
         addr50:
         var _loc8_:FurnitureItem = this;
         _loc8_.gameObj = param1;
         if(!(_loc10_ && Boolean(this)))
         {
            _loc8_.container = param2;
            _loc8_.data = param3;
            _loc8_.xtile = param4;
         }
         _loc8_.ytile = param5;
         _loc8_.isDragging = param6;
         _loc8_.isLobby = param7;
         if(_loc9_ || Boolean(this))
         {
            _loc8_.setupFurni();
         }
      }
      
      public function setupFurni() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:FurnitureItem = this;
         var _loc2_:LobbyEditorScreen = _loc1_.gameObj.§_-9R§;
         var _loc3_:Class = getDefinitionByName(_loc1_.data.tag) as Class;
         if(_loc5_ || Boolean(this))
         {
            _loc1_.clip = new _loc3_();
            _loc1_.container.addChild(_loc1_.clip);
            if(_loc5_)
            {
               §§push(_loc1_.data);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop().tag.indexOf("arcade") == -1)
                  {
                     _loc1_.clip.cacheAsBitmap = true;
                  }
                  §§push(_loc1_.isDragging);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(!§§pop())
                     {
                        §§push(this.data.type);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           §§push(FurniData.TYPE_POSTER);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.clip.x = _loc1_.wallX + _loc1_.xtile * _loc1_.tileWidth;
                                    _loc1_.clip.y = _loc1_.wallY + _loc1_.ytile * _loc1_.tileWidth;
                                    if(!(_loc4_ && Boolean(_loc3_)))
                                    {
                                       addr171:
                                    }
                                    addr218:
                                    _loc1_.clip.useHandCursor = true;
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       _loc1_.clip.addEventListener(MouseEvent.MOUSE_UP,_loc1_.selectFurni);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                    §§goto(addr316);
                                 }
                                 addr280:
                                 if(_loc1_.data.tag == "furni_phonograph")
                                 {
                                    if(_loc5_ || Boolean(_loc1_))
                                    {
                                    }
                                    §§goto(addr343);
                                 }
                                 §§goto(addr316);
                              }
                              else
                              {
                                 §§push(this.data.type);
                                 if(_loc4_ && Boolean(_loc2_))
                                 {
                                 }
                              }
                              §§goto(addr244);
                           }
                           addr146:
                           if(§§pop() == §§pop())
                           {
                              _loc1_.clip.x = _loc1_.floorX[_loc1_.ytile] + _loc1_.xtile * _loc1_.tileWidth;
                              if(!_loc4_)
                              {
                                 _loc1_.clip.y = _loc1_.floorY[_loc1_.ytile];
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr146);
                        §§push(FurniData.TYPE_FURNI);
                     }
                     else
                     {
                        _loc1_.clip.x = _loc2_.clip.mouseX;
                        _loc1_.clip.y = _loc2_.clip.mouseY;
                        _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateFurni);
                     }
                     §§push(_loc1_.isLobby);
                     if(!_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              _loc1_.clip.mouseEnabled = true;
                              _loc1_.clip.buttonMode = true;
                              §§goto(addr218);
                           }
                           §§goto(addr343);
                        }
                        else
                        {
                           §§push(_loc1_.data.tag);
                           if(_loc5_)
                           {
                              §§goto(addr244);
                           }
                        }
                        §§goto(addr280);
                     }
                     addr244:
                     §§push(§§pop() == "furni_jukebox");
                     §§push(§§pop() == "furni_jukebox");
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           addr303:
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§push(_loc1_.data);
                           }
                           _loc1_.clip.useHandCursor = true;
                           _loc1_.clip.addEventListener(MouseEvent.MOUSE_UP,_loc1_.toggleMusicVolume);
                           if(_loc5_)
                           {
                              addr316:
                              §§goto(addr322);
                           }
                           §§goto(addr360);
                        }
                        addr270:
                        §§push(§§pop());
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           if(!§§pop())
                           {
                              §§pop();
                           }
                           §§goto(addr280);
                        }
                     }
                     addr322:
                     §§push(_loc1_.data.tag == "poster_window");
                     if(_loc1_.data.tag == "poster_window")
                     {
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§pop();
                        }
                     }
                     §§goto(addr336);
                  }
                  addr335:
                  addr336:
                  if(§§pop())
                  {
                     _loc1_.clip.graphics.beginFill(10561991,1);
                     _loc1_.clip.graphics.drawRect(0,0,96,96);
                     addr343:
                     if(_loc5_)
                     {
                        addr360:
                        _loc1_.clip.graphics.endFill();
                     }
                  }
                  return;
                  §§push(!§§pop());
               }
               §§push(§§pop().tag == "furni_wingeria_music");
               if(!_loc4_)
               {
                  §§goto(addr270);
               }
               §§goto(addr316);
            }
            addr331:
            §§push(_loc1_.isLobby);
            if(!_loc4_)
            {
               §§goto(addr335);
            }
            §§goto(addr316);
         }
         _loc1_.clip.mouseEnabled = true;
         _loc1_.clip.buttonMode = true;
         if(_loc5_)
         {
            §§goto(addr303);
         }
         §§goto(addr331);
      }
      
      public function updateFurni(param1:Event = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         var _loc2_:FurnitureItem = this;
         var _loc3_:LobbyEditorScreen = _loc2_.gameObj.§_-9R§;
         if(_loc6_)
         {
            if(_loc2_.isDragging)
            {
            }
            §§goto(addr312);
         }
         _loc4_ = _loc2_.getGridTile();
         if(_loc4_ != null)
         {
            §§push(_loc2_.data);
            if(!_loc5_)
            {
               §§push(§§pop().type);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(FurniData.TYPE_POSTER);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(_loc3_.isWallGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth));
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              _loc2_.clip.alpha = 0.9;
                              _loc2_.clip.x = _loc2_.wallX + _loc4_.x * _loc2_.tileWidth;
                              _loc2_.clip.y = _loc2_.wallY + _loc4_.y * _loc2_.tileWidth;
                              if(_loc5_)
                              {
                                 _loc2_.clip.y += _loc2_.furniOffsetY;
                                 addr307:
                                 _loc2_.setContainer(_loc3_.clip.moving_layer);
                                 addr291:
                              }
                              §§goto(addr312);
                           }
                           else
                           {
                              _loc2_.clip.alpha = 0.5;
                              _loc2_.clip.x = _loc3_.clip.mouseX + _loc2_.posterOffsetX;
                              _loc2_.clip.y = _loc3_.clip.mouseY + _loc2_.posterOffsetX;
                           }
                           _loc2_.setContainer(_loc3_.clip.wall_layer);
                        }
                        else
                        {
                           addr172:
                           if(§§pop())
                           {
                              _loc2_.clip.alpha = 0.9;
                              _loc2_.clip.x = _loc2_.floorX[_loc4_.y] + _loc4_.x * _loc2_.tileWidth;
                              _loc2_.clip.y = _loc2_.floorY[_loc4_.y];
                           }
                           else
                           {
                              _loc2_.clip.alpha = 0.5;
                              _loc2_.clip.x = _loc3_.clip.mouseX + _loc2_.furniOffsetX;
                              _loc2_.clip.y = _loc3_.clip.mouseY + _loc2_.furniOffsetY;
                           }
                           _loc2_.setContainer(_loc3_.clip["floor" + _loc4_.y + "_layer"]);
                           if(_loc5_ && Boolean(_loc2_))
                           {
                           }
                           §§goto(addr312);
                        }
                        §§goto(addr240);
                     }
                     else
                     {
                        §§push(_loc2_.data);
                        if(_loc6_)
                        {
                           §§push(§§pop().type);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                           }
                           addr260:
                           §§push(FurniData.TYPE_POSTER);
                        }
                     }
                  }
                  addr262:
                  if(§§pop() == §§pop())
                  {
                     _loc2_.clip.x += _loc2_.posterOffsetX;
                     _loc2_.clip.y += _loc2_.posterOffsetY;
                  }
                  else
                  {
                     _loc2_.clip.x += _loc2_.furniOffsetX;
                     §§goto(addr291);
                  }
                  §§goto(addr307);
               }
               §§push(FurniData.TYPE_FURNI);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr172);
                     §§push(_loc3_.isFloorGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth));
                  }
                  addr240:
                  addr312:
                  return;
               }
               §§goto(addr262);
            }
            addr259:
            §§goto(addr260);
            §§push(§§pop().type);
         }
         else
         {
            _loc2_.clip.alpha = 0.5;
         }
         _loc2_.clip.x = _loc3_.clip.mouseX;
         _loc2_.clip.y = _loc3_.clip.mouseY;
         §§goto(addr259);
         §§push(_loc2_.data);
      }
      
      public function getGridTile() : Point
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc1_:FurnitureItem = this;
         var _loc2_:LobbyEditorScreen = _loc1_.gameObj.§_-9R§;
         var _loc3_:Point = null;
         var _loc4_:Number = _loc2_.clip.mouseX;
         var _loc5_:Number = _loc2_.clip.mouseY;
         var _loc6_:* = -1;
         var _loc7_:* = -1;
         if(_loc8_)
         {
            §§push(_loc1_.data);
            if(!_loc9_)
            {
               §§push(§§pop().type);
               if(_loc8_ || Boolean(_loc1_))
               {
                  §§push(FurniData.TYPE_POSTER);
                  if(_loc8_ || Boolean(_loc1_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc9_)
                        {
                           _loc6_ = Math.floor((_loc4_ - _loc1_.wallX) / _loc1_.tileWidth);
                           _loc7_ = Math.floor((_loc5_ - _loc1_.wallY) / _loc1_.tileWidth);
                           §§push(_loc6_);
                           §§push(0);
                           if(!_loc9_)
                           {
                              §§push(§§pop() >= §§pop());
                              §§push(§§pop() >= §§pop());
                              if(_loc8_ || Boolean(this))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    addr477:
                                    if(!(_loc9_ && Boolean(_loc2_)))
                                    {
                                       §§push(_loc6_ < _loc2_.wallGridWidth);
                                       if(_loc8_ || Boolean(_loc1_))
                                       {
                                       }
                                       addr388:
                                       if(!§§pop())
                                       {
                                       }
                                       §§push(_loc7_);
                                       §§push(-1);
                                       if(!(_loc9_ && Boolean(_loc2_)))
                                       {
                                          addr401:
                                          if(§§pop() > §§pop())
                                          {
                                             addr463:
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                addr487:
                                                §§push(Math.floor((_loc4_ - _loc1_.floorX[_loc7_]) / _loc1_.tileWidth));
                                                §§push(Math.floor((_loc4_ - _loc1_.floorX[_loc7_]) / _loc1_.tileWidth));
                                                if(!_loc9_)
                                                {
                                                   addr424:
                                                   _loc6_ = §§pop();
                                                   addr454:
                                                   if(!(_loc9_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(0);
                                                      if(_loc8_ || Boolean(_loc1_))
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         §§push(§§pop() >= §§pop());
                                                         if(!(_loc9_ && Boolean(_loc3_)))
                                                         {
                                                            addr457:
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc6_);
                                                               if(_loc9_)
                                                               {
                                                               }
                                                               addr478:
                                                               §§push(_loc2_.floorGridHeight);
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc9_)
                                                            {
                                                            }
                                                            addr468:
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_ || Boolean(_loc2_))
                                                               {
                                                                  addr476:
                                                                  §§pop();
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               _loc3_ = new Point(_loc6_,_loc7_);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr461:
                                                            §§pop();
                                                         }
                                                         addr467:
                                                         §§goto(addr468);
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                   §§goto(addr457);
                                                   §§push(§§pop() < _loc2_.floorGridWidth);
                                                }
                                                §§goto(addr457);
                                                §§push(§§pop() < §§pop());
                                             }
                                             §§push(_loc7_);
                                             §§push(0);
                                          }
                                       }
                                    }
                                    §§goto(addr478);
                                    §§push(_loc7_);
                                 }
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc7_);
                                    §§push(0);
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       §§push(§§pop() >= §§pop());
                                    }
                                    §§goto(addr401);
                                 }
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc9_ && Boolean(_loc1_)))
                                       {
                                          §§push(§§pop() < _loc2_.wallGridHeight);
                                          if(_loc9_)
                                          {
                                          }
                                          §§goto(addr461);
                                       }
                                       addr341:
                                       §§push(_loc1_.floorY);
                                       if(!(_loc9_ && Boolean(this)))
                                       {
                                          addr350:
                                          §§push(2);
                                          if(_loc8_ || Boolean(_loc2_))
                                          {
                                             addr363:
                                             §§push(§§pop() >= §§pop()[§§pop()] - _loc1_.tileWidth);
                                             §§push(§§pop() >= §§pop()[§§pop()] - _loc1_.tileWidth);
                                             if(!(_loc9_ && Boolean(_loc3_)))
                                             {
                                                addr371:
                                                if(§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc5_);
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         §§push(_loc1_.floorY);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   §§goto(addr457);
                                                }
                                                §§goto(addr388);
                                             }
                                             §§goto(addr457);
                                          }
                                          addr386:
                                          §§goto(addr388);
                                          §§push(§§pop() <= §§pop()[§§pop()]);
                                       }
                                       §§goto(addr386);
                                       §§push(2);
                                    }
                                    §§goto(addr388);
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && Boolean(_loc1_)))
                                    {
                                       _loc3_ = new Point(_loc6_,_loc7_);
                                    }
                                    else
                                    {
                                       addr178:
                                       §§push(_loc5_);
                                       §§push(_loc1_.floorY);
                                       if(_loc8_ || Boolean(_loc2_))
                                       {
                                          §§push(0);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop()[§§pop()] - _loc1_.tileWidth);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                §§push(§§pop() >= §§pop());
                                                if(_loc8_ || Boolean(this))
                                                {
                                                }
                                                addr291:
                                                if(§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc5_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc1_.floorY);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(1);
                                                            if(_loc8_)
                                                            {
                                                               addr305:
                                                               §§push(§§pop() <= §§pop()[§§pop()]);
                                                               if(_loc8_ || Boolean(_loc3_))
                                                               {
                                                               }
                                                               §§goto(addr457);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                      }
                                                      §§goto(addr454);
                                                   }
                                                   §§goto(addr363);
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc9_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(1);
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         addr330:
                                                         _loc7_ = §§pop();
                                                      }
                                                      else
                                                      {
                                                         addr391:
                                                         _loc7_ = §§pop();
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr477);
                                                }
                                                else
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc8_ || Boolean(this))
                                                   {
                                                      §§goto(addr341);
                                                   }
                                                }
                                                §§goto(addr388);
                                             }
                                             §§goto(addr487);
                                          }
                                          addr226:
                                          §§push(§§pop() <= §§pop()[§§pop()]);
                                          if(!(_loc9_ && Boolean(_loc2_)))
                                          {
                                             addr235:
                                             if(§§pop())
                                             {
                                                §§push(0);
                                                if(_loc8_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(_loc8_ || Boolean(_loc3_))
                                                      {
                                                      }
                                                      §§goto(addr477);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr391);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr330);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc1_.floorY);
                                                if(!_loc9_)
                                                {
                                                   §§push(1);
                                                   if(!(_loc9_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop()[§§pop()] - _loc1_.tileWidth);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc8_ || Boolean(_loc3_))
                                                         {
                                                            §§goto(addr291);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      §§goto(addr424);
                                                   }
                                                   §§goto(addr363);
                                                }
                                                §§goto(addr341);
                                             }
                                          }
                                          §§goto(addr388);
                                       }
                                       §§goto(addr350);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc5_);
                                 §§push(_loc1_.floorY);
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    §§push(0);
                                    if(_loc8_ || Boolean(this))
                                    {
                                       §§goto(addr226);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr350);
                              }
                              §§goto(addr235);
                           }
                           §§push(§§pop() >= §§pop());
                           if(_loc8_)
                           {
                              §§goto(addr467);
                           }
                           §§goto(addr476);
                        }
                     }
                     else
                     {
                        §§push(_loc1_.data);
                     }
                     §§goto(addr495);
                  }
                  §§goto(addr177);
               }
               addr175:
               addr177:
               if(§§pop() == §§pop())
               {
                  §§goto(addr178);
               }
               addr495:
               return _loc3_;
               §§push(FurniData.TYPE_FURNI);
            }
            §§goto(addr175);
            §§push(§§pop().type);
         }
         §§goto(addr391);
         §§push(2);
      }
      
      public function setContainer(param1:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:FurnitureItem = this;
         if(_loc2_.container != param1)
         {
            if(!_loc3_)
            {
               _loc2_.container = param1;
               if(!_loc2_.container.contains(_loc2_.clip))
               {
                  _loc2_.container.addChild(_loc2_.clip);
               }
               else
               {
                  _loc2_.container.setChildIndex(_loc2_.clip,_loc2_.container.numChildren - 1);
               }
            }
         }
         else
         {
            _loc2_.container.setChildIndex(_loc2_.clip,_loc2_.container.numChildren - 1);
         }
      }
      
      public function selectFurni(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:FurnitureItem = this;
         var _loc3_:LobbyEditorScreen = _loc2_.gameObj.§_-9R§;
         if(_loc4_ || Boolean(_loc2_))
         {
            §§push(_loc2_.isDragging);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(!§§pop());
               if(_loc5_ && Boolean(_loc3_))
               {
               }
               §§goto(addr73);
            }
            if(§§pop())
            {
               if(_loc4_ || Boolean(_loc3_))
               {
                  §§pop();
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(_loc3_.activeFurni == null);
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr73);
         }
         param1.stopImmediatePropagation();
         addr73:
         if(§§pop())
         {
            if(_loc4_)
            {
               _loc2_.gameObj.soundManager.playSound("grabtopping.wav");
               if(_loc4_)
               {
                  _loc2_.isDragging = true;
               }
               addr94:
               _loc3_.setActiveFurni(_loc2_);
               if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  if(_loc4_)
                  {
                     _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateFurni);
                     if(_loc4_ || Boolean(_loc3_))
                     {
                     }
                  }
               }
               _loc3_.clip.putaway_btn.visible = true;
               _loc3_.clip.inventory_btn.visible = false;
               if(_loc4_)
               {
               }
            }
            _loc3_.pickupFurni(_loc2_.data,_loc2_.xtile,_loc2_.ytile);
            §§goto(addr94);
         }
      }
      
      public function clickFurni(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         var _loc2_:FurnitureItem = this;
         var _loc3_:LobbyEditorScreen = _loc2_.gameObj.§_-9R§;
         if(_loc6_ || Boolean(this))
         {
            if(_loc2_.isDragging)
            {
            }
            §§goto(addr442);
         }
         _loc4_ = _loc2_.getGridTile();
         if(_loc4_ != null)
         {
            §§push(_loc2_.data);
            if(_loc6_)
            {
               §§push(§§pop().type);
               if(_loc6_)
               {
                  §§push(FurniData.TYPE_POSTER);
                  if(!_loc5_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(_loc3_.isWallGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth));
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 _loc2_.clip.alpha = 1;
                                 _loc2_.clip.x = _loc2_.wallX + _loc4_.x * _loc2_.tileWidth;
                                 _loc2_.clip.y = _loc2_.wallY + _loc4_.y * _loc2_.tileWidth;
                                 _loc3_.placeFurni(_loc2_.data,_loc4_.x,_loc4_.y);
                                 _loc2_.xtile = _loc4_.x;
                                 _loc2_.ytile = _loc4_.y;
                                 if(_loc6_)
                                 {
                                    §§push(_loc3_.activeFurni);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() == _loc2_)
                                       {
                                          _loc3_.activeFurni = null;
                                       }
                                       _loc2_.setContainer(_loc3_.clip.wall_layer);
                                       _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateFurni);
                                       addr382:
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          _loc2_.isDragging = false;
                                          _loc3_.clip.putaway_btn.visible = false;
                                          _loc3_.clip.inventory_btn.visible = true;
                                          addr412:
                                          §§push(_loc2_.gameObj);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop().userData);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop().hasPlacedFurniture);
                                                if(_loc6_ || Boolean(_loc3_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr440:
                                                      §§push(_loc2_.gameObj);
                                                      if(_loc6_)
                                                      {
                                                         addr413:
                                                         §§push(§§pop().§_-4P§);
                                                         if(!(_loc5_ && Boolean(_loc2_)))
                                                         {
                                                            addr414:
                                                            §§push(§§pop().api);
                                                            if(!(_loc5_ && Boolean(this)))
                                                            {
                                                               addr415:
                                                               §§push("Placed_Furniture");
                                                               if(_loc6_ || Boolean(this))
                                                               {
                                                                  addr416:
                                                                  §§push("Screens");
                                                                  if(_loc6_)
                                                                  {
                                                                     addr417:
                                                                     §§push(true);
                                                                     if(!(_loc5_ && Boolean(this)))
                                                                     {
                                                                        §§pop().§_-h§(§§pop(),§§pop(),§§pop());
                                                                        §§push(_loc2_.gameObj.userData);
                                                                        if(!(_loc5_ && Boolean(this)))
                                                                        {
                                                                           §§push(true);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop().hasPlacedFurniture = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                              }
                                                                           }
                                                                           addr422:
                                                                           §§pop().hasPlacedFurniture = §§pop();
                                                                           if(_loc6_ || Boolean(_loc3_))
                                                                           {
                                                                              addr437:
                                                                              §§push(_loc2_.gameObj);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop().§_-h§(§§pop(),§§pop(),§§pop());
                                                                     §§goto(addr422);
                                                                     §§push(_loc2_.gameObj.userData);
                                                                     §§push(true);
                                                                  }
                                                                  §§goto(addr417);
                                                                  §§push(true);
                                                               }
                                                               §§goto(addr416);
                                                               §§push("Screens");
                                                            }
                                                            §§goto(addr415);
                                                            §§push("Placed_Furniture");
                                                         }
                                                         §§goto(addr414);
                                                         §§push(§§pop().api);
                                                      }
                                                      §§pop().soundManager.playSound("droptopping.wav");
                                                   }
                                                   §§push(_loc2_.gameObj.soundManager);
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      §§push("droptopping.wav");
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         §§pop().playSound(§§pop());
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr440);
                                                   }
                                                   §§goto(addr440);
                                                }
                                             }
                                             addr399:
                                             §§push(§§pop().hasPlacedFurniture);
                                          }
                                          §§goto(addr413);
                                          §§push(§§pop().§_-4P§);
                                       }
                                       §§push(_loc2_.gameObj);
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(§§pop().userData);
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             §§goto(addr399);
                                          }
                                          §§goto(addr417);
                                       }
                                       §§goto(addr412);
                                    }
                                    addr335:
                                    if(§§pop() == _loc2_)
                                    {
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          _loc3_.activeFurni = null;
                                          if(_loc6_)
                                          {
                                          }
                                          addr375:
                                          _loc3_.clip.inventory_btn.visible = true;
                                          if(!_loc5_)
                                          {
                                             §§goto(addr382);
                                          }
                                          §§goto(addr417);
                                       }
                                    }
                                    _loc2_.setContainer(_loc3_.clip["floor" + _loc2_.ytile + "_layer"]);
                                 }
                                 addr298:
                                 _loc2_.clip.y = _loc2_.floorY[_loc4_.y];
                                 if(!_loc5_)
                                 {
                                    _loc3_.placeFurni(_loc2_.data,_loc4_.x,_loc4_.y);
                                    if(_loc6_)
                                    {
                                       _loc2_.xtile = _loc4_.x;
                                    }
                                    §§goto(addr382);
                                 }
                                 _loc2_.ytile = _loc4_.y;
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    §§goto(addr335);
                                    §§push(_loc3_.activeFurni);
                                 }
                                 §§goto(addr382);
                              }
                              _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateFurni);
                              _loc2_.isDragging = false;
                              _loc3_.clip.putaway_btn.visible = false;
                              §§goto(addr375);
                           }
                        }
                        addr400:
                        if(!§§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(_loc2_.gameObj);
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 §§goto(addr412);
                              }
                              §§goto(addr417);
                           }
                        }
                        §§goto(addr437);
                     }
                     else
                     {
                        §§push(_loc2_.data);
                     }
                  }
                  addr260:
                  if(§§pop() == §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(_loc3_.isFloorGridFree(_loc4_.x,_loc4_.y,this.data.width,this.data.depth));
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              _loc2_.clip.alpha = 1;
                              if(_loc6_)
                              {
                                 _loc2_.clip.x = _loc2_.floorX[_loc4_.y] + _loc4_.x * _loc2_.tileWidth;
                              }
                              §§goto(addr298);
                           }
                        }
                        §§goto(addr400);
                     }
                     §§goto(addr335);
                  }
               }
               addr258:
               §§goto(addr260);
               §§push(FurniData.TYPE_FURNI);
            }
            §§goto(addr258);
            §§push(§§pop().type);
         }
         addr442:
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FurnitureItem = this;
         if(!_loc1_.isLobby)
         {
            _loc1_.clip.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.selectFurni);
            addr117:
            if(!(_loc2_ || Boolean(_loc1_)))
            {
               addr95:
               §§push(_loc1_.data);
            }
            if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateFurni);
                  if(_loc3_ && _loc2_)
                  {
                  }
                  addr150:
                  addr156:
                  if(_loc1_.container.contains(_loc1_.clip))
                  {
                     _loc1_.container.removeChild(_loc1_.clip);
                     if(_loc3_)
                     {
                     }
                  }
                  _loc1_.container = null;
                  if(_loc3_ && _loc3_)
                  {
                  }
                  §§goto(addr184);
               }
               _loc1_.clip = null;
               addr184:
               return;
            }
            addr147:
            §§push(Boolean(_loc1_.container));
            if(Boolean(_loc1_.container))
            {
               §§pop();
               §§goto(addr150);
            }
            §§goto(addr156);
         }
         else
         {
            §§push(_loc1_.data);
            if(_loc2_)
            {
               §§push(§§pop().tag);
               if(_loc2_)
               {
                  §§push(§§pop() == "furni_jukebox");
                  §§push(§§pop() == "furni_jukebox");
                  if(_loc2_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           §§pop();
                           §§push(_loc1_.data);
                           if(_loc2_)
                           {
                              §§push(§§pop().tag);
                              if(_loc2_)
                              {
                                 §§push(§§pop() == "furni_wingeria_music");
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                     §§push(§§pop());
                     if(_loc3_ && Boolean(this))
                     {
                     }
                     §§goto(addr147);
                  }
                  if(!§§pop())
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr95);
                        }
                        §§goto(addr150);
                     }
                  }
                  addr100:
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.clip.removeEventListener(MouseEvent.MOUSE_UP,_loc1_.toggleMusicVolume);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr150);
                     }
                  }
                  §§goto(addr117);
               }
               addr98:
               §§goto(addr100);
               §§push(§§pop() == "furni_phonograph");
            }
         }
         §§goto(addr98);
         §§push(§§pop().tag);
      }
      
      public function toggleMusicVolume(param1:MouseEvent) : void
      {
         var e:MouseEvent;
         var ob:FurnitureItem;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc4_)
            {
               §§push(§§newactivation());
            }
            try
            {
               ob.gameObj.§_-A5§.toggleMusicMute(ob.data.tag);
               addr28:
            }
            catch(err:Error)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  §_-5i§.§_-CE§("Error with toggling volume on furni.");
               }
            }
            return;
         }
         §§pop().§§slot[2] = this;
         §§goto(addr28);
      }
   }
}

