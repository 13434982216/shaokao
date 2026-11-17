package §_-5m§
{
   import Playtomic.*;
   import §_-3O§.§_-9L§;
   import §_-8r§.*;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-2w§ extends EventDispatcher
   {
      public static const §_-8c§:uint = 7224074;
      
      public static const §_-EU§:uint = 3355443;
      
      public static const §_-5K§:Number = 24;
      
      public static const §_-Dn§:String = "Arial";
      
      public static const §_-0X§:uint = 11513774;
      
      public static const §_-r§:Boolean = false;
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      
      public static const §_-04§:String = "Arial Black";
      
      if(!_loc1_)
      {
         §_-8c§ = 7224074;
         §_-EU§ = 3355443;
         if(_loc1_)
         {
         }
         addr75:
         §_-r§ = false;
         §§goto(addr78);
      }
      
      public static const §_-34§:uint = 9904417;
      
      public static const §_-5B§:Number = 12;
      
      if(_loc2_)
      {
         §_-5K§ = 24;
      }
      
      public static const §_-1W§:Boolean = false;
      
      if(_loc2_)
      {
         §_-Dn§ = "Arial";
         if(_loc2_ || _loc1_)
         {
            §_-0X§ = 11513774;
            if(_loc2_)
            {
            }
            addr78:
            return;
         }
         §§goto(addr75);
      }
      
      public static const §_-4n§:Number = 10;
      
      §§goto(addr75);
      
      public var §_-2O§:*;
      
      public var container:DisplayObjectContainer;
      
      public var util:§_-8x§;
      
      public var §_-AE§:Number = 1;
      
      public var §_-Dl§:Number = 1;
      
      public var §_-B9§:Array;
      
      public var §_-4E§:Array;
      
      public var §_-6Q§:Boolean = false;
      
      private var §_-5z§:Scoreboard;
      
      public var §_-6f§:Boolean = false;
      
      public var §_-Ca§:Number = -1;
      
      public var §_-1N§:String = "";
      
      public function §_-2w§(param1:*, param2:DisplayObjectContainer, param3:Number, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§_-B9§ = [];
         this.§_-4E§ = [];
         if(_loc6_)
         {
            super();
            if(!_loc5_)
            {
               this.§_-2O§ = param1;
            }
            this.container = param2;
            this.§_-AE§ = param3;
            this.§_-Dl§ = param4;
         }
         this.§use§();
      }
      
      public function §use§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-2w§ = this;
         if(!_loc2_)
         {
            this.util = new §_-8x§();
            if(_loc3_ || Boolean(this))
            {
            }
            §§goto(addr47);
         }
         §_-5i§.info("[Flipline API]: API Initialized.");
         addr47:
      }
      
      public function §_-74§(param1:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-2w§ = this;
         if(_loc3_ || Boolean(this))
         {
            param1.addEventListener("soundIsMuted",_loc2_.§_-2v§);
            if(_loc4_ && _loc3_)
            {
            }
            §§goto(addr54);
         }
         param1.addEventListener("soundIsNotMuted",_loc2_.§_-4K§);
         addr54:
      }
      
      public function §_-5R§(param1:Number, param2:String, param3:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-2w§ = this;
         _loc4_.§_-6f§ = true;
         if(!(_loc5_ && Boolean(param2)))
         {
            _loc4_.§_-Ca§ = param1;
            if(_loc6_ || Boolean(param2))
            {
               _loc4_.§_-1N§ = param2;
               if(_loc5_)
               {
               }
               §§goto(addr84);
            }
            §§goto(addr80);
         }
         if(param3 != null)
         {
            if(!(_loc5_ && Boolean(this)))
            {
               Log.View(param1,param2,param3,_loc4_.§_-BT§());
               if(_loc6_ || Boolean(param3))
               {
                  addr80:
                  §§goto(addr84);
               }
            }
         }
         else
         {
            §_-5i§.error("OLD PLAYTOMIC");
         }
         addr84:
      }
      
      public function §_-EY§(param1:String, param2:Number, param3:String = "counter", param4:Number = -1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-2w§ = this;
         if(_loc5_.§_-6f§)
         {
            §§push(param3);
            if(!(_loc7_ && Boolean(param3)))
            {
               if(§§pop() == "counter")
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     Log.LevelCounterMetric(param1,param2);
                  }
               }
               else
               {
                  §§push(param3);
                  if(_loc7_)
                  {
                  }
                  addr60:
                  if(§§pop() == "ranged")
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        Log.LevelRangedMetric(param1,param2,param4);
                     }
                  }
               }
            }
            if(§§pop() == "average")
            {
               Log.LevelAverageMetric(param1,param2,param4);
            }
            else
            {
               §§goto(addr60);
               §§push(param3);
            }
         }
      }
      
      public function §_-h§(param1:String, param2:String = null, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-2w§ = this;
         if(_loc4_.§_-6f§)
         {
            if(!(_loc5_ && Boolean(param1)))
            {
               Log.CustomMetric(param1,param2,param3);
            }
         }
      }
      
      public function §_-01§(param1:String, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-2w§ = this;
         if(_loc5_.§_-6f§)
         {
            if(!_loc7_)
            {
               Log.Heatmap(param1,param2,param3,param4);
            }
         }
      }
      
      public function §_-5Q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-2w§ = this;
         if(!(_loc2_ && Boolean(this)))
         {
            if(_loc1_.§_-6f§)
            {
               if(!_loc2_)
               {
                  Log.Play();
               }
            }
         }
      }
      
      public function §_-1q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-2w§ = this;
         if(_loc2_)
         {
            if(_loc1_.§_-6f§)
            {
               if(_loc3_ && _loc3_)
               {
               }
            }
            §§goto(addr37);
         }
         Log.ForceSend();
         addr37:
      }
      
      public function §_-DI§(param1:String, param2:String, param3:String = "Links") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-2w§ = this;
         if(_loc4_.§_-6f§)
         {
            if(_loc6_ || Boolean(param2))
            {
               Link.Open(param1,param2,param3);
               if(_loc6_ || Boolean(param3))
               {
               }
            }
         }
         else
         {
            navigateToURL(new URLRequest(param1),"_blank");
         }
      }
      
      public function §_-5x§(param1:String, param2:String, param3:Boolean = false, param4:String = "", param5:Boolean = true, param6:String = "top right", param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false) : §_-9L§
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc11_:§_-2w§ = this;
         var _loc12_:§_-9L§ = new §_-9L§(_loc11_,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         if(!_loc13_)
         {
            _loc11_.§_-B9§.push(_loc12_);
         }
         return _loc12_;
      }
      
      public function §_-76§(param1:String, param2:Object = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§_-9L§ = null;
         var _loc3_:§_-2w§ = this;
         var _loc4_:Boolean = false;
         if(_loc7_)
         {
            if(_loc3_.§_-B9§.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = _loc3_.§_-EX§(param1);
                  if(_loc5_ != null)
                  {
                     if(_loc7_ || Boolean(param1))
                     {
                        _loc3_.§_-7-§(_loc5_,param2);
                        if(_loc7_ || Boolean(param1))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(this);
                     §§push("Could not find a Menu Screen for " + param1);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() + ".");
                     }
                     §§pop().§ null§(§§pop());
                  }
               }
            }
            else
            {
               this.§ null§("No Menu Screens are set up!");
            }
         }
      }
      
      public function §_-7-§(param1:§_-9L§, param2:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§_-2w§ = this;
         var _loc4_:§_-2H§ = new §_-2H§(_loc3_,param1,param2);
         if(_loc5_)
         {
            _loc3_.§_-4E§.push(_loc4_);
         }
      }
      
      public function §_-EX§(param1:String) : §_-9L§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§_-9L§ = null;
         var _loc2_:§_-2w§ = this;
         var _loc3_:§_-9L§ = null;
         if(!_loc6_)
         {
            if(_loc2_.§_-B9§.length > 0)
            {
               if(!_loc6_)
               {
                  _loc4_ = 0;
               }
            }
            §§goto(addr79);
         }
         while(_loc4_ < _loc2_.§_-B9§.length)
         {
            _loc5_ = _loc2_.§_-B9§[_loc4_];
            if(_loc5_.label == param1)
            {
               if(_loc7_ || Boolean(param1))
               {
                  _loc3_ = _loc5_;
                  break;
               }
            }
            else
            {
               _loc4_++;
            }
         }
         addr79:
         return _loc3_;
      }
      
      public function §_-2K§(param1:String = null, param2:§_-9L§ = null, param3:§_-2H§ = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc4_:§_-2w§ = this;
         var _loc6_:* = -1;
         var _loc7_:§_-2H§ = null;
         if(_loc8_)
         {
            if(param1 != null)
            {
               if(_loc8_)
               {
                  _loc5_ = 0;
               }
            }
            else
            {
               if(param2 == null)
               {
                  if(param3 != null)
                  {
                     if(_loc8_)
                     {
                        addr242:
                        _loc5_ = 0;
                        loop0:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_.§_-4E§);
                              addr296:
                              while(§§pop() < §§pop().length)
                              {
                                 §§push(_loc4_.§_-4E§);
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_ || Boolean(this))
                                       {
                                          while(true)
                                          {
                                             if(§§pop()[§§pop()].getLabel() != param3.getLabel())
                                             {
                                                §§push(_loc5_ + 1);
                                                if(!(_loc9_ && Boolean(param1)))
                                                {
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             §§push(_loc4_.§_-4E§);
                                          }
                                          addr263:
                                       }
                                       break;
                                    }
                                    addr271:
                                    _loc7_ = §§pop()[§§pop()];
                                    if(!_loc9_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc6_ = §§pop();
                                    }
                                    break loop1;
                                    addr255:
                                 }
                                 §§goto(addr271);
                                 §§push(_loc5_);
                              }
                              break;
                           }
                           _loc5_ = §§pop();
                        }
                     }
                  }
               }
               §§goto(addr298);
            }
            addr137:
            §§push(0);
            if(_loc8_ || Boolean(param2))
            {
               _loc5_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc5_);
                  addr227:
                  loop3:
                  while(true)
                  {
                     §§push(_loc4_.§_-4E§);
                     if(!_loc9_)
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           if(_loc8_)
                           {
                              addr235:
                           }
                        }
                        else
                        {
                           §§push(_loc4_.§_-4E§);
                           if(_loc8_ || Boolean(param2))
                           {
                              §§push(_loc5_);
                              if(_loc8_ || Boolean(param2))
                              {
                                 addr173:
                                 while(true)
                                 {
                                    if(§§pop()[§§pop()].getLabel() != param2.label)
                                    {
                                       §§push(_loc5_ + 1);
                                       if(!(_loc9_ && Boolean(param1)))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    if(!_loc9_)
                                    {
                                       §§push(_loc4_.§_-4E§);
                                       if(!(_loc8_ || Boolean(param2)))
                                       {
                                          break;
                                       }
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          _loc7_ = §§pop()[§§pop()];
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             §§push(_loc5_);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc6_ = §§pop();
                                          }
                                          §§goto(addr235);
                                       }
                                       else
                                       {
                                          §§goto(addr271);
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 addr173:
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr298);
                     }
                     break;
                  }
                  §§goto(addr296);
                  _loc5_ = §§pop();
               }
            }
            else
            {
               §§goto(addr242);
            }
            §§goto(addr242);
         }
         while(true)
         {
            §§push(_loc5_);
            §§push(_loc4_.§_-4E§);
            if(!_loc9_)
            {
               if(§§pop() < §§pop().length)
               {
                  §§push(_loc4_.§_-4E§);
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     §§push(_loc5_);
                     if(!(_loc9_ && Boolean(this)))
                     {
                        if(§§pop()[§§pop()].getLabel() == param1)
                        {
                           if(_loc8_ || Boolean(this))
                           {
                              §§push(_loc4_.§_-4E§);
                              if(_loc8_)
                              {
                              }
                              §§goto(addr255);
                           }
                           else
                           {
                              §§goto(addr137);
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc8_ || Boolean(param1))
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 _loc5_ = §§pop();
                                 if(_loc8_ || Boolean(this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr294);
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr173);
                  }
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     _loc7_ = §§pop()[§§pop()];
                     if(!(_loc9_ && Boolean(param3)))
                     {
                        §§push(_loc5_);
                        if(_loc8_ || Boolean(param2))
                        {
                           §§push(§§pop());
                           if(_loc8_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 break;
                              }
                           }
                        }
                     }
                     §§goto(addr331);
                  }
                  else
                  {
                     §§goto(addr173);
                  }
               }
               break;
            }
            §§goto(addr294);
         }
         addr298:
         if(_loc7_)
         {
            if(!(_loc9_ && Boolean(param1)))
            {
               _loc7_.destroy();
               if(_loc8_ || Boolean(this))
               {
                  _loc7_ = null;
               }
            }
            §§goto(addr336);
         }
         if(_loc6_ > -1)
         {
            if(!_loc9_)
            {
               _loc4_.§_-4E§.splice(_loc6_,1);
            }
         }
         addr336:
      }
      
      public function §_-75§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         var _loc2_:§_-2w§ = this;
         var _loc3_:* = false;
         if(!(_loc5_ && Boolean(param1)))
         {
            if(_loc2_.§_-4E§.length > 0)
            {
               if(_loc6_)
               {
                  _loc4_ = 0;
               }
            }
            §§goto(addr88);
         }
         while(_loc4_ < _loc2_.§_-4E§.length)
         {
            if(_loc2_.§_-4E§[_loc4_].getLabel() == param1)
            {
               if(!_loc5_)
               {
                  §§push(true);
                  if(_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr88);
               }
               break;
            }
            _loc4_++;
            if(!(_loc6_ || Boolean(_loc2_)))
            {
               break;
            }
         }
         addr88:
         return _loc3_;
      }
      
      public function disableButtons(param1:String = "all", param2:Array = null, param3:Boolean = true, param4:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:int = 0;
         var _loc5_:§_-2w§ = this;
         if(_loc5_.§_-4E§.length > 0)
         {
            if(!(_loc8_ && Boolean(param1)))
            {
               _loc6_ = 0;
            }
            while(_loc6_ < _loc5_.§_-4E§.length)
            {
               §§push(_loc5_.§_-4E§);
               if(!_loc8_)
               {
                  §§push(_loc6_);
                  if(_loc7_)
                  {
                     §§push(§§pop()[§§pop()].getLabel() == param1);
                     if(!_loc8_)
                     {
                        if(!§§pop())
                        {
                           if(_loc7_)
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§push(param1);
                              if(!_loc8_)
                              {
                                 addr98:
                                 §§push("all");
                                 if(_loc7_ || Boolean(param2))
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc8_ && Boolean(param1))
                                    {
                                    }
                                    break;
                                 }
                                 addr114:
                                 _loc6_++;
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              addr97:
                              §§goto(addr98);
                              §§push("all");
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc7_ || Boolean(param2)))
                        {
                           continue;
                        }
                        §§push(_loc5_.§_-4E§);
                     }
                     §§goto(addr114);
                  }
                  addr84:
                  §§pop()[§§pop()].disableButtons(param2,param3,param4);
                  if(!(_loc8_ && param3))
                  {
                     §§goto(addr97);
                     §§push(param1);
                  }
                  break;
               }
               §§goto(addr84);
               §§push(_loc6_);
            }
         }
      }
      
      public function enableButtons(param1:String = "all", param2:Array = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:int = 0;
         var _loc3_:§_-2w§ = this;
         if(!(_loc6_ && Boolean(this)))
         {
            if(_loc3_.§_-4E§.length > 0)
            {
               if(_loc5_)
               {
               }
               addr34:
               while(_loc4_ < _loc3_.§_-4E§.length)
               {
                  §§push(_loc3_.§_-4E§);
                  if(!_loc6_)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        §§push(§§pop()[§§pop()].getLabel() == param1);
                        if(!_loc6_)
                        {
                           if(!§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§pop();
                                 addr116:
                                 if(!(_loc6_ && Boolean(param1)))
                                 {
                                    §§push(param1);
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       addr108:
                                       §§push("all");
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          §§push(§§pop() == §§pop());
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          addr117:
                                          _loc4_++;
                                          if(!(_loc5_ || Boolean(param2)))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       if(!(_loc5_ || Boolean(_loc3_)))
                                       {
                                          continue;
                                       }
                                    }
                                    addr107:
                                    §§goto(addr108);
                                    §§push("all");
                                 }
                                 break;
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc3_.§_-4E§);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr117);
                     }
                     addr96:
                     §§pop()[§§pop()].enableButtons(param2);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§goto(addr107);
                        §§push(param1);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr96);
                  §§push(_loc4_);
               }
            }
            return;
         }
         _loc4_ = 0;
         §§goto(addr34);
      }
      
      public function §_-CY§(param1:String, param2:String = "all") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:int = 0;
         var _loc3_:§_-2w§ = this;
         if(_loc5_)
         {
            if(_loc3_.§_-4E§.length > 0)
            {
               if(!_loc6_)
               {
                  _loc4_ = 0;
               }
            }
            §§goto(addr117);
         }
         while(_loc4_ < _loc3_.§_-4E§.length)
         {
            §§push(_loc3_.§_-4E§);
            if(_loc5_)
            {
               §§push(_loc4_);
               if(_loc5_ || Boolean(this))
               {
                  §§push(§§pop()[§§pop()].getLabel() == param2);
                  if(_loc5_ || Boolean(param2))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc6_ && Boolean(param2)))
                        {
                           §§pop();
                           addr83:
                           if(!_loc6_)
                           {
                              §§push(param2);
                              if(!_loc6_)
                              {
                                 addr93:
                                 §§push("all");
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr96:
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr97:
                                    _loc4_++;
                                    if(!(_loc5_ || Boolean(param1)))
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                              addr92:
                              §§goto(addr93);
                              §§push("all");
                           }
                           §§push(_loc3_.§_-4E§);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr83);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr97);
               }
               addr86:
               §§pop()[§§pop()].setTitle(param1);
               if(_loc5_)
               {
                  §§goto(addr92);
                  §§push(param2);
               }
               break;
            }
            §§goto(addr86);
            §§push(_loc4_);
         }
         addr117:
      }
      
      public function §_-DU§(param1:String = "all") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:§_-2w§ = this;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_.§_-4E§.length > 0)
            {
               if(_loc4_)
               {
               }
               addr35:
               while(_loc3_ < _loc2_.§_-4E§.length)
               {
                  §§push(_loc2_.§_-4E§);
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || Boolean(param1))
                     {
                        §§push(§§pop()[§§pop()].getLabel() == param1);
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           if(!§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 §§push(param1);
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    addr108:
                                    §§push("all");
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          addr123:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr124:
                                       _loc3_++;
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                    }
                                    continue;
                                 }
                                 addr107:
                                 §§goto(addr108);
                                 §§push("all");
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§push(_loc2_.§_-4E§);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr124);
                     }
                     addr97:
                     §§pop()[§§pop()].startTransitionOut();
                     if(_loc4_ && Boolean(this))
                     {
                        continue;
                     }
                     §§goto(addr107);
                     §§push(param1);
                  }
                  §§goto(addr97);
                  §§push(_loc3_);
               }
            }
            return;
         }
         _loc3_ = 0;
         §§goto(addr35);
      }
      
      public function § null§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-2w§ = this;
         if(_loc4_ || Boolean(param1))
         {
            §_-5i§.debug("[Flipline API]: " + param1);
         }
      }
      
      public function §_-8y§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-2w§ = this;
         if(!(_loc3_ && Boolean(this)))
         {
            §_-5i§.info("Broadcast an event: " + param1);
            if(!_loc3_)
            {
               dispatchEvent(new Event(param1,true));
            }
         }
      }
      
      public function §_-2v§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-2w§ = this;
         if(_loc3_ || _loc3_)
         {
            _loc2_.§_-6Q§ = true;
         }
      }
      
      public function §_-4K§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-2w§ = this;
         if(!_loc4_)
         {
            _loc2_.§_-6Q§ = false;
         }
      }
      
      public function §_-9X§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-2w§ = this;
         if(_loc3_)
         {
            dispatchEvent(new Event("muteSound",true));
            if(_loc2_ && Boolean(_loc1_))
            {
            }
            §§goto(addr49);
         }
         _loc1_.§_-6Q§ = true;
         addr49:
      }
      
      public function §_-0m§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-2w§ = this;
         if(!_loc2_)
         {
            dispatchEvent(new Event("unmuteSound",true));
            if(_loc3_)
            {
            }
            §§goto(addr37);
         }
         _loc1_.§_-6Q§ = false;
         addr37:
      }
      
      private function §_-BT§() : LoaderInfo
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LoaderInfo = this.container.root.loaderInfo;
         if(_loc2_ || _loc2_)
         {
            if(_loc1_.loader != null)
            {
            }
            §§goto(addr49);
         }
         _loc1_ = _loc1_.loader.loaderInfo;
         addr49:
         return _loc1_;
      }
      
      public function §_-4j§(param1:String, param2:Function, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:String = "Anonymous", param7:Number = 0, param8:Object = null) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:§_-2w§ = this;
         if(_loc9_.§_-5z§)
         {
            if(!(_loc10_ && Boolean(param2)))
            {
               §_-5i§.§_-CE§("Scoreboard Already Existed, Remove.");
               if(_loc11_ || Boolean(this))
               {
                  _loc9_.§_-8W§();
                  if(!(_loc10_ && param3))
                  {
                     if(param3)
                     {
                        if(_loc10_)
                        {
                        }
                     }
                     addr77:
                  }
               }
            }
            _loc9_.§_-5z§ = new Scoreboard(_loc9_,param1,param2,param3,param4,param5,param6,param7,param8);
            if(_loc11_ || Boolean(param2))
            {
               §§goto(addr77);
            }
         }
         else
         {
            _loc9_.§_-5z§ = new Scoreboard(_loc9_,param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public function §_-8W§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-2w§ = this;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_.§_-5z§);
            if(_loc3_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(_loc1_.§_-5z§);
                  }
               }
            }
            §§pop().destroy();
            if(_loc3_ || Boolean(this))
            {
               _loc1_.§_-5z§ = null;
            }
         }
      }
      
      public function §_-6z§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-2w§ = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            if(_loc1_.§_-5z§)
            {
               if(!_loc2_)
               {
                  §§push(true);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     return §§pop();
                  }
               }
               §§goto(addr53);
            }
         }
         addr53:
         false;
         return §§pop();
      }
   }
}

