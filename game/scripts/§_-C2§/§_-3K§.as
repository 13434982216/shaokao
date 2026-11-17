package §_-C2§
{
   import flash.display.*;
   import flash.geom.*;
   import flash.utils.*;
   
   public class §_-3K§
   {
      private var §_-EI§:Array;
      
      private var §_-3W§:Array;
      
      private var §_-9s§:Array;
      
      private var §_-9v§:Array;
      
      private var §_-6o§:Array;
      
      private var §_-CL§:Array;
      
      private var §import§:Array;
      
      private var §_-7r§:Array;
      
      private var §_-B0§:Array;
      
      private var §_-0M§:Array;
      
      private var §_-8Q§:Array;
      
      private var §_-6j§:Array;
      
      private var §_-BP§:Array;
      
      private var §_-Al§:Array;
      
      private var §_-6p§:Array;
      
      private var §_-0N§:Array;
      
      private var §_-56§:Array;
      
      private var §_-3U§:Array;
      
      private var §_-58§:Array;
      
      private var §_-7p§:ByteArray;
      
      private var §_-53§:int = 0;
      
      private var §_-92§:int = 7;
      
      private var §_-N§:Array;
      
      private var §_-J§:Array;
      
      private var §_-0n§:Array;
      
      private var §_-9U§:Array;
      
      public function §_-3K§(param1:Number = 50)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.§_-EI§ = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         if(_loc3_ || Boolean(param1))
         {
            this.§_-3W§ = new Array(64);
            if(_loc3_)
            {
               this.§_-9s§ = new Array(64);
               if(!(_loc4_ && Boolean(param1)))
               {
                  this.§_-9v§ = new Array(64);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     this.§_-6o§ = new Array(64);
                     this.§_-0M§ = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
                     this.§_-8Q§ = [0,1,2,3,4,5,6,7,8,9,10,11];
                     if(_loc3_)
                     {
                     }
                  }
                  addr613:
                  this.§_-9U§ = new Array(64);
                  addr618:
                  super();
                  if(_loc3_)
                  {
                     §§push(param1);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                           }
                           §§goto(addr669);
                        }
                        if(§§pop() > §§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(100);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr669:
                                 addr648:
                                 §§push(param1);
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    addr656:
                                    §§push(100);
                                 }
                                 param1 = §§pop();
                                 addr671:
                                 var _loc2_:* = 0;
                                 addr670:
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(param1 < 50)
                                    {
                                       §§push(int(5000 / param1));
                                       if(!_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                       §§goto(addr719);
                                    }
                                    else
                                    {
                                       §§push(int(200 - param1 * 2));
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr719);
                                 }
                                 this.§_-91§();
                                 if(!_loc4_)
                                 {
                                    this.§_-42§();
                                 }
                                 this.§_-1V§(_loc2_);
                                 addr719:
                                 return;
                                 §§push(§§pop());
                              }
                              §§goto(addr671);
                           }
                        }
                        §§goto(addr670);
                     }
                     addr645:
                     param1 = §§pop();
                     if(_loc3_)
                     {
                        §§goto(addr648);
                     }
                     §§goto(addr669);
                  }
                  §§push(1);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        §§goto(addr645);
                     }
                     §§goto(addr656);
                  }
                  §§goto(addr669);
               }
               addr416:
               this.§_-56§ = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
               this.§_-3U§ = new Array(65535);
               this.§_-58§ = new Array(65535);
               this.§_-N§ = new Array(64);
               this.§_-J§ = new Array(64);
               this.§_-0n§ = new Array(64);
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr613);
               }
               §§goto(addr669);
            }
            this.§_-6j§ = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         }
         this.§_-BP§ = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         if(!_loc4_)
         {
            this.§_-Al§ = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
            this.§_-6p§ = [0,1,2,3,4,5,6,7,8,9,10,11];
            this.§_-0N§ = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
            if(_loc3_ || _loc3_)
            {
               §§goto(addr416);
            }
            §§goto(addr618);
         }
         §§goto(addr416);
      }
      
      private function §_-1V§(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc8_:* = 0;
         var _loc4_:Array = [16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56,68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99];
         if(!_loc10_)
         {
            _loc2_ = 0;
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_ || Boolean(_loc2_))
            {
               addr187:
               §§push(64);
               if(!(_loc10_ && Boolean(param1)))
               {
                  if(§§pop() >= §§pop())
                  {
                     break;
                  }
                  §§push(Math.floor((_loc4_[_loc2_] * param1 + 50) / 100));
                  if(_loc9_ || Boolean(this))
                  {
                     _loc3_ = §§pop();
                     §§push(_loc3_);
                     if(!_loc10_)
                     {
                        §§push(1);
                        if(_loc9_)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(1);
                              if(_loc9_ || Boolean(param1))
                              {
                                 §§push(§§pop());
                                 if(_loc10_ && Boolean(this))
                                 {
                                 }
                                 addr159:
                                 this.§_-3W§[this.§_-EI§[_loc2_]] = _loc3_;
                                 continue;
                              }
                              addr157:
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(_loc9_ || Boolean(_loc3_))
                              {
                              }
                           }
                           _loc3_ = §§pop();
                           §§goto(addr159);
                        }
                        addr146:
                        if(§§pop() > §§pop())
                        {
                           if(!_loc9_)
                           {
                              continue;
                           }
                           §§push(255);
                           if(_loc10_ && Boolean(this))
                           {
                              break;
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr159);
                     }
                     _loc3_ = §§pop();
                     §§goto(addr159);
                  }
                  §§goto(addr146);
                  §§push(255);
               }
               var _loc5_:Array = null;
               §§push(0);
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  _loc2_ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc9_)
                     {
                        loop2:
                        while(§§pop() < 64)
                        {
                           §§push(Math.floor((_loc5_[_loc2_] * param1 + 50) / 100));
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              _loc3_ = §§pop();
                              §§push(_loc3_);
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 §§push(1);
                                 if(_loc9_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(1);
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             addr337:
                                             §§push(§§pop());
                                             if(_loc9_)
                                             {
                                             }
                                             while(true)
                                             {
                                                this.§_-9s§[this.§_-EI§[_loc2_]] = _loc3_;
                                             }
                                             addr337:
                                          }
                                          break loop1;
                                       }
                                       while(true)
                                       {
                                          _loc2_++;
                                          if(_loc10_ && Boolean(param1))
                                          {
                                             break loop2;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc3_);
                                       if(_loc10_ && Boolean(param1))
                                       {
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr337);
                                    }
                                    addr336:
                                 }
                                 addr326:
                                 if(§§pop() > §§pop())
                                 {
                                    §§push(255);
                                    if(_loc10_ && Boolean(param1))
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr337);
                              }
                              §§goto(addr326);
                              §§push(255);
                           }
                           _loc3_ = §§pop();
                           §§goto(addr337);
                        }
                        §§push(1);
                     }
                     break;
                  }
                  var _loc6_:Array = null;
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     §§push(0);
                     if(!_loc10_)
                     {
                        _loc2_ = §§pop();
                     }
                     addr381:
                     var _loc7_:* = §§pop();
                     if(!_loc10_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc7_);
                           loop4:
                           while(true)
                           {
                              §§push(8);
                              loop5:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(0);
                                    if(_loc9_ || Boolean(_loc3_))
                                    {
                                       _loc8_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          _loc8_++;
                                       }
                                       continue loop4;
                                       addr505:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(8);
                                       if(!(_loc9_ || Boolean(this)))
                                       {
                                          continue loop5;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc10_ && Boolean(param1)))
                                          {
                                             _loc7_++;
                                          }
                                          continue loop3;
                                       }
                                       addr471:
                                       §§push(this.§_-9v§);
                                       if(!_loc10_)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc10_)
                                          {
                                             §§push(1);
                                             if(!_loc10_)
                                             {
                                                §§push(this.§_-3W§);
                                                if(_loc9_)
                                                {
                                                   §§push(this.§_-EI§);
                                                   if(!(_loc10_ && Boolean(this)))
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc9_ || Boolean(param1))
                                                      {
                                                         §§push(§§pop()[§§pop()[§§pop()]] * _loc6_[_loc7_]);
                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(§§pop() * _loc6_[_loc8_]);
                                                            if(_loc9_)
                                                            {
                                                               §§push(8);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc9_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!(_loc10_ && Boolean(param1)))
                                                                     {
                                                                        §§pop()[§§pop()] = §§pop();
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop()[§§pop()] = §§pop();
                                                                        _loc2_++;
                                                                        if(!(_loc9_ || Boolean(this)))
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        _loc8_++;
                                                                        §§goto(addr505);
                                                                     }
                                                                     addr495:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               addr493:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr493);
                                                            }
                                                            addr492:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr495);
                                                         }
                                                         addr494:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop()[§§pop()[§§pop()]] * _loc6_[_loc7_]);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() * _loc6_[_loc8_]);
                                                            if(_loc10_)
                                                            {
                                                            }
                                                            §§goto(addr494);
                                                         }
                                                         §§goto(addr492);
                                                      }
                                                      addr478:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr478);
                                                   }
                                                   addr477:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr477);
                                                }
                                                addr475:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr475);
                                             }
                                             addr473:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr473);
                                          }
                                          addr472:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr472);
                                       }
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr471);
                     }
                  }
                  §§goto(addr381);
                  §§push(0);
               }
               while(true)
               {
                  §§goto(addr336);
               }
            }
            break;
            _loc2_++;
         }
         §§goto(addr187);
         §§push(18);
      }
      
      private function §_-0W§(param1:Array, param2:Array) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = new Array();
         var _loc6_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            while(true)
            {
               §§push(16);
               do
               {
                  if(§§pop() > §§pop())
                  {
                     return _loc5_;
                  }
                  §§push(1);
                  if(_loc9_)
                  {
                     _loc7_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_);
                        if(_loc9_)
                        {
                           if(§§pop() > param1[_loc6_])
                           {
                              §§push(_loc3_);
                              if(_loc8_)
                              {
                              }
                              break;
                           }
                           _loc5_[param2[_loc4_]] = new § in§();
                           if(_loc9_)
                           {
                              _loc5_[param2[_loc4_]].val = _loc3_;
                              _loc5_[param2[_loc4_]].len = _loc6_;
                              if(_loc9_)
                              {
                                 _loc4_++;
                              }
                              _loc3_++;
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 _loc7_++;
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    continue;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        break;
                     }
                     addr117:
                     _loc3_ = §§pop();
                     if(_loc9_)
                     {
                        _loc6_++;
                     }
                     continue loop0;
                  }
                  §§push(2);
               }
               while(_loc8_ && Boolean(_loc3_));
               
               §§push(int(§§pop() * §§pop()));
               if(!(_loc9_ || Boolean(param1)))
               {
                  continue;
               }
               §§goto(addr117);
            }
         }
      }
      
      private function §_-91§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.§_-CL§ = this.§_-0W§(this.§_-0M§,this.§_-8Q§);
            if(!(_loc1_ && Boolean(this)))
            {
               this.§import§ = this.§_-0W§(this.§_-Al§,this.§_-6p§);
               if(_loc2_)
               {
                  this.§_-7r§ = this.§_-0W§(this.§_-6j§,this.§_-BP§);
                  if(_loc2_ || Boolean(this))
                  {
                  }
               }
            }
            §§goto(addr83);
         }
         this.§_-B0§ = this.§_-0W§(this.§_-0N§,this.§_-56§);
         addr83:
      }
      
      private function §_-42§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc1_:* = 1;
         var _loc2_:* = 2;
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(15);
               loop2:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(_loc1_);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        _loc3_ = §§pop();
                        if(!_loc5_)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!(_loc6_ || Boolean(this)))
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc2_ - 1);
                                    if(!_loc5_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§push(§§pop());
                                    if(!(_loc6_ || Boolean(_loc3_)))
                                    {
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§_-58§);
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§push(32767 + _loc3_);
                                       §§push(_loc4_);
                                       if(!(_loc5_ && Boolean(_loc2_)))
                                       {
                                          §§pop()[§§pop()] = §§pop();
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             §§push(this.§_-3U§);
                                             §§push(32767);
                                             §§push(_loc3_);
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc5_)
                                                {
                                                   §§pop()[§§pop()] = new § in§();
                                                   if(!_loc5_)
                                                   {
                                                      addr235:
                                                      §§push(this.§_-3U§);
                                                      §§push(32767);
                                                      §§push(_loc3_);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_)
                                                         {
                                                            §§pop()[§§pop()].len = _loc4_;
                                                            if(!_loc5_)
                                                            {
                                                               addr255:
                                                               §§push(this.§_-3U§);
                                                               if(_loc6_ || Boolean(this))
                                                               {
                                                                  §§push(32767);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc6_)
                                                                     {
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + _loc3_);
                                                                     if(_loc6_)
                                                                     {
                                                                     }
                                                                     addr243:
                                                                     while(true)
                                                                     {
                                                                        §§pop()[§§pop()].len = _loc4_;
                                                                        if(_loc6_ || Boolean(this))
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  addr215:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(32767);
                                                                  §§push(_loc3_);
                                                                  addr257:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               addr255:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr255);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()].val = _loc2_ - 1 + _loc3_;
                                                            if(!(_loc5_ && Boolean(this)))
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc3_++;
                                                               }
                                                               addr271:
                                                            }
                                                         }
                                                         addr258:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_ || Boolean(_loc3_))
                                                         {
                                                            §§goto(addr243);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      addr235:
                                                   }
                                                   addr298:
                                                   §§push(_loc2_);
                                                   if(!(_loc6_ || Boolean(_loc2_)))
                                                   {
                                                      break;
                                                   }
                                                   §§push(1);
                                                   if(!_loc5_)
                                                   {
                                                      addr309:
                                                      §§push(§§pop() << §§pop());
                                                      if(_loc6_ || Boolean(this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                }
                                                while(true)
                                                {
                                                   §§pop()[§§pop()] = new § in§();
                                                   addr222:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-3U§);
                                                      if(_loc6_ || Boolean(_loc1_))
                                                      {
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                }
                                                addr219:
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                §§pop()[§§pop()].val = _loc3_;
                                                if(_loc6_ || Boolean(this))
                                                {
                                                   _loc3_++;
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr222);
                                                }
                                             }
                                             §§goto(addr219);
                                          }
                                          else
                                          {
                                             addr175:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop()[§§pop()] = §§pop();
                                          §§push(this.§_-3U§);
                                          if(_loc6_ || Boolean(this))
                                          {
                                             §§push(32767);
                                             if(_loc6_ || Boolean(this))
                                             {
                                                §§goto(addr215);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr235);
                                                }
                                                §§goto(addr257);
                                             }
                                             addr232:
                                          }
                                       }
                                       addr197:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr232);
                                 }
                                 addr231:
                              }
                              while(true)
                              {
                                 if(§§pop() > -§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(_loc1_);
                                       if(!_loc6_)
                                       {
                                          break loop3;
                                       }
                                       §§push(1);
                                       if(_loc5_ && Boolean(this))
                                       {
                                          continue loop2;
                                       }
                                       _loc1_ = §§pop() << §§pop();
                                       §§goto(addr298);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§_-58§);
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       §§push(32767);
                                       §§push(_loc3_);
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§goto(addr197);
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr309);
                              }
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(_loc1_);
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              §§goto(addr281);
                           }
                           §§goto(addr309);
                        }
                     }
                     _loc3_ = §§pop();
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§goto(addr175);
                     }
                     §§goto(addr271);
                  }
                  return;
               }
            }
            _loc2_ = §§pop();
            _loc4_++;
         }
      }
      
      private function §_-6M§(param1:§ in§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.val);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(param1.len);
         if(!_loc7_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(0);
               while(§§pop() >= §§pop())
               {
                  §§push(_loc2_ & uint(1 << _loc3_));
                  if(_loc6_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(this);
                           §§push(this.§_-53§);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() | uint(1 << this.§_-92§));
                           }
                           §§pop().§_-53§ = §§pop();
                        }
                        addr131:
                        this.writeByte(0);
                        this.§_-92§ = 7;
                        if(!_loc6_)
                        {
                           break;
                        }
                        addr151:
                        this.§_-53§ = 0;
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop0;
                        addr134:
                     }
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        §§push(§§pop() - 1);
                     }
                  }
                  _loc3_ = §§pop();
                  var _loc4_:* = this;
                  §§push(_loc4_.§_-92§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc7_)
                  {
                     _loc4_.§_-92§ = _loc5_;
                  }
                  §§push(this.§_-92§);
                  §§push(0);
                  if(!(_loc7_ && _loc3_))
                  {
                     if(§§pop() >= §§pop())
                     {
                        continue loop0;
                     }
                     §§push(this.§_-53§);
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     §§push(255);
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc7_)
                     {
                        this.writeByte(255);
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           §§goto(addr131);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr134);
                  }
                  else
                  {
                     this.writeByte(this.§_-53§);
                  }
                  §§goto(addr131);
               }
               return;
            }
         }
      }
      
      private function writeByte(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            this.§_-7p§.writeByte(param1);
         }
      }
      
      private function §_-B4§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(param1);
            if(_loc3_)
            {
               §§push(8);
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§push(§§pop() >> §§pop());
                  if(_loc3_ || _loc2_)
                  {
                  }
                  §§goto(addr50);
               }
               addr49:
               addr50:
               §§pop().writeByte(§§pop());
               if(_loc2_ && _loc2_)
               {
               }
               return;
               §§push(§§pop() & §§pop());
            }
            §§goto(addr49);
            §§push(255);
         }
         §§push(this);
         §§push(param1);
         if(!_loc2_)
         {
            §§push(§§pop() & 0xFF);
         }
         §§pop().writeByte(§§pop());
         §§goto(addr50);
      }
      
      private function §_-8a§(param1:Array, param2:Array) : Array
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:int = 0;
         var _loc23_:* = 0;
         if(!_loc24_)
         {
            _loc22_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc22_);
            if(!_loc24_)
            {
               §§push(8);
               if(_loc25_ || Boolean(this))
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(param1);
                     if(!(_loc24_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop()[_loc23_ + 0] + param1[_loc23_ + 7]);
                        if(_loc25_ || Boolean(param2))
                        {
                           _loc3_ = §§pop();
                           if(_loc25_ || Boolean(param2))
                           {
                              §§push(param1[_loc23_ + 0] - param1[_loc23_ + 7]);
                              if(_loc25_ || Boolean(_loc3_))
                              {
                                 §§push(§§pop());
                                 if(_loc25_)
                                 {
                                    _loc10_ = §§pop();
                                    §§push(param1);
                                    §§push(_loc23_);
                                    §§push(1);
                                    if(_loc25_ || Boolean(_loc3_))
                                    {
                                       _loc4_ = §§pop()[§§pop() + §§pop()] + param1[_loc23_ + 6];
                                       if(!_loc24_)
                                       {
                                          §§push(param1[_loc23_ + 1] - param1[_loc23_ + 6]);
                                          if(_loc25_ || Boolean(this))
                                          {
                                             _loc9_ = §§pop();
                                             if(_loc25_)
                                             {
                                                §§push(param1);
                                                if(_loc25_)
                                                {
                                                   §§push(_loc23_);
                                                   if(!_loc24_)
                                                   {
                                                      §§push(2);
                                                      if(_loc25_)
                                                      {
                                                         _loc5_ = §§pop()[§§pop() + §§pop()] + param1[_loc23_ + 5];
                                                         if(_loc25_ || Boolean(param1))
                                                         {
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc24_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop()[§§pop()] + param1[_loc23_ + 32]);
                                                            if(!_loc24_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  §§push(param1);
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§push(_loc23_ + 24);
                                                                     if(_loc25_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop()[§§pop()] - param1[_loc23_ + 32]);
                                                                           if(_loc25_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc24_ && Boolean(param2)))
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 §§push(_loc3_);
                                                                                 if(_loc25_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!(_loc24_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc25_ || Boolean(this))
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             §§push(_loc3_ - _loc6_);
                                                                                             if(!(_loc24_ && Boolean(param2)))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   _loc14_ = §§pop();
                                                                                                   §§push(_loc4_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                  }
                                                                                                                  addr949:
                                                                                                               }
                                                                                                               §§goto(addr1339);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc13_ = §§pop() - §§pop();
                                                                                                         §§goto(addr953);
                                                                                                      }
                                                                                                   }
                                                                                                   addr936:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                §§push(_loc8_);
                                                                                                §§push(_loc9_);
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc25_ || Boolean(param1))
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr1193);
                                                                                                }
                                                                                                §§goto(addr1115);
                                                                                             }
                                                                                             addr1082:
                                                                                          }
                                                                                          §§goto(addr1285);
                                                                                       }
                                                                                       §§goto(addr1112);
                                                                                    }
                                                                                    §§goto(addr1143);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    §§push(_loc9_ + _loc10_);
                                                                                    if(!(_loc24_ && Boolean(param1)))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          _loc13_ = §§pop();
                                                                                          §§goto(addr1109);
                                                                                       }
                                                                                       addr1108:
                                                                                    }
                                                                                    §§goto(addr1140);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1143);
                                                                        }
                                                                        addr875:
                                                                     }
                                                                  }
                                                                  §§goto(addr1277);
                                                               }
                                                               addr866:
                                                            }
                                                            §§goto(addr1153);
                                                         }
                                                         §§goto(addr1203);
                                                      }
                                                      addr848:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + 16);
                                                      if(!(_loc24_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(§§pop()[§§pop()] - param1[_loc23_ + 40]);
                                                         if(!(_loc24_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc24_ && Boolean(this)))
                                                            {
                                                               _loc8_ = §§pop();
                                                               §§push(param1);
                                                               if(!(_loc24_ && Boolean(param1)))
                                                               {
                                                                  §§push(_loc23_);
                                                                  if(!(_loc24_ && Boolean(this)))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr848);
                                                                     }
                                                                     addr847:
                                                                  }
                                                                  §§goto(addr1209);
                                                               }
                                                               §§goto(addr1203);
                                                            }
                                                            §§goto(addr1142);
                                                         }
                                                         §§goto(addr1112);
                                                      }
                                                      §§goto(addr980);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc23_);
                                                   if(!_loc24_)
                                                   {
                                                      §§push(§§pop() + 0);
                                                      if(!(_loc24_ && Boolean(param1)))
                                                      {
                                                         §§push(§§pop()[§§pop()] - param1[_loc23_ + 56]);
                                                         if(!(_loc24_ && Boolean(param2)))
                                                         {
                                                            §§goto(addr713);
                                                         }
                                                         §§goto(addr949);
                                                      }
                                                      §§goto(addr1067);
                                                   }
                                                   §§goto(addr847);
                                                }
                                                addr687:
                                             }
                                             _loc8_ = param1[_loc23_ + 2] - param1[_loc23_ + 5];
                                             §§push(param1);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr1082);
                                          }
                                       }
                                       §§push(param1);
                                       §§push(_loc23_);
                                       if(!(_loc24_ && Boolean(param1)))
                                       {
                                          §§push(§§pop() + 2);
                                          §§push(_loc14_);
                                          if(!_loc24_)
                                          {
                                             §§pop()[§§pop()] = §§pop() + _loc15_;
                                             addr412:
                                             param1[_loc23_ + 6] = _loc14_ - _loc15_;
                                             addr409:
                                             §§goto(addr419);
                                             §§push(_loc7_ + _loc8_);
                                          }
                                          §§goto(addr1290);
                                       }
                                       addr614:
                                       §§goto(addr618);
                                       §§push(§§pop() + 7);
                                       §§push(_loc20_);
                                       §§push(_loc18_);
                                    }
                                    §§pop()[§§pop() + §§pop()] = _loc20_ + _loc18_;
                                    addr605:
                                    §§push(param1);
                                    if(_loc25_ || Boolean(param1))
                                    {
                                       §§goto(addr614);
                                       §§push(_loc23_);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr1058);
                                    }
                                    addr1057:
                                 }
                                 §§push(§§pop());
                                 if(!(_loc24_ && Boolean(this)))
                                 {
                                    _loc12_ = §§pop();
                                    if(_loc25_)
                                    {
                                       addr450:
                                       _loc13_ = _loc9_ + _loc10_;
                                       if(!(_loc24_ && Boolean(_loc3_)))
                                       {
                                          §§push(_loc11_);
                                          if(_loc25_)
                                          {
                                             §§push(§§pop() - _loc13_);
                                             if(_loc25_ || Boolean(param2))
                                             {
                                                §§push(§§pop() * 0.382683433);
                                                if(!_loc24_)
                                                {
                                                   addr474:
                                                   §§push(§§pop());
                                                   if(!(_loc24_ && Boolean(_loc3_)))
                                                   {
                                                      _loc19_ = §§pop();
                                                      §§push(0.5411961);
                                                   }
                                                   §§goto(addr734);
                                                }
                                                §§goto(addr1108);
                                             }
                                             §§goto(addr538);
                                          }
                                          §§push(§§pop() * _loc11_ + _loc19_);
                                          if(_loc25_ || Boolean(param1))
                                          {
                                             §§push(§§pop());
                                             if(!_loc24_)
                                             {
                                                _loc16_ = §§pop();
                                                if(_loc25_)
                                                {
                                                   addr501:
                                                   §§push(1.306562965);
                                                   §§push(_loc13_);
                                                   if(!_loc24_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc25_)
                                                      {
                                                         §§goto(addr508);
                                                      }
                                                      §§goto(addr513);
                                                   }
                                                   §§goto(addr1002);
                                                }
                                                §§goto(addr1127);
                                             }
                                             §§goto(addr866);
                                          }
                                          §§goto(addr936);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr687);
                                       }
                                       addr686:
                                    }
                                    §§goto(addr605);
                                 }
                                 §§goto(addr1017);
                              }
                              while(true)
                              {
                                 §§goto(addr1140);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr1057);
                           }
                        }
                        while(true)
                        {
                           _loc9_ = §§pop();
                           §§push(param1);
                           if(_loc25_)
                           {
                              §§goto(addr760);
                           }
                           §§goto(addr1028);
                        }
                     }
                     §§push(_loc23_);
                     if(_loc25_)
                     {
                        §§push(§§pop() + 3);
                        if(!_loc24_)
                        {
                           _loc6_ = §§pop()[§§pop()] + param1[_loc23_ + 4];
                           §§push(param1);
                           if(!(_loc24_ && Boolean(this)))
                           {
                              §§push(_loc23_);
                              if(!_loc24_)
                              {
                                 §§push(§§pop() + 3);
                                 if(_loc25_ || Boolean(this))
                                 {
                                 }
                                 §§goto(addr748);
                              }
                              §§goto(addr575);
                           }
                           §§goto(addr409);
                        }
                        §§push(§§pop()[§§pop()] - param1[_loc23_ + 4]);
                        if(!(_loc24_ && Boolean(param2)))
                        {
                           _loc7_ = §§pop();
                           §§push(_loc3_);
                           if(_loc25_ || Boolean(param1))
                           {
                              §§push(§§pop() + _loc6_);
                              if(!_loc24_)
                              {
                                 _loc11_ = §§pop();
                                 if(!_loc24_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc25_ || Boolean(this))
                                    {
                                       §§push(_loc6_);
                                       if(_loc25_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc24_)
                                          {
                                             _loc14_ = §§pop();
                                             if(_loc25_ || Boolean(_loc3_))
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc24_ && Boolean(param2)))
                                                {
                                                   §§push(§§pop() + _loc5_);
                                                   if(!(_loc24_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc24_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         §§push(_loc4_ - _loc5_);
                                                         if(_loc25_ || Boolean(_loc3_))
                                                         {
                                                            _loc13_ = §§pop();
                                                         }
                                                         §§goto(addr538);
                                                      }
                                                      §§goto(addr533);
                                                   }
                                                   §§goto(addr1143);
                                                }
                                                §§goto(addr474);
                                             }
                                             §§goto(addr501);
                                          }
                                          §§goto(addr1017);
                                       }
                                       §§goto(addr1143);
                                    }
                                    §§goto(addr1127);
                                 }
                                 §§push(param1);
                                 if(!(_loc24_ && Boolean(param1)))
                                 {
                                    §§push(_loc23_);
                                    §§push(0);
                                    if(!_loc24_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc25_ || Boolean(this))
                                       {
                                          §§pop()[§§pop()] = _loc11_ + _loc12_;
                                          addr350:
                                          §§push(param1);
                                          if(!(_loc24_ && Boolean(param1)))
                                          {
                                             §§push(_loc23_);
                                             if(!_loc24_)
                                             {
                                                §§push(§§pop() + 4);
                                                §§push(_loc11_ - _loc12_);
                                                if(!_loc24_)
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   §§push(_loc13_);
                                                   §§push(_loc14_);
                                                   if(_loc25_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      §§push(0.707106781);
                                                      if(_loc25_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc24_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc24_)
                                                            {
                                                               _loc15_ = §§pop();
                                                               if(_loc25_)
                                                               {
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc22_++;
                                                                  if(!_loc24_)
                                                                  {
                                                                     addr1342:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc22_);
                                                                        break loop0;
                                                                     }
                                                                     addr1342:
                                                                  }
                                                                  addr1345:
                                                               }
                                                               addr1339:
                                                            }
                                                            addr419:
                                                            §§push(§§pop());
                                                            if(_loc24_ && Boolean(this))
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               _loc19_ = §§pop();
                                                               if(_loc25_ || Boolean(this))
                                                               {
                                                                  §§push(0.5411961);
                                                                  §§push(_loc11_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc25_ || Boolean(param2))
                                                                     {
                                                                        §§push(§§pop() + _loc19_);
                                                                        if(_loc25_)
                                                                        {
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              _loc21_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc25_)
                                                                                 {
                                                                                    §§push(_loc23_);
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + 40);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc21_);
                                                                                             if(_loc25_)
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc25_ || Boolean(param2))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop()[§§pop()] = §§pop();
                                                                                                            if(!(_loc24_ && Boolean(this)))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr1253:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop()[§§pop()] = §§pop();
                                                                                                         addr1254:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc23_);
                                                                                                               if(!(_loc24_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§push(§§pop() + 8);
                                                                                                                  loop42:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc20_);
                                                                                                                     addr1266:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc18_);
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1322:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop()[§§pop()] = Math.round(param1[_loc22_] * param2[_loc22_]);
                                                                                                                  §§goto(addr1339);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc25_ || Boolean(param2))
                                                                                                   {
                                                                                                      §§goto(addr1253);
                                                                                                   }
                                                                                                   §§goto(addr1266);
                                                                                                }
                                                                                                addr1245:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop()[§§pop()] = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   if(!(_loc24_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc23_);
                                                                                                         if(!(_loc24_ && Boolean(this)))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(56);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  §§push(_loc20_);
                                                                                                                  §§push(_loc18_);
                                                                                                                  loop13:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop()[§§pop()] = §§pop();
                                                                                                                        _loc23_++;
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc22_++;
                                                                                                                              if(!(_loc24_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc22_);
                                                                                                                                    §§push(8);
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          §§push(param1);
                                                                                                                                          if(_loc24_ && Boolean(this))
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1345);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1302:
                                                                                                                              }
                                                                                                                              break loop13;
                                                                                                                           }
                                                                                                                           addr1294:
                                                                                                                        }
                                                                                                                        break loop13;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1342);
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            addr1285:
                                                                                                         }
                                                                                                         §§goto(addr1322);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1322);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(24);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(_loc21_);
                                                                                          if(!(_loc24_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr1245);
                                                                                             §§push(_loc16_);
                                                                                          }
                                                                                          §§goto(addr1266);
                                                                                       }
                                                                                    }
                                                                                    addr1234:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc23_);
                                                                                    if(_loc25_ || Boolean(param1))
                                                                                    {
                                                                                       §§goto(addr1234);
                                                                                    }
                                                                                    §§goto(addr1285);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr1193:
                                                                     }
                                                                     addr1154:
                                                                     while(true)
                                                                     {
                                                                        _loc18_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(_loc25_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(0.707106781);
                                                                                 if(!(_loc24_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc25_ || Boolean(_loc3_))
                                                                                       {
                                                                                          _loc17_ = §§pop();
                                                                                          if(!(_loc24_ && Boolean(param1)))
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                §§push(_loc17_);
                                                                                             }
                                                                                             §§goto(addr1193);
                                                                                          }
                                                                                          §§goto(addr1254);
                                                                                       }
                                                                                       addr1188:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr1189:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc20_ = §§pop();
                                                                                             §§push(_loc10_);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr1166:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr1188);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc17_);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               _loc22_ = 0;
                                                               §§goto(addr1342);
                                                            }
                                                            addr1117:
                                                         }
                                                         _loc11_ = §§pop();
                                                         if(!_loc24_)
                                                         {
                                                            addr508:
                                                            §§push(_loc8_);
                                                            if(!_loc24_)
                                                            {
                                                               §§push(§§pop() + _loc9_);
                                                            }
                                                            §§push(§§pop() + _loc19_);
                                                            if(_loc25_)
                                                            {
                                                               addr513:
                                                               _loc18_ = §§pop();
                                                               if(_loc25_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc25_ || Boolean(param1))
                                                                  {
                                                                     §§push(§§pop() * 0.707106781);
                                                                     if(_loc25_ || Boolean(param1))
                                                                     {
                                                                        addr533:
                                                                        §§push(§§pop());
                                                                        if(_loc24_)
                                                                        {
                                                                        }
                                                                        §§goto(addr1154);
                                                                     }
                                                                     _loc17_ = §§pop();
                                                                     addr538:
                                                                     _loc20_ = _loc10_ + _loc17_;
                                                                     _loc21_ = _loc10_ - _loc17_;
                                                                  }
                                                                  §§goto(addr1189);
                                                               }
                                                               addr650:
                                                               _loc23_ = §§pop();
                                                               if(_loc25_ || Boolean(param1))
                                                               {
                                                                  _loc22_ = 0;
                                                                  if(_loc25_)
                                                                  {
                                                                     §§goto(addr1302);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc11_);
                                                                     if(_loc25_)
                                                                     {
                                                                        addr1112:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - _loc13_);
                                                                           §§push(0.382683433);
                                                                           addr1115:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr1117);
                                                                           }
                                                                        }
                                                                        addr1112:
                                                                     }
                                                                     addr1140:
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        §§push(1.306562965);
                                                                        addr1142:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc13_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              §§push(_loc19_);
                                                                              if(_loc25_ || Boolean(this))
                                                                              {
                                                                              }
                                                                              §§goto(addr1166);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr1109:
                                                               }
                                                               §§goto(addr1294);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               §§push(param1);
                                                               if(!(_loc24_ && Boolean(param2)))
                                                               {
                                                                  §§push(§§pop()[_loc23_ + 8] + param1[_loc23_ + 48]);
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     §§push(param1);
                                                                     if(_loc25_)
                                                                     {
                                                                        §§push(_loc23_);
                                                                        if(_loc25_ || Boolean(param1))
                                                                        {
                                                                           addr746:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + 8);
                                                                              addr748:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop()[§§pop()] - param1[_loc23_ + 48]);
                                                                              }
                                                                           }
                                                                           addr746:
                                                                        }
                                                                        §§goto(addr1209);
                                                                     }
                                                                  }
                                                                  addr734:
                                                               }
                                                               §§goto(addr1209);
                                                            }
                                                            addr713:
                                                         }
                                                         §§push(param1);
                                                         if(!_loc24_)
                                                         {
                                                            §§push(_loc23_);
                                                            if(_loc25_ || Boolean(this))
                                                            {
                                                            }
                                                            addr599:
                                                            §§push(1);
                                                         }
                                                         §§goto(addr1277);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr1193);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr1153:
                                                      while(true)
                                                      {
                                                         §§goto(addr1154);
                                                      }
                                                   }
                                                }
                                                addr578:
                                                §§push(§§pop() - _loc16_);
                                                if(_loc25_ || Boolean(_loc3_))
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   §§push(param1);
                                                   if(_loc25_ || Boolean(param2))
                                                   {
                                                      §§push(_loc23_);
                                                      if(!_loc24_)
                                                      {
                                                         §§goto(addr599);
                                                      }
                                                      §§goto(addr746);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc23_);
                                                      if(_loc25_ || Boolean(param2))
                                                      {
                                                         §§push(16);
                                                         if(_loc25_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop()[§§pop() + §§pop()] + param1[_loc23_ + 40];
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc25_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(_loc23_);
                                                                     if(_loc25_ || Boolean(param1))
                                                                     {
                                                                     }
                                                                     §§goto(addr1201);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc23_);
                                                                     if(!_loc24_)
                                                                     {
                                                                        §§push(§§pop() + 32);
                                                                        if(_loc25_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(_loc25_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop()[§§pop()] = §§pop() - _loc12_;
                                                                                    if(_loc25_ || Boolean(param1))
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       §§push(_loc14_);
                                                                                       if(!(_loc24_ && Boolean(param2)))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                §§push(0.707106781);
                                                                                                if(_loc25_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr1017:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc15_ = §§pop();
                                                                                                      if(_loc25_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(_loc25_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc23_);
                                                                                                               §§push(16);
                                                                                                               if(_loc25_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr1285);
                                                                                                            }
                                                                                                            addr1028:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1209);
                                                                                                   }
                                                                                                   addr1017:
                                                                                                }
                                                                                                §§goto(addr1143);
                                                                                             }
                                                                                             §§goto(addr1158);
                                                                                          }
                                                                                          addr1002:
                                                                                       }
                                                                                       §§goto(addr1127);
                                                                                    }
                                                                                    §§goto(addr1195);
                                                                                 }
                                                                                 addr983:
                                                                              }
                                                                              §§goto(addr1217);
                                                                           }
                                                                           addr980:
                                                                        }
                                                                        §§goto(addr1203);
                                                                     }
                                                                     addr1058:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + 48);
                                                                        if(_loc25_ || Boolean(_loc3_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()] = _loc14_ - _loc15_;
                                                                              if(!(_loc24_ && Boolean(param2)))
                                                                              {
                                                                                 §§push(_loc7_);
                                                                              }
                                                                              §§goto(addr1203);
                                                                           }
                                                                           addr1067:
                                                                        }
                                                                        §§goto(addr1266);
                                                                     }
                                                                  }
                                                                  addr973:
                                                               }
                                                               addr953:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  §§push(_loc23_);
                                                                  §§push(0);
                                                                  if(!(_loc24_ && Boolean(param2)))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(_loc11_);
                                                                     §§push(_loc12_);
                                                                     if(_loc25_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc25_)
                                                                        {
                                                                        }
                                                                        §§goto(addr983);
                                                                     }
                                                                     §§goto(addr1289);
                                                                  }
                                                                  §§goto(addr1235);
                                                               }
                                                            }
                                                            addr771:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            §§push(_loc14_);
                                                            if(!(_loc24_ && Boolean(param2)))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc15_);
                                                                  if(!(_loc24_ && Boolean(this)))
                                                                  {
                                                                     §§pop()[§§pop()] = §§pop() + §§pop();
                                                                  }
                                                                  §§goto(addr1209);
                                                               }
                                                               addr1046:
                                                            }
                                                            §§goto(addr1217);
                                                         }
                                                      }
                                                   }
                                                   addr760:
                                                }
                                                while(true)
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   §§goto(addr973);
                                                }
                                             }
                                             §§push(§§pop() + 5);
                                             §§push(_loc21_);
                                             §§push(_loc16_);
                                             if(_loc25_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc25_ || Boolean(param2))
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   addr575:
                                                   §§goto(addr578);
                                                   §§push(param1);
                                                   §§push(_loc23_ + 3);
                                                   §§push(_loc21_);
                                                }
                                                §§goto(addr1046);
                                             }
                                             addr618:
                                             §§push(§§pop() - §§pop());
                                             if(!_loc24_)
                                             {
                                                §§pop()[§§pop()] = §§pop();
                                                §§push(_loc23_);
                                                §§push(8);
                                                if(_loc25_)
                                                {
                                                   §§push(int(§§pop() + §§pop()));
                                                   if(_loc25_ || Boolean(param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr650);
                                                }
                                                §§goto(addr1344);
                                             }
                                             §§goto(addr1217);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr412);
                                    }
                                    §§goto(addr771);
                                 }
                                 §§goto(addr1277);
                              }
                              §§goto(addr450);
                           }
                           §§goto(addr513);
                        }
                        §§goto(addr1143);
                     }
                     §§goto(addr746);
                  }
                  §§goto(addr513);
                  §§push(0);
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc24_)
                     {
                        §§goto(addr1309);
                     }
                     §§goto(addr1209);
                  }
                  else
                  {
                     §§push(param1);
                     §§push(_loc23_ + 0);
                     if(!_loc24_)
                     {
                        _loc3_ = §§pop()[§§pop()] + param1[_loc23_ + 56];
                        §§goto(addr686);
                     }
                     §§goto(addr875);
                  }
               }
            }
            break;
            _loc23_ = §§pop();
            _loc22_++;
         }
         while(true)
         {
            §§goto(addr1344);
         }
      }
      
      private function §_-n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-B4§(65504);
            this.§_-B4§(16);
            if(_loc2_)
            {
               this.writeByte(74);
            }
            this.writeByte(70);
         }
         this.writeByte(73);
         this.writeByte(70);
         this.writeByte(0);
         if(_loc2_)
         {
            this.writeByte(1);
            if(!_loc1_)
            {
               this.writeByte(1);
               this.writeByte(0);
               if(!_loc1_)
               {
                  this.§_-B4§(1);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.§_-B4§(1);
                  }
                  this.writeByte(0);
                  if(_loc1_ && Boolean(this))
                  {
                  }
               }
            }
            this.writeByte(0);
         }
      }
      
      private function §_-6h§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            this.§_-B4§(65472);
            if(!_loc4_)
            {
               this.§_-B4§(17);
               this.writeByte(8);
               this.§_-B4§(param2);
               this.§_-B4§(param1);
               this.writeByte(3);
               this.writeByte(1);
            }
            addr91:
            this.writeByte(17);
            this.writeByte(1);
            §§goto(addr97);
         }
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(2);
         if(!(_loc4_ && Boolean(this)))
         {
            this.writeByte(17);
            this.writeByte(1);
            if(!_loc4_)
            {
               this.writeByte(3);
               if(_loc3_ || Boolean(param1))
               {
               }
            }
            addr97:
            return;
         }
         §§goto(addr91);
      }
      
      private function §_-2k§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(!_loc3_)
         {
            this.§_-B4§(65499);
            if(!(_loc3_ && Boolean(this)))
            {
               this.§_-B4§(132);
               if(_loc3_)
               {
               }
            }
            addr51:
            while(true)
            {
               §§push(_loc1_);
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§push(64);
                  if(!_loc3_)
                  {
                     addr99:
                     if(§§pop() >= §§pop())
                     {
                        this.writeByte(1);
                        if(_loc2_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(64);
                           }
                           addr102:
                           return;
                           addr100:
                        }
                     }
                     else
                     {
                        this.writeByte(this.§_-3W§[_loc1_]);
                        if(!_loc3_)
                        {
                           continue;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr100);
                     }
                     addr99:
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        this.writeByte(this.§_-9s§[_loc1_]);
                        _loc1_++;
                        §§goto(addr99);
                     }
                     §§goto(addr102);
                  }
               }
               break;
               _loc1_++;
            }
            _loc1_ = §§pop();
            §§goto(addr99);
         }
         this.writeByte(0);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_ = 0;
         }
         §§goto(addr51);
      }
      
      private function §_-BC§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(_loc2_ || _loc3_)
         {
            this.§_-B4§(65476);
            if(_loc3_)
            {
            }
            addr44:
            loop0:
            while(true)
            {
               if(_loc1_ >= 16)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(0);
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_ = §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc2_)
                           {
                              §§push(11);
                              if(_loc2_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.writeByte(16);
                                    _loc1_ = 0;
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(!_loc3_)
                                       {
                                          §§push(16);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                if(_loc3_)
                                                {
                                                }
                                                break loop1;
                                             }
                                          }
                                          loop3:
                                          while(§§pop() <= §§pop())
                                          {
                                             this.writeByte(this.§_-56§[_loc1_]);
                                             if(_loc2_ || Boolean(_loc1_))
                                             {
                                                _loc1_++;
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr296:
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       break;
                                       this.writeByte(this.§_-6j§[_loc1_ + 1]);
                                       _loc1_++;
                                    }
                                    _loc1_ = §§pop();
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc2_)
                                          {
                                             if(§§pop() <= 161)
                                             {
                                                continue;
                                             }
                                             this.writeByte(1);
                                             _loc1_ = 0;
                                          }
                                          break;
                                          this.writeByte(this.§_-BP§[_loc1_]);
                                          _loc1_++;
                                       }
                                       §§goto(addr296);
                                    }
                                    addr236:
                                    §§push(0);
                                    if(_loc2_)
                                    {
                                       _loc1_ = §§pop();
                                       addr240:
                                       break loop0;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(16);
                                       addr260:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc2_ || Boolean(this))
                                             {
                                                break loop1;
                                             }
                                          }
                                          else
                                          {
                                             this.writeByte(this.§_-0N§[_loc1_ + 1]);
                                             if(_loc2_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   _loc1_++;
                                                   continue loop10;
                                                }
                                                addr257:
                                             }
                                             else
                                             {
                                                addr270:
                                             }
                                          }
                                          §§goto(addr295);
                                       }
                                       break loop0;
                                    }
                                    addr259:
                                 }
                                 else
                                 {
                                    this.writeByte(this.§_-8Q§[_loc1_]);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    this.writeByte(this.§_-6p§[_loc1_]);
                                    _loc1_++;
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§goto(addr219);
                                    }
                                    break;
                                 }
                                 this.writeByte(17);
                                 if(_loc2_)
                                 {
                                    §§goto(addr236);
                                 }
                                 §§goto(addr240);
                                 §§goto(addr260);
                              }
                              §§goto(addr257);
                              addr230:
                           }
                           break;
                           _loc1_++;
                        }
                        addr269:
                        _loc1_ = §§pop();
                        §§goto(addr270);
                     }
                     while(true)
                     {
                        §§push(11);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr230);
                        }
                        break;
                     }
                     §§goto(addr260);
                  }
                  return;
               }
               this.writeByte(this.§_-0M§[_loc1_ + 1]);
               if(_loc2_ || _loc3_)
               {
                  _loc1_++;
                  if(!(_loc3_ && _loc3_))
                  {
                     continue;
                  }
               }
               break;
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(§§pop() < 16)
                     {
                        this.writeByte(this.§_-Al§[_loc1_ + 1]);
                        if(_loc2_)
                        {
                           _loc1_++;
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        break loop0;
                     }
                     _loc1_ = 0;
                     §§goto(addr203);
                     §§goto(addr203);
                  }
                  §§goto(addr269);
               }
            }
            while(true)
            {
               §§goto(addr259);
               _loc1_++;
            }
            §§goto(addr270);
         }
         this.§_-B4§(418);
         if(_loc2_ || Boolean(_loc1_))
         {
            this.writeByte(0);
            if(_loc2_)
            {
               _loc1_ = 0;
            }
         }
         §§goto(addr44);
      }
      
      private function §_-2U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.§_-B4§(65498);
            if(_loc2_)
            {
               this.§_-B4§(12);
               if(!_loc1_)
               {
                  this.writeByte(3);
               }
               §§goto(addr57);
            }
            this.writeByte(1);
            this.writeByte(0);
            if(_loc2_ || Boolean(this))
            {
               this.writeByte(2);
               addr57:
               this.writeByte(17);
               if(_loc2_)
               {
                  this.writeByte(3);
                  if(_loc1_)
                  {
                  }
                  addr70:
                  this.writeByte(0);
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr100);
               }
               this.writeByte(63);
               if(!(_loc1_ && Boolean(this)))
               {
                  this.writeByte(0);
               }
               addr100:
               return;
            }
         }
         this.writeByte(17);
         §§goto(addr70);
      }
      
      private function §_-9F§(param1:Array, param2:Array, param3:Number, param4:Array, param5:Array) : Number
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc8_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc6_:§ in§ = param5[0];
         var _loc7_:§ in§ = param5[240];
         var _loc9_:Array = this.§_-8a§(param1,param2);
         if(!(_loc16_ && Boolean(this)))
         {
            _loc8_ = 0;
         }
         while(true)
         {
            §§push(_loc8_);
            if(_loc15_ || Boolean(param3))
            {
               if(§§pop() < 64)
               {
                  §§push(this.§_-N§);
                  if(!_loc16_)
                  {
                     §§pop()[this.§_-EI§[_loc8_]] = _loc9_[_loc8_];
                     if(!(_loc15_ || Boolean(this)))
                     {
                        continue;
                     }
                     _loc8_++;
                     if(_loc15_ || Boolean(this))
                     {
                        continue;
                     }
                  }
                  addr87:
                  §§push(int(§§pop()[0] - param3));
                  break;
               }
               §§goto(addr87);
               §§push(this.§_-N§);
            }
            break;
         }
         var _loc10_:* = §§pop();
         if(_loc15_)
         {
            param3 = Number(this.§_-N§[0]);
            if(_loc15_ || Boolean(param3))
            {
               §§push(_loc10_);
               if(_loc15_)
               {
                  if(§§pop() == 0)
                  {
                     if(_loc15_)
                     {
                        this.§_-6M§(param4[0]);
                        if(_loc16_)
                        {
                           addr135:
                           this.§_-6M§(this.§_-3U§[32767 + _loc10_]);
                        }
                     }
                  }
                  else
                  {
                     this.§_-6M§(param4[this.§_-58§[32767 + _loc10_]]);
                     if(_loc15_)
                     {
                        §§goto(addr135);
                     }
                  }
               }
               addr144:
               var _loc11_:* = §§pop();
               while(true)
               {
                  §§push(_loc11_);
                  §§push(0);
                  if(_loc15_)
                  {
                     §§push(§§pop() > §§pop());
                     if(!_loc16_)
                     {
                        §§push(§§pop());
                        if(_loc15_)
                        {
                           if(§§pop())
                           {
                              if(_loc16_)
                              {
                              }
                           }
                           addr202:
                           if(!§§pop())
                           {
                              if(_loc15_ || Boolean(param1))
                              {
                                 §§push(_loc11_);
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    §§push(_loc11_);
                                    if(!_loc16_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          _loc12_ = _loc8_;
                                          if(_loc15_ || Boolean(param1))
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§_-N§);
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop()[§§pop()] == 0);
                                                      if(!(_loc16_ && Boolean(param1)))
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§push(_loc8_);
                                                         §§push(_loc11_);
                                                         if(_loc15_ || Boolean(param2))
                                                         {
                                                            break loop7;
                                                         }
                                                         addr291:
                                                         loop3:
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                            addr292:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= 16)
                                                               {
                                                                  _loc14_ = 1;
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(_loc15_)
                                                                     {
                                                                        if(§§pop() <= _loc13_ / 16)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc16_ && Boolean(param3))
                                                                        {
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§_-6M§(this.§_-3U§[32767 + this.§_-N§[_loc8_]]);
                                                                        }
                                                                     }
                                                                     break;
                                                                     this.§_-6M§(_loc7_);
                                                                     _loc14_++;
                                                                  }
                                                                  §§push(63);
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§_-6M§(param5[_loc13_ * 16 + this.§_-58§[32767 + this.§_-N§[_loc8_]]]);
                                                                  §§goto(addr347);
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop18;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(§§pop() <= §§pop());
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§push(_loc8_ - _loc12_);
                                                      if(_loc15_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   break;
                                                }
                                                _loc8_++;
                                                §§goto(addr246);
                                                §§goto(addr291);
                                             }
                                             addr246:
                                             addr382:
                                             return §§pop();
                                             §§push(param3);
                                          }
                                          while(true)
                                          {
                                             _loc8_++;
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                continue loop15;
                                             }
                                          }
                                       }
                                       §§goto(addr374);
                                       §§push(_loc11_);
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc15_)
                                       {
                                          this.§_-6M§(_loc6_);
                                       }
                                    }
                                    §§goto(addr381);
                                 }
                              }
                              while(true)
                              {
                                 §§push(int(_loc13_ & 0x0F));
                                 if(_loc15_ || Boolean(param2))
                                 {
                                 }
                                 §§goto(addr374);
                              }
                           }
                           else
                           {
                              §§push(_loc11_ - 1);
                              if(!(_loc16_ && Boolean(this)))
                              {
                                 continue;
                              }
                           }
                           while(true)
                           {
                              _loc13_ = §§pop();
                              §§goto(addr292);
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc15_ || Boolean(param3))
                              {
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr279);
                        }
                     }
                     §§pop();
                     if(_loc15_ || Boolean(this))
                     {
                        §§push(this.§_-N§);
                        if(_loc15_)
                        {
                           §§push(_loc11_);
                           if(_loc15_ || Boolean(param3))
                           {
                              §§push(§§pop()[§§pop()] == 0);
                              if(_loc15_)
                              {
                                 §§goto(addr202);
                              }
                              §§goto(addr279);
                           }
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr292);
                  }
                  break;
                  _loc11_ = §§pop();
               }
               if(§§pop() == §§pop())
               {
                  if(_loc15_ || Boolean(param1))
                  {
                     this.§_-6M§(_loc6_);
                     §§push(param3);
                     if(!_loc16_)
                     {
                        return §§pop();
                     }
                     §§goto(addr292);
                  }
                  §§goto(addr279);
               }
               else
               {
                  _loc8_ = 1;
               }
               §§goto(addr361);
            }
         }
         §§goto(addr144);
         §§push(63);
      }
      
      private function §_-9C§(param1:BitmapData, param2:int, param3:int) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:uint = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               §§push(8);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc12_ || Boolean(this))
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!(_loc12_ || Boolean(param3)))
                        {
                           continue loop1;
                        }
                        §§push(8);
                        if(!_loc12_)
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc11_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        _loc7_ = param1.getPixel32(param2 + _loc6_,param3 + _loc5_);
                        if(_loc11_)
                        {
                           continue;
                        }
                        §§push(Number(_loc7_ >> 16 & 0xFF));
                        if(!(_loc11_ && Boolean(param1)))
                        {
                           _loc8_ = §§pop();
                           if(!_loc12_)
                           {
                              continue;
                           }
                           §§push(Number(_loc7_ >> 8 & 0xFF));
                           if(!(_loc11_ && Boolean(param2)))
                           {
                              _loc9_ = §§pop();
                              §§push(Number(_loc7_ & 0xFF));
                           }
                        }
                        _loc10_ = §§pop();
                        §§push(this.§_-J§);
                        if(_loc12_ || Boolean(this))
                        {
                           §§push(_loc4_);
                           if(!(_loc11_ && Boolean(param3)))
                           {
                              §§push(0.299 * _loc8_);
                              §§push(0.587);
                              §§push(_loc9_);
                              if(_loc12_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc12_)
                                    {
                                       §§push(0.114);
                                       §§push(_loc10_);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(!_loc11_)
                                          {
                                             §§pop()[§§pop()] = §§pop() - 128;
                                             if(!(_loc12_ || Boolean(param3)))
                                             {
                                                continue loop0;
                                             }
                                             §§push(this.§_-0n§);
                                             if(_loc11_ && Boolean(param1))
                                             {
                                             }
                                             addr214:
                                             §§push(_loc4_);
                                             §§push(0.5);
                                             §§push(_loc8_);
                                             if(!(_loc11_ && Boolean(this)))
                                             {
                                                addr209:
                                                §§push(§§pop() * §§pop());
                                                §§push(-0.41869);
                                             }
                                             §§push(§§pop() + §§pop() + -0.08131 * _loc10_);
                                          }
                                          addr174:
                                          §§push(-0.33126);
                                          §§push(_loc9_);
                                          if(_loc11_ && Boolean(this))
                                          {
                                          }
                                          addr213:
                                          §§goto(addr214);
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    §§pop()[§§pop()] = §§pop();
                                    if(_loc12_ || Boolean(param3))
                                    {
                                       _loc4_++;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 §§push(_loc9_);
                                 if(!_loc11_)
                                 {
                                    §§goto(addr213);
                                 }
                                 §§goto(addr214);
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc11_)
                              {
                                 §§push(§§pop() + §§pop());
                                 §§push(0.5);
                                 §§push(_loc10_);
                                 if(!_loc11_)
                                 {
                                    §§pop()[§§pop()] = §§pop() + §§pop() * §§pop();
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    §§goto(addr214);
                                    §§push(this.§_-9U§);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr214);
                           }
                           addr162:
                           §§push(-0.16874);
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              §§push(§§pop() * _loc8_);
                              if(!_loc11_)
                              {
                                 §§goto(addr174);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr209);
                        }
                        §§push(_loc4_);
                        if(!_loc11_)
                        {
                           §§goto(addr162);
                        }
                        §§goto(addr214);
                        _loc6_++;
                     }
                     _loc5_++;
                     if(!_loc12_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function §_-AI§(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:§ in§ = null;
         this.§_-7p§ = new ByteArray();
         if(!_loc9_)
         {
            this.§_-53§ = 0;
         }
         this.§_-92§ = 7;
         this.§_-B4§(65496);
         if(!(_loc9_ && Boolean(this)))
         {
            this.§_-n§();
            if(_loc8_)
            {
               this.§_-2k§();
            }
            this.§_-6h§(param1.width,param1.height);
            this.§_-BC§();
            if(!_loc9_)
            {
               this.§_-2U§();
            }
         }
         var _loc2_:Number = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc9_)
         {
            this.§_-53§ = 0;
            if(_loc8_)
            {
               this.§_-92§ = 7;
            }
         }
         var _loc5_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc9_ && Boolean(this)))
            {
               if(§§pop() >= param1.height)
               {
                  §§push(this.§_-92§);
               }
               else
               {
                  _loc6_ = 0;
                  if(_loc8_)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc6_ >= param1.width)
                        {
                           §§push(_loc5_);
                           §§push(8);
                           if(!(_loc9_ && Boolean(this)))
                           {
                              §§push(int(§§pop() + §§pop()));
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 _loc5_ = §§pop();
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        addr175:
                        this.§_-9C§(param1,_loc6_,_loc5_);
                        _loc2_ = this.§_-9F§(this.§_-J§,this.§_-9v§,_loc2_,this.§_-CL§,this.§_-7r§);
                        if(_loc8_ || Boolean(_loc3_))
                        {
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(8);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                              }
                              addr180:
                           }
                           break loop1;
                        }
                     }
                     §§goto(addr228);
                  }
                  while(true)
                  {
                     §§push(this.§_-9F§(this.§_-0n§,this.§_-6o§,_loc3_,this.§import§,this.§_-B0§));
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(_loc8_ || Boolean(this))
                        {
                           _loc3_ = §§pop();
                           §§push(this.§_-9F§(this.§_-9U§,this.§_-6o§,_loc4_,this.§import§,this.§_-B0§));
                           if(!_loc9_)
                           {
                              §§push(§§pop());
                              if(_loc8_ || Boolean(param1))
                              {
                              }
                           }
                        }
                        _loc4_ = §§pop();
                        if(!(_loc8_ || Boolean(this)))
                        {
                           continue loop0;
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr180);
                  }
               }
            }
            addr228:
            if(§§pop() >= §§pop())
            {
               _loc7_ = new § in§();
               _loc7_.len = this.§_-92§ + 1;
               if(_loc8_)
               {
                  §§push(_loc7_);
                  §§push(1);
                  if(!_loc9_)
                  {
                     §§push(§§pop() << this.§_-92§ + 1);
                  }
                  §§pop().val = §§pop() - 1;
                  if(!(_loc9_ && Boolean(this)))
                  {
                     this.§_-6M§(_loc7_);
                  }
               }
            }
            this.§_-B4§(65497);
            return this.§_-7p§;
         }
      }
   }
}

