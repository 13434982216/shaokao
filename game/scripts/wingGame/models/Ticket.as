package wingGame.models
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import wingGame.data.CustomerOrder;
   import wingGame.screens.BuildScreen;
   
   public class Ticket
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var order:Array;
      
      public var orderData:CustomerOrder;
      
      public var customerType:Number;
      
      public var ticketNumber:Number = 1;
      
      public var targetX:Number = 0;
      
      public var targetY:Number = 0;
      
      public var targetScale:Number = 0;
      
      public var isDragging:Boolean = false;
      
      public var isMoving:Boolean = false;
      
      public var isDrawingOrder:Boolean = false;
      
      public var isOnTray:Boolean = false;
      
      public var hangerX:Number = 558;
      
      public var hangerY:Number = 58;
      
      public var hangerScale:Number = 1;
      
      public var lineStartX:Number = 22;
      
      public var lineEndX:Number = 433;
      
      public var lineY:Number = 20;
      
      public var lineScale:Number = 0.25;
      
      public var trayX:Number = 37;
      
      public var trayY:Number = 26;
      
      public var trayScale:Number = 0.4;
      
      public var minGrabScale:Number = 0.25;
      
      public var maxGrabScale:Number = 1;
      
      public var minGrabY:Number = 15;
      
      public var maxGrabY:Number = 180;
      
      public var maxGrabBoundsY:Number = 320;
      
      public var minGrabX:Number = 22;
      
      public var maxGrabX:Number = 544;
      
      public var minGrabZoomX:Number = 458;
      
      public var tweenSpeed:Number = 2;
      
      public var startingY:Number = -242;
      
      public var trayBoundsLeftX:Number = 0;
      
      public var trayBoundsRightX:Number = 140;
      
      public var trayBoundsTopY:Number = 100;
      
      private var panelHolder:MovieClip = null;
      
      private var panelParts:Vector.<MovieClip>;
      
      private var panelTicketBottom:Number = 231;
      
      private var panelTicketTop:Number = -6;
      
      private var panelWingHeight:Number = 66;
      
      private var panelSideHeight:Number = 33;
      
      private var panelDipSize:Number = 33;
      
      private var panelTicketLeft:Number = -65;
      
      public var bmp:BitmapData;
      
      public var bitmap:Bitmap;
      
      public function Ticket(param1:§_-BY§, param2:Number, param3:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(param3)))
         {
            super();
         }
         var _loc4_:Ticket = this;
         _loc4_.gameObj = param1;
         if(_loc5_)
         {
            _loc4_.customerType = param2;
            if(!_loc6_)
            {
               _loc4_.ticketNumber = param3;
               if(_loc6_ && Boolean(this))
               {
               }
            }
            §§goto(addr61);
         }
         _loc4_.setupTicket();
         addr61:
      }
      
      public function setupTicket() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Ticket = this;
         if(_loc4_)
         {
            _loc1_.clip = new ticketMC();
         }
         var _loc2_:* = String(_loc1_.ticketNumber);
         §§push(_loc2_);
         if(_loc4_)
         {
            §§goto(addr42);
         }
         _loc2_ = §§pop();
         if(!_loc3_)
         {
            addr42:
            if(§§pop().length < 2)
            {
               §§push("0" + _loc2_);
            }
            _loc1_.clip.number_txt.text = _loc2_;
            _loc1_.orderData = _loc1_.gameObj.customerData.getCustomerOrderData(_loc1_.customerType);
            _loc1_.order = _loc1_.orderData.getOrderAsArray();
            _loc1_.container = _loc1_.gameObj.hud.clip.ticket_holder;
            _loc1_.container.addChild(_loc1_.clip);
            _loc1_.clip.scaleX = _loc1_.hangerScale;
            _loc1_.clip.scaleY = _loc1_.hangerScale;
            if(_loc4_)
            {
               _loc1_.clip.x = _loc1_.hangerX;
               if(_loc4_)
               {
               }
               §§goto(addr103);
            }
            _loc1_.clip.y = _loc1_.startingY;
            addr103:
            _loc1_.clip.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickTicket);
            if(!_loc3_)
            {
               _loc1_.clip.buttonMode = true;
               _loc1_.clip.useHandCursor = true;
               if(_loc4_ || Boolean(this))
               {
               }
               §§goto(addr154);
            }
            _loc1_.clip.mouseChildren = false;
            §§goto(addr131);
         }
         addr131:
         _loc1_.isDrawingOrder = true;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            _loc1_.createOrderPanels();
            if(_loc3_)
            {
            }
            §§goto(addr154);
         }
         _loc1_.moveToHanger();
         addr154:
      }
      
      public function createOrderPanels() : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = null;
         var _loc7_:MovieClip = null;
         var _loc8_:* = null;
         var _loc9_:* = NaN;
         var _loc10_:* = null;
         var _loc11_:MovieClip = null;
         var _loc12_:* = null;
         var _loc13_:MovieClip = null;
         var _loc1_:Ticket = this;
         if(!(_loc14_ && Boolean(_loc3_)))
         {
            _loc1_.panelHolder = new MovieClip();
            if(_loc14_)
            {
            }
            addr71:
            _loc2_ = 0;
            while(true)
            {
               §§push(_loc2_);
               if(_loc15_)
               {
                  §§push(_loc1_.orderData);
                  if(_loc15_)
                  {
                     §§push(§§pop().wings);
                     if(!_loc14_)
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           §§push(0);
                           if(!(_loc14_ && Boolean(_loc2_)))
                           {
                              _loc2_ = §§pop();
                              if(_loc15_ || Boolean(this))
                              {
                                 addr434:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc14_ && Boolean(this))
                                    {
                                    }
                                    §§goto(addr461);
                                 }
                                 addr434:
                              }
                              while(true)
                              {
                                 _loc11_ = new ticket_panel_side();
                                 _loc11_.gotoAndStop(_loc8_);
                                 _loc11_.num_txt.text = String(_loc9_);
                                 if(_loc15_)
                                 {
                                    _loc11_.distro.gotoAndStop(_loc10_);
                                    _loc11_.x = _loc1_.panelTicketLeft;
                                    _loc11_.y = _loc1_.panelTicketTop + _loc1_.panelSideHeight * (_loc1_.orderData.sides.length - 1) - _loc2_ * _loc1_.panelSideHeight;
                                 }
                                 if(_loc1_.orderData.dips.length > 0)
                                 {
                                    if(_loc15_)
                                    {
                                       _loc11_.y += _loc1_.panelDipSize;
                                       if(_loc15_ || Boolean(_loc2_))
                                       {
                                       }
                                       §§goto(addr434);
                                    }
                                    addr417:
                                    _loc1_.panelHolder.addChild(_loc11_);
                                    if(_loc15_)
                                    {
                                       _loc11_.visible = false;
                                       if(!(_loc14_ && Boolean(_loc1_)))
                                       {
                                          addr433:
                                          _loc2_++;
                                       }
                                    }
                                    §§goto(addr434);
                                 }
                                 _loc1_.panelParts.push(_loc11_);
                                 if(!(_loc14_ && Boolean(_loc2_)))
                                 {
                                    §§goto(addr417);
                                 }
                                 §§goto(addr433);
                              }
                              addr343:
                           }
                           while(true)
                           {
                              §§push(_loc1_.orderData);
                              if(_loc14_)
                              {
                              }
                              addr537:
                              while(true)
                              {
                                 §§push(§§pop().dips);
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc1_.orderData.wings[_loc2_][0]);
                           if(_loc15_ || Boolean(_loc2_))
                           {
                              _loc3_ = §§pop();
                              if(!(_loc14_ && Boolean(_loc1_)))
                              {
                                 §§push(_loc1_.orderData);
                                 if(!(_loc14_ && Boolean(_loc2_)))
                                 {
                                    addr320:
                                    §§push(§§pop().wings);
                                    if(_loc15_)
                                    {
                                       addr479:
                                       §§push(§§pop()[_loc2_][3]);
                                       if(_loc14_ && Boolean(_loc3_))
                                       {
                                       }
                                       while(true)
                                       {
                                          _loc12_ = §§pop();
                                          _loc13_ = new ticket_panel_dip();
                                          _loc13_.gotoAndStop(_loc12_);
                                          if(_loc15_)
                                          {
                                             _loc13_.y = _loc1_.panelTicketTop;
                                             _loc13_.x = 0 - _loc1_.orderData.dips.length * _loc1_.panelDipSize / 2 + _loc2_ * _loc1_.panelDipSize;
                                             if(!_loc14_)
                                             {
                                                _loc1_.panelParts.push(_loc13_);
                                                _loc1_.panelHolder.addChild(_loc13_);
                                             }
                                             _loc13_.visible = false;
                                             if(!_loc14_)
                                             {
                                                _loc2_++;
                                             }
                                          }
                                          §§goto(addr527);
                                       }
                                       addr479:
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc15_)
                                       {
                                          §§push(Number(§§pop()[§§pop()][1]));
                                       }
                                       addr336:
                                       while(true)
                                       {
                                          §§push(§§pop()[§§pop()][2]);
                                          if(!_loc15_)
                                          {
                                             break;
                                             addr342:
                                          }
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             §§goto(addr343);
                                          }
                                          continue loop12;
                                       }
                                       §§goto(addr479);
                                    }
                                    addr320:
                                 }
                                 addr148:
                                 §§push(§§pop().wings);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop()[_loc2_][2]);
                                    if(_loc15_)
                                    {
                                       _loc6_ = §§pop();
                                       _loc7_ = new ticket_panel_wings();
                                       _loc7_.gotoAndStop(_loc3_);
                                       if(!(_loc14_ && Boolean(this)))
                                       {
                                          _loc7_.num_txt.text = String(_loc5_);
                                          if(_loc15_ || Boolean(_loc2_))
                                          {
                                             _loc7_.distro.gotoAndStop(_loc6_);
                                             if(_loc15_)
                                             {
                                                _loc7_.sauce.gotoAndStop(_loc4_);
                                                _loc7_.sauce.visible = false;
                                             }
                                             addr221:
                                             _loc1_.panelParts.push(_loc7_.sauce);
                                             if(_loc15_ || Boolean(this))
                                             {
                                                addr233:
                                                _loc1_.panelHolder.addChild(_loc7_);
                                                if(_loc14_ && Boolean(_loc1_))
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc2_++;
                                             continue;
                                          }
                                          _loc7_.x = _loc1_.panelTicketLeft;
                                          _loc7_.y = _loc1_.panelTicketBottom - _loc1_.panelWingHeight * (_loc2_ + 1);
                                          _loc1_.panelParts.push(_loc7_);
                                          if(_loc15_)
                                          {
                                             §§goto(addr221);
                                          }
                                          §§goto(addr233);
                                       }
                                       _loc7_.visible = false;
                                       if(_loc14_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                       §§goto(addr221);
                                    }
                                    else
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          §§push(_loc1_.orderData.sides);
                                          if(_loc15_ || Boolean(this))
                                          {
                                             §§goto(addr320);
                                          }
                                          addr335:
                                          while(true)
                                          {
                                             §§goto(addr336);
                                             continue loop17;
                                          }
                                       }
                                       addr309:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr479);
                                 }
                                 addr474:
                              }
                              addr458:
                              §§push(0);
                              if(_loc15_)
                              {
                                 §§goto(addr461);
                              }
                              break;
                           }
                           _loc4_ = §§pop();
                           §§push(Number(_loc1_.orderData.wings[_loc2_][1]));
                           if(!(_loc14_ && Boolean(_loc3_)))
                           {
                              _loc5_ = §§pop();
                              if(!(_loc14_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr148);
                                 §§push(_loc1_.orderData);
                              }
                              §§goto(addr545);
                           }
                        }
                        while(true)
                        {
                           _loc9_ = §§pop();
                           §§push(_loc1_.orderData);
                           if(!_loc14_)
                           {
                              §§push(§§pop().sides);
                              if(!_loc14_)
                              {
                                 §§goto(addr335);
                              }
                              §§goto(addr474);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr148);
                        }
                        addr540:
                        _loc1_.clip.addChild(_loc1_.panelHolder);
                        §§goto(addr545);
                        addr473:
                     }
                     while(true)
                     {
                        if(§§pop() < §§pop().length)
                        {
                           §§goto(addr473);
                           §§push(_loc1_.orderData);
                        }
                        §§goto(addr540);
                     }
                     addr538:
                  }
                  while(true)
                  {
                     §§push(§§pop().sides);
                     if(!(_loc14_ && Boolean(this)))
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           if(!_loc14_)
                           {
                              §§goto(addr458);
                           }
                           §§goto(addr540);
                        }
                        else
                        {
                           §§push(_loc1_.orderData.sides);
                           if(!_loc14_)
                           {
                              §§push(§§pop()[_loc2_][0]);
                              if(!(_loc14_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr309);
                              }
                              §§goto(addr342);
                           }
                           §§goto(addr320);
                        }
                        return;
                     }
                     §§goto(addr538);
                  }
               }
               break;
            }
            while(true)
            {
               §§goto(addr537);
            }
         }
         _loc1_.panelParts = new Vector.<MovieClip>();
         if(_loc15_)
         {
         }
         §§goto(addr71);
      }
      
      public function moveToHanger() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Ticket = this;
         _loc1_.targetX = _loc1_.hangerX;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.targetY = _loc1_.hangerY;
            _loc1_.targetScale = _loc1_.hangerScale;
            if(_loc3_)
            {
               _loc1_.isMoving = true;
               if(!_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
               {
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
               addr68:
               §§push(_loc1_.gameObj);
               if(!_loc2_)
               {
                  §§push(§§pop().§_-3f§);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                           }
                        }
                     }
                     §§pop();
                     addr122:
                     §§push(_loc1_.gameObj);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop().§_-DZ§ == 10);
                     }
                     §§pop().§_-7q§.checkForPatternTraining();
                  }
                  if(§§pop())
                  {
                     §§push(_loc1_.gameObj);
                     if(_loc3_ || _loc3_)
                     {
                     }
                     §§goto(addr122);
                  }
                  addr120:
                  §§goto(addr122);
                  §§push(_loc1_.gameObj);
               }
               §§pop().§_-8o§();
               if(!_loc2_)
               {
                  §§goto(addr120);
               }
            }
            _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateTicketPosition);
            §§goto(addr68);
         }
      }
      
      public function moveToLine(param1:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Ticket = this;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(-1);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.lineEndX);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - Math.floor(Math.random() * 30));
                     }
                     §§pop().targetX = §§pop();
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr105:
                        _loc2_.targetY = _loc2_.lineY;
                        _loc2_.targetScale = _loc2_.lineScale;
                        _loc2_.isMoving = true;
                        addr206:
                        if(!_loc3_)
                        {
                           if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
                           {
                              _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateTicketPosition);
                              if(_loc4_)
                              {
                              }
                              addr185:
                              §§push(_loc2_.gameObj);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().hud);
                                 if(!_loc3_)
                                 {
                                    if(§§pop().whichContextTraining.indexOf("pattern") > -1)
                                    {
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr209);
                              }
                              addr208:
                              addr209:
                              §§pop().removeContextTraining();
                              addr210:
                              return;
                              §§push(§§pop().hud);
                           }
                        }
                        §§goto(addr208);
                        §§push(_loc2_.gameObj);
                     }
                     §§push(_loc2_.gameObj);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(§§pop().§_-3f§);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                           }
                           addr165:
                           if(§§pop())
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(_loc2_.gameObj);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    addr182:
                                    §§pop().§_-8o§();
                                    if(_loc3_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr185);
                        }
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              addr158:
                              §§push(_loc2_.gameObj);
                              if(_loc4_)
                              {
                                 §§push(§§pop().§_-DZ§);
                              }
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr185);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(_loc2_.lineEndX);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(§§pop() > §§pop())
                           {
                              if(_loc4_)
                              {
                                 _loc2_.targetX = _loc2_.lineEndX;
                                 §§goto(addr105);
                              }
                              §§goto(addr158);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 §§push(_loc2_.lineStartX);
                              }
                           }
                        }
                        if(§§pop() >= §§pop())
                        {
                           _loc2_.targetX = param1;
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              §§goto(addr105);
                           }
                        }
                        §§goto(addr210);
                     }
                  }
               }
               addr164:
               §§goto(addr165);
               §§push(§§pop() == §§pop());
            }
            §§goto(addr164);
            §§push(8);
         }
         _loc2_.targetX = _loc2_.lineStartX;
         §§goto(addr105);
      }
      
      public function moveToTray() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Ticket = this;
         if(_loc3_ || Boolean(this))
         {
            _loc1_.container = _loc1_.gameObj.§_-7q§.currentPlate.ticketHolderClip;
            if(_loc3_ || _loc2_)
            {
               _loc1_.container.addChild(_loc1_.clip);
               if(_loc2_)
               {
               }
               addr125:
               _loc1_.isOnTray = true;
               if(!_loc2_)
               {
                  addr130:
                  §§push(_loc1_.gameObj);
                  if(!_loc2_)
                  {
                     §§pop().§_-7q§.clip.trash_btn.visible = false;
                     addr139:
                     if(_loc1_.clip.hasEventListener(Event.ENTER_FRAME))
                     {
                     }
                     addr159:
                     §§push(_loc1_.gameObj);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop().§_-3f§);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           if(_loc2_ && _loc3_)
                           {
                           }
                           §§goto(addr198);
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                           }
                        }
                        §§goto(addr198);
                     }
                  }
                  addr203:
                  §§pop().§_-8o§();
                  §§goto(addr198);
               }
               _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateTicketPosition);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr159);
               }
               §§goto(addr198);
            }
            §§push(_loc1_.gameObj);
            if(_loc3_)
            {
               addr198:
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(_loc1_.gameObj);
                  }
               }
               return;
               §§push(§§pop().§_-DZ§ == 26);
            }
            §§goto(addr203);
         }
         _loc1_.clip.x -= _loc1_.gameObj.§_-7q§.currentPlate.clip.x + _loc1_.gameObj.§_-7q§.currentPlate.ticketHolderClip.x;
         _loc1_.clip.y -= _loc1_.gameObj.§_-7q§.currentPlate.clip.y + _loc1_.gameObj.§_-7q§.currentPlate.ticketHolderClip.y;
         if(!_loc2_)
         {
            _loc1_.targetX = _loc1_.trayX;
            _loc1_.targetY = _loc1_.trayY;
            if(_loc3_)
            {
               _loc1_.targetScale = _loc1_.trayScale;
               if(_loc2_ && Boolean(this))
               {
               }
            }
            §§goto(addr139);
         }
         _loc1_.isMoving = true;
         if(!(_loc2_ && Boolean(this)))
         {
            §§goto(addr125);
         }
         §§goto(addr130);
      }
      
      public function clickTicket(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Ticket = this;
         if(_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(_loc3_ || Boolean(this))
            {
               §§push(!§§pop().§_-5b§);
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        §§goto(addr159);
                     }
                     §§push(§§pop());
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(_loc2_.isMoving);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(!§§pop());
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr207);
                        }
                        §§push(§§pop());
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§goto(addr108);
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr124);
                  }
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        §§goto(addr154);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr159);
               }
               addr144:
               §§goto(addr124);
               §§push(!§§pop());
            }
            §§pop().soundManager.playSound("grabticket.wav");
            §§goto(addr159);
         }
         §§push(_loc2_.isOnTray);
         if(_loc3_)
         {
            §§goto(addr144);
         }
         addr159:
         if(_loc3_ || Boolean(_loc2_))
         {
            §§pop();
            addr154:
            §§push(_loc2_.isDragging);
            if(_loc3_ || Boolean(this))
            {
               §§push(!§§pop());
               if(_loc3_ || Boolean(_loc2_))
               {
               }
               addr108:
               §§pop();
               §§push(_loc2_.isDrawingOrder);
               if(!_loc4_)
               {
                  addr158:
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     addr116:
                     §§push(§§pop());
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        addr124:
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc3_ || Boolean(this))
                           {
                           }
                           addr207:
                           _loc2_.clip.startDrag(true,new Rectangle(_loc2_.minGrabX,_loc2_.minGrabY,_loc2_.maxGrabX,_loc2_.maxGrabBoundsY));
                           if(!_loc2_.clip.hasEventListener(Event.ENTER_FRAME))
                           {
                              _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateTicketPosition);
                              if(_loc3_ || _loc3_)
                              {
                              }
                              addr271:
                              §§push(_loc2_.gameObj);
                           }
                           _loc2_.container.setChildIndex(_loc2_.clip,_loc2_.container.numChildren - 1);
                           §§push(_loc2_.gameObj);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().addEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseTicket);
                              addr259:
                              §§goto(addr271);
                           }
                        }
                        §§push(§§pop());
                     }
                  }
                  §§push(§§pop());
               }
            }
            §§pop();
            §§goto(addr158);
            §§push(_loc2_.canClickInTraining(param1));
         }
         if(§§pop())
         {
            §§push(_loc2_.gameObj);
            if(_loc3_ || Boolean(param1))
            {
               §§push(§§pop().§_-A7§);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  if(§§pop().hangerTicket == _loc2_)
                  {
                     §§push(_loc2_.gameObj);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(§§pop().§_-A7§);
                     }
                     §§goto(addr259);
                  }
                  addr199:
                  _loc2_.isDragging = true;
                  _loc2_.isMoving = false;
                  if(!_loc4_)
                  {
                     §§goto(addr207);
                  }
               }
               §§pop().hangerTicket = null;
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§goto(addr199);
               }
               §§goto(addr207);
            }
         }
      }
      
      public function releaseTicket(param1:MouseEvent = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Ticket = this;
         var _loc3_:BuildScreen = _loc2_.gameObj.§_-7q§;
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc2_.isDragging = false;
            if(_loc5_ || Boolean(param1))
            {
               _loc2_.isMoving = false;
               if(_loc6_)
               {
               }
               addr53:
               _loc2_.gameObj.soundManager.playSound("dropticket.wav");
            }
            try
            {
               addr58:
               _loc2_.gameObj.removeEventListener(MouseEvent.MOUSE_UP,_loc2_.releaseTicket);
               if(!_loc6_)
               {
                  addr79:
                  §§push(_loc2_.clip.x > _loc2_.hangerX - 90);
                  §§push(_loc2_.clip.x > _loc2_.hangerX - 90);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(_loc2_.clip.x < _loc2_.hangerX + 70);
                     }
                     §§push(§§pop());
                     if(_loc6_)
                     {
                     }
                     addr138:
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           §§push(_loc2_.gameObj);
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr180:
                              §§push(§§pop().§_-A7§);
                              if(_loc5_)
                              {
                                 §§push(§§pop().hangerTicket);
                                 if(_loc5_)
                                 {
                                    addr157:
                                    §§push(§§pop().isDrawingOrder);
                                    §§push(false);
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    else
                                    {
                                       addr300:
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             addr303:
                                             §§pop();
                                             addr315:
                                             if(!_loc6_)
                                             {
                                                §§push(_loc2_.clip.y >= _loc2_.trayBoundsTopY);
                                             }
                                             _loc2_.moveToTray();
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr315);
                                          }
                                          else
                                          {
                                             addr325:
                                             §§push(_loc2_.gameObj.§_-A7§);
                                             if(!(_loc6_ && Boolean(this)))
                                             {
                                                addr342:
                                                §§push(§§pop().hangerTicket);
                                             }
                                             §§pop().hangerTicket = null;
                                          }
                                       }
                                       else
                                       {
                                          _loc2_.moveToLine(_loc2_.clip.x);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr325);
                                          }
                                       }
                                    }
                                 }
                                 addr343:
                                 if(§§pop() == _loc2_)
                                 {
                                    §§goto(addr325);
                                    §§push(_loc2_.gameObj.§_-A7§);
                                 }
                              }
                              §§push(§§pop().hangerTicket);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(_loc2_.gameObj.§_-A7§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop().hangerTicket);
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             §§pop().moveToLine();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr342);
                                       }
                                    }
                                    addr217:
                                 }
                                 §§push(_loc2_.gameObj);
                              }
                              §§goto(addr343);
                           }
                           §§pop().§_-A7§.hangerTicket = _loc2_;
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              _loc2_.moveToHanger();
                              §§goto(addr217);
                           }
                           else
                           {
                              §§goto(addr315);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        §§push(_loc2_.gameObj.§_-A7§);
                        if(!_loc6_)
                        {
                           §§goto(addr180);
                        }
                        §§goto(addr342);
                     }
                     else
                     {
                        _loc2_.moveToLine();
                     }
                     §§goto(addr217);
                  }
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_.clip.y < _loc2_.hangerY + 227);
                        if(_loc5_)
                        {
                        }
                        addr288:
                        §§pop();
                     }
                     addr269:
                     addr268:
                     addr265:
                     addr271:
                     §§push(_loc2_.gameObj.§_-7q§.currentPlate.ticketHolderClip && _loc2_.clip.x >= _loc2_.trayBoundsLeftX);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr288);
                        }
                     }
                     addr299:
                     §§goto(addr300);
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§push(_loc2_.gameObj.§_-A7§.hangerTicket);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(!§§pop());
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§goto(addr138);
                           §§push(§§pop());
                        }
                        else
                        {
                           §§goto(addr299);
                        }
                        §§goto(addr300);
                     }
                     §§goto(addr157);
                  }
                  else
                  {
                     §§push(_loc2_.gameObj.hud.currentStation == "build");
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc2_.gameObj.§_-7q§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop().currentPlate);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    §§push(§§pop() != null);
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                    }
                                    §§goto(addr299);
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr268);
                           }
                           §§push(§§pop());
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 §§goto(addr265);
                              }
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr300);
                     }
                  }
                  §§goto(addr303);
               }
               §§push(_loc2_.clip.x <= _loc2_.trayBoundsRightX);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               §§goto(addr269);
            }
            catch(err:Error)
            {
               §§goto(addr79);
            }
            return;
         }
         _loc2_.clip.stopDrag();
         if(_loc5_ || Boolean(this))
         {
            §§goto(addr53);
         }
         §§goto(addr58);
      }
      
      public function updateTicketPosition(param1:Event) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:FoodPlate = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc2_:Ticket = this;
         if(!(_loc20_ && Boolean(this)))
         {
            §§push(_loc2_.isDragging);
            if(_loc19_ || Boolean(param1))
            {
               if(§§pop())
               {
                  §§push(_loc2_.maxGrabScale);
                  §§push(_loc2_.minGrabScale);
                  if(!_loc20_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc19_)
                     {
                        §§push(§§pop());
                        if(!(_loc20_ && Boolean(this)))
                        {
                           _loc3_ = §§pop();
                           §§push(_loc2_.clip.y - _loc2_.minGrabY);
                           if(_loc19_)
                           {
                              addr197:
                              §§push(_loc2_.maxGrabY);
                              §§push(_loc2_.minGrabY);
                              if(_loc19_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc19_ || Boolean(_loc2_))
                                 {
                                 }
                                 addr267:
                                 if(§§pop() > §§pop())
                                 {
                                    addr269:
                                    _loc5_ = _loc7_;
                                 }
                                 §§push(_loc2_.gameObj);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop().§_-7q§);
                                    if(!_loc20_)
                                    {
                                       §§push(§§pop().currentPlate);
                                       if(!_loc20_)
                                       {
                                          _loc8_ = §§pop();
                                          §§push(_loc8_);
                                          if(_loc8_)
                                          {
                                             §§pop();
                                             if(_loc19_)
                                             {
                                                addr333:
                                                §§push(_loc8_.attachedTicket == null);
                                                if(!(_loc20_ && Boolean(_loc2_)))
                                                {
                                                   §§push(§§pop());
                                                }
                                                §§pop();
                                             }
                                             addr338:
                                             §§push(_loc8_.ticketHolderClip);
                                             §§push(_loc8_.ticketHolderClip);
                                             if(_loc19_)
                                             {
                                                addr341:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(!_loc8_.animatePlateOut);
                                                   if(_loc19_)
                                                   {
                                                   }
                                                   §§goto(addr814);
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc19_)
                                                   {
                                                      §§push(_loc8_.clip.x + _loc8_.ticketHolderClip.x + _loc2_.trayX);
                                                      if(_loc19_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         §§push(_loc8_.clip.y + _loc8_.ticketHolderClip.y + _loc2_.trayY);
                                                         if(!(_loc20_ && Boolean(_loc2_)))
                                                         {
                                                            _loc10_ = §§pop();
                                                         }
                                                         addr421:
                                                         §§push(§§pop());
                                                         if(!(_loc20_ && Boolean(_loc2_)))
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(!(_loc20_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_));
                                                            }
                                                         }
                                                         _loc13_ = §§pop();
                                                         if(_loc19_)
                                                         {
                                                            §§push(150);
                                                            if(!(_loc20_ && Boolean(param1)))
                                                            {
                                                               _loc14_ = §§pop();
                                                               addr479:
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(_loc19_ || Boolean(_loc2_))
                                                                  {
                                                                  }
                                                                  addr513:
                                                                  §§push(_loc2_.trayScale);
                                                                  if(_loc19_)
                                                                  {
                                                                     addr529:
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        addr520:
                                                                        §§push(_loc2_.trayScale);
                                                                     }
                                                                     §§push(_loc15_);
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     addr528:
                                                                     §§goto(addr529);
                                                                     §§push(_loc15_);
                                                                  }
                                                               }
                                                               §§push(_loc2_.minGrabScale);
                                                               if(!(_loc20_ && Boolean(this)))
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(_loc19_ || Boolean(this))
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        §§push(_loc3_);
                                                                     }
                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                     if(!(_loc20_ && Boolean(this)))
                                                                     {
                                                                        addr510:
                                                                        §§push(§§pop());
                                                                        §§push(§§pop());
                                                                     }
                                                                     §§goto(addr520);
                                                                  }
                                                                  addr512:
                                                                  _loc15_ = §§pop();
                                                               }
                                                               §§goto(addr513);
                                                            }
                                                            _loc15_ = §§pop();
                                                            §§goto(addr529);
                                                         }
                                                         §§goto(addr833);
                                                      }
                                                      §§push(_loc14_);
                                                      if(_loc19_ || Boolean(_loc2_))
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§goto(addr479);
                                                         }
                                                      }
                                                      §§goto(addr512);
                                                   }
                                                   §§push(_loc9_);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop() - _loc2_.clip.x);
                                                      if(_loc19_ || Boolean(param1))
                                                      {
                                                         _loc11_ = §§pop();
                                                         if(_loc19_ || Boolean(_loc2_))
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc19_)
                                                            {
                                                            }
                                                            §§goto(addr510);
                                                         }
                                                         addr788:
                                                         §§push(_loc2_.gameObj);
                                                         if(!_loc20_)
                                                         {
                                                            §§goto(addr792);
                                                         }
                                                         §§goto(addr833);
                                                      }
                                                      §§goto(addr421);
                                                      §§push(§§pop() - _loc2_.clip.y);
                                                   }
                                                   §§goto(addr528);
                                                }
                                                _loc2_.clip.scaleX = _loc5_;
                                                _loc2_.clip.scaleY = _loc5_;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc19_)
                                                {
                                                   §§pop();
                                                   addr770:
                                                   §§push(_loc2_.gameObj);
                                                   if(_loc19_)
                                                   {
                                                      §§push(§§pop().stage.mouseX < 0);
                                                      §§push(§§pop().stage.mouseX < 0);
                                                      if(_loc19_ || Boolean(this))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            §§goto(addr788);
                                                         }
                                                      }
                                                      §§goto(addr803);
                                                   }
                                                   §§goto(addr792);
                                                }
                                                addr792:
                                                §§push(§§pop().mouseX > 640);
                                                §§push(§§pop().mouseX > 640);
                                                if(_loc19_ || Boolean(_loc2_))
                                                {
                                                   addr803:
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(_loc2_.gameObj);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop().mouseY < 0);
                                                         if(_loc19_)
                                                         {
                                                         }
                                                         §§goto(addr823);
                                                      }
                                                   }
                                                   addr814:
                                                   §§goto(addr815);
                                                }
                                                addr815:
                                                if(!§§pop())
                                                {
                                                   if(!(_loc20_ && Boolean(_loc3_)))
                                                   {
                                                      addr823:
                                                      §§pop();
                                                      §§goto(addr841);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   _loc2_.releaseTicket();
                                                }
                                                addr841:
                                                if(!_loc20_)
                                                {
                                                   addr833:
                                                   §§push(_loc2_.gameObj.mouseY > 480);
                                                }
                                                return;
                                             }
                                             §§goto(addr814);
                                          }
                                          §§push(§§pop());
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(!(_loc20_ && Boolean(_loc2_)))
                                             {
                                                §§push(_loc2_.gameObj);
                                                if(!(_loc20_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop().hud.currentStation == "build");
                                                }
                                                §§goto(addr833);
                                             }
                                             §§goto(addr770);
                                          }
                                          §§push(§§pop());
                                          §§push(§§pop());
                                          if(_loc19_)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr333);
                                             }
                                             §§goto(addr338);
                                          }
                                          §§goto(addr341);
                                       }
                                       addr755:
                                       §§push(_loc2_.isDragging);
                                       §§push(_loc2_.isDragging);
                                       if(_loc19_ || Boolean(_loc3_))
                                       {
                                          §§goto(addr338);
                                       }
                                       §§goto(addr803);
                                    }
                                    addr754:
                                    §§pop().startDeliveringOrder();
                                    §§goto(addr755);
                                 }
                                 else
                                 {
                                    addr752:
                                    §§push(§§pop().§_-7q§);
                                 }
                                 addr753:
                                 §§goto(addr754);
                                 §§push(§§pop().currentPlate);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc19_ || Boolean(_loc3_))
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc19_)
                                 {
                                    §§push(§§pop());
                                    if(_loc20_ && Boolean(_loc3_))
                                    {
                                    }
                                    addr546:
                                    §§push(§§pop() - _loc2_.clip.x);
                                    if(_loc20_)
                                    {
                                    }
                                    addr562:
                                    _loc17_ = §§pop();
                                    addr571:
                                    _loc18_ = _loc2_.targetScale - _loc2_.clip.scaleX;
                                    addr566:
                                    if(!_loc20_)
                                    {
                                       _loc2_.clip.x += _loc16_ / _loc2_.tweenSpeed;
                                       if(!_loc20_)
                                       {
                                          _loc2_.clip.y += _loc17_ / _loc2_.tweenSpeed;
                                          if(!_loc20_)
                                          {
                                             _loc2_.clip.scaleX += _loc18_ / _loc2_.tweenSpeed;
                                             _loc2_.clip.scaleY += _loc18_ / _loc2_.tweenSpeed;
                                             if(!_loc20_)
                                             {
                                                addr624:
                                                if(Math.abs(_loc16_) < 1)
                                                {
                                                   _loc2_.clip.x = _loc2_.targetX;
                                                }
                                             }
                                             addr711:
                                             _loc2_.isMoving = false;
                                             addr714:
                                             _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.updateTicketPosition);
                                             if(_loc20_ && Boolean(_loc2_))
                                             {
                                             }
                                             addr750:
                                             §§goto(addr752);
                                             §§push(_loc2_.gameObj);
                                          }
                                          if(Math.abs(_loc17_) < 1)
                                          {
                                             _loc2_.clip.y = _loc2_.targetY;
                                          }
                                          if(Math.abs(_loc18_) < 0.05)
                                          {
                                             addr649:
                                             _loc2_.clip.scaleX = _loc2_.targetScale;
                                             if(_loc20_ && Boolean(this))
                                             {
                                             }
                                             §§goto(addr750);
                                          }
                                          addr668:
                                          §§push(_loc2_.clip.x == _loc2_.targetX);
                                          if(_loc19_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc19_)
                                                {
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc20_ && Boolean(_loc3_)))
                                             {
                                                _loc2_.clip.scaleX = _loc2_.targetScale;
                                                if(!_loc20_)
                                                {
                                                   _loc2_.clip.scaleY = _loc2_.targetScale;
                                                }
                                                §§goto(addr714);
                                             }
                                             §§goto(addr711);
                                          }
                                          §§goto(addr755);
                                       }
                                       _loc2_.clip.scaleY = _loc2_.targetScale;
                                       if(!_loc20_)
                                       {
                                          §§goto(addr668);
                                       }
                                    }
                                    if(_loc2_.isOnTray)
                                    {
                                       addr731:
                                       §§push(_loc2_.gameObj);
                                       if(!_loc20_)
                                       {
                                          §§push(§§pop().§_-7q§);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop().currentPlate);
                                             if(_loc19_ || Boolean(this))
                                             {
                                                §§pop().attachTicket(_loc2_);
                                                if(_loc19_)
                                                {
                                                   §§goto(addr711);
                                                }
                                             }
                                             §§goto(addr754);
                                          }
                                          §§goto(addr753);
                                       }
                                       §§goto(addr752);
                                    }
                                    §§goto(addr755);
                                 }
                                 _loc6_ = §§pop();
                                 §§push(_loc6_);
                                 §§push(0);
                                 if(!(_loc20_ && Boolean(_loc3_)))
                                 {
                                    addr246:
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc6_);
                                       §§push(1);
                                    }
                                    §§push(_loc2_.minGrabScale);
                                    if(!_loc19_)
                                    {
                                       §§goto(addr546);
                                    }
                                    §§goto(addr566);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    addr245:
                                    _loc6_ = 1;
                                 }
                                 §§goto(addr246);
                              }
                              §§goto(addr267);
                           }
                           _loc16_ = §§pop();
                           if(!_loc20_)
                           {
                              addr558:
                              §§goto(addr562);
                              §§push(_loc2_.targetY - _loc2_.clip.y);
                           }
                           §§goto(addr649);
                        }
                        addr238:
                        _loc6_ = §§pop();
                        §§goto(addr246);
                     }
                     addr252:
                     §§push(§§pop() + _loc6_ * _loc3_);
                     if(!_loc20_)
                     {
                        addr256:
                        §§push(§§pop());
                        if(_loc19_ || Boolean(_loc3_))
                        {
                           §§goto(addr267);
                           _loc7_ = §§pop();
                           §§push(_loc7_);
                           §§push(_loc5_);
                        }
                        §§goto(addr269);
                     }
                     else
                     {
                        §§goto(addr546);
                     }
                  }
                  _loc4_ = §§pop() / §§pop();
                  §§push(_loc4_);
                  §§push(0);
                  if(!(_loc20_ && Boolean(this)))
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(0);
                        if(!(_loc20_ && Boolean(_loc3_)))
                        {
                           _loc4_ = §§pop();
                           addr159:
                           §§push(_loc2_.minGrabScale);
                           §§push(_loc4_);
                           §§push(_loc3_);
                           if(_loc19_)
                           {
                              §§push(§§pop() + §§pop() * §§pop());
                              if(_loc19_)
                              {
                                 §§push(§§pop());
                                 if(_loc19_ || Boolean(this))
                                 {
                                    _loc5_ = §§pop();
                                    if(!(_loc20_ && Boolean(this)))
                                    {
                                       §§push(_loc2_.clip.x - _loc2_.minGrabZoomX);
                                       §§push(_loc2_.hangerX);
                                       §§push(_loc2_.minGrabZoomX);
                                       if(_loc19_)
                                       {
                                          §§goto(addr197);
                                       }
                                    }
                                    §§goto(addr668);
                                 }
                                 §§goto(addr245);
                              }
                              §§goto(addr558);
                           }
                           §§goto(addr252);
                        }
                        addr235:
                        §§push(§§pop());
                        if(_loc19_)
                        {
                           §§goto(addr238);
                        }
                        §§goto(addr256);
                     }
                     else
                     {
                        §§push(_loc4_);
                        §§push(1);
                        if(_loc19_ || Boolean(param1))
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(1);
                              if(_loc19_)
                              {
                                 §§push(§§pop());
                                 if(_loc19_ || Boolean(this))
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc19_ || Boolean(_loc3_))
                                    {
                                    }
                                    §§goto(addr624);
                                 }
                                 §§goto(addr571);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr159);
                        }
                     }
                  }
                  §§goto(addr246);
               }
               else
               {
                  §§push(_loc2_.isMoving);
                  if(_loc20_)
                  {
                  }
               }
               §§pop();
               if(_loc19_)
               {
                  §§push(_loc2_.clip.y == _loc2_.targetY);
                  if(_loc19_)
                  {
                     §§goto(addr668);
                  }
                  §§goto(addr546);
               }
               §§goto(addr731);
            }
            if(§§pop())
            {
               §§goto(addr546);
               §§push(_loc2_.targetX);
            }
            §§goto(addr755);
         }
         §§push(0);
         if(_loc19_ || Boolean(_loc2_))
         {
            §§goto(addr235);
         }
         else
         {
            §§goto(addr245);
         }
      }
      
      public function drawTicketDetails(param1:Number, param2:Number = -1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Ticket = this;
         if(_loc4_ || Boolean(_loc3_))
         {
            _loc3_.panelParts[param1].visible = true;
         }
      }
      
      public function finishDrawingTicket() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Ticket = this;
         if(_loc6_ || Boolean(this))
         {
            _loc1_.isDrawingOrder = false;
            if(_loc6_)
            {
            }
            §§goto(addr41);
         }
         _loc1_.bmp = new BitmapData(_loc1_.clip.width,_loc1_.clip.height,true,16777215);
         addr41:
         var _loc2_:Rectangle = _loc1_.clip.getBounds(_loc1_.clip);
         var _loc3_:Matrix = new Matrix(1,0,0,1,0 - _loc2_.x,0 - _loc2_.y);
         if(!_loc5_)
         {
            _loc1_.bmp.draw(_loc1_.clip,_loc3_,null,null,null,true);
            _loc1_.bitmap = new Bitmap(_loc1_.bmp);
            _loc1_.bitmap.smoothing = true;
            _loc1_.clip.addChild(_loc1_.bitmap);
            if(_loc6_ || Boolean(_loc2_))
            {
               _loc1_.bitmap.x = _loc2_.x;
               if(!_loc5_)
               {
                  _loc1_.bitmap.y = _loc2_.y;
               }
            }
            _loc1_.clip.removeChild(_loc1_.panelHolder);
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_.panelParts.length)
         {
            _loc1_.panelParts[_loc4_].parent.removeChild(_loc1_.panelParts[_loc4_]);
            _loc1_.panelParts[_loc4_] = null;
            if(!_loc5_)
            {
               _loc4_++;
            }
         }
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            _loc1_.panelParts = null;
            if(_loc6_)
            {
            }
            _loc1_.clip.number_txt.text = "";
            §§goto(addr164);
         }
         _loc1_.panelHolder = null;
         addr164:
         if(!_loc5_)
         {
            _loc1_.clip.number_txt.visible = false;
         }
      }
      
      public function destroy() : void
      {
         var ob:Ticket;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         ob = this;
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§push(§§pop().§§slot[1]);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(§§pop().bitmap));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  addr63:
                  addr78:
                  if(§§pop())
                  {
                     §§push(§§newactivation());
                  }
                  §§push(ob);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§pop().bitmap = §§pop();
                        addr96:
                        §§push(§§newactivation());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop().§§slot[1]);
                           if(_loc3_)
                           {
                           }
                        }
                        addr168:
                        §§pop().§§slot[1].order = null;
                        §§goto(addr166);
                     }
                     addr157:
                     §§pop().orderData = §§pop();
                     §§push(§§newactivation());
                     if(!(_loc4_ && _loc2_))
                     {
                        addr166:
                        if(!_loc4_)
                        {
                           addr173:
                           ob.clip.removeEventListener(MouseEvent.MOUSE_DOWN,ob.clickTicket);
                           addr172:
                        }
                        try
                        {
                           addr180:
                           §§push(§§newactivation());
                           if(!(_loc4_ && Boolean(this)))
                           {
                              addr252:
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_)
                              {
                                 if(§§pop().clip.parent.contains(ob.clip))
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc3_)
                                          {
                                             §§pop().clip.parent.removeChild(ob.clip);
                                             if(_loc3_ || _loc1_)
                                             {
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr250:
                                 §§push(§§newactivation());
                              }
                              §§pop().clip = null;
                           }
                           §§goto(addr252);
                        }
                        catch(err:Error)
                        {
                           if(!_loc4_)
                           {
                              §_-5i§.error("Error removing ticket from parent");
                           }
                           §§goto(addr250);
                        }
                        §§pop().§§slot[1];
                        return;
                     }
                     §§goto(addr172);
                  }
                  §§push(null);
                  if(!_loc4_)
                  {
                     §§goto(addr157);
                  }
                  §§goto(addr168);
               }
               §§pop();
               if(!_loc4_)
               {
                  addr141:
                  §§push(ob);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§goto(addr63);
                     §§push(Boolean(§§pop().clip.contains(ob.bitmap)));
                  }
                  §§push(null);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().bmp = §§pop();
                     if(!_loc4_)
                     {
                        addr152:
                        §§goto(addr63);
                        §§push(ob);
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr180);
            }
            if(§§pop().bmp != null)
            {
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop().§§slot[1]);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§pop().bmp.dispose();
                     }
                     §§goto(addr173);
                  }
                  addr138:
                  §§push(§§pop().§§slot[1]);
                  if(!_loc4_)
                  {
                     §§goto(addr141);
                  }
                  §§goto(addr173);
               }
               §§goto(addr138);
               §§push(§§newactivation());
            }
            §§goto(addr152);
         }
         §§pop().§§slot[1].clip.removeChild(ob.bitmap);
         if(_loc3_ || Boolean(this))
         {
            §§goto(addr78);
         }
         §§goto(addr96);
      }
      
      public function canClickInTraining(param1:Event) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Ticket = this;
         var _loc3_:§_-BY§ = _loc2_.gameObj;
         var _loc4_:* = false;
         if(!_loc6_)
         {
            §§push(_loc3_.§_-3f§);
            if(_loc5_ || Boolean(_loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§push(_loc3_.§_-DZ§);
                     if(!_loc6_)
                     {
                        §§push(8);
                        if(!_loc6_)
                        {
                           addr91:
                           if(§§pop() != §§pop())
                           {
                              §§push(_loc3_.§_-DZ§);
                              if(_loc6_)
                              {
                              }
                              addr76:
                              if(§§pop() == 26)
                              {
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§push(true);
                                    if(_loc5_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr107:
                                       _loc4_ = §§pop();
                                    }
                                 }
                                 addr108:
                                 §§push(_loc4_);
                              }
                           }
                           §§goto(addr108);
                        }
                        addr68:
                        if(§§pop() == §§pop())
                        {
                           §§push(true);
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                           }
                           else
                           {
                              §§goto(addr107);
                           }
                           §§goto(addr108);
                        }
                        else
                        {
                           §§goto(addr76);
                           §§push(_loc3_.§_-DZ§);
                        }
                        §§goto(addr91);
                     }
                     §§push(10);
                     if(_loc5_)
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr91);
               }
               else
               {
                  §§push(true);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§goto(addr107);
                  }
               }
            }
            return §§pop();
         }
         §§push(true);
         if(!_loc6_)
         {
            _loc4_ = §§pop();
            §§goto(addr91);
         }
         else
         {
            §§goto(addr107);
         }
      }
   }
}

