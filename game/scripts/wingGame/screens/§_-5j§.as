package wingGame.screens
{
   import §_-C2§.§_-0i§;
   import §_-H§.§_-77§;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.getDefinitionByName;
   import mochi.as3.*;
   
   public dynamic class §_-5j§
   {
      public var container:MovieClip;
      
      public var clip:MovieClip;
      
      public var §_-71§:Number = 50;
      
      public var §_-0z§:Number = 26;
      
      public var §_-BS§:Number = 544;
      
      public var §_-6m§:Boolean = true;
      
      public var §_-4I§:Boolean = true;
      
      public var §_-1g§:Boolean = true;
      
      public var §_-8D§:Boolean = false;
      
      public var §_-Dv§:MovieClip;
      
      public var §_-1O§:Boolean = false;
      
      public var completeFunction:Function = null;
      
      public function §_-5j§(param1:MovieClip, param2:Function)
      {
         var container:MovieClip;
         var completeFunction:Function;
         var screen:§_-5j§;
         var opt:Object;
         var cl:*;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         opt = null;
         if(!_loc5_)
         {
            cl = undefined;
            container = param1;
            completeFunction = param2;
            super();
            if(_loc6_ || Boolean(param1))
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[3] = this;
                  if(_loc6_ || _loc3_)
                  {
                     §§push(screen);
                     if(_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || _loc3_)
                        {
                           §§pop().container = §§pop().§§slot[1];
                           §§push(screen);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§newactivation());
                           }
                        }
                        §§pop().completeFunction = §§pop().§§slot[2];
                        if(_loc5_)
                        {
                        }
                        addr166:
                        opt[§_-0i§.§_-1y§("2100093009600910111011200930110011200970096")] = function():void
                        {
                        };
                        if(!(_loc5_ && Boolean(param2)))
                        {
                           addr180:
                           opt[§_-0i§.§_-1y§("21100930096009100980101010601010111010000970096")] = screen.setupScreen;
                           if(_loc6_)
                           {
                              addr191:
                              §§push(§§newactivation());
                              if(_loc6_ || _loc3_)
                              {
                                 addr199:
                                 §§pop().§§slot[4][§_-0i§.§_-1y§("1501060107009100940099")] = true;
                                 §§push(§§newactivation());
                              }
                              §§pop().§§slot[5] = getDefinitionByName(§_-0i§.§_-1y§("21701050107009501000101004200930111004700420073010700950100010100610096")) as Class;
                              if(_loc6_ || Boolean(param2))
                              {
                              }
                              §§goto(addr243);
                           }
                        }
                     }
                     addr122:
                     §§pop().setupScreen();
                     if(_loc5_)
                     {
                        §§goto(addr166);
                     }
                     §§goto(addr243);
                  }
                  §§push(§§newactivation());
               }
               §§pop().§§slot[5][§_-0i§.§_-1y§("2130111010001070115007601100097006700930105009700610096")](opt);
               addr243:
               return;
            }
            addr148:
            opt[§_-0i§.§_-1y§("1201010096")] = §_-77§.§_-EA§();
            opt[§_-0i§.§_-1y§("13011000970111")] = §_-0i§.§_-1y§("170050004800440116004800520044");
            if(_loc6_)
            {
               §§goto(addr166);
            }
            §§goto(addr191);
         }
         if(§_-0i§.§_-0R§())
         {
            if(!(_loc5_ && _loc3_))
            {
               §§push(screen);
               if(_loc6_)
               {
                  §§pop().setupScreen();
               }
               else
               {
                  addr104:
                  if(§§pop().container.loaderInfo.loader != null)
                  {
                     if(_loc6_)
                     {
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§push(§§pop().§§slot[3]);
                        }
                        else
                        {
                           §§goto(addr148);
                        }
                        §§goto(addr191);
                     }
                  }
                  else
                  {
                     opt = new Object();
                     §§push(§§newactivation());
                     if(_loc6_ || Boolean(param2))
                     {
                        §§pop().§§slot[4][§_-0i§.§_-1y§("140095010401010108")] = screen.container;
                        §§goto(addr148);
                     }
                  }
                  §§goto(addr199);
               }
               §§goto(addr191);
            }
            §§goto(addr180);
         }
         else
         {
            §§push(screen);
            if(!_loc5_)
            {
               §§goto(addr104);
            }
         }
         §§goto(addr122);
      }
      
      public function §_-Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            MochiAd.showPreGameAd({
               "clip":this,
               "id":"194fdfab80576799",
               "res":"608x480",
               "background":16770518,
               "color":8501569,
               "outline":5117533
            });
         }
      }
      
      private function §_-BT§() : LoaderInfo
      {
         return this.container.loaderInfo;
      }
      
      public function §_-80§(param1:Event = null) : void
      {
      }
      
      public function §_-7s§(param1:Event = null) : void
      {
      }
      
      public function setupScreen(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-5j§ = this;
         _loc2_.clip = new loadingMC();
         if(!_loc3_)
         {
            _loc2_.container.addChild(_loc2_.clip);
            _loc2_.clip.addEventListener(Event.ENTER_FRAME,_loc2_.updateScreen);
         }
         _loc2_.clip.loader_bar.percent_txt.text = "0%";
         if(!_loc3_)
         {
            _loc2_.§_-Dv§ = new MovieClip();
         }
         _loc2_.§_-Dv§.x = 252;
         _loc2_.§_-Dv§.y = 379;
         if(_loc4_)
         {
            _loc2_.clip.addChild(_loc2_.§_-Dv§);
         }
         _loc2_.§_-Dv§.visible = false;
         _loc2_.§_-Dv§.addEventListener("clickPlayBtn",_loc2_.§_-2n§);
         §§push(§_-0i§.§_-86§());
         if(!(_loc3_ && Boolean(param1)))
         {
            if(§§pop())
            {
               _loc2_.§_-8D§ = this.§_-4I§;
               if(_loc3_ && Boolean(_loc2_))
               {
               }
            }
            else
            {
               §§push(§_-0i§.§_-24§());
            }
            §§goto(addr120);
         }
         if(§§pop())
         {
            _loc2_.§_-8D§ = this.§_-6m§;
         }
         else
         {
            _loc2_.§_-8D§ = this.§_-1g§;
         }
         addr120:
      }
      
      public function §_-Cc§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-5j§ = this;
         §§push(_loc1_.§_-1O§);
         if(_loc3_)
         {
            if(!§§pop())
            {
               addr52:
               if(_loc3_)
               {
                  _loc1_.§_-1O§ = true;
                  if(!_loc2_)
                  {
                     §§push(_loc1_.§_-8D§);
                  }
               }
               _loc1_.completeFunction();
               if(!_loc2_)
               {
                  addr56:
               }
            }
            §§goto(addr61);
         }
         if(§§pop())
         {
            if(_loc1_.completeFunction != null)
            {
               if(_loc3_)
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr56);
         }
         else
         {
            _loc1_.§_-Dv§.visible = true;
         }
         addr61:
      }
      
      public function §_-2n§(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-5j§ = this;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_.completeFunction != null)
            {
               if(_loc4_)
               {
               }
            }
            §§goto(addr46);
         }
         _loc2_.completeFunction();
         addr46:
      }
      
      public function §_-3t§(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-5j§ = this;
         if(_loc4_)
         {
            _loc2_.setupScreen();
         }
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:§_-5j§ = this;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            if(_loc2_.clip.currentFrame == 28)
            {
               §§push(_loc2_.§_-BT§().bytesLoaded / _loc2_.§_-BT§().bytesTotal);
               if(_loc7_ || Boolean(_loc3_))
               {
                  §§push(§§pop());
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     _loc3_ = §§pop();
                     §§push(_loc2_.clip.loader_bar.x - _loc2_.§_-0z§);
                     §§push(_loc2_.§_-BS§);
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        addr86:
                        §§push(§§pop() / §§pop());
                        if(_loc7_ || Boolean(this))
                        {
                           §§push(§§pop());
                        }
                        _loc5_ = §§pop();
                        §§push(_loc3_);
                        §§push(_loc2_.§_-BS§);
                        if(_loc7_ || Boolean(_loc2_))
                        {
                        }
                        addr111:
                        §§push(§§pop() - §§pop());
                        §§push(_loc2_.§_-71§);
                        if(_loc7_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 _loc2_.clip.loader_bar.x = _loc2_.§_-0z§ + _loc3_ * _loc2_.§_-BS§;
                                 addr190:
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc7_)
                                          {
                                          }
                                          addr233:
                                       }
                                       addr191:
                                       _loc2_.clip.loader_bar.percent_txt.text = String(Math.round(_loc5_ * 100)) + "%";
                                       if(_loc2_.clip.loader_bar.x >= _loc2_.§_-0z§ + _loc2_.§_-BS§)
                                       {
                                          if(_loc7_)
                                          {
                                          }
                                       }
                                       §§goto(addr233);
                                    }
                                    addr189:
                                    §§push(§§pop());
                                 }
                                 else
                                 {
                                    addr177:
                                    §§push(_loc2_.clip.loader_bar.x - _loc2_.§_-0z§);
                                    §§push(_loc2_.§_-BS§);
                                 }
                                 _loc5_ = §§pop();
                                 §§goto(addr191);
                              }
                           }
                           else
                           {
                              _loc2_.clip.loader_bar.x += _loc2_.§_-71§;
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 §§goto(addr177);
                              }
                           }
                           _loc2_.clip.loader_bar.x = 2000;
                        }
                        addr186:
                        §§push(§§pop() / §§pop());
                        if(!_loc6_)
                        {
                           §§goto(addr189);
                        }
                        §§goto(addr190);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(_loc4_);
                  if(_loc7_ || Boolean(param1))
                  {
                     §§push(§§pop() * _loc2_.§_-BS§);
                     if(_loc6_)
                     {
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr111);
               }
               _loc4_ = §§pop();
               §§goto(addr86);
               §§push(0);
            }
            else if(_loc2_.clip.currentFrame == _loc2_.clip.totalFrames)
            {
               addr248:
               _loc2_.§_-Cc§();
            }
            §§goto(addr250);
         }
         _loc2_.clip.gotoAndPlay("animout");
         if(_loc7_ || Boolean(this))
         {
            §§goto(addr233);
         }
         else
         {
            §§goto(addr248);
         }
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-5j§ = this;
         if(!_loc3_)
         {
            _loc1_.§_-Dv§.removeEventListener("clickPlayBtn",_loc1_.§_-2n§);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.§_-Dv§ = null;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
            }
            §§goto(addr76);
         }
         _loc1_.container.removeChild(_loc1_.clip);
         if(_loc2_)
         {
            §§goto(addr76);
         }
         addr76:
         _loc1_.clip = null;
      }
   }
}

