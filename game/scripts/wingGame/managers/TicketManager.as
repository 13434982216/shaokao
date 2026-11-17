package wingGame.managers
{
   import §_-1d§.*;
   import wingGame.models.Ticket;
   import wingGame.screens.*;
   
   public class TicketManager
   {
      public var gameObj:§_-BY§;
      
      public var tickets:Array;
      
      public var hangerTicket:Ticket;
      
      public var ticketNumber:Number = 0;
      
      public function TicketManager(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            this.tickets = [];
            if(!(_loc4_ && _loc2_))
            {
               super();
            }
         }
         var _loc2_:TicketManager = this;
         if(_loc3_)
         {
            _loc2_.gameObj = param1;
            if(_loc3_ || Boolean(_loc2_))
            {
            }
            §§goto(addr63);
         }
         _loc2_.setupManager();
         addr63:
      }
      
      public function setupManager() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TicketManager = this;
         if(_loc2_)
         {
            _loc1_.tickets = [];
            if(!_loc3_)
            {
               _loc1_.hangerTicket = null;
            }
         }
      }
      
      public function addTicket(param1:Number) : Ticket
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TicketManager = this;
         if(_loc7_ || Boolean(param1))
         {
            §§push(_loc2_.hangerTicket);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr38);
         }
         addr38:
         §§pop().moveToLine();
         addr39:
         §§push(§§findproperty(Ticket));
         §§push(_loc2_.gameObj);
         §§push(param1);
         §§push(_loc2_.ticketNumber);
         if(!_loc6_)
         {
            §§push(§§pop() + 1);
         }
         var _loc3_:Ticket = new §§pop().Ticket(§§pop(),§§pop(),§§pop());
         if(_loc7_)
         {
            _loc2_.tickets.push(_loc3_);
            if(_loc7_)
            {
            }
            §§goto(addr99);
         }
         var _loc4_:* = _loc2_;
         §§push(_loc4_.ticketNumber);
         if(_loc7_ || Boolean(this))
         {
            §§push(§§pop() + 1);
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            _loc4_.ticketNumber = _loc5_;
         }
         if(!_loc6_)
         {
            _loc2_.hangerTicket = _loc3_;
         }
         addr99:
         _loc2_.hangerTicket;
         return _loc3_;
      }
      
      public function removeTicket(param1:Ticket) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TicketManager = this;
         if(!_loc4_)
         {
            if(_loc2_.hangerTicket == param1)
            {
               if(_loc4_ && Boolean(this))
               {
               }
            }
            §§goto(addr33);
         }
         _loc2_.hangerTicket = null;
         addr33:
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.tickets.length)
         {
            §§push(_loc2_.tickets);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop()[§§pop()] != param1)
                  {
                     _loc3_++;
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue;
                  }
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(_loc2_.tickets);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                        }
                        addr94:
                        §§pop()[§§pop()] = null;
                        if(_loc5_)
                        {
                        }
                        break;
                     }
                  }
                  §§push(_loc2_.tickets);
               }
               §§pop()[§§pop()].destroy();
               if(_loc4_)
               {
                  continue;
               }
               §§push(_loc2_.tickets);
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     §§goto(addr94);
                  }
                  addr101:
                  §§pop().splice(§§pop(),1);
                  if(_loc4_)
                  {
                  }
                  break;
               }
            }
            §§goto(addr101);
            §§push(_loc3_);
         }
      }
      
      public function outOfTickets() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TicketManager = this;
         if(!_loc3_)
         {
            if(_loc1_.tickets.length == 0)
            {
               if(_loc3_)
               {
               }
               §§goto(addr49);
            }
            addr49:
            return §§pop();
            §§push(false);
         }
         §§push(true);
         if(!(_loc3_ && _loc2_))
         {
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:TicketManager = this;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_.tickets.length)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               §§push(_loc1_.tickets);
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§pop()[§§pop()].destroy();
                     addr51:
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(_loc1_.tickets);
                     }
                     _loc2_++;
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        continue;
                     }
                  }
                  addr47:
                  §§pop()[§§pop()] = null;
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr51);
               }
               §§goto(addr47);
               §§push(_loc2_);
            }
            §§goto(addr76);
         }
         _loc1_.tickets = null;
         addr76:
      }
   }
}

