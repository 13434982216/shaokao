package §_-8r§
{
   import Playtomic.*;
   import §_-3O§.*;
   import §_-5m§.§_-2w§;
   import §_-C2§.§_-5i§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   
   public class §_-2H§
   {
      private var api:§_-2w§;
      
      private var data:§_-9L§;
      
      private var §_-E8§:Object = null;
      
      private var clip:MovieClip;
      
      private var §_-E2§:MovieClip;
      
      private var §_-1U§:MovieClip;
      
      private var §_-BD§:MovieClip;
      
      private var §_-D4§:Number = 4;
      
      private var §_-Bs§:Number = 0;
      
      private var §catch§:Number = 45;
      
      private var §_-5y§:Number = 11;
      
      private var §_-0u§:Number = 6;
      
      private var § each§:Number = -15;
      
      private var §_-9a§:Number = 45;
      
      private var §_-8K§:Number = 7;
      
      private var §default§:Number = 3;
      
      private var §_-8F§:Number = 10;
      
      private var §_-0s§:Number = 10;
      
      private var §_-88§:Number = 7;
      
      private var §_-DC§:Number = 10;
      
      private var §_-9k§:Number = 78;
      
      private var §set §:Number = 3;
      
      private var §_-Au§:Number = 6;
      
      private var §_-3u§:Number = 8;
      
      private var §_-6W§:Number = -1;
      
      private var §_-2§:Number = 2;
      
      private var §_-AJ§:§_-7M§ = null;
      
      private var §_-5-§:§_-7M§;
      
      private var §_-8-§:MovieClip;
      
      private var §_-Ci§:MovieClip;
      
      private var §_-AS§:MovieClip;
      
      private var §_-Cp§:SimpleButton;
      
      private var §_-9K§:SimpleButton;
      
      private var §_-48§:MovieClip;
      
      private var §_-3g§:MovieClip;
      
      private var §_-7b§:Boolean = false;
      
      private var §_-4Q§:String = "api_menu_top_panel";
      
      private var §_-BV§:String = "api_menu_bottom_panel";
      
      private var §_-5N§:String = "startgame_bg";
      
      private var § set§:Number = -13;
      
      private var §_-CZ§:Number = -5;
      
      private var §_-F§:String = "flip_logo_large";
      
      private var §_-6n§:String = "flip_logo_small";
      
      private var §_-5A§:String = "sponsor_logo_large";
      
      private var §_-E9§:String = "sponsor_logo_small";
      
      private var §_-4k§:String = "license_logo_large";
      
      private var §_-ET§:String = "license_logo_small";
      
      private var §_-82§:String = "developedby_tag";
      
      private var §_-8U§:String = "sponsoredby_tag";
      
      private var §_-DO§:String = "api_mute_btn";
      
      private var §_-Dg§:String = "api_unmute_btn";
      
      private var §do §:String = "api_getthisgame_button";
      
      private var §_-9H§:String = "api_getthisgame_bigbutton";
      
      private var §_-5q§:String = "api_promopanel_license";
      
      private var §_-AK§:String = "api_promopanel_sponsor";
      
      private var §_-AU§:MovieClip;
      
      private var §_-3B§:Number = 46;
      
      private var §_-5n§:Number = 12;
      
      private var §_-4J§:Number = 15;
      
      private var §_-37§:Number = 10;
      
      private var §_-7j§:Number = 2;
      
      private var §_-CM§:Number = 73;
      
      private var §_-6§:Number = 120;
      
      private var §_-79§:Number = 43;
      
      private var §_-BK§:Number = 101;
      
      private var §_-13§:Number = 43;
      
      private var §_-m§:Number = 60;
      
      private var §super§:Number = 0;
      
      private var §_-7O§:Number = 60;
      
      private var §_-Bd§:Number = 73;
      
      private var §class§:Number = 137;
      
      private var §_-09§:Number = 0;
      
      private var §_-Cd§:Number = 0;
      
      private var §_-A2§:Number = 4;
      
      private var §_-Cv§:Number = 0;
      
      private var §_-I§:Number = 0;
      
      private var §_-d§:Boolean = false;
      
      private var override:TextField;
      
      private var §_-3e§:*;
      
      public function §_-2H§(param1:§_-2w§, param2:§_-9L§, param3:Object = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(!_loc5_)
            {
               this.api = param1;
               if(_loc4_ || Boolean(this))
               {
                  this.data = param2;
                  if(_loc5_ && Boolean(param3))
                  {
                  }
               }
               §§goto(addr63);
            }
         }
         this.§_-E8§ = param3;
         if(_loc4_ || Boolean(param3))
         {
            §§goto(addr63);
         }
         addr63:
         this.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:* = NaN;
         var _loc4_:§_-7D§ = null;
         var _loc5_:§_-7M§ = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Array = null;
         var _loc8_:TextField = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:* = 0;
         var _loc12_:MovieClip = null;
         var _loc1_:§_-2H§ = this;
         _loc1_.clip = new MovieClip();
         if(_loc13_)
         {
            _loc1_.§_-E2§ = this.api.util.§_-2l§(this.§_-4Q§);
            _loc1_.§_-1U§ = this.api.util.§_-2l§(this.§_-BV§);
            if(!(_loc14_ && Boolean(this)))
            {
               if(this.data.§_-4R§)
               {
                  if(_loc14_)
                  {
                     addr376:
                     _loc1_.§_-E2§.y = 0 - _loc1_.§_-E2§.height;
                     if(_loc13_)
                     {
                        _loc1_.§_-1U§.y = this.api.§_-Dl§;
                     }
                  }
                  addr392:
                  _loc1_.override = new TextField();
                  if(!(_loc14_ && Boolean(_loc2_)))
                  {
                     _loc1_.override.embedFonts = true;
                     _loc1_.override.antiAliasType = AntiAliasType.ADVANCED;
                     _loc1_.override.gridFitType = GridFitType.SUBPIXEL;
                     if(_loc13_)
                     {
                        _loc1_.override.wordWrap = false;
                        _loc1_.override.multiline = false;
                        if(_loc14_ && Boolean(_loc3_))
                        {
                        }
                        addr463:
                        _loc1_.override.text = _loc1_.data.§_-3M§;
                        addr469:
                        _loc1_.override.height = _loc1_.override.textHeight + 4;
                        if(_loc13_)
                        {
                        }
                        addr497:
                        _loc1_.§_-BD§ = new MovieClip();
                        if(this.data.§_-4R§)
                        {
                           _loc1_.§_-BD§.y = _loc1_.§catch§;
                        }
                        else
                        {
                           §§push(this.data);
                           if(_loc13_)
                           {
                              addr516:
                              if(§§pop().set)
                              {
                                 if(_loc13_)
                                 {
                                    addr519:
                                    _loc1_.§_-BD§.y = _loc1_.§_-0u§;
                                    addr524:
                                 }
                              }
                              else
                              {
                                 _loc1_.§_-BD§.y = _loc1_.§_-5y§;
                              }
                              addr530:
                              §§push(_loc1_.data);
                           }
                        }
                        if(§§pop().§_-4u§.length > 0)
                        {
                           addr536:
                           _loc3_ = 0;
                           addr539:
                           while(true)
                           {
                              if(_loc3_ < _loc1_.data.§_-4u§.length)
                              {
                                 §§push(_loc1_.data);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 _loc4_ = §§pop().§_-4u§[_loc3_];
                                 _loc5_ = new §_-7M§(_loc4_);
                                 if(_loc13_ || Boolean(this))
                                 {
                                    §§push(_loc4_.§if §);
                                    if(_loc13_ || Boolean(_loc3_))
                                    {
                                       if(§§pop())
                                       {
                                          _loc5_.x = _loc1_.§_-5n§;
                                          if(_loc13_)
                                          {
                                             §§push(_loc5_);
                                             §§push(0 - _loc1_.§_-09§);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() + _loc1_.§_-88§);
                                             }
                                             §§pop().y = §§pop();
                                             _loc1_.§_-E2§.addChild(_loc5_);
                                             _loc1_.§_-5-§ = _loc5_;
                                          }
                                          else
                                          {
                                             addr927:
                                          }
                                          addr942:
                                          §§push(_loc3_);
                                          if(_loc13_ || Boolean(_loc2_))
                                          {
                                             addr950:
                                             §§push(§§pop() + 1);
                                             if(!(_loc14_ && Boolean(_loc3_)))
                                             {
                                                addr958:
                                                §§push(§§pop());
                                             }
                                          }
                                          _loc3_ = §§pop();
                                          continue;
                                       }
                                       if(_loc4_.size == "large")
                                       {
                                          _loc5_.x = Math.floor((_loc1_.api.§_-AE§ - _loc5_.width) / 2);
                                          if(!(_loc14_ && Boolean(_loc1_)))
                                          {
                                             §§push(_loc4_.§_-An§);
                                             if(_loc13_ || Boolean(_loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   _loc5_.y = _loc1_.§ each§;
                                                   addr697:
                                                   §§push(_loc4_.§_-An§);
                                                }
                                                else
                                                {
                                                   §§push(this.data);
                                                   if(_loc13_ || Boolean(this))
                                                   {
                                                      §§push(§§pop().§_-7J§);
                                                      if(_loc13_ || Boolean(_loc1_))
                                                      {
                                                         §§push(§§pop());
                                                         §§push(§§pop());
                                                         if(!(_loc14_ && Boolean(this)))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr859:
                                                               if(_loc13_)
                                                               {
                                                                  §§pop();
                                                                  §§push(this.data);
                                                                  if(_loc13_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop().§_-b§);
                                                                  }
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc13_)
                                                               {
                                                                  addr857:
                                                                  §§push(§§pop());
                                                               }
                                                               §§pop();
                                                               if(_loc1_.§_-AJ§ != null)
                                                               {
                                                                  addr866:
                                                                  §§push(_loc3_);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(_loc1_.§_-AJ§.x - _loc1_.§_-D4§);
                                                                           if(_loc13_ || Boolean(_loc2_))
                                                                           {
                                                                              §§push(§§pop() - _loc5_.width);
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc13_ || Boolean(_loc3_))
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §_-5i§.error("API ERROR: You must define the Large Button first for a Promo screen.");
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr958);
                                                                              }
                                                                           }
                                                                           §§push(2);
                                                                        }
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        _loc5_.x = _loc1_.§_-AJ§.x + _loc1_.§_-AJ§.width + _loc1_.§_-D4§;
                                                                        §§goto(addr927);
                                                                     }
                                                                     else
                                                                     {
                                                                        §_-5i§.error("API ERROR: Too many extra buttons for a Promo screen.");
                                                                        if(!_loc14_)
                                                                        {
                                                                           _loc5_.x = 0;
                                                                           if(_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr950);
                                                               }
                                                            }
                                                            addr678:
                                                            if(§§pop())
                                                            {
                                                               if(_loc13_)
                                                               {
                                                               }
                                                               addr830:
                                                               §§goto(addr942);
                                                            }
                                                            else
                                                            {
                                                               _loc5_.y = _loc1_.§_-9a§;
                                                            }
                                                            §§goto(addr697);
                                                         }
                                                         if(!§§pop())
                                                         {
                                                         }
                                                         §§goto(addr859);
                                                      }
                                                   }
                                                }
                                                addr851:
                                                §§push(§§pop().set);
                                                if(_loc13_)
                                                {
                                                   §§goto(addr859);
                                                }
                                                §§goto(addr857);
                                             }
                                             §§push(§§pop());
                                             if(_loc13_)
                                             {
                                                §§goto(addr678);
                                             }
                                          }
                                          _loc5_.y = _loc1_.§_-8K§;
                                          if(_loc13_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr697);
                                          }
                                          addr798:
                                          _loc1_.§_-BD§.graphics.beginFill(0,0);
                                          _loc1_.§_-BD§.graphics.drawRect(0,0,1,1);
                                          _loc1_.§_-BD§.graphics.drawRect(this.api.§_-AE§ - 1,0,1,1);
                                          if(_loc13_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr830);
                                          }
                                          §§goto(addr942);
                                       }
                                       else
                                       {
                                          _loc5_.x = _loc1_.§_-BD§.width + _loc1_.§_-D4§;
                                       }
                                       if(_loc1_.§_-BD§.width == 0)
                                       {
                                          if(!_loc13_)
                                          {
                                             continue;
                                          }
                                          _loc5_.x = 0;
                                       }
                                       §§goto(addr851);
                                       §§push(this.data);
                                       addr938:
                                       _loc1_.§_-BD§.addChild(_loc5_);
                                       §§goto(addr942);
                                    }
                                    if(§§pop())
                                    {
                                       _loc6_ = this.api.util.§_-2l§(_loc1_.§_-5N§);
                                       _loc6_.x = _loc5_.x + _loc1_.§ set§;
                                       if(!(_loc14_ && Boolean(_loc2_)))
                                       {
                                          _loc6_.y = _loc5_.y + _loc1_.§_-CZ§;
                                          if(_loc13_ || Boolean(_loc2_))
                                          {
                                             _loc1_.§_-1U§.addChild(_loc6_);
                                             if(!_loc14_)
                                             {
                                                _loc1_.§_-3g§ = _loc6_;
                                                if(_loc14_ && Boolean(_loc3_))
                                                {
                                                }
                                             }
                                          }
                                       }
                                       _loc1_.§_-7b§ = true;
                                    }
                                    _loc1_.§_-1U§.addChild(_loc5_);
                                    if(_loc13_ || Boolean(_loc3_))
                                    {
                                       _loc1_.§_-AJ§ = _loc5_;
                                       if(!_loc14_)
                                       {
                                          §§push(this.data);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop().set);
                                             if(_loc13_ || Boolean(_loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc14_ && Boolean(_loc3_)))
                                                   {
                                                      _loc1_.§_-BD§.graphics.lineStyle(0,0,0);
                                                      §§goto(addr798);
                                                   }
                                                   §§goto(addr866);
                                                }
                                                §§goto(addr830);
                                             }
                                             §§goto(addr857);
                                          }
                                          §§goto(addr851);
                                       }
                                       §§goto(addr938);
                                    }
                                    §§goto(addr798);
                                 }
                                 §§goto(addr938);
                              }
                           }
                           addr1363:
                           if(§§pop().set)
                           {
                              if(!(_loc14_ && Boolean(_loc2_)))
                              {
                                 _loc1_.§_-48§.y = _loc1_.§_-3u§;
                                 _loc1_.§_-48§.x = _loc1_.§_-Au§;
                                 if(_loc14_ && Boolean(_loc2_))
                                 {
                                 }
                                 addr2253:
                                 §§push(this.data);
                                 if(!(_loc14_ && Boolean(_loc3_)))
                                 {
                                    addr2264:
                                    _loc2_ = §§pop().§_-7m§.split(" ");
                                    if(!_loc14_)
                                    {
                                       if(_loc2_.indexOf("top") > -1)
                                       {
                                          if(!_loc14_)
                                          {
                                             _loc1_.§_-AS§.y = _loc1_.§_-4J§ - _loc1_.§_-09§;
                                             if(_loc13_)
                                             {
                                             }
                                             addr2348:
                                          }
                                          addr2368:
                                          §§push(this.data);
                                          if(_loc13_)
                                          {
                                             addr2395:
                                             §§push(§§pop().§_-8t§);
                                             if(_loc13_ || Boolean(this))
                                             {
                                                §§push(§§pop() == null);
                                                if(_loc13_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc13_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc13_)
                                                         {
                                                         }
                                                      }
                                                      addr2400:
                                                      if(§§pop())
                                                      {
                                                         if(_loc14_)
                                                         {
                                                         }
                                                         addr2413:
                                                         _loc1_.§_-AS§.mouseChildren = false;
                                                         _loc1_.§_-AS§.useHandCursor = true;
                                                         _loc1_.§_-AS§.addEventListener(MouseEvent.CLICK,_loc1_.§_-EJ§);
                                                         if(_loc13_)
                                                         {
                                                         }
                                                         addr2435:
                                                         _loc1_.§_-E2§.addChild(_loc1_.§_-AS§);
                                                         addr2451:
                                                         addr2454:
                                                         §§push(this.data.set);
                                                         if(this.data.set)
                                                         {
                                                            if(_loc13_ || Boolean(_loc3_))
                                                            {
                                                               §§pop();
                                                               if(!_loc14_)
                                                               {
                                                                  addr2469:
                                                                  addr2467:
                                                                  §§push(this.data.§_-Bt§);
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr2769:
                                                                     addr2776:
                                                                     addr2772:
                                                                     addr2773:
                                                                     §§push(§§pop() == null);
                                                                     if(_loc13_ || Boolean(this))
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     §§pop();
                                                                     if(this.data.§_-3e§ != "")
                                                                     {
                                                                        _loc1_.§_-3e§ = _loc1_.api.util.§ for§(this.data.§_-3e§,_loc1_.api.§_-2O§,_loc1_.clip,_loc1_.§_-E8§);
                                                                        if(_loc14_)
                                                                        {
                                                                        }
                                                                        §§goto(addr2819);
                                                                     }
                                                                     _loc1_.clip.addChild(_loc1_.§_-E2§);
                                                                     _loc1_.clip.addChild(_loc1_.§_-1U§);
                                                                     _loc1_.§_-E2§.addEventListener(Event.ENTER_FRAME,_loc1_.§_-D0§);
                                                                     §§goto(addr2819);
                                                                  }
                                                                  addr2539:
                                                                  §§push(§§pop().§_-7e§);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc13_ || Boolean(this))
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!(_loc14_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr2558:
                                                                              _loc1_.§_-AU§.facebook_btn.visible = false;
                                                                              _loc1_.§_-AU§.twitter_btn.y = 0;
                                                                           }
                                                                           §§goto(addr2657);
                                                                        }
                                                                        addr2606:
                                                                        §§push(this.data);
                                                                        if(!(_loc14_ && Boolean(this)))
                                                                        {
                                                                           addr2577:
                                                                           §§push(§§pop().§_-Bt§);
                                                                           if(!_loc14_)
                                                                           {
                                                                              addr2580:
                                                                              §§push(§§pop().§_-AQ§);
                                                                              §§push(false);
                                                                              if(_loc13_)
                                                                              {
                                                                              }
                                                                              addr2634:
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc14_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr2642:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc1_.§_-AU§.inside.x = 0;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(!(_loc14_ && Boolean(this)))
                                                                                 {
                                                                                    _loc11_ = §§pop();
                                                                                    §§goto(addr2657);
                                                                                 }
                                                                                 §§goto(addr2710);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr2769);
                                                                              }
                                                                              §§goto(addr2776);
                                                                           }
                                                                           addr2632:
                                                                           §§goto(addr2634);
                                                                           §§push(§§pop().§_-AQ§);
                                                                           §§push(false);
                                                                        }
                                                                        §§push(§§pop().§_-Bt§);
                                                                        if(_loc13_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(§§pop().§_-7e§);
                                                                        }
                                                                        §§goto(addr2632);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc13_ || Boolean(this))
                                                                        {
                                                                        }
                                                                        addr2657:
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           addr2710:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= this.data.§_-Bt§.§_-BU§.length)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              _loc12_ = _loc1_.§_-AU§.inside["gamepanel" + (_loc11_ + 1)];
                                                                              _loc12_.buttonMode = true;
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc12_.mouseEnabled = true;
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    _loc12_.mouseChildren = false;
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       _loc12_.useHandCursor = true;
                                                                                       if(!(_loc13_ || Boolean(_loc2_)))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr2708:
                                                                                 _loc11_++;
                                                                                 continue;
                                                                              }
                                                                              _loc12_.addEventListener(MouseEvent.CLICK,_loc1_.§_-Ax§);
                                                                              if(!(_loc13_ || Boolean(_loc1_)))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr2708);
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        _loc1_.§_-AU§.y = _loc1_.§_-3B§;
                                                                        _loc1_.§_-AU§.x = Math.floor((_loc1_.api.§_-AE§ - _loc1_.§_-AU§.width) / 2);
                                                                        if(_loc13_ || Boolean(_loc1_))
                                                                        {
                                                                        }
                                                                        §§goto(addr2819);
                                                                     }
                                                                     addr2597:
                                                                     §§push(this.data);
                                                                     if(!(_loc14_ && Boolean(this)))
                                                                     {
                                                                        §§goto(addr2606);
                                                                     }
                                                                     §§goto(addr2772);
                                                                  }
                                                                  addr2619:
                                                                  §§push(§§pop());
                                                                  if(!(_loc14_ && Boolean(_loc2_)))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr2632);
                                                                        §§push(this.data.§_-Bt§);
                                                                     }
                                                                     §§goto(addr2642);
                                                                  }
                                                                  §§goto(addr2634);
                                                               }
                                                               _loc1_.§_-1U§.addChild(_loc1_.§_-AU§);
                                                               addr2747:
                                                               §§push(this.data.§_-3e§);
                                                               if(!(_loc14_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(§§pop() != null);
                                                                  if(!(_loc14_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§goto(addr2634);
                                                                  }
                                                                  §§goto(addr2769);
                                                               }
                                                               §§goto(addr2773);
                                                            }
                                                            §§push(§§pop() == false);
                                                            if(_loc13_)
                                                            {
                                                               §§goto(addr2619);
                                                            }
                                                            §§goto(addr2632);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               §§push(this.data);
                                                               if(_loc13_)
                                                               {
                                                               }
                                                               §§goto(addr2577);
                                                            }
                                                            addr2819:
                                                            _loc1_.api.container.addChild(_loc1_.clip);
                                                            return;
                                                         }
                                                         §§goto(addr2747);
                                                         addr2440:
                                                      }
                                                      if(_loc2_.indexOf("top") > -1)
                                                      {
                                                         §§goto(addr2435);
                                                      }
                                                      else if(_loc2_.indexOf("bottom") > -1)
                                                      {
                                                         addr2446:
                                                         _loc1_.§_-1U§.addChild(_loc1_.§_-AS§);
                                                      }
                                                      §§goto(addr2451);
                                                   }
                                                   addr2399:
                                                   §§goto(addr2400);
                                                   §§push(!§§pop());
                                                }
                                                §§pop();
                                                addr2392:
                                                §§push(this.data);
                                             }
                                             §§push(§§pop() == "");
                                             if(_loc13_)
                                             {
                                                §§goto(addr2399);
                                             }
                                             §§goto(addr2400);
                                          }
                                          §§goto(addr2395);
                                          §§push(§§pop().§_-8t§);
                                       }
                                       else if(_loc2_.indexOf("bottom") > -1)
                                       {
                                          _loc1_.§_-AS§.y = _loc1_.api.§_-Dl§ - _loc1_.§_-Cd§ - _loc1_.§_-AS§.height - _loc1_.§_-37§;
                                          if(_loc13_)
                                          {
                                          }
                                          §§goto(addr2392);
                                       }
                                       if(_loc2_.indexOf("left") > -1)
                                       {
                                          if(_loc13_)
                                          {
                                             _loc1_.§_-AS§.x = _loc1_.§_-5n§;
                                             if(_loc14_ && Boolean(_loc3_))
                                             {
                                             }
                                             §§goto(addr2440);
                                          }
                                          §§goto(addr2435);
                                       }
                                       else if(_loc2_.indexOf("right") > -1)
                                       {
                                          _loc1_.§_-AS§.x = _loc1_.api.§_-AE§ - _loc1_.§_-AS§.width - _loc1_.§_-5n§;
                                          §§goto(addr2348);
                                       }
                                       else if(_loc2_.indexOf("center") > -1)
                                       {
                                          _loc1_.§_-AS§.x = (_loc1_.api.§_-AE§ - _loc1_.§_-AS§.width) / 2;
                                          if(_loc14_)
                                          {
                                          }
                                          §§goto(addr2392);
                                       }
                                       §§goto(addr2368);
                                    }
                                    _loc1_.§_-AS§.buttonMode = true;
                                    _loc1_.§_-AS§.mouseEnabled = true;
                                    if(!_loc14_)
                                    {
                                       §§goto(addr2413);
                                    }
                                    §§goto(addr2446);
                                 }
                                 §§push(§§pop().§_-Bt§);
                                 if(!_loc14_)
                                 {
                                    if(§§pop().§_-Ek§)
                                    {
                                       if(!(_loc14_ && Boolean(_loc3_)))
                                       {
                                          _loc1_.§_-AU§ = _loc1_.api.util.§_-2l§(_loc1_.§_-5q§);
                                       }
                                       §§goto(addr2769);
                                    }
                                    else
                                    {
                                       _loc1_.§_-AU§ = _loc1_.api.util.§_-2l§(_loc1_.§_-AK§);
                                    }
                                    _loc1_.§_-AU§.facebook_btn.addEventListener(MouseEvent.CLICK,_loc1_.§_-EF§);
                                    _loc1_.§_-AU§.twitter_btn.addEventListener(MouseEvent.CLICK,_loc1_.§_-1m§);
                                    addr2536:
                                    §§push(this.data.§_-Bt§);
                                    if(_loc13_)
                                    {
                                       §§goto(addr2539);
                                    }
                                 }
                                 §§goto(addr2580);
                                 addr2242:
                              }
                              _loc1_.§_-AU§.twitter_btn.visible = false;
                              §§goto(addr2597);
                           }
                           _loc1_.§_-1U§.addChild(_loc1_.§_-48§);
                           if(_loc13_ || Boolean(_loc2_))
                           {
                              addr1401:
                              §§push(this.data);
                              if(!_loc14_)
                              {
                                 if(§§pop().§_-0A§)
                                 {
                                    addr1414:
                                    _loc8_ = new TextField();
                                    _loc8_.embedFonts = true;
                                    _loc8_.antiAliasType = AntiAliasType.ADVANCED;
                                    _loc8_.gridFitType = GridFitType.PIXEL;
                                    _loc8_.wordWrap = false;
                                    if(!_loc14_)
                                    {
                                       _loc8_.multiline = false;
                                       _loc8_.defaultTextFormat = _loc1_.§_-Cl§();
                                       _loc8_.text = this.data.§_-2c§;
                                    }
                                    _loc8_.mouseEnabled = false;
                                    if(_loc13_)
                                    {
                                       _loc8_.tabEnabled = false;
                                       _loc8_.height = _loc8_.textHeight + 4;
                                    }
                                    _loc8_.width = _loc8_.textWidth + 6;
                                    _loc8_.y = _loc1_.api.§_-Dl§ - _loc1_.§_-Cd§ - _loc8_.height - _loc1_.§set §;
                                    _loc8_.x = (_loc1_.api.§_-AE§ - _loc8_.width) / 2;
                                    _loc1_.§_-1U§.addChild(_loc8_);
                                 }
                                 §§push(this.data.§_-7G§);
                                 if(!_loc14_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          §§push(this.data);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop().§_-4Y§);
                                             §§push("small");
                                             if(_loc13_ || Boolean(this))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   _loc1_.§_-8-§ = _loc1_.api.util.§_-2l§(_loc1_.§_-6n§);
                                                   addr1540:
                                                   §§push(this.data);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop().§_-1C§);
                                                      §§push(" ");
                                                      if(!(_loc14_ && Boolean(_loc1_)))
                                                      {
                                                         _loc2_ = §§pop().split(§§pop());
                                                         if(_loc2_.indexOf("top") > -1)
                                                         {
                                                            _loc1_.§_-8-§.y = _loc1_.§_-4J§ - _loc1_.§_-09§;
                                                            if(_loc14_)
                                                            {
                                                            }
                                                            addr1632:
                                                            _loc1_.§_-8-§.x = (_loc1_.api.§_-AE§ - _loc1_.§_-8-§.width) / 2;
                                                            addr1644:
                                                            §§push(this.data);
                                                            if(_loc13_ || Boolean(this))
                                                            {
                                                               addr1688:
                                                               §§push(§§pop().§_-89§);
                                                               if(_loc13_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(§§pop() == null);
                                                                  if(_loc13_ || Boolean(_loc2_))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop();
                                                                     §§push(this.data);
                                                                     if(_loc13_ || Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                     addr1744:
                                                                     addr1745:
                                                                     if(§§pop().§_-D5§)
                                                                     {
                                                                        _loc9_ = _loc1_.api.util.§_-2l§(_loc1_.§_-82§);
                                                                        _loc9_.y = this.§_-8-§.y - _loc9_.height;
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(_loc2_.indexOf("left") > -1)
                                                                           {
                                                                              _loc9_.x = this.§_-8-§.x;
                                                                           }
                                                                           else if(_loc2_.indexOf("center") > -1)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 _loc9_.x = this.§_-8-§.x + (this.§_-8-§.width - _loc9_.width) / 2;
                                                                              }
                                                                           }
                                                                           else if(_loc2_.indexOf("right") > -1)
                                                                           {
                                                                              _loc9_.x = this.§_-8-§.x + this.§_-8-§.width - _loc9_.width;
                                                                              if(_loc14_ && Boolean(_loc2_))
                                                                              {
                                                                              }
                                                                              addr1826:
                                                                              _loc1_.§_-E2§.addChild(_loc9_);
                                                                           }
                                                                        }
                                                                        if(_loc2_.indexOf("top") > -1)
                                                                        {
                                                                           §§goto(addr1826);
                                                                        }
                                                                        else if(_loc2_.indexOf("bottom") > -1)
                                                                        {
                                                                           if(_loc13_ || Boolean(this))
                                                                           {
                                                                              _loc1_.§_-1U§.addChild(_loc9_);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(_loc2_.indexOf("top") > -1)
                                                                     {
                                                                        _loc1_.§_-E2§.addChild(_loc1_.§_-8-§);
                                                                        addr1857:
                                                                     }
                                                                     else if(_loc2_.indexOf("bottom") > -1)
                                                                     {
                                                                        _loc1_.§_-1U§.addChild(_loc1_.§_-8-§);
                                                                     }
                                                                  }
                                                                  addr1705:
                                                                  if(§§pop())
                                                                  {
                                                                     _loc1_.§_-8-§.buttonMode = true;
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc1_.§_-8-§.mouseEnabled = true;
                                                                        if(_loc13_ || Boolean(_loc2_))
                                                                        {
                                                                           _loc1_.§_-8-§.mouseChildren = false;
                                                                           if(_loc13_)
                                                                           {
                                                                              _loc1_.§_-8-§.useHandCursor = true;
                                                                              if(_loc14_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        _loc1_.§_-8-§.addEventListener(MouseEvent.CLICK,_loc1_.§_-6O§);
                                                                     }
                                                                     §§goto(addr1857);
                                                                  }
                                                                  §§goto(addr1744);
                                                                  §§push(this.data);
                                                               }
                                                               §§push(§§pop() == "");
                                                               if(_loc13_ || Boolean(this))
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc14_ && Boolean(this))
                                                                  {
                                                                  }
                                                                  §§goto(addr1745);
                                                               }
                                                               §§goto(addr1705);
                                                            }
                                                            §§goto(addr1688);
                                                            §§push(§§pop().§_-89§);
                                                         }
                                                         else if(_loc2_.indexOf("bottom") > -1)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               _loc1_.§_-8-§.y = _loc1_.api.§_-Dl§ - _loc1_.§_-Cd§ - _loc1_.§_-8-§.height - _loc1_.§_-37§;
                                                            }
                                                            §§goto(addr1632);
                                                         }
                                                         if(_loc2_.indexOf("left") > -1)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               _loc1_.§_-8-§.x = _loc1_.§_-5n§;
                                                            }
                                                            §§goto(addr1705);
                                                         }
                                                         else if(_loc2_.indexOf("right") > -1)
                                                         {
                                                            _loc1_.§_-8-§.x = _loc1_.api.§_-AE§ - _loc1_.§_-8-§.width - _loc1_.§_-5n§;
                                                         }
                                                         else if(_loc2_.indexOf("center") > -1)
                                                         {
                                                            §§goto(addr1632);
                                                         }
                                                         §§goto(addr1644);
                                                      }
                                                      addr1920:
                                                      _loc2_ = §§pop().split(§§pop());
                                                      if(_loc2_.indexOf("top") > -1)
                                                      {
                                                         _loc1_.§_-Ci§.y = _loc1_.§_-4J§ - _loc1_.§_-09§;
                                                      }
                                                      else if(_loc2_.indexOf("bottom") > -1)
                                                      {
                                                         _loc1_.§_-Ci§.y = _loc1_.api.§_-Dl§ - _loc1_.§_-Cd§ - _loc1_.§_-Ci§.height - _loc1_.§_-37§;
                                                      }
                                                      if(_loc2_.indexOf("left") > -1)
                                                      {
                                                         _loc1_.§_-Ci§.x = _loc1_.§_-5n§;
                                                      }
                                                      else if(_loc2_.indexOf("right") > -1)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            _loc1_.§_-Ci§.x = _loc1_.api.§_-AE§ - _loc1_.§_-Ci§.width - _loc1_.§_-5n§;
                                                         }
                                                      }
                                                      else if(_loc2_.indexOf("center") > -1)
                                                      {
                                                         _loc1_.§_-Ci§.x = (_loc1_.api.§_-AE§ - _loc1_.§_-Ci§.width) / 2;
                                                         if(_loc13_)
                                                         {
                                                         }
                                                         addr2225:
                                                         §§push(this.data);
                                                      }
                                                      §§push(this.data);
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop().§ var§);
                                                         if(_loc13_)
                                                         {
                                                            §§push(§§pop() == null);
                                                            if(_loc13_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc13_)
                                                               {
                                                                  addr2062:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc13_ || Boolean(_loc2_))
                                                                     {
                                                                        §§pop();
                                                                        addr2100:
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(this.data);
                                                                           if(_loc14_ && Boolean(_loc1_))
                                                                           {
                                                                           }
                                                                           addr2102:
                                                                           §§push(§§pop().§_-7P§);
                                                                        }
                                                                        §§goto(addr2102);
                                                                        §§push(this.data);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc14_ && Boolean(_loc2_)))
                                                                     {
                                                                        _loc1_.§_-Ci§.buttonMode = true;
                                                                        _loc1_.§_-Ci§.mouseEnabled = true;
                                                                        _loc1_.§_-Ci§.mouseChildren = false;
                                                                        _loc1_.§_-Ci§.useHandCursor = true;
                                                                        if(_loc13_ || Boolean(this))
                                                                        {
                                                                        }
                                                                        §§goto(addr2225);
                                                                     }
                                                                     _loc1_.§_-Ci§.addEventListener(MouseEvent.CLICK,_loc1_.§do§);
                                                                  }
                                                                  §§goto(addr2100);
                                                               }
                                                               addr2103:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc10_ = _loc1_.api.util.§_-2l§(_loc1_.§_-8U§);
                                                                     _loc10_.y = this.§_-Ci§.y - _loc10_.height;
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(_loc2_.indexOf("left") > -1)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              _loc10_.x = this.§_-Ci§.x;
                                                                              addr2176:
                                                                              if(_loc2_.indexOf("top") > -1)
                                                                              {
                                                                                 if(_loc13_ || Boolean(_loc1_))
                                                                                 {
                                                                                    _loc1_.§_-E2§.addChild(_loc10_);
                                                                                 }
                                                                              }
                                                                              else if(_loc2_.indexOf("bottom") > -1)
                                                                              {
                                                                                 _loc1_.§_-1U§.addChild(_loc10_);
                                                                              }
                                                                           }
                                                                           addr2192:
                                                                        }
                                                                        else
                                                                        {
                                                                           if(_loc2_.indexOf("center") <= -1)
                                                                           {
                                                                              if(_loc2_.indexOf("right") > -1)
                                                                              {
                                                                                 _loc10_.x = this.§_-Ci§.x + this.§_-Ci§.width - _loc10_.width;
                                                                              }
                                                                           }
                                                                           §§goto(addr2176);
                                                                        }
                                                                     }
                                                                     _loc10_.x = this.§_-Ci§.x + (this.§_-Ci§.width - _loc10_.width) / 2;
                                                                     if(_loc13_)
                                                                     {
                                                                        §§goto(addr2176);
                                                                     }
                                                                     §§goto(addr2192);
                                                                  }
                                                                  addr2220:
                                                                  _loc1_.§_-1U§.addChild(_loc1_.§_-Ci§);
                                                                  §§goto(addr2225);
                                                               }
                                                               if(_loc2_.indexOf("top") > -1)
                                                               {
                                                                  _loc1_.§_-E2§.addChild(_loc1_.§_-Ci§);
                                                               }
                                                               else if(_loc2_.indexOf("bottom") > -1)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§goto(addr2220);
                                                                  }
                                                               }
                                                               §§goto(addr2225);
                                                            }
                                                            addr2054:
                                                            §§push(!§§pop());
                                                            if(!(_loc14_ && Boolean(_loc1_)))
                                                            {
                                                               §§goto(addr2062);
                                                            }
                                                            §§goto(addr2103);
                                                         }
                                                         addr2045:
                                                         §§push(§§pop() == "");
                                                         if(_loc13_ || Boolean(_loc2_))
                                                         {
                                                            §§goto(addr2054);
                                                         }
                                                         §§goto(addr2062);
                                                      }
                                                      §§goto(addr2045);
                                                      §§push(§§pop().§ var§);
                                                   }
                                                   §§goto(addr2469);
                                                }
                                                else
                                                {
                                                   _loc1_.§_-8-§ = _loc1_.api.util.§_-2l§(_loc1_.§_-F§);
                                                   if(_loc13_ || Boolean(_loc2_))
                                                   {
                                                      §§goto(addr1540);
                                                   }
                                                }
                                                §§goto(addr2558);
                                             }
                                             addr2233:
                                             if(§§pop() == §§pop())
                                             {
                                                _loc1_.§_-AS§ = _loc1_.api.util.§_-2l§(_loc1_.§_-ET§);
                                                §§goto(addr2242);
                                             }
                                             else
                                             {
                                                _loc1_.§_-AS§ = _loc1_.api.util.§_-2l§(_loc1_.§_-4k§);
                                                if(!_loc14_)
                                                {
                                                   §§goto(addr2253);
                                                }
                                             }
                                             §§goto(addr2467);
                                          }
                                          §§goto(addr2769);
                                       }
                                       §§goto(addr2747);
                                    }
                                    §§push(this.data);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop().§_-1I§);
                                       if(!_loc14_)
                                       {
                                          if(§§pop())
                                          {
                                             §§push(this.data.§_-9q§);
                                             §§push("small");
                                             if(!(_loc14_ && Boolean(_loc1_)))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc13_)
                                                   {
                                                      _loc1_.§_-Ci§ = _loc1_.api.util.§_-2l§(_loc1_.§_-E9§);
                                                      if(_loc13_)
                                                      {
                                                      }
                                                      §§goto(addr2469);
                                                   }
                                                   §§goto(addr2657);
                                                }
                                                else
                                                {
                                                   _loc1_.§_-Ci§ = _loc1_.api.util.§_-2l§(_loc1_.§_-5A§);
                                                }
                                                addr1911:
                                                §§push(this.data.§_-2d§);
                                                §§push(" ");
                                                if(!(_loc14_ && Boolean(_loc3_)))
                                                {
                                                   §§goto(addr1920);
                                                }
                                                §§goto(addr2264);
                                             }
                                             §§goto(addr2233);
                                          }
                                          §§goto(addr2225);
                                       }
                                       §§goto(addr2577);
                                    }
                                 }
                                 §§goto(addr2469);
                              }
                              if(§§pop().§_-BO§)
                              {
                                 addr2229:
                                 §§goto(addr2233);
                                 §§push(this.data.§_-2i§);
                                 §§push("small");
                              }
                              §§goto(addr2413);
                           }
                           §§goto(addr2642);
                        }
                        _loc1_.§_-1U§.addChild(_loc1_.§_-BD§);
                        if(!_loc14_)
                        {
                           _loc1_.§_-BD§.x = Math.floor((_loc1_.api.§_-AE§ - _loc1_.§_-BD§.width) / 2);
                           if(this.data.§_-C6§)
                           {
                              §§push(this.data.§_-9r§);
                              §§push(" ");
                              if(_loc13_ || Boolean(_loc1_))
                              {
                                 _loc7_ = §§pop().split(§§pop());
                                 _loc1_.§_-Cp§ = _loc1_.api.util.§_-Bc§(_loc1_.§_-DO§);
                                 _loc1_.§_-9K§ = _loc1_.api.util.§_-Bc§(_loc1_.§_-Dg§);
                                 if(_loc13_ || Boolean(this))
                                 {
                                    _loc1_.§_-Cp§.addEventListener(MouseEvent.CLICK,_loc1_.§_-Cj§);
                                    _loc1_.§_-9K§.addEventListener(MouseEvent.CLICK,_loc1_.§_-1a§);
                                    §§push(_loc1_.api.§_-6Q§);
                                    if(!_loc14_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc1_.§_-Cp§.visible = false;
                                          _loc1_.§_-9K§.visible = true;
                                       }
                                       else
                                       {
                                          _loc1_.§_-Cp§.visible = true;
                                          _loc1_.§_-9K§.visible = false;
                                       }
                                       if(_loc7_.indexOf("top") > -1)
                                       {
                                          _loc1_.§_-Cp§.y = 0 - _loc1_.§_-09§ + _loc1_.§default§;
                                       }
                                       else if(_loc7_.indexOf("bottom") > -1)
                                       {
                                          if(_loc14_ && Boolean(_loc1_))
                                          {
                                          }
                                          addr1159:
                                          §§push(this.data.set);
                                       }
                                       addr1124:
                                       if(_loc7_.indexOf("left") > -1)
                                       {
                                          if(_loc13_)
                                          {
                                             _loc1_.§_-Cp§.x = _loc1_.§_-0s§;
                                          }
                                       }
                                       else if(_loc7_.indexOf("right") > -1)
                                       {
                                          if(!_loc14_)
                                          {
                                             _loc1_.§_-Cp§.x = _loc1_.api.§_-AE§ - _loc1_.§_-0s§ - _loc1_.§_-Cp§.width;
                                             if(!_loc14_)
                                             {
                                                §§goto(addr1159);
                                             }
                                          }
                                          addr1232:
                                       }
                                       else if(_loc7_.indexOf("center") > -1)
                                       {
                                          _loc1_.§_-Cp§.x = (_loc1_.api.§_-AE§ - _loc1_.§_-Cp§.width) / 2;
                                       }
                                       addr1203:
                                       _loc1_.§_-9K§.x = _loc1_.§_-Cp§.x;
                                       addr1209:
                                       _loc1_.§_-9K§.y = _loc1_.§_-Cp§.y;
                                       if(!_loc14_)
                                       {
                                          if(_loc7_.indexOf("top") > -1)
                                          {
                                             _loc1_.§_-E2§.addChild(_loc1_.§_-9K§);
                                             addr1227:
                                             _loc1_.§_-E2§.addChild(_loc1_.§_-Cp§);
                                          }
                                          else if(_loc7_.indexOf("bottom") > -1)
                                          {
                                             _loc1_.§_-1U§.addChild(_loc1_.§_-9K§);
                                             if(!_loc14_)
                                             {
                                                _loc1_.§_-1U§.addChild(_loc1_.§_-Cp§);
                                             }
                                          }
                                       }
                                       §§goto(addr1232);
                                    }
                                    addr1162:
                                    if(§§pop())
                                    {
                                       if(!(_loc14_ && Boolean(_loc1_)))
                                       {
                                          _loc1_.§_-Cp§.x = _loc1_.api.§_-AE§ - _loc1_.§_-6W§ - _loc1_.§_-Cp§.width;
                                          if(_loc13_)
                                          {
                                          }
                                          §§goto(addr1227);
                                       }
                                       §§goto(addr1209);
                                    }
                                    §§goto(addr1203);
                                 }
                                 _loc1_.§_-Cp§.y = _loc1_.api.§_-Dl§ - _loc1_.§_-Cd§ - _loc1_.§_-Cp§.height - _loc1_.§_-8F§;
                                 §§push(this.data);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop().set);
                                    if(_loc13_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             _loc1_.§_-Cp§.y = _loc1_.§_-2§;
                                          }
                                       }
                                       §§goto(addr1124);
                                    }
                                    §§goto(addr1162);
                                 }
                                 §§goto(addr1159);
                              }
                              §§goto(addr1920);
                           }
                           §§push(this.data);
                           if(_loc13_ || Boolean(_loc2_))
                           {
                              §§push(§§pop().§_-0y§);
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 if(§§pop())
                                 {
                                    §§push(this.data);
                                    if(!(_loc14_ && Boolean(_loc3_)))
                                    {
                                       if(§§pop().set)
                                       {
                                          _loc1_.§_-48§ = _loc1_.api.util.§_-2l§(_loc1_.§_-9H§);
                                       }
                                       else
                                       {
                                          _loc1_.§_-48§ = _loc1_.api.util.§_-2l§(_loc1_.§do §);
                                       }
                                       _loc1_.§_-48§.buttonMode = true;
                                       _loc1_.§_-48§.mouseEnabled = true;
                                       if(_loc13_ || Boolean(_loc2_))
                                       {
                                          _loc1_.§_-48§.mouseChildren = false;
                                          if(!(_loc14_ && Boolean(_loc3_)))
                                          {
                                             _loc1_.§_-48§.useHandCursor = true;
                                             _loc1_.§_-48§.addEventListener(MouseEvent.CLICK,_loc1_.§_-4T§);
                                             _loc1_.§_-48§.y = _loc1_.§_-9k§;
                                             if(!_loc14_)
                                             {
                                                _loc1_.§_-48§.x = (_loc1_.api.§_-AE§ - _loc1_.§_-48§.width) / 2;
                                                if(_loc13_)
                                                {
                                                   §§push(this.data);
                                                   if(!(_loc14_ && Boolean(_loc2_)))
                                                   {
                                                      §§goto(addr1363);
                                                   }
                                                }
                                                §§goto(addr2606);
                                             }
                                             §§goto(addr2229);
                                          }
                                          §§goto(addr1540);
                                       }
                                       §§goto(addr1414);
                                    }
                                    §§goto(addr1911);
                                 }
                                 §§goto(addr1401);
                              }
                              §§goto(addr2454);
                           }
                           §§goto(addr2536);
                        }
                        §§goto(addr2558);
                     }
                     addr434:
                     _loc1_.override.defaultTextFormat = _loc1_.§_-0w§();
                     _loc1_.override.text = "";
                     addr492:
                     if(!_loc14_)
                     {
                        _loc1_.override.mouseEnabled = false;
                        _loc1_.override.y = 0 - _loc1_.§_-09§ + _loc1_.§_-Bs§;
                        §§push(_loc1_.data.§_-8V§);
                     }
                     _loc1_.§_-E2§.addChild(_loc1_.override);
                     §§goto(addr497);
                  }
                  _loc1_.override.width = _loc1_.api.§_-AE§;
                  if(!(_loc14_ && Boolean(_loc1_)))
                  {
                     §§goto(addr492);
                  }
                  §§goto(addr530);
               }
               else
               {
                  §§push(this.data);
                  if(!(_loc14_ && Boolean(this)))
                  {
                     §§push(§§pop().set);
                     if(!(_loc14_ && Boolean(_loc2_)))
                     {
                        if(§§pop())
                        {
                           _loc1_.§_-09§ = 0 - (_loc1_.§_-E2§.height - this.§_-Bd§);
                           if(_loc13_ || Boolean(_loc1_))
                           {
                              §§push(_loc1_);
                              §§push(this.api.§_-Dl§);
                              if(!(_loc14_ && Boolean(this)))
                              {
                                 §§push(§§pop() - this.§class§);
                              }
                              §§pop().§_-Cd§ = §§pop();
                              _loc1_.§_-E2§.y = 0 - _loc1_.§_-E2§.height + this.api.§_-Dl§ / 2 - 30;
                              _loc1_.§_-1U§.y = this.api.§_-Dl§ - this.api.§_-Dl§ / 2 + 30;
                              §§goto(addr392);
                           }
                           else
                           {
                              addr270:
                              _loc1_.§_-E2§.y = 0 - _loc1_.§_-E2§.height;
                              if(_loc13_ || Boolean(this))
                              {
                                 _loc1_.§_-1U§.y = this.api.§_-Dl§;
                                 if(!(_loc14_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr392);
                                 }
                                 §§goto(addr524);
                              }
                           }
                           §§goto(addr536);
                        }
                        else
                        {
                           §§push(this.data.§_-7J§);
                           if(!_loc14_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    _loc1_.§_-09§ = 0 - (_loc1_.§_-E2§.height - this.§_-13§);
                                    if(!(_loc14_ && Boolean(_loc1_)))
                                    {
                                       §§push(_loc1_);
                                       §§push(this.api.§_-Dl§);
                                       if(_loc13_ || Boolean(_loc2_))
                                       {
                                          §§push(§§pop() - this.§_-m§);
                                       }
                                       §§pop().§_-Cd§ = §§pop();
                                       §§goto(addr270);
                                    }
                                    §§goto(addr519);
                                 }
                                 §§goto(addr492);
                              }
                              else
                              {
                                 §§push(this.data);
                              }
                           }
                        }
                     }
                     §§goto(addr516);
                  }
                  §§push(§§pop().§_-b§);
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        if(!_loc14_)
                        {
                           _loc1_.§_-09§ = 0 - (_loc1_.§_-E2§.height - this.§super§);
                           §§push(_loc1_);
                           §§push(this.api.§_-Dl§);
                           if(_loc13_)
                           {
                              §§push(§§pop() - this.§_-7O§);
                           }
                           §§pop().§_-Cd§ = §§pop();
                           _loc1_.§_-E2§.y = 0 - _loc1_.§_-E2§.height;
                           _loc1_.§_-1U§.y = this.api.§_-Dl§;
                           §§goto(addr392);
                        }
                        §§goto(addr497);
                     }
                     else
                     {
                        _loc1_.§_-09§ = 0 - (_loc1_.§_-E2§.height - this.§_-79§);
                        if(_loc13_ || Boolean(this))
                        {
                           §§push(_loc1_);
                           §§push(this.api.§_-Dl§);
                           if(_loc13_ || Boolean(_loc1_))
                           {
                              §§push(§§pop() - this.§_-BK§);
                           }
                           §§pop().§_-Cd§ = §§pop();
                           if(_loc13_)
                           {
                              §§goto(addr376);
                           }
                           §§goto(addr492);
                        }
                     }
                     §§goto(addr434);
                  }
               }
               if(§§pop())
               {
                  §§goto(addr463);
               }
               §§goto(addr469);
            }
            §§goto(addr516);
         }
         _loc1_.§_-09§ = 0 - (_loc1_.§_-E2§.height - this.§_-CM§);
         if(_loc13_ || Boolean(this))
         {
            §§push(_loc1_);
            §§push(this.api.§_-Dl§);
            if(_loc13_)
            {
               §§push(§§pop() - this.§_-6§);
            }
            §§pop().§_-Cd§ = §§pop();
            _loc1_.§_-E2§.y = 0 - _loc1_.§_-E2§.height + this.api.§_-Dl§ / 2 - 30;
            if(!(_loc14_ && Boolean(_loc1_)))
            {
               _loc1_.§_-1U§.y = this.api.§_-Dl§ - this.api.§_-Dl§ / 2 + 30;
               if(_loc14_)
               {
               }
               §§goto(addr392);
            }
            §§goto(addr519);
         }
         §§goto(addr539);
      }
      
      public function startTransitionOut() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-2H§ = this;
         _loc1_.§_-d§ = true;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.disableButtons();
            _loc1_.§_-09§ = 0 - _loc1_.§_-E2§.height;
            _loc1_.§_-Cd§ = this.api.§_-Dl§;
            if(_loc3_ || _loc2_)
            {
            }
            §§goto(addr110);
         }
         if(_loc1_.§_-7b§)
         {
            if(_loc3_)
            {
               §§push(_loc1_);
               §§push(_loc1_.§_-Cd§);
               if(_loc3_)
               {
                  §§push(_loc1_.§ each§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + _loc1_.§_-CZ§);
                     if(_loc3_ || _loc2_)
                     {
                     }
                     addr81:
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr81);
                  §§push(§§pop() * -1);
               }
               §§pop().§_-Cd§ = §§pop();
               if(_loc3_ || _loc2_)
               {
               }
               §§goto(addr110);
            }
         }
         if(!_loc1_.§_-E2§.hasEventListener(Event.ENTER_FRAME))
         {
            _loc1_.§_-E2§.addEventListener(Event.ENTER_FRAME,_loc1_.§_-D0§);
         }
         addr110:
      }
      
      public function §_-D0§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§_-2H§ = this;
         var _loc5_:* = _loc2_;
         §§push(_loc5_.§_-I§);
         if(!(_loc8_ && Boolean(param1)))
         {
            §§push(§§pop() + 1);
         }
         var _loc6_:* = §§pop();
         if(_loc7_)
         {
            _loc5_.§_-I§ = _loc6_;
         }
         §§push(_loc2_.§_-I§ > _loc2_.§_-Cv§);
         if(_loc7_)
         {
            §§push(§§pop());
            if(!(_loc8_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(_loc7_)
                  {
                     §§pop();
                     §§push(_loc2_.§_-d§);
                     if(_loc7_ || Boolean(_loc3_))
                     {
                     }
                     §§goto(addr183);
                  }
                  §§push(§§pop());
                  if(_loc7_ || Boolean(_loc2_))
                  {
                  }
                  §§goto(addr183);
               }
               if(§§pop())
               {
                  addr177:
                  if(_loc7_)
                  {
                     §§push(_loc2_.§_-09§);
                     if(!_loc8_)
                     {
                        _loc3_ = §§pop() - _loc2_.§_-E2§.y;
                        §§push(_loc2_.§_-Cd§);
                     }
                     _loc4_ = §§pop() - _loc2_.§_-1U§.y;
                     if(Math.abs(_loc3_) > 1)
                     {
                        if(!_loc8_)
                        {
                           _loc2_.§_-E2§.y += _loc3_ / _loc2_.§_-A2§;
                        }
                     }
                     else
                     {
                        _loc2_.§_-E2§.y = _loc2_.§_-09§;
                     }
                     if(Math.abs(_loc4_) > 1)
                     {
                        if(!_loc8_)
                        {
                           _loc2_.§_-1U§.y += _loc4_ / _loc2_.§_-A2§;
                           if(_loc8_ && Boolean(this))
                           {
                           }
                        }
                     }
                     else
                     {
                        _loc2_.§_-1U§.y = _loc2_.§_-Cd§;
                     }
                     §§push(_loc2_.§_-E2§.y == _loc2_.§_-09§);
                  }
                  addr183:
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        addr193:
                        _loc2_.§_-E2§.removeEventListener(Event.ENTER_FRAME,_loc2_.§_-D0§);
                     }
                  }
                  return;
                  §§push(_loc2_.§_-1U§.y == _loc2_.§_-Cd§);
               }
               §§goto(addr183);
            }
            addr166:
            if(§§pop())
            {
               if(_loc7_ || Boolean(_loc3_))
               {
                  §§pop();
                  if(!_loc8_)
                  {
                     §§goto(addr177);
                  }
                  §§goto(addr193);
               }
            }
            §§goto(addr183);
         }
         §§goto(addr166);
         §§push(§§pop());
      }
      
      public function §_-6O§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-2H§ = this;
         if(_loc4_)
         {
            §§push(_loc2_.data);
            if(_loc4_ || Boolean(this))
            {
               §§push(§§pop().§_-89§);
               if(_loc4_)
               {
                  §§goto(addr71);
               }
               §§goto(addr61);
            }
            addr61:
            §§push(§§pop() == "");
            if(_loc4_ || _loc3_)
            {
               §§goto(addr70);
            }
            addr71:
            §§push(§§pop());
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     §§goto(addr89);
                  }
                  addr70:
                  §§push(!§§pop());
               }
            }
            if(§§pop())
            {
               if(_loc3_)
               {
               }
            }
            addr89:
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(_loc2_.data);
            }
            return;
            §§push(§§pop().§_-89§);
         }
         _loc2_.api.§_-DI§(_loc2_.data.§_-89§,"FliplineLogo","LogoLinks");
         §§goto(addr89);
      }
      
      public function §do§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-2H§ = this;
         if(_loc3_)
         {
            §§push(_loc2_.data);
            if(!(_loc4_ && _loc3_))
            {
               addr60:
               §§push(§§pop().§ var§);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           §§pop();
                           if(_loc3_ || Boolean(param1))
                           {
                           }
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr65);
                  }
                  addr64:
                  addr65:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        _loc2_.api.§_-DI§(_loc2_.data.§ var§,"SponsorLogo","LogoLinks");
                     }
                  }
                  addr83:
                  return;
                  §§push(!§§pop());
               }
               §§push(§§pop() == "");
               if(_loc3_)
               {
                  §§goto(addr64);
               }
               §§goto(addr65);
            }
            addr59:
            §§goto(addr60);
            §§push(§§pop().§ var§);
         }
         §§goto(addr59);
         §§push(_loc2_.data);
      }
      
      public function §_-EJ§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-2H§ = this;
         if(_loc4_)
         {
            §§push(_loc2_.data);
            if(!_loc3_)
            {
               addr51:
               §§push(§§pop().§_-8t§);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           addr71:
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(_loc2_.data);
                           }
                           _loc2_.api.§_-DI§(_loc2_.data.§_-8t§,"LicenseLogo","LogoLinks");
                        }
                     }
                     addr56:
                     if(§§pop())
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           §§goto(addr71);
                        }
                     }
                  }
                  addr55:
                  §§goto(addr56);
                  §§push(!§§pop());
               }
               §§push(§§pop() == "");
               if(!_loc3_)
               {
                  §§goto(addr55);
               }
               §§goto(addr56);
            }
            §§goto(addr51);
            §§push(§§pop().§_-8t§);
         }
      }
      
      public function §_-4T§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-2H§ = this;
         if(!_loc4_)
         {
            §§push(_loc2_.data);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(§§pop().§_-p§);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§goto(addr70);
               }
               §§goto(addr65);
            }
            addr64:
            addr65:
            §§push(§§pop() == "");
            if(!_loc4_)
            {
               §§goto(addr69);
            }
            addr70:
            §§push(§§pop());
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     if(_loc4_ && Boolean(this))
                     {
                     }
                     §§goto(addr80);
                  }
                  addr69:
                  §§push(!§§pop());
               }
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§goto(addr80);
               }
            }
            addr80:
            _loc2_.api.§_-DI§(_loc2_.data.§_-p§,"GetThisGame","LogoLinks");
            return;
            §§push(§§pop().§_-p§);
         }
         §§goto(addr64);
         §§push(_loc2_.data);
      }
      
      public function §_-Cj§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-2H§ = this;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(_loc2_.api);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§pop().§_-h§("ClickMute","Screens",true);
               §§goto(addr78);
            }
            §§pop().§_-9X§();
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.§_-Cp§.visible = false;
               if(_loc4_ || Boolean(param1))
               {
               }
            }
            §§goto(addr78);
         }
         _loc2_.§_-9K§.visible = true;
         addr78:
         if(_loc4_)
         {
            §§push(_loc2_.api);
         }
      }
      
      public function §_-1a§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-2H§ = this;
         if(_loc3_)
         {
            §§push(_loc2_.api);
            if(!_loc4_)
            {
               §§pop().§_-h§("ClickUnmute","Screens",true);
               §§goto(addr68);
            }
            §§pop().§_-0m§();
            if(_loc4_ && Boolean(_loc2_))
            {
            }
            §§goto(addr68);
         }
         _loc2_.§_-Cp§.visible = true;
         if(!(_loc4_ && Boolean(this)))
         {
            §§goto(addr68);
         }
         addr68:
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_.api);
         }
         _loc2_.§_-9K§.visible = false;
      }
      
      public function §_-EF§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:§_-2H§ = this;
         if(!_loc5_)
         {
            §§push(_loc2_.data);
            if(_loc4_)
            {
               §§push(§§pop().§_-Bt§);
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  §§push(§§pop());
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              §§pop();
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§push(_loc2_.data);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().§_-Bt§);
                                    if(_loc5_ && Boolean(param1))
                                    {
                                    }
                                    addr113:
                                    addr112:
                                    §§push(§§pop().§_-8O§ == "");
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr118);
                                 }
                              }
                           }
                           addr101:
                           §§pop();
                           if(_loc5_ && Boolean(this))
                           {
                           }
                           §§goto(addr119);
                        }
                        addr92:
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr118);
                  }
                  addr118:
                  if(§§pop())
                  {
                     addr119:
                     _loc3_ = "PromoFacebook";
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        if(_loc2_.data.§_-Bt§.§_-Ek§)
                        {
                           if(_loc5_ && Boolean(_loc2_))
                           {
                           }
                        }
                        addr149:
                        _loc2_.api.§_-DI§(_loc2_.data.§_-Bt§.§_-8O§,_loc3_,"PromoLinks");
                     }
                     _loc3_ = "PromoFacebookLicense";
                     §§goto(addr149);
                  }
                  return;
                  §§push(!§§pop());
               }
               §§push(§§pop().§_-8O§);
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr118);
               }
               §§goto(addr113);
            }
            addr111:
            §§goto(addr112);
            §§push(§§pop().§_-Bt§);
         }
         §§goto(addr111);
         §§push(_loc2_.data);
      }
      
      public function §_-1m§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:§_-2H§ = this;
         if(_loc5_)
         {
            §§push(_loc2_.data);
            if(_loc5_)
            {
               §§push(§§pop().§_-Bt§);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(_loc2_.data);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().§_-Bt§);
                                    if(_loc4_)
                                    {
                                    }
                                    addr109:
                                    addr108:
                                    §§push(§§pop().§_-0g§ == "");
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                    }
                                    §§goto(addr119);
                                 }
                              }
                           }
                        }
                        addr88:
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           §§pop();
                           if(_loc5_ || Boolean(_loc2_))
                           {
                           }
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr119);
                  }
                  addr118:
                  addr119:
                  if(§§pop())
                  {
                     addr120:
                     _loc3_ = "PromoTwitter";
                     if(_loc5_)
                     {
                        if(_loc2_.data.§_-Bt§.§_-Ek§)
                        {
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              _loc3_ = "PromoTwitterLicense";
                           }
                        }
                        _loc2_.api.§_-DI§(_loc2_.data.§_-Bt§.§_-0g§,_loc3_,"PromoLinks");
                     }
                  }
                  return;
                  §§push(!§§pop());
               }
               §§push(§§pop().§_-0g§);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  §§push(§§pop());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr88);
                  }
                  §§goto(addr118);
               }
               §§goto(addr109);
            }
            addr107:
            §§goto(addr108);
            §§push(§§pop().§_-Bt§);
         }
         §§goto(addr107);
         §§push(_loc2_.data);
      }
      
      public function §_-Ax§(param1:MouseEvent) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:§_-2H§ = this;
         var _loc3_:* = -1;
         var _loc4_:Array = String(param1.currentTarget.name).split("gamepanel");
         if(_loc4_.length > 1)
         {
            if(!(_loc7_ && Boolean(param1)))
            {
               §§goto(addr63);
            }
            §§goto(addr99);
            §§push(_loc2_.data);
         }
         addr63:
         §§push(Number(_loc4_[1]));
         if(_loc8_)
         {
            _loc3_ = §§pop();
            if(_loc8_ || Boolean(_loc3_))
            {
            }
            addr99:
            §§push(_loc2_.data);
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               §§push(§§pop().§_-Bt§);
               if(_loc8_ || Boolean(param1))
               {
                  addr123:
                  §§push(§§pop().§_-BU§);
                  if(_loc8_ || Boolean(this))
                  {
                     §§goto(addr134);
                  }
                  addr146:
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop()[§§pop()];
                  §§goto(addr153);
               }
               addr145:
               §§goto(addr146);
               §§push(§§pop().§_-BU§);
            }
            §§goto(addr145);
            §§push(§§pop().§_-Bt§);
         }
         if(§§pop() > -1)
         {
            if(_loc8_)
            {
               §§push(_loc2_.data);
               if(!_loc7_)
               {
                  §§push(§§pop().§_-Bt§);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        if(§§pop())
                        {
                           if(!(_loc7_ && Boolean(this)))
                           {
                              §§pop();
                              if(_loc8_ || Boolean(this))
                              {
                                 §§goto(addr99);
                              }
                           }
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr123);
               }
               §§goto(addr99);
            }
            §§goto(addr153);
         }
         addr134:
         if(§§pop().length >= _loc3_)
         {
            if(_loc7_ && Boolean(this))
            {
            }
            addr153:
            _loc6_ = "PromoGameLink";
            if(!_loc7_)
            {
               §§push(_loc2_.data.§_-Bt§.§_-Ek§);
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                     }
                     addr226:
                     _loc2_.api.§_-DI§(_loc5_,_loc6_,"PromoLinks");
                  }
                  addr168:
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() == null);
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        §§push(!§§pop());
                        if(_loc7_ && Boolean(param1))
                        {
                        }
                        addr211:
                        if(§§pop())
                        {
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              §§goto(addr226);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc7_ && Boolean(this))
                        {
                        }
                     }
                     §§goto(addr211);
                  }
                  addr206:
                  §§push(§§pop() == "");
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  §§goto(addr211);
               }
               §§pop();
               if(!(_loc7_ && Boolean(this)))
               {
                  §§goto(addr206);
                  §§push(_loc5_);
               }
            }
            _loc6_ = "PromoGameLinkLicense";
            §§goto(addr168);
         }
         _loc3_;
      }
      
      public function destroy() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:§_-7M§ = null;
         var _loc1_:§_-2H§ = this;
         if(_loc7_ || Boolean(_loc2_))
         {
            if(_loc1_.§_-3e§)
            {
               if(_loc7_ || Boolean(this))
               {
                  _loc1_.§_-3e§.destroy();
                  if(_loc7_)
                  {
                     _loc1_.§_-3e§ = null;
                     if(_loc6_ && Boolean(_loc3_))
                     {
                     }
                  }
               }
               try
               {
                  addr59:
                  _loc1_.§_-AU§.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc1_.§_-EF§);
                  _loc1_.§_-AU§.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc1_.§_-1m§);
               }
               catch(err:Error)
               {
               }
               try
               {
                  §§push(0);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || Boolean(this))
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                           }
                           break;
                           _loc1_.§_-AU§.inside["gamepanel" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,_loc1_.§_-Ax§);
                           _loc3_++;
                        }
                        addr143:
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(_loc2_);
                           }
                        }
                        while(§§pop() < _loc1_.§_-BD§.numChildren)
                        {
                           _loc4_ = _loc1_.§_-BD§.getChildAt(_loc2_) as §_-7M§;
                           _loc4_.destroy();
                           _loc4_ = null;
                           if(!_loc6_)
                           {
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              _loc2_ = §§pop();
                           }
                        }
                        §§push(_loc1_.§_-AJ§);
                        if(!_loc6_)
                        {
                           addr200:
                           if(§§pop())
                           {
                              §§push(_loc1_.§_-AJ§);
                           }
                           §§push(_loc1_.§_-5-§);
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              if(§§pop())
                              {
                                 addr456:
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    §§push(_loc1_.§_-5-§);
                                 }
                                 _loc1_.api.container.removeChild(_loc1_.clip);
                              }
                              addr237:
                              §§push(Boolean(_loc1_.§_-8-§));
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(_loc1_.§_-8-§.hasEventListener(MouseEvent.CLICK));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          _loc1_.§_-8-§.removeEventListener(MouseEvent.CLICK,_loc1_.§_-6O§);
                                          if(_loc7_)
                                          {
                                          }
                                       }
                                       addr408:
                                       _loc1_.§_-9K§.removeEventListener(MouseEvent.CLICK,_loc1_.§_-1a§);
                                       if(Boolean(_loc1_.§_-48§) && _loc1_.§_-48§.hasEventListener(MouseEvent.CLICK))
                                       {
                                          if(!(_loc6_ && Boolean(_loc1_)))
                                          {
                                             addr435:
                                             _loc1_.§_-48§.removeEventListener(MouseEvent.CLICK,_loc1_.§_-4T§);
                                             if(_loc6_ && Boolean(_loc2_))
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr456);
                                    }
                                    §§push(Boolean(_loc1_.§_-Ci§));
                                    §§push(Boolean(_loc1_.§_-Ci§));
                                    if(_loc6_ && Boolean(this))
                                    {
                                    }
                                    addr383:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§pop();
                                          if(!(_loc6_ && Boolean(_loc1_)))
                                          {
                                             §§push(_loc1_.§_-9K§.hasEventListener(MouseEvent.CLICK));
                                          }
                                          §§goto(addr456);
                                       }
                                    }
                                    addr405:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr408);
                                       }
                                       §§goto(addr456);
                                    }
                                    §§goto(addr408);
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§pop();
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          §§push(_loc1_.§_-Ci§.hasEventListener(MouseEvent.CLICK));
                                       }
                                       §§goto(addr435);
                                    }
                                    §§goto(addr405);
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc7_ || Boolean(_loc2_))
                                    {
                                       _loc1_.§_-Ci§.removeEventListener(MouseEvent.CLICK,_loc1_.§do§);
                                       if(_loc6_)
                                       {
                                       }
                                       §§goto(addr435);
                                    }
                                    addr343:
                                    §§push(Boolean(_loc1_.§_-Cp§));
                                    §§push(Boolean(_loc1_.§_-Cp§));
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       addr354:
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(_loc7_ || Boolean(_loc1_))
                                          {
                                             §§push(_loc1_.§_-Cp§.hasEventListener(MouseEvent.CLICK));
                                          }
                                          §§goto(addr408);
                                       }
                                       if(§§pop())
                                       {
                                          _loc1_.§_-Cp§.removeEventListener(MouseEvent.CLICK,_loc1_.§_-Cj§);
                                       }
                                       §§push(Boolean(_loc1_.§_-9K§));
                                       §§push(Boolean(_loc1_.§_-9K§));
                                       if(_loc7_)
                                       {
                                       }
                                       §§goto(addr408);
                                    }
                                    §§goto(addr383);
                                 }
                                 §§push(Boolean(_loc1_.§_-AS§));
                                 §§push(Boolean(_loc1_.§_-AS§));
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                       }
                                       §§goto(addr408);
                                    }
                                    addr333:
                                    if(!§§pop())
                                    {
                                    }
                                    §§goto(addr343);
                                 }
                                 §§goto(addr354);
                              }
                              §§pop();
                              if(!_loc6_)
                              {
                                 §§goto(addr333);
                                 §§push(_loc1_.§_-AS§.hasEventListener(MouseEvent.CLICK));
                              }
                              §§goto(addr354);
                           }
                           §§pop().destroy();
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              _loc1_.§_-5-§ = null;
                              §§goto(addr237);
                           }
                        }
                        §§pop().destroy();
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           _loc1_.§_-AJ§ = null;
                           §§goto(addr200);
                        }
                        §§goto(addr435);
                        addr120:
                     }
                     _loc1_.§_-AS§.removeEventListener(MouseEvent.CLICK,_loc1_.§_-EJ§);
                     if(_loc7_)
                     {
                        §§goto(addr343);
                     }
                     §§goto(addr421);
                  }
                  while(true)
                  {
                     if(§§pop() >= _loc1_.§_-AU§.inside.numChildren)
                     {
                        if(_loc7_)
                        {
                           addr142:
                           §§push(0);
                        }
                        §§goto(addr343);
                     }
                     else
                     {
                        _loc1_.§_-AU§.inside["gamepanel" + (_loc3_ + 1)].removeEventListener(MouseEvent.CLICK,_loc1_.§_-Ax§);
                        _loc3_++;
                        §§goto(addr120);
                     }
                  }
               }
               catch(err:Error)
               {
                  §§goto(addr142);
               }
               return;
            }
         }
         if(_loc1_.§_-AU§)
         {
            §§goto(addr59);
         }
         §§goto(addr142);
      }
      
      public function getLabel() : String
      {
         var _loc1_:§_-2H§ = this;
         return _loc1_.data.label;
      }
      
      public function disableButtons(param1:Array = null, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§_-7M§ = null;
         var _loc4_:§_-2H§ = this;
         §§push(_loc4_.§_-AJ§);
         if(_loc8_ || param2)
         {
            §§push(§§pop());
            if(!(_loc7_ && param2))
            {
               §§push(§§pop());
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc8_ || Boolean(this))
                     {
                        §§push(param2);
                        if(_loc7_ && param2)
                        {
                        }
                     }
                     addr97:
                     _loc4_.§_-5-§.§_-49§();
                     addr98:
                     var _loc5_:int = 0;
                     while(_loc5_ < _loc4_.§_-BD§.numChildren)
                     {
                        _loc6_ = _loc4_.§_-BD§.getChildAt(_loc5_) as §_-7M§;
                        if(_loc8_ || param2)
                        {
                           §§push(param1);
                           if(_loc8_)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc7_ && param2))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                    }
                                 }
                                 addr147:
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr166:
                                 _loc5_++;
                                 continue;
                              }
                              §§pop();
                              if(_loc8_ || param3)
                              {
                                 §§push(param1);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr147);
                           §§push(§§pop().indexOf(_loc6_.getLabel()) > -1);
                        }
                        _loc6_.§_-49§();
                        if(!(_loc8_ || param3))
                        {
                           continue;
                        }
                        §§goto(addr147);
                     }
                     return;
                     addr95:
                  }
                  addr66:
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(_loc4_.§_-AJ§);
                     }
                  }
                  §§push(_loc4_.§_-5-§);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     §§push(§§pop());
                  }
                  §§goto(addr97);
               }
               if(§§pop())
               {
                  §§pop();
                  if(!_loc7_)
                  {
                     addr76:
                     §§push(param3);
                     if(_loc7_ && param2)
                     {
                     }
                  }
                  §§goto(addr98);
               }
               addr92:
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     §§goto(addr95);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr92);
            §§push(§§pop());
         }
         §§pop().§_-49§();
         if(!_loc7_)
         {
            §§goto(addr66);
         }
         §§goto(addr76);
      }
      
      public function enableButtons(param1:Array = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-7M§ = null;
         var _loc2_:§_-2H§ = this;
         if(!_loc6_)
         {
            §§push(_loc2_.§_-AJ§);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                  }
                  addr57:
                  _loc2_.§_-5-§.§_-3H§();
                  addr58:
                  var _loc3_:int = 0;
                  while(_loc3_ < _loc2_.§_-BD§.numChildren)
                  {
                     _loc4_ = _loc2_.§_-BD§.getChildAt(_loc3_) as §_-7M§;
                     if(_loc6_ && Boolean(param1))
                     {
                        continue;
                     }
                     §§push(param1);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(§§pop() == null);
                        if(_loc5_)
                        {
                           if(!§§pop())
                           {
                              if(_loc5_)
                              {
                              }
                           }
                           addr109:
                           if(§§pop())
                           {
                              if(_loc6_ && Boolean(param1))
                              {
                                 continue;
                              }
                              _loc4_.§_-3H§();
                              if(_loc6_ && Boolean(_loc2_))
                              {
                                 continue;
                              }
                           }
                           _loc3_++;
                           continue;
                        }
                        §§pop();
                        if(!_loc5_)
                        {
                           continue;
                        }
                        §§push(param1);
                     }
                     §§goto(addr109);
                     §§push(§§pop().indexOf(_loc4_.getLabel()) > -1);
                  }
                  return;
                  addr55:
               }
               addr43:
               §§push(_loc2_.§_-5-§);
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§goto(addr55);
                     }
                  }
                  §§goto(addr58);
               }
               §§goto(addr57);
            }
            addr40:
            §§pop().§_-3H§();
            if(!_loc6_)
            {
               §§goto(addr43);
            }
            §§goto(addr57);
         }
         §§goto(addr40);
         §§push(_loc2_.§_-AJ§);
      }
      
      public function setTitle(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-2H§ = this;
         if(_loc4_)
         {
            _loc2_.override.text = param1;
            if(_loc4_ || Boolean(param1))
            {
               _loc2_.override.height = _loc2_.override.textHeight + 4;
            }
         }
      }
      
      private function §_-0w§() : TextFormat
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§_-2H§ = this;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.font = §_-2w§.§_-04§;
         _loc2_.color = 11447982;
         _loc2_.size = 30;
         _loc2_.align = TextFormatAlign.CENTER;
         _loc2_.kerning = true;
         _loc2_.letterSpacing = -0.5;
         return _loc2_;
      }
      
      private function §_-Cl§() : TextFormat
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§_-2H§ = this;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.font = §_-2w§.§_-Dn§;
         _loc2_.color = §_-2w§.§_-0X§;
         _loc2_.size = §_-2w§.§_-4n§;
         _loc2_.bold = §_-2w§.§_-r§;
         if(!_loc3_)
         {
            _loc2_.align = TextFormatAlign.CENTER;
            _loc2_.kerning = true;
         }
         _loc2_.letterSpacing = 0;
         return _loc2_;
      }
   }
}

