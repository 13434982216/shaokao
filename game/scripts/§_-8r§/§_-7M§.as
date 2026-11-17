package §_-8r§
{
   import Playtomic.*;
   import §_-3O§.§_-7D§;
   import §_-5m§.*;
   import §_-Et§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.filters.GlowFilter;
   import flash.geom.*;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.*;
   import flash.utils.getDefinitionByName;
   
   public class §_-7M§ extends MovieClip
   {
      private static var §_-Ab§:Array;
      
      private static var §_-30§:Array;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      
      private static var §_-73§:Array = ["api_smallbutton_left","api_smallbutton_middle","api_smallbutton_right"];
      
      private static var §_-7V§:Array = ["api_largebutton_left","api_largebutton_middle","api_largebutton_right"];
      
      private static var §_-Ba§:Array = ["api_redbutton_left","api_redbutton_middle","api_redbutton_right"];
      
      if(_loc1_)
      {
         §_-Ab§ = ["api_smallbutton_left_overlay","api_smallbutton_middle_overlay","api_smallbutton_right_overlay"];
      }
      
      private static var §_-6q§:Array = ["api_largebutton_left_overlay","api_largebutton_middle_overlay","api_largebutton_right_overlay"];
      
      if(_loc1_)
      {
         §_-30§ = ["api_smallbutton_left_overlay","api_smallbutton_middle_overlay","api_smallbutton_right_overlay"];
      }
      
      private var label:String;
      
      private var size:String;
      
      private var type:String;
      
      private var §_-E§:String = null;
      
      private var §_-78§:*;
      
      private var §_-11§:Boolean = false;
      
      private var §_-27§:Boolean = false;
      
      private var §_-An§:Boolean = false;
      
      private var §if §:Boolean = false;
      
      private var §_-EN§:Number = 0;
      
      private var §_-02§:String;
      
      private var §_-6f§:Boolean = false;
      
      private var §_-8§:Number = 16;
      
      private var §_-1x§:Number = 23;
      
      private var §_-4x§:Number = 3;
      
      private var §_-A9§:Number = 3;
      
      private var §_-D9§:Number = 7;
      
      private var §_-Cr§:MovieClip;
      
      private var §_-9o§:MovieClip;
      
      private var §_-Ay§:TextField;
      
      private var §_-DT§:Boolean = true;
      
      private var §_-4F§:Boolean = false;
      
      private var §_-4w§:MovieClip = null;
      
      public function §_-7M§(param1:§_-7D§ = null, param2:String = null, param3:String = null, param4:String = "button", param5:String = null, param6:String = null, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:* = null, param11:Boolean = false, param12:Number = 0, param13:Boolean = false)
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(!(_loc16_ && Boolean(param3)))
         {
            super();
         }
         var _loc14_:§_-7M§ = this;
         if(param1 != null)
         {
            if(_loc15_ || Boolean(this))
            {
               _loc14_.label = param1.label;
               _loc14_.size = param1.size;
               _loc14_.type = param1.§_-03§;
               if(_loc15_ || Boolean(param1))
               {
                  _loc14_.§_-02§ = param1.§_-02§;
                  if(!(_loc16_ && Boolean(param2)))
                  {
                     _loc14_.§_-E§ = param1.§_-E§;
                     _loc14_.§_-27§ = param1.§_-27§;
                     _loc14_.§_-An§ = param1.§_-An§;
                     _loc14_.§if § = param1.§if §;
                     _loc14_.§_-78§ = param1.§_-78§;
                     if(!_loc16_)
                     {
                        _loc14_.§_-11§ = param1.§_-11§;
                        if(!(_loc16_ && Boolean(param1)))
                        {
                           §§push(_loc14_);
                           §§push(_loc14_.§_-11§);
                           if(_loc15_ || Boolean(param1))
                           {
                              §§push(!§§pop());
                           }
                           §§pop().§_-DT§ = §§pop();
                           if(_loc16_)
                           {
                           }
                           _loc14_.§_-EN§ = param12;
                           addr199:
                        }
                     }
                     addr209:
                     _loc14_.§_-4F§ = param13;
                     if(_loc16_)
                     {
                     }
                     §§goto(addr216);
                  }
               }
               §§goto(addr214);
            }
            _loc14_.§_-6f§ = param1.§_-6f§;
            _loc14_.§_-EN§ = param1.§_-EN§;
            if(!(_loc16_ && Boolean(param1)))
            {
               _loc14_.§_-4F§ = param1.§_-4F§;
               addr214:
               _loc14_.§_-8C§();
               §§goto(addr216);
            }
            else
            {
               addr177:
               _loc14_.§_-An§ = param8;
               if(_loc15_)
               {
                  _loc14_.§if § = param9;
                  if(!_loc16_)
                  {
                     _loc14_.§_-78§ = param10;
                  }
                  §§goto(addr199);
               }
               addr190:
               _loc14_.§_-11§ = param11;
               addr193:
               §§push(_loc14_);
               §§push(param11);
               if(!_loc16_)
               {
                  §§push(!§§pop());
               }
               §§pop().§_-DT§ = §§pop();
               §§goto(addr199);
            }
         }
         _loc14_.label = param2;
         if(_loc15_ || Boolean(param2))
         {
            _loc14_.size = param3;
            if(_loc15_)
            {
               _loc14_.type = param4;
               if(!(_loc16_ && Boolean(param2)))
               {
                  _loc14_.§_-02§ = param5;
               }
               §§goto(addr193);
            }
            §§goto(addr190);
         }
         _loc14_.§_-E§ = param6;
         if(_loc15_)
         {
            _loc14_.§_-27§ = param7;
            if(_loc16_)
            {
            }
            §§goto(addr177);
         }
         §§goto(addr209);
      }
      
      private function §_-8C§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc5_:Class = null;
         var _loc6_:Class = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Class = null;
         var _loc12_:Class = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:MovieClip = null;
         var _loc17_:MovieClip = null;
         var _loc18_:MovieClip = null;
         var _loc19_:MovieClip = null;
         var _loc1_:§_-7M§ = this;
         if(!(_loc21_ && Boolean(_loc2_)))
         {
            if(_loc1_.§_-An§)
            {
               _loc1_.§_-EN§ = 184;
               if(_loc21_)
               {
               }
               addr167:
               _loc1_.§_-Ay§.setTextFormat(_loc1_.§_-0w§(_loc1_.§_-11§));
               addr174:
               _loc1_.§_-Ay§.height = _loc1_.§_-Ay§.textHeight + 4;
               if(!(_loc21_ && _loc3_))
               {
                  addr189:
                  _loc1_.§_-K§(_loc1_.§_-11§);
               }
               addr193:
               var _loc3_:* = _loc1_.§_-Ay§.textWidth + 4 + _loc1_.§_-D9§ * 2;
               §§push(_loc1_.§_-EN§);
               if(!(_loc21_ && Boolean(this)))
               {
                  if(§§pop() > 0)
                  {
                     §§push(_loc1_.§_-EN§);
                     if(_loc21_ && Boolean(_loc3_))
                     {
                     }
                     addr233:
                     _loc3_ = §§pop();
                  }
                  §§push(_loc1_.size);
                  if(_loc20_ || Boolean(this))
                  {
                     if(§§pop() == "small")
                     {
                        if(!_loc21_)
                        {
                           _loc1_.§_-Ay§.width = Math.ceil(_loc3_ / _loc1_.§_-8§) * _loc1_.§_-8§;
                           _loc1_.§_-Ay§.x = 0;
                           if(!(_loc21_ && Boolean(this)))
                           {
                              _loc1_.§_-Ay§.y = _loc1_.§_-4x§;
                           }
                           addr367:
                           _loc1_.§_-4w§.visible = true;
                           addr371:
                           _loc1_.addChild(_loc1_.§_-4w§);
                           addr377:
                           var _loc4_:* = 1;
                           addr375:
                           if(_loc20_)
                           {
                              if(_loc1_.§_-27§)
                              {
                                 if(!_loc21_)
                                 {
                                    §§push(Math.ceil(_loc1_.§_-Ay§.width / this.§_-8§) - 2);
                                    if(!_loc21_)
                                    {
                                       §§push(§§pop());
                                    }
                                    _loc4_ = §§pop();
                                 }
                              }
                              else
                              {
                                 §§push(_loc1_.size);
                                 if(_loc20_ || Boolean(_loc2_))
                                 {
                                    if(§§pop() == "small")
                                    {
                                       if(!_loc21_)
                                       {
                                          §§push(Math.ceil(_loc1_.§_-Ay§.width / this.§_-8§) - 2);
                                          if(!(_loc21_ && Boolean(_loc3_)))
                                          {
                                             §§push(§§pop());
                                             if(_loc21_)
                                             {
                                             }
                                             addr1006:
                                             _loc4_ = §§pop();
                                             addr1007:
                                             _loc5_ = getDefinitionByName(§_-7M§.§_-7V§[0]) as Class;
                                             _loc8_ = new _loc5_();
                                             _loc11_ = getDefinitionByName(§_-7M§.§_-6q§[0]) as Class;
                                             _loc14_ = new _loc11_();
                                             _loc1_.§_-Cr§.addChild(_loc8_);
                                             _loc1_.§_-9o§.addChild(_loc14_);
                                             if(_loc20_ || Boolean(_loc2_))
                                             {
                                                §§push(_loc1_.§_-4F§);
                                                if(_loc20_ || Boolean(_loc1_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc17_ = new _loc11_();
                                                      if(!_loc21_)
                                                      {
                                                         _loc1_.§_-4w§.inside.addChild(_loc17_);
                                                      }
                                                   }
                                                   §§push(_loc1_.§_-11§);
                                                }
                                                if(§§pop())
                                                {
                                                   _loc8_.gotoAndStop("disabled");
                                                }
                                                else
                                                {
                                                   _loc8_.gotoAndStop("up");
                                                }
                                             }
                                             _loc6_ = getDefinitionByName(§_-7M§.§_-7V§[1]) as Class;
                                             _loc13_ = getDefinitionByName(§_-7M§.§_-6q§[1]) as Class;
                                             _loc15_ = new _loc13_();
                                             _loc15_.x = _loc1_.§_-1x§;
                                             if(!_loc21_)
                                             {
                                                _loc15_.width = _loc1_.§_-1x§ * _loc4_;
                                                if(!_loc21_)
                                                {
                                                   _loc1_.§_-9o§.addChild(_loc15_);
                                                   if(_loc20_)
                                                   {
                                                      if(_loc1_.§_-4F§)
                                                      {
                                                         if(_loc20_)
                                                         {
                                                            _loc18_ = new _loc13_();
                                                            _loc18_.x = _loc1_.§_-1x§;
                                                            if(!(_loc21_ && Boolean(_loc3_)))
                                                            {
                                                               _loc18_.width = _loc1_.§_-1x§ * _loc4_;
                                                               if(_loc20_ || Boolean(this))
                                                               {
                                                               }
                                                            }
                                                            _loc1_.§_-4w§.inside.addChild(_loc18_);
                                                         }
                                                      }
                                                      §§push(0);
                                                      if(!_loc21_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc20_)
                                                         {
                                                         }
                                                      }
                                                      loop0:
                                                      while(§§pop() < _loc4_)
                                                      {
                                                         _loc9_ = new _loc6_();
                                                         _loc9_.x = _loc1_.§_-1x§ + _loc2_ * _loc1_.§_-1x§;
                                                         if(!(_loc21_ && Boolean(_loc1_)))
                                                         {
                                                            _loc1_.§_-Cr§.addChild(_loc9_);
                                                            if(!_loc21_)
                                                            {
                                                               addr1232:
                                                               if(_loc1_.§_-11§)
                                                               {
                                                                  if(!_loc21_)
                                                                  {
                                                                     _loc9_.gotoAndStop("disabled");
                                                                     if(_loc21_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc9_.gotoAndStop("up");
                                                                  if(_loc21_ && Boolean(_loc2_))
                                                                  {
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr1232:
                                                            }
                                                         }
                                                         §§push(_loc2_);
                                                         if(_loc20_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!(_loc21_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                         _loc2_ = §§pop();
                                                         §§goto(addr1232);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1232);
                                             }
                                             _loc7_ = getDefinitionByName(§_-7M§.§_-7V§[2]) as Class;
                                             _loc10_ = new _loc7_();
                                             _loc12_ = getDefinitionByName(§_-7M§.§_-6q§[2]) as Class;
                                             _loc16_ = new _loc12_();
                                             _loc10_.x = _loc1_.§_-1x§ * (_loc4_ + 1);
                                             if(_loc20_ || Boolean(_loc1_))
                                             {
                                                _loc16_.x = _loc10_.x;
                                                if(_loc20_ || Boolean(_loc2_))
                                                {
                                                   _loc1_.§_-Cr§.addChild(_loc10_);
                                                   if(!_loc21_)
                                                   {
                                                      _loc1_.§_-9o§.addChild(_loc16_);
                                                   }
                                                   addr1322:
                                                   if(_loc1_.§_-4F§)
                                                   {
                                                      addr1325:
                                                      _loc19_ = new _loc12_();
                                                      _loc19_.x = _loc10_.x;
                                                      if(_loc20_)
                                                      {
                                                         _loc1_.§_-4w§.inside.addChild(_loc19_);
                                                      }
                                                   }
                                                }
                                                §§push(_loc1_.§_-11§);
                                                if(!(_loc21_ && Boolean(_loc3_)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc21_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc10_.gotoAndStop("up");
                                                      if(!_loc21_)
                                                      {
                                                         §§goto(addr1322);
                                                      }
                                                   }
                                                   §§goto(addr1325);
                                                }
                                                §§goto(addr1322);
                                             }
                                             _loc10_.gotoAndStop("disabled");
                                             if(_loc20_)
                                             {
                                                §§goto(addr1322);
                                             }
                                             §§goto(addr1325);
                                             addr1005:
                                          }
                                          _loc4_ = §§pop();
                                          if(!_loc21_)
                                          {
                                             _loc5_ = getDefinitionByName(§_-7M§.§_-73§[0]) as Class;
                                             _loc8_ = new _loc5_();
                                             _loc11_ = getDefinitionByName(§_-7M§.§_-Ab§[0]) as Class;
                                             _loc14_ = new _loc11_();
                                             if(!_loc21_)
                                             {
                                                _loc1_.§_-Cr§.addChild(_loc8_);
                                                if(_loc20_ || Boolean(_loc3_))
                                                {
                                                   _loc1_.§_-9o§.addChild(_loc14_);
                                                   if(_loc20_ || Boolean(_loc3_))
                                                   {
                                                      if(_loc1_.§_-11§)
                                                      {
                                                         if(_loc21_ && Boolean(_loc2_))
                                                         {
                                                         }
                                                         addr771:
                                                      }
                                                      else
                                                      {
                                                         _loc8_.gotoAndStop("up");
                                                      }
                                                   }
                                                }
                                                addr775:
                                                _loc6_ = getDefinitionByName(§_-7M§.§_-73§[1]) as Class;
                                                _loc13_ = getDefinitionByName(§_-7M§.§_-Ab§[1]) as Class;
                                                _loc15_ = new _loc13_();
                                                _loc15_.x = _loc1_.§_-8§;
                                                if(_loc20_)
                                                {
                                                   _loc15_.width = _loc1_.§_-8§ * _loc4_;
                                                   if(_loc20_)
                                                   {
                                                      _loc1_.§_-9o§.addChild(_loc15_);
                                                      if(_loc21_ && Boolean(_loc2_))
                                                      {
                                                      }
                                                      addr911:
                                                      _loc7_ = getDefinitionByName(§_-7M§.§_-73§[2]) as Class;
                                                      _loc10_ = new _loc7_();
                                                      _loc12_ = getDefinitionByName(§_-7M§.§_-Ab§[2]) as Class;
                                                      _loc16_ = new _loc12_();
                                                      _loc10_.x = _loc1_.§_-8§ * (_loc4_ + 1);
                                                      if(_loc20_ || Boolean(_loc1_))
                                                      {
                                                         _loc16_.x = _loc10_.x;
                                                         _loc1_.§_-Cr§.addChild(_loc10_);
                                                         _loc1_.§_-9o§.addChild(_loc16_);
                                                         if(_loc1_.§_-11§)
                                                         {
                                                            _loc10_.gotoAndStop("disabled");
                                                         }
                                                         else
                                                         {
                                                            _loc10_.gotoAndStop("up");
                                                         }
                                                         addr976:
                                                      }
                                                      §§goto(addr976);
                                                   }
                                                }
                                                §§push(0);
                                                if(_loc20_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc21_ && Boolean(_loc1_)))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                      }
                                                   }
                                                   §§goto(addr911);
                                                }
                                                while(§§pop() < _loc4_)
                                                {
                                                   _loc9_ = new _loc6_();
                                                   _loc9_.x = _loc1_.§_-8§ + _loc2_ * _loc1_.§_-8§;
                                                   if(!_loc21_)
                                                   {
                                                      _loc1_.§_-Cr§.addChild(_loc9_);
                                                      if(!(_loc21_ && Boolean(_loc2_)))
                                                      {
                                                         if(_loc1_.§_-11§)
                                                         {
                                                            if(!(_loc21_ && Boolean(_loc3_)))
                                                            {
                                                               _loc9_.gotoAndStop("disabled");
                                                               if(_loc21_ && Boolean(_loc1_))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc9_.gotoAndStop("up");
                                                            if(_loc21_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      addr890:
                                                      §§push(_loc2_);
                                                      if(!(_loc21_ && Boolean(_loc1_)))
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc21_ && Boolean(_loc1_))
                                                         {
                                                         }
                                                         addr907:
                                                         _loc2_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr907);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr890);
                                                }
                                                §§goto(addr911);
                                             }
                                             _loc8_.gotoAndStop("disabled");
                                             if(_loc20_)
                                             {
                                                §§goto(addr771);
                                             }
                                             §§goto(addr775);
                                          }
                                       }
                                       addr988:
                                       §§push(Math.ceil(_loc1_.§_-Ay§.width / this.§_-1x§) - 2);
                                       if(_loc20_ || Boolean(_loc2_))
                                       {
                                          §§goto(addr1005);
                                       }
                                       §§goto(addr1006);
                                    }
                                    else
                                    {
                                       §§push(_loc1_.size);
                                    }
                                 }
                                 if(§§pop() == "large")
                                 {
                                    if(_loc20_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr988);
                                    }
                                    §§goto(addr1007);
                                 }
                              }
                              addr1347:
                              addr1349:
                              if(_loc1_.§_-4F§)
                              {
                              }
                              §§goto(addr1350);
                           }
                           _loc5_ = getDefinitionByName(§_-7M§.§_-Ba§[0]) as Class;
                           _loc8_ = new _loc5_();
                           _loc11_ = getDefinitionByName(§_-7M§.§_-Ab§[0]) as Class;
                           _loc14_ = new _loc11_();
                           if(_loc20_)
                           {
                              _loc1_.§_-Cr§.addChild(_loc8_);
                              if(!_loc21_)
                              {
                                 _loc1_.§_-9o§.addChild(_loc14_);
                                 if(_loc20_ || Boolean(this))
                                 {
                                 }
                              }
                              if(_loc1_.§_-11§)
                              {
                                 if(!(_loc21_ && Boolean(_loc1_)))
                                 {
                                    _loc8_.gotoAndStop("disabled");
                                    if(_loc21_ && Boolean(_loc3_))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 _loc8_.gotoAndStop("up");
                              }
                           }
                           _loc6_ = getDefinitionByName(§_-7M§.§_-Ba§[1]) as Class;
                           _loc13_ = getDefinitionByName(§_-7M§.§_-Ab§[1]) as Class;
                           _loc15_ = new _loc13_();
                           _loc15_.x = _loc1_.§_-8§;
                           if(!_loc21_)
                           {
                              _loc15_.width = _loc1_.§_-8§ * _loc4_;
                              if(_loc20_)
                              {
                                 _loc1_.§_-9o§.addChild(_loc15_);
                                 if(_loc20_)
                                 {
                                 }
                              }
                              addr517:
                              while(_loc2_ < _loc4_)
                              {
                                 _loc9_ = new _loc6_();
                                 _loc9_.x = _loc1_.§_-8§ + _loc2_ * _loc1_.§_-8§;
                                 if(_loc21_)
                                 {
                                    continue;
                                 }
                                 _loc1_.§_-Cr§.addChild(_loc9_);
                                 if(!_loc21_)
                                 {
                                    if(_loc1_.§_-11§)
                                    {
                                       if(_loc21_ && Boolean(_loc1_))
                                       {
                                       }
                                       addr555:
                                    }
                                    else
                                    {
                                       _loc9_.gotoAndStop("up");
                                       if(!(_loc20_ || Boolean(this)))
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(_loc2_);
                                    if(!(_loc21_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop() + 1);
                                       if(!(_loc21_ && Boolean(this)))
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    continue;
                                 }
                                 _loc9_.gotoAndStop("disabled");
                                 if(!_loc20_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr555);
                              }
                              _loc7_ = getDefinitionByName(§_-7M§.§_-Ba§[2]) as Class;
                              _loc10_ = new _loc7_();
                              _loc12_ = getDefinitionByName(§_-7M§.§_-Ab§[2]) as Class;
                              _loc16_ = new _loc12_();
                              _loc10_.x = _loc1_.§_-8§ * (_loc4_ + 1);
                              if(_loc20_ || Boolean(this))
                              {
                                 _loc16_.x = _loc10_.x;
                                 if(!_loc21_)
                                 {
                                    _loc1_.§_-Cr§.addChild(_loc10_);
                                    _loc1_.§_-9o§.addChild(_loc16_);
                                 }
                                 addr1350:
                                 return;
                              }
                              §§push(_loc1_.§_-11§);
                              if(!_loc21_)
                              {
                                 if(§§pop())
                                 {
                                    _loc10_.gotoAndStop("disabled");
                                    if(_loc20_)
                                    {
                                    }
                                    addr660:
                                    §§goto(addr1347);
                                 }
                                 else
                                 {
                                    _loc10_.gotoAndStop("up");
                                    if(_loc20_)
                                    {
                                       §§goto(addr660);
                                    }
                                 }
                                 §§goto(addr1347);
                              }
                              §§goto(addr1349);
                           }
                           _loc2_ = 0;
                           §§goto(addr517);
                        }
                        addr346:
                        _loc1_.addChild(_loc1_.§_-9o§);
                        if(_loc1_.§_-4F§)
                        {
                           addr353:
                           _loc1_.§_-4w§ = new api_button_flasher();
                           addr357:
                           _loc1_.§_-4w§.blendMode = "overlay";
                           if(!_loc21_)
                           {
                              _loc1_.§_-4w§.alpha = 0.4;
                              §§goto(addr367);
                           }
                           §§goto(addr371);
                        }
                        §§goto(addr375);
                     }
                     else
                     {
                        §§push(_loc1_.size);
                     }
                     addr305:
                     _loc1_.§_-Cr§ = new MovieClip();
                     if(!_loc21_)
                     {
                        _loc1_.§_-9o§ = new MovieClip();
                        addr315:
                        _loc1_.§_-9o§.blendMode = "overlay";
                     }
                     _loc1_.§_-9o§.alpha = 0.5;
                     _loc1_.§_-9o§.visible = false;
                     if(!(_loc21_ && Boolean(this)))
                     {
                        _loc1_.addChild(_loc1_.§_-Cr§);
                        if(!_loc21_)
                        {
                           _loc1_.addChild(_loc1_.§_-Ay§);
                           if(!_loc21_)
                           {
                              §§goto(addr346);
                           }
                           §§goto(addr357);
                        }
                        §§goto(addr346);
                     }
                     §§goto(addr353);
                  }
                  if(§§pop() == "large")
                  {
                     _loc1_.§_-Ay§.width = Math.ceil(_loc3_ / _loc1_.§_-1x§) * _loc1_.§_-1x§;
                     _loc1_.§_-Ay§.x = 0;
                     if(!_loc21_)
                     {
                        _loc1_.§_-Ay§.y = _loc1_.§_-A9§;
                        if(_loc21_)
                        {
                        }
                        §§goto(addr315);
                     }
                     §§goto(addr346);
                  }
                  §§goto(addr305);
               }
               §§push(§§pop());
               if(_loc20_ || Boolean(_loc2_))
               {
                  §§goto(addr233);
               }
               §§goto(addr377);
            }
            _loc1_.buttonMode = true;
            if(_loc20_ || Boolean(this))
            {
               _loc1_.useHandCursor = true;
               _loc1_.mouseEnabled = true;
               if(_loc20_ || Boolean(_loc2_))
               {
               }
               §§goto(addr174);
            }
            _loc1_.mouseChildren = false;
            _loc1_.tabEnabled = false;
            if(_loc20_ || Boolean(_loc1_))
            {
               _loc1_.addEventListener(MouseEvent.CLICK,_loc1_.§_-Bn§);
               if(_loc20_)
               {
                  _loc1_.addEventListener(MouseEvent.ROLL_OVER,_loc1_.§_-65§);
                  _loc1_.addEventListener(MouseEvent.ROLL_OUT,_loc1_.§_-6d§);
                  _loc1_.§_-Ay§ = new TextField();
               }
            }
            §§goto(addr193);
         }
         _loc1_.§_-Ay§.embedFonts = true;
         _loc1_.§_-Ay§.antiAliasType = AntiAliasType.ADVANCED;
         if(_loc20_)
         {
            _loc1_.§_-Ay§.gridFitType = GridFitType.SUBPIXEL;
            _loc1_.§_-Ay§.wordWrap = false;
            _loc1_.§_-Ay§.multiline = false;
            _loc1_.§_-Ay§.text = _loc1_.label;
            §§goto(addr167);
         }
         §§goto(addr189);
      }
      
      private function §_-K§(param1:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:GlowFilter = null;
         var _loc2_:§_-7M§ = this;
         if(_loc5_ || Boolean(_loc3_))
         {
            if(param1)
            {
               if(_loc4_)
               {
               }
               addr35:
            }
            else
            {
               _loc3_ = new GlowFilter(16774818,1,2,2,255);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  if(_loc2_.§_-27§)
                  {
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        _loc3_.color = 15258579;
                        if(_loc5_ || Boolean(_loc3_))
                        {
                        }
                     }
                  }
               }
               _loc2_.§_-Ay§.filters = [_loc3_];
            }
            return;
         }
         _loc2_.§_-Ay§.filters = [];
         §§goto(addr35);
      }
      
      private function §_-0w§(param1:Boolean = false) : TextFormat
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-7M§ = this;
         var _loc3_:TextFormat = new TextFormat();
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc3_.font = §_-2w§.§_-04§;
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(param1);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     _loc3_.color = §_-2w§.§_-EU§;
                  }
                  else
                  {
                     §§push(_loc2_.§_-27§);
                  }
                  addr67:
                  if(_loc2_.size == "large")
                  {
                     if(_loc5_ || param1)
                     {
                        _loc3_.size = §_-2w§.§_-5K§;
                        if(_loc5_)
                        {
                           addr96:
                           _loc3_.bold = §_-2w§.§_-1W§;
                           if(_loc5_ || Boolean(this))
                           {
                           }
                        }
                     }
                     _loc3_.align = TextFormatAlign.CENTER;
                     if(_loc4_ && Boolean(_loc2_))
                     {
                     }
                     §§goto(addr133);
                  }
                  else
                  {
                     _loc3_.size = §_-2w§.§_-5B§;
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§goto(addr96);
                     }
                  }
               }
               if(§§pop())
               {
                  _loc3_.color = §_-2w§.§_-34§;
               }
               else
               {
                  _loc3_.color = §_-2w§.§_-8c§;
               }
               §§goto(addr67);
            }
            _loc3_.kerning = true;
            if(_loc4_)
            {
            }
            §§goto(addr133);
         }
         _loc3_.letterSpacing = -0.5;
         addr133:
         return _loc3_;
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-7M§ = this;
         §§push(Boolean(_loc1_.parent));
         if(!_loc2_)
         {
            if(§§pop())
            {
               if(_loc3_ || Boolean(this))
               {
                  §§pop();
                  §§push(_loc1_.parent.contains(_loc1_));
               }
            }
         }
         if(§§pop())
         {
            _loc1_.parent.removeChild(_loc1_);
            if(_loc2_ && Boolean(_loc1_))
            {
            }
            §§goto(addr76);
         }
         _loc1_.removeChild(_loc1_.§_-Cr§);
         if(!_loc2_)
         {
            _loc1_.removeChild(_loc1_.§_-9o§);
            _loc1_.removeChild(_loc1_.§_-Ay§);
            if(_loc1_.§_-4w§ != null)
            {
               if(_loc3_)
               {
                  addr76:
                  _loc1_.removeChild(_loc1_.§_-4w§);
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.§_-4w§ = null;
                     addr90:
                     _loc1_.§_-Cr§ = null;
                     _loc1_.§_-9o§ = null;
                     _loc1_.removeEventListener(MouseEvent.ROLL_OVER,_loc1_.§_-65§);
                     if(!_loc2_)
                     {
                        _loc1_.removeEventListener(MouseEvent.ROLL_OUT,_loc1_.§_-6d§);
                        addr104:
                     }
                  }
                  _loc1_.removeEventListener(MouseEvent.CLICK,_loc1_.§_-Bn§);
                  return;
               }
            }
            §§goto(addr90);
         }
         §§goto(addr104);
      }
      
      private function §_-Bn§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-7M§ = this;
         if(!_loc4_)
         {
            §§push(_loc2_.§_-DT§);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§goto(addr108);
            }
            if(§§pop())
            {
               Link.Open(_loc2_.§_-E§,_loc2_.label,"LinkButtons");
               if(!(_loc3_ || Boolean(_loc2_)))
               {
                  §§goto(addr89);
               }
            }
            else
            {
               navigateToURL(new URLRequest(_loc2_.§_-E§),"_blank");
               if(_loc3_ || _loc3_)
               {
               }
            }
            §§goto(addr108);
         }
         addr108:
         if(§§pop())
         {
            if(!_loc4_)
            {
               §§push(_loc2_.type);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  if(§§pop() != "link")
                  {
                     §§push(_loc2_.type);
                     if(!_loc4_)
                     {
                        if(§§pop() == "button")
                        {
                           if(!_loc4_)
                           {
                              dispatchEvent(new MenuButtonEvent(_loc2_.§_-02§,true));
                              addr89:
                           }
                        }
                        else
                        {
                           §§push(_loc2_.type);
                        }
                     }
                  }
               }
               if(§§pop() == "custom")
               {
               }
            }
            §§push(_loc2_.§_-6f§);
         }
      }
      
      private function §_-65§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-7M§ = this;
         if(_loc4_ || Boolean(this))
         {
            §§push(_loc2_.§_-DT§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_.§_-9o§.visible = true;
                     if(_loc4_)
                     {
                        addr70:
                        §§push(_loc2_.§_-4F§);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                           }
                           addr69:
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                     }
                     addr85:
                     _loc2_.§_-4w§.visible = false;
                  }
               }
               return;
            }
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§pop();
                  if(_loc3_)
                  {
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr70);
         }
         §§push(_loc2_.§_-4w§ == null);
         if(!_loc3_)
         {
            §§goto(addr69);
         }
         §§goto(addr70);
      }
      
      private function §_-6d§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-7M§ = this;
         if(_loc3_)
         {
            §§push(_loc2_.§_-DT§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     _loc2_.§_-9o§.visible = false;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(_loc2_.§_-4F§);
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                 }
                                 addr73:
                                 §§push(!§§pop());
                              }
                           }
                           §§pop();
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr74);
         }
         §§push(_loc2_.§_-4w§ == null);
         if(!_loc4_)
         {
            §§goto(addr73);
         }
         addr74:
         if(§§pop())
         {
            if(_loc3_ || _loc3_)
            {
               _loc2_.§_-4w§.visible = true;
            }
         }
         addr93:
      }
      
      public function §_-3H§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§_-7M§ = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.§_-DT§ = true;
            if(_loc4_ && _loc3_)
            {
            }
            §§goto(addr49);
         }
         _loc1_.§_-Ay§.setTextFormat(_loc1_.§_-0w§());
         if(!_loc4_)
         {
            _loc1_.§_-K§();
         }
         addr49:
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.§_-Cr§.numChildren)
         {
            MovieClip(_loc1_.§_-Cr§.getChildAt(_loc2_)).gotoAndStop("up");
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc2_++;
               if(_loc4_ && Boolean(_loc2_))
               {
                  break;
               }
            }
         }
      }
      
      public function §_-49§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§_-7M§ = this;
         if(!_loc3_)
         {
            _loc1_.§_-DT§ = false;
            if(!_loc3_)
            {
               _loc1_.§_-9o§.visible = false;
               if(_loc3_)
               {
               }
               §§goto(addr53);
            }
            _loc1_.§_-Ay§.setTextFormat(_loc1_.§_-0w§(true));
            if(_loc4_ || _loc3_)
            {
            }
            §§goto(addr53);
         }
         _loc1_.§_-K§(true);
         addr53:
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.§_-Cr§.numChildren)
         {
            MovieClip(_loc1_.§_-Cr§.getChildAt(_loc2_)).gotoAndStop("disabled");
            if(_loc4_)
            {
               _loc2_++;
               if(_loc3_ && Boolean(_loc2_))
               {
                  break;
               }
            }
         }
      }
      
      public function getLabel() : String
      {
         var _loc1_:§_-7M§ = this;
         return _loc1_.label;
      }
   }
}

