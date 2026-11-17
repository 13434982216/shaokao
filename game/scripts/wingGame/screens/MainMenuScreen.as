package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-8r§.§_-7M§;
   import §_-C2§.§_-0i§;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-9m§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.getDefinitionByName;
   import wingGame.data.CustomerData;
   import wingGame.data.GameData;
   import wingGame.data.UserData;
   import wingGame.managers.ChallengeManager;
   
   public class MainMenuScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      private var params:Object;
      
      private var confirmYesButton:§_-7M§;
      
      private var confirmNoButton:§_-7M§;
      
      public var currentSection:String = "";
      
      public var customerThumbClips:Array;
      
      public var customerThumbBitmaps:Array;
      
      public var customerThumbBMP:Array;
      
      public var currentCustomer:Number = 1;
      
      public var currentCustomerPage:Number = 1;
      
      public var totalCustomerPages:Number = 1;
      
      public var customerTweenSpeed:Number = 4;
      
      public var customerStartX:Number = 155;
      
      public var customerClip:MovieClip;
      
      public var backdropBitmap:Bitmap;
      
      private var medalsPage:Number = 0;
      
      private var medalsPerPage:Number = 10;
      
      private var medalsDirection:String = "next";
      
      private var medalsTransitioning:Boolean = true;
      
      private var papalouieLink:String = "http://www.flipline.com/games/papalouie/";
      
      private var pizzeriaLink:String = "http://www.flipline.com/games/papaspizzeria/";
      
      private var burgeriaLink:String = "http://www.flipline.com/games/papasburgeria/";
      
      private var tacomiaLink:String = "http://www.flipline.com/games/papastacomia/";
      
      private var freezeriaLink:String = "http://www.flipline.com/games/papasfreezeria/";
      
      private var pancakeriaLink:String = "http://www.flipline.com/games/papaspancakeria/";
      
      private var useWhichLink:String = "";
      
      private var shouldShowPlayNow:Boolean = false;
      
      private var playnowPadX:Number = 10;
      
      public var editor:CharacterEditorScreen;
      
      public function MainMenuScreen(param1:§_-BY§, param2:MovieClip, param3:Object = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.customerThumbClips = [];
         this.customerThumbBitmaps = [];
         this.customerThumbBMP = [];
         if(!_loc5_)
         {
            super();
            this.gameObj = param1;
            if(_loc5_ && Boolean(param1))
            {
            }
            §§goto(addr53);
         }
         this.container = param2;
         addr53:
         this.params = param3;
         this.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MainMenuScreen = this;
         if(!_loc2_)
         {
            _loc1_.clip = new mainmenuMC();
            _loc1_.container.addChild(_loc1_.clip);
            _loc1_.container.addEventListener("clickInfo",_loc1_.clickInfo);
            _loc1_.container.addEventListener("clickCustomers",_loc1_.clickCustomers);
            if(!_loc2_)
            {
               _loc1_.container.addEventListener("clickMedals",_loc1_.clickMedals);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.container.addEventListener("clickCredits",_loc1_.clickCredits);
                  if(_loc2_ && Boolean(this))
                  {
                  }
                  §§goto(addr130);
               }
               §§goto(addr112);
            }
            _loc1_.container.addEventListener("clickHelp",_loc1_.clickHelp);
            if(_loc3_)
            {
               _loc1_.container.addEventListener("clickBackToGame",_loc1_.clickBackToGame);
               if(_loc3_)
               {
                  _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
               }
               §§goto(addr130);
            }
            §§goto(addr108);
         }
         _loc1_.setupInfo();
         if(_loc3_ || _loc3_)
         {
            _loc1_.setupCustomers();
            addr108:
            _loc1_.setupMedals();
            _loc1_.setupHelp();
            §§goto(addr112);
         }
         addr112:
         _loc1_.setupCredits();
         _loc1_.setupConfirmQuit();
         if(_loc3_ || _loc2_)
         {
            addr130:
            _loc1_.setSection("info");
            §§goto(addr133);
         }
         addr133:
         _loc1_.gameObj.soundManager.switchMusic("none");
      }
      
      public function clickInfo(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(!_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc3_)
            {
            }
            §§goto(addr35);
         }
         _loc2_.setSection("info");
         addr35:
      }
      
      public function clickCustomers(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(_loc4_ || Boolean(param1))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc4_ || _loc3_)
            {
               _loc2_.setSection("customers");
            }
         }
      }
      
      public function clickMedals(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(!_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.setSection("medals");
            }
         }
      }
      
      public function clickHelp(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc4_)
            {
            }
            §§goto(addr36);
         }
         _loc2_.setSection("help");
         addr36:
      }
      
      public function clickCredits(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.setSection("credits");
            }
         }
      }
      
      public function clickBackToGame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(_loc4_ || _loc3_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc4_)
            {
            }
            §§goto(addr47);
         }
         _loc2_.closeMainMenuScreen();
         addr47:
      }
      
      public function clickQuit(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(!_loc3_)
         {
            _loc2_.clip.confirmquit.visible = true;
            if(_loc3_)
            {
            }
            addr56:
            _loc2_.gameObj.§_-4P§.api.disableButtons();
            addr59:
            return;
            addr54:
         }
         §§push(_loc2_.gameObj);
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().soundManager.playSound("buttonclick.wav");
            if(_loc4_)
            {
               §§goto(addr54);
            }
            §§goto(addr59);
         }
         §§goto(addr56);
      }
      
      public function clickConfirmQuit(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(!_loc4_)
         {
            _loc2_.clip.confirmquit.visible = false;
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               if(_loc4_ && _loc3_)
               {
               }
               §§goto(addr59);
            }
         }
         _loc2_.closeMainMenuScreen(true);
         addr59:
      }
      
      public function clickCancelQuit(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(_loc3_ || _loc3_)
         {
            _loc2_.clip.confirmquit.visible = false;
            if(_loc3_ || Boolean(this))
            {
               §§push(_loc2_.gameObj);
               if(_loc3_ || Boolean(param1))
               {
                  §§pop().soundManager.playSound("buttonclick.wav");
                  if(_loc4_)
                  {
                  }
               }
               addr65:
               §§pop().§_-4P§.api.enableButtons();
            }
            return;
         }
         §§goto(addr65);
         §§push(_loc2_.gameObj);
      }
      
      public function setSection(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(param1 != _loc2_.currentSection)
         {
            _loc2_.currentSection = param1;
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_.clip.info.visible = false;
               _loc2_.clip.customers.visible = false;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.clip.credits.visible = false;
                  _loc2_.clip.help.visible = false;
                  if(_loc4_ || Boolean(param1))
                  {
                     _loc2_.clip.medals.visible = false;
                     addr314:
                     if(!_loc3_)
                     {
                        §§push(_loc2_.currentSection == "");
                        if(!_loc3_)
                        {
                           §§push(!§§pop());
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(_loc2_.currentSection == "none");
                                       if(_loc4_ || Boolean(param1))
                                       {
                                       }
                                    }
                                    addr161:
                                    §§push(_loc2_.gameObj);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop().§_-4P§.api);
                                       if(_loc4_)
                                       {
                                          addr176:
                                          §§pop().§_-h§("Menu_Info_Total","Total_Menu_Visits");
                                       }
                                       else
                                       {
                                          addr335:
                                          §§pop().§_-h§("NoticedBadgesScreen","Screens",true);
                                          §§push(_loc2_.gameObj.userData);
                                       }
                                    }
                                    else
                                    {
                                       addr200:
                                       §§pop().§_-4P§.api.§_-h§("Menu_Customers_Total","Total_Menu_Visits");
                                       if(_loc4_ || _loc3_)
                                       {
                                       }
                                    }
                                    §§pop().hasVisitedBadgesScreen = true;
                                 }
                                 §§push(!§§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                              }
                           }
                           addr323:
                           if(!§§pop())
                           {
                              addr324:
                              §§goto(addr335);
                              §§push(_loc2_.gameObj.§_-4P§.api);
                           }
                        }
                        if(§§pop())
                        {
                           _loc2_.clip[_loc2_.currentSection].visible = true;
                        }
                        §§push(_loc2_.gameObj.§_-4P§);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(§§pop().api);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              §§pop().§_-CY§(_loc2_.getSectionTitle());
                              _loc2_.clip.fader.gotoAndPlay("fadein");
                              §§push(param1);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 if(§§pop() == "info")
                                 {
                                    §§push(_loc2_.gameObj);
                                    if(_loc4_)
                                    {
                                       §§pop().§_-4P§.api.§_-h§("Menu_Info","Unique_Menu_Visits",true);
                                       §§goto(addr161);
                                    }
                                    addr265:
                                    §§pop().§_-4P§.api.§_-h§("Menu_Credits_Total","Total_Menu_Visits");
                                 }
                                 else if(param1 != "customers")
                                 {
                                    if(param1 != "help")
                                    {
                                       §§push(param1);
                                       if(_loc3_ && Boolean(_loc2_))
                                       {
                                       }
                                       addr272:
                                       if(§§pop() == "badges")
                                       {
                                          addr276:
                                          §§push(_loc2_.gameObj.§_-4P§);
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             addr307:
                                             §§push(§§pop().api);
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                addr292:
                                                §§pop().§_-h§("Menu_Badges","Unique_Menu_Visits",true);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(_loc2_.gameObj.§_-4P§);
                                                }
                                             }
                                             §§pop().§_-h§("Menu_Badges_Total","Total_Menu_Visits");
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                          §§goto(addr324);
                                       }
                                    }
                                 }
                              }
                              if(§§pop() == "credits")
                              {
                                 addr256:
                                 §§push(_loc2_.gameObj.§_-4P§.api);
                                 if(_loc4_)
                                 {
                                    §§pop().§_-h§("Menu_Credits","Unique_Menu_Visits",true);
                                 }
                                 else
                                 {
                                    §§goto(addr292);
                                 }
                              }
                              else
                              {
                                 §§goto(addr272);
                                 §§push(param1);
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr307);
                        §§push(§§pop().api);
                     }
                     §§push(_loc2_.gameObj.userData);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§goto(addr323);
                        §§push(§§pop().hasVisitedBadgesScreen);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr265);
                  §§push(_loc2_.gameObj);
               }
               §§push(_loc2_.gameObj);
               if(!_loc3_)
               {
                  §§push(§§pop().§_-4P§);
                  if(_loc4_ || _loc3_)
                  {
                     §§pop().api.§_-h§("Menu_Help","Unique_Menu_Visits",true);
                     if(!_loc3_)
                     {
                        _loc2_.gameObj.§_-4P§.api.§_-h§("Menu_Help_Total","Total_Menu_Visits");
                     }
                  }
                  else
                  {
                     §§goto(addr256);
                  }
               }
               §§goto(addr314);
            }
            _loc2_.gameObj.§_-4P§.api.§_-h§("Menu_Customers","Unique_Menu_Visits",true);
            §§push(_loc2_.gameObj);
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr200);
            }
            else
            {
               §§goto(addr276);
            }
         }
      }
      
      public function setupInfo(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Object = null;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:GameData = _loc2_.gameObj.§_-Cf§;
         if(!_loc6_)
         {
            if(param1)
            {
               if(!(_loc6_ && param1))
               {
                  _loc5_ = {};
                  _loc5_.inMenu = true;
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     _loc2_.editor = new CharacterEditorScreen(_loc2_.gameObj,_loc2_.clip.info,_loc5_);
                  }
               }
            }
            else
            {
               _loc2_.editor.destroy();
               if(_loc7_ || Boolean(this))
               {
                  _loc2_.editor = null;
               }
            }
         }
      }
      
      public function setupCustomers(param1:Boolean = true) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Class = null;
         var _loc14_:* = false;
         var _loc15_:Bitmap = null;
         var _loc16_:MovieClip = null;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:CustomerData = _loc2_.gameObj.customerData;
         if(_loc24_)
         {
            §§push(param1);
            if(!(_loc23_ && Boolean(_loc3_)))
            {
               if(§§pop())
               {
                  addr141:
                  if(_loc24_ || Boolean(_loc3_))
                  {
                     §§push(§_-0i§.§_-24§());
                  }
                  §§push(55);
                  if(_loc24_)
                  {
                     addr144:
                     §§push(§§pop());
                     if(_loc24_)
                     {
                        addr147:
                        _loc9_ = §§pop();
                        if(!_loc23_)
                        {
                           §§push(0);
                           if(!_loc23_)
                           {
                              addr153:
                              §§push(§§pop());
                              if(_loc24_ || Boolean(_loc2_))
                              {
                              }
                              addr198:
                              _loc5_ = §§pop();
                              addr199:
                              loop0:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(_loc3_.customersUnlocked);
                                 if(_loc24_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() >= §§pop().length)
                                    {
                                       if(!_loc23_)
                                       {
                                          §§push(0);
                                          if(_loc24_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc23_)
                                             {
                                                _loc5_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc24_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.customerThumbClips);
                                                         break loop0;
                                                      }
                                                      addr962:
                                                      return;
                                                      addr653:
                                                      addr743:
                                                   }
                                                   break;
                                                   _loc5_ = §§pop();
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc23_)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr876:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            continue loop13;
                                                         }
                                                         addr879:
                                                         if(!(_loc23_ && Boolean(_loc3_)))
                                                         {
                                                            addr886:
                                                            _loc2_.customerThumbBitmaps = null;
                                                            if(_loc24_ || param1)
                                                            {
                                                            }
                                                            addr899:
                                                            _loc2_.customerThumbClips = null;
                                                            if(_loc24_)
                                                            {
                                                               addr904:
                                                               _loc2_.clip.customers.right_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerNext);
                                                               _loc2_.clip.customers.left_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPrev);
                                                               if(_loc24_)
                                                               {
                                                               }
                                                            }
                                                            _loc2_.clip.customers.playnow_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPlayGame);
                                                            if(_loc24_)
                                                            {
                                                               try
                                                               {
                                                                  _loc2_.clip.customers.removeEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
                                                               }
                                                               catch(err:Error)
                                                               {
                                                               }
                                                               §§goto(addr962);
                                                            }
                                                         }
                                                         §§goto(addr962);
                                                      }
                                                      addr875:
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc21_);
                                                      addr878:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§goto(addr879);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc2_.customerThumbClips);
                                                            if(!(_loc23_ && Boolean(_loc2_)))
                                                            {
                                                               §§pop()[_loc5_].btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCustomerThumb);
                                                               if(!_loc23_)
                                                               {
                                                                  addr784:
                                                                  while(true)
                                                                  {
                                                                     _loc2_.clip.customers.thumbholder.removeChild(_loc2_.customerThumbClips[_loc5_]);
                                                                     if(!_loc23_)
                                                                     {
                                                                        _loc2_.customerThumbClips[_loc5_].inside.removeChild(_loc2_.customerThumbBitmaps[_loc5_]);
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§push(_loc2_.customerThumbClips);
                                                                           if(_loc24_ || Boolean(_loc3_))
                                                                           {
                                                                              addr847:
                                                                              §§push(_loc5_);
                                                                              if(_loc24_ || Boolean(_loc2_))
                                                                              {
                                                                                 addr865:
                                                                                 §§push(null);
                                                                                 if(_loc24_ || param1)
                                                                                 {
                                                                                    §§pop()[§§pop()] = §§pop();
                                                                                    if(_loc24_ || param1)
                                                                                    {
                                                                                       §§push(_loc2_.customerThumbBitmaps);
                                                                                       if(_loc24_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr886);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop()[§§pop()] = §§pop();
                                                                                 }
                                                                                 addr865:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(null);
                                                                                 if(_loc24_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§pop()[§§pop()] = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.customerThumbBMP);
                                                                                       addr858:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop()[_loc5_].dispose();
                                                                                          addr861:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.customerThumbBMP);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr856:
                                                                                 }
                                                                                 §§goto(addr865);
                                                                              }
                                                                              addr847:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              addr864:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr865);
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc23_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc24_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr904);
                                                                  addr784:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!_loc23_)
                                                               {
                                                                  §§goto(addr847);
                                                               }
                                                               §§goto(addr864);
                                                            }
                                                         }
                                                         §§goto(addr904);
                                                      }
                                                   }
                                                   §§goto(addr875);
                                                }
                                                addr645:
                                             }
                                             while(true)
                                             {
                                                _loc17_ = §§pop();
                                                §§push(_loc5_);
                                                §§push(_loc6_);
                                                if(_loc24_ || Boolean(_loc2_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * _loc7_);
                                                      if(_loc24_ || Boolean(_loc2_))
                                                      {
                                                         §§push(§§pop() % §§pop());
                                                         if(_loc24_)
                                                         {
                                                            _loc18_ = §§pop();
                                                            §§push(0);
                                                            if(_loc24_)
                                                            {
                                                            }
                                                            addr752:
                                                            §§push(§§pop());
                                                            if(_loc24_ || param1)
                                                            {
                                                               addr760:
                                                               _loc5_ = §§pop();
                                                               if(!_loc23_)
                                                               {
                                                                  addr763:
                                                                  §§goto(addr876);
                                                               }
                                                               §§goto(addr784);
                                                            }
                                                            §§goto(addr869);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc24_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               §§goto(addr645);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr760);
                                                         addr641:
                                                      }
                                                   }
                                                   addr525:
                                                }
                                                addr560:
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc24_)
                                                      {
                                                         §§push(§§pop());
                                                         while(true)
                                                         {
                                                            _loc19_ = §§pop();
                                                         }
                                                         addr565:
                                                      }
                                                      §§goto(addr653);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Math.floor(_loc5_ / (_loc6_ * _loc7_)) * (_loc8_ * _loc6_));
                                                      addr577:
                                                      while(true)
                                                      {
                                                         _loc20_ = §§pop();
                                                         if(_loc24_ || Boolean(_loc3_))
                                                         {
                                                            §§push(_loc2_.customerThumbClips);
                                                            if(_loc24_ || Boolean(_loc3_))
                                                            {
                                                               §§pop()[_loc5_].x = _loc17_ + _loc20_;
                                                               if(!(_loc23_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.customerThumbClips);
                                                                     §§push(_loc5_);
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        §§pop()[§§pop()].y = _loc19_;
                                                                        _loc2_.clip.customers.thumbholder.addChild(_loc2_.customerThumbClips[_loc5_]);
                                                                        if(_loc24_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!(_loc23_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                           }
                                                                           §§goto(addr641);
                                                                        }
                                                                        §§goto(addr904);
                                                                     }
                                                                     §§goto(addr847);
                                                                  }
                                                                  addr608:
                                                               }
                                                               §§goto(addr763);
                                                            }
                                                            §§goto(addr869);
                                                         }
                                                         §§goto(addr743);
                                                      }
                                                   }
                                                }
                                             }
                                             addr515:
                                          }
                                          while(true)
                                          {
                                             _loc19_ = §§pop();
                                             §§push(_loc18_);
                                             if(_loc24_ || Boolean(_loc3_))
                                             {
                                                §§push(_loc6_);
                                                if(_loc24_ || Boolean(_loc3_))
                                                {
                                                   §§goto(addr560);
                                                }
                                                break;
                                             }
                                             §§goto(addr577);
                                          }
                                          §§goto(addr878);
                                       }
                                       addr728:
                                       _loc2_.showCustomerDetails(9);
                                       if(!_loc23_)
                                       {
                                          §§goto(addr962);
                                       }
                                       else
                                       {
                                          §§goto(addr784);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc4_.getCustomerClipName(_loc5_));
                                       if(_loc24_ || Boolean(_loc2_))
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc11_ = §§pop();
                                       §§push(true);
                                       if(_loc24_)
                                       {
                                          _loc14_ = §§pop();
                                          §§push(_loc3_.customersUnlocked);
                                          if(_loc24_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop()[_loc5_] == 0);
                                             if(!(_loc23_ && Boolean(_loc2_)))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc24_ || param1)
                                                   {
                                                      §§pop();
                                                      §§push(_loc3_.customerVisits[_loc5_] == 0);
                                                      if(_loc24_ || Boolean(this))
                                                      {
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   §§push(false);
                                                   if(_loc23_)
                                                   {
                                                   }
                                                }
                                                addr267:
                                                §§push(_loc14_);
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc24_)
                                                {
                                                   _loc13_ = getDefinitionByName("customer_" + _loc11_ + "_t1.png") as Class;
                                                   _loc12_ = new _loc13_(0,0);
                                                }
                                                else
                                                {
                                                   §§goto(addr608);
                                                }
                                             }
                                             else
                                             {
                                                _loc13_ = getDefinitionByName("customer_" + _loc11_ + "_t2.png") as Class;
                                                _loc12_ = new _loc13_(0,0);
                                             }
                                             _loc15_ = new Bitmap(_loc12_);
                                             _loc16_ = new menu_customer_thumb();
                                             _loc16_.inside.addChild(_loc15_);
                                             _loc16_.whichCustomer = _loc5_;
                                             if(_loc23_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc3_.customerSeals);
                                             if(_loc24_)
                                             {
                                                if(§§pop()[_loc5_] > 0)
                                                {
                                                   _loc16_.star.visible = true;
                                                   _loc16_.star.gotoAndStop(2);
                                                   if(_loc23_)
                                                   {
                                                   }
                                                   addr442:
                                                   _loc2_.customerThumbBMP.push(_loc12_);
                                                   if(!_loc23_)
                                                   {
                                                      addr460:
                                                      §§push(_loc5_);
                                                      if(!_loc23_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!(_loc23_ && Boolean(this)))
                                                         {
                                                            addr459:
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      _loc5_ = §§pop();
                                                   }
                                                   continue;
                                                }
                                                _loc16_.star.visible = false;
                                                _loc16_.btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerThumb);
                                                if(!(_loc23_ && Boolean(this)))
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc24_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         _loc16_.btn.visible = false;
                                                         addr385:
                                                         §§push(_loc14_);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc10_);
                                                         if(_loc24_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!_loc23_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc24_ || Boolean(this))
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  §§goto(addr385);
                                                               }
                                                               §§goto(addr460);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr459);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc23_ && param1))
                                                      {
                                                         _loc2_.customerThumbClips.unshift(_loc16_);
                                                      }
                                                      addr411:
                                                      §§push(_loc2_.customerThumbBMP);
                                                      if(_loc24_)
                                                      {
                                                         §§pop().unshift(_loc12_);
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_.customerThumbClips);
                                                      if(!(_loc23_ && Boolean(_loc2_)))
                                                      {
                                                         addr427:
                                                         §§pop().push(_loc16_);
                                                         if(!_loc23_)
                                                         {
                                                            §§push(_loc2_.customerThumbBitmaps);
                                                         }
                                                         §§goto(addr460);
                                                      }
                                                   }
                                                }
                                                §§push(_loc2_.customerThumbBitmaps);
                                                if(!(_loc23_ && Boolean(_loc3_)))
                                                {
                                                   §§pop().unshift(_loc15_);
                                                   if(!_loc24_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr411);
                                                }
                                                else
                                                {
                                                   §§goto(addr427);
                                                }
                                             }
                                             §§pop().push(_loc15_);
                                             if(_loc23_ && Boolean(_loc3_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr442);
                                          }
                                          §§goto(addr858);
                                       }
                                       _loc14_ = §§pop();
                                       if(!_loc23_)
                                       {
                                          §§goto(addr267);
                                       }
                                    }
                                    _loc2_.customerThumbBMP = null;
                                    §§goto(addr899);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop() >= §§pop().length)
                                 {
                                    _loc2_.clip.customers.right_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerNext);
                                    if(!(_loc23_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.clip.customers.left_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPrev);
                                       _loc2_.clip.customers.left_btn.visible = false;
                                       _loc2_.clip.customers.playnow_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCustomerPlayGame);
                                       _loc2_.clip.customers.holder.mask = _loc2_.clip.customers.masker;
                                       if(_loc24_ || Boolean(_loc2_))
                                       {
                                          _loc2_.clip.customers.masker.visible = false;
                                          _loc2_.clip.customers.topfader.mouseEnabled = false;
                                          if(_loc10_ == 0)
                                          {
                                             §§goto(addr728);
                                          }
                                          else
                                          {
                                             _loc2_.showCustomerDetails(_loc2_.customerThumbClips[0].whichCustomer);
                                             if(_loc24_)
                                             {
                                             }
                                             §§goto(addr962);
                                          }
                                       }
                                       §§goto(addr856);
                                    }
                                    §§goto(addr879);
                                 }
                                 else
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc6_);
                                    if(!(_loc23_ && param1))
                                    {
                                       §§push(§§pop() % §§pop());
                                       if(_loc24_ || Boolean(_loc2_))
                                       {
                                          §§push(_loc8_);
                                          if(_loc24_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc23_)
                                             {
                                                §§goto(addr515);
                                             }
                                             §§goto(addr760);
                                          }
                                          §§goto(addr525);
                                       }
                                       §§goto(addr565);
                                    }
                                    §§goto(addr560);
                                 }
                              }
                           }
                        }
                        addr162:
                        _loc2_.customerThumbBitmaps = [];
                        _loc2_.customerThumbBMP = [];
                        if(_loc24_ || Boolean(_loc2_))
                        {
                           addr175:
                           _loc2_.customerThumbClips = [];
                           if(_loc24_ || Boolean(_loc2_))
                           {
                           }
                           §§goto(addr199);
                        }
                        _loc2_.totalCustomerPages = Math.ceil(_loc3_.customersUnlocked.length / (_loc6_ * _loc7_));
                        §§push(1);
                     }
                     _loc10_ = §§pop();
                     §§goto(addr162);
                  }
                  addr197:
                  §§goto(addr198);
                  §§push(§§pop());
               }
               else
               {
                  _loc2_.destroyPreviousPhoto();
                  §§push(_loc2_.customerThumbClips);
               }
               _loc21_ = Number(§§pop().length);
               §§goto(addr752);
               §§push(0);
            }
            if(!§§pop())
            {
               if(!(_loc23_ && Boolean(_loc2_)))
               {
                  _loc2_.shouldShowPlayNow = true;
               }
               §§goto(addr175);
            }
            _loc2_.clip.customers.playnow_btn.visible = false;
            §§push(8);
            if(!_loc23_)
            {
               §§push(§§pop());
               if(!(_loc23_ && Boolean(this)))
               {
                  _loc6_ = §§pop();
                  if(_loc24_)
                  {
                     §§push(2);
                     if(_loc24_)
                     {
                        §§push(§§pop());
                        if(!_loc23_)
                        {
                           _loc7_ = §§pop();
                        }
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr162);
               }
               §§goto(addr147);
            }
            §§goto(addr144);
         }
         §§push(41);
         if(!(_loc23_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
            if(_loc24_ || Boolean(this))
            {
               _loc8_ = §§pop();
               §§goto(addr141);
            }
            §§goto(addr198);
         }
         §§goto(addr153);
      }
      
      public function clickCustomerThumb(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         }
         var _loc3_:Number = Number(param1.currentTarget.parent.whichCustomer);
         if(!_loc5_)
         {
            _loc2_.showCustomerDetails(_loc3_);
         }
      }
      
      public function clickCustomerPlayGame(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_.useWhichLink != "")
            {
               if(_loc4_)
               {
               }
            }
            §§goto(addr52);
         }
         _loc2_.gameObj.§_-4P§.api.§_-DI§(_loc2_.useWhichLink,"CustomerGameLink","Links");
         addr52:
      }
      
      public function showCustomerDetails(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:CustomerData = _loc2_.gameObj.customerData;
         _loc2_.clip.customers.name_txt.text = _loc4_.getCustomerName(param1);
         _loc2_.clip.customers.firstvisit_txt.text = "Day " + _loc3_.getCustomerFirstDay(param1);
         _loc2_.clip.customers.orders_txt.text = _loc3_.getCustomerTotalOrders(param1);
         if(!_loc9_)
         {
            _loc2_.clip.customers.firstgame_txt.text = _loc4_.getCustomerFirstGame(param1);
            addr223:
            if(!_loc9_)
            {
               _loc2_.clip.customers.favorites_txt.text = _loc4_.getCustomerToppingString(param1);
               if(_loc2_.shouldShowPlayNow)
               {
                  _loc2_.clip.customers.playnow_btn.visible = true;
               }
               else
               {
                  _loc2_.clip.customers.playnow_btn.visible = false;
               }
               addr230:
               §§push(_loc3_.getCustomerSeal(param1));
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
               var _loc6_:* = §§pop();
               §§push(_loc3_.getCustomerStars(param1));
               if(!(_loc9_ && Boolean(this)))
               {
                  §§push(§§pop());
               }
               var _loc7_:* = §§pop();
               if(!_loc9_)
               {
                  addr300:
                  §§push(_loc6_);
                  if(!(_loc9_ && Boolean(this)))
                  {
                     if(§§pop() > 0)
                     {
                        if(_loc8_)
                        {
                           _loc2_.clip.customers.sealMC.visible = true;
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              _loc2_.clip.customers.sealMC.gotoAndStop(_loc6_);
                              if(_loc8_)
                              {
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc2_.clip.customers.sealMC.visible = false;
                        if(_loc9_ && Boolean(_loc3_))
                        {
                        }
                     }
                     addr301:
                     loop0:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           while(true)
                           {
                              §§push(5);
                              if(!_loc9_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    _loc2_.buildCustomerPhoto(param1,_loc6_);
                                    addr377:
                                    if(_loc4_.isCloser(param1))
                                    {
                                       §§push(param1);
                                       break loop0;
                                    }
                                    _loc2_.clip.customers.typelabel.visible = false;
                                 }
                                 §§push(_loc7_);
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    if(§§pop() >= _loc5_)
                                    {
                                       if(_loc8_ || Boolean(param1))
                                       {
                                          _loc2_.clip.customers["star_" + _loc5_].gotoAndStop(2);
                                       }
                                       else
                                       {
                                          §§goto(addr377);
                                       }
                                    }
                                    else
                                    {
                                       _loc2_.clip.customers["star_" + _loc5_].gotoAndStop(1);
                                       if(_loc9_)
                                       {
                                          addr425:
                                       }
                                    }
                                    §§push(_loc5_);
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + 1);
                                       if(!(_loc9_ && Boolean(this)))
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 continue;
                                 §§goto(addr439);
                              }
                              break;
                           }
                           §§goto(addr383);
                        }
                        break;
                        _loc5_ = §§pop();
                     }
                     addr383:
                     if(§§pop() == §§pop())
                     {
                        if(!_loc9_)
                        {
                           _loc2_.clip.customers.typelabel.visible = true;
                           _loc2_.clip.customers.typelabel.gotoAndStop(2);
                           if(_loc9_ && Boolean(this))
                           {
                           }
                        }
                        §§goto(addr425);
                     }
                     else
                     {
                        _loc2_.clip.customers.typelabel.visible = true;
                        _loc2_.clip.customers.typelabel.gotoAndStop(1);
                        if(_loc8_ || Boolean(param1))
                        {
                           §§goto(addr425);
                        }
                     }
                     addr439:
                     _loc2_.clip.customers.topfader.gotoAndPlay(1);
                     return;
                     §§push(1);
                  }
                  _loc5_ = §§pop();
                  §§goto(addr301);
               }
               §§goto(addr300);
               §§push(1);
            }
            _loc2_.useWhichLink = _loc2_.burgeriaLink;
            §§goto(addr230);
         }
         _loc2_.clip.customers.playnow_btn.x = _loc2_.clip.customers.firstgame_txt.x + _loc2_.clip.customers.firstgame_txt.textWidth + _loc2_.playnowPadX;
         if(_loc8_)
         {
            §§push(_loc4_.getCustomerFirstGame(param1));
            if(_loc8_ || Boolean(this))
            {
               if(§§pop() == "Papa Louie")
               {
                  if(!_loc9_)
                  {
                     _loc2_.useWhichLink = _loc2_.papalouieLink;
                     if(_loc9_ && Boolean(this))
                     {
                        addr172:
                     }
                  }
                  else
                  {
                     addr192:
                     _loc2_.useWhichLink = _loc2_.freezeriaLink;
                  }
               }
               else
               {
                  §§push(_loc4_.getCustomerFirstGame(param1));
                  if(!_loc9_)
                  {
                     if(§§pop() == "Papa\'s Pizzeria")
                     {
                        if(_loc8_)
                        {
                           _loc2_.useWhichLink = _loc2_.pizzeriaLink;
                        }
                     }
                     else
                     {
                        §§push(_loc4_.getCustomerFirstGame(param1));
                        if(_loc8_ || Boolean(param1))
                        {
                        }
                     }
                     addr210:
                     _loc2_.clip.customers.playnow_btn.visible = false;
                  }
                  addr166:
                  if(§§pop() == "Papa\'s Taco Mia!")
                  {
                     _loc2_.useWhichLink = _loc2_.tacomiaLink;
                     §§goto(addr172);
                  }
                  else
                  {
                     §§push(_loc4_.getCustomerFirstGame(param1));
                     if(_loc8_ || Boolean(this))
                     {
                        addr183:
                        if(§§pop() == "Papa\'s Freezeria")
                        {
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              §§goto(addr192);
                           }
                           §§goto(addr230);
                        }
                        else
                        {
                           §§push(_loc4_.getCustomerFirstGame(param1));
                        }
                     }
                     if(§§pop() == "Papa\'s Pancakeria")
                     {
                        _loc2_.useWhichLink = _loc2_.pancakeriaLink;
                     }
                     else
                     {
                        _loc2_.useWhichLink = "";
                        §§goto(addr210);
                     }
                  }
               }
               §§goto(addr223);
            }
            if(§§pop() != "Papa\'s Burgeria")
            {
               §§push(_loc4_.getCustomerFirstGame(param1));
               if(_loc8_)
               {
                  §§goto(addr166);
               }
               §§goto(addr183);
            }
         }
         §§goto(addr223);
      }
      
      public function destroyPreviousPhoto() : void
      {
         var screen:MainMenuScreen;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§pop().§§slot[1] = this;
            if(!_loc4_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
               }
               addr42:
               §§pop().§§slot[1].customerClip.stop();
               addr264:
               try
               {
                  addr44:
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§pop().§§slot[1].customerClip.body.removeChildAt(0);
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        §§pop().§§slot[1].customerClip.head.removeChildAt(0);
                        screen.customerClip.eyes.removeChildAt(0);
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!_loc4_)
                              {
                                 §§pop().customerClip.mouth.removeChildAt(0);
                                 if(_loc3_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§pop().§§slot[1].customerClip.neck.removeChildAt(0);
                                       screen.customerClip.front_shoe.removeChildAt(0);
                                       screen.customerClip.back_shoe.removeChildAt(0);
                                       addr239:
                                       §§push(screen);
                                       if(_loc3_)
                                       {
                                          §§pop().customerClip.fronthand.removeChildAt(0);
                                          screen.customerClip.backhand.removeChildAt(0);
                                          §§push(§§newactivation());
                                       }
                                       §§pop().clip.customers.holder.removeChild(screen.customerClip);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                       }
                                    }
                                    §§pop().§§slot[1].customerClip.front_upperarm.removeChildAt(0);
                                    §§push(screen);
                                    if(_loc3_)
                                    {
                                       §§pop().customerClip.back_upperarm.removeChildAt(0);
                                       §§push(screen);
                                    }
                                    §§pop().customerClip.front_forearm.removeChildAt(0);
                                 }
                              }
                              addr262:
                              §§pop().customerClip = null;
                           }
                        }
                        §§push(§§newactivation());
                        if(_loc3_)
                        {
                           §§push(§§pop().§§slot[1]);
                           if(!(_loc4_ && _loc1_))
                           {
                              §§pop().customerClip.back_forearm.removeChildAt(0);
                              try
                              {
                                 addr190:
                              }
                              catch(err:Error)
                              {
                              }
                              try
                              {
                                 addr210:
                                 §§push(screen);
                                 §§push(§§newactivation());
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                              }
                              catch(err:Error)
                              {
                                 addr237:
                                 §§goto(addr239);
                              }
                           }
                           §§pop().customerClip.hair.removeChildAt(0);
                           §§goto(addr210);
                        }
                     }
                     §§pop().§§slot[1].customerClip.back_hair.removeChildAt(0);
                     §§goto(addr237);
                  }
                  §§goto(addr262);
               }
               catch(err:Error)
               {
                  var _loc2_:* = err;
                  if(!(_loc4_ && _loc2_))
                  {
                     §_-5i§.error("Error removing parts of customer");
                  }
                  §§goto(addr190);
               }
               §§pop().§§slot[1];
               return;
               addr41:
            }
            addr40:
            §§goto(addr41);
            §§push(§§newactivation());
         }
         §§push(§§pop().§§slot[1]);
         if(!_loc4_)
         {
            if(§§pop().customerClip)
            {
               if(_loc3_)
               {
                  §§goto(addr40);
               }
               §§goto(addr44);
            }
            §§goto(addr264);
         }
         §§goto(addr42);
      }
      
      public function buildCustomerPhoto(param1:Number, param2:Number) : void
      {
         var _loc33_:Boolean = false;
         var _loc34_:Boolean = true;
         var _loc28_:Class = null;
         var _loc29_:MovieClip = null;
         var _loc30_:Class = null;
         var _loc31_:MovieClip = null;
         var _loc3_:MainMenuScreen = this;
         if(_loc34_)
         {
            _loc3_.destroyPreviousPhoto();
            if(_loc34_)
            {
               _loc3_.customerClip = new customerMC();
            }
         }
         §§push(_loc3_.gameObj.customerData.getCustomerClipName(param1));
         if(_loc34_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Class = getDefinitionByName("customer_" + _loc4_ + "_body") as Class;
         var _loc6_:MovieClip = new _loc5_();
         _loc6_.name = "clip";
         if(_loc34_)
         {
            _loc3_.customerClip.body.addChild(_loc6_);
         }
         var _loc7_:Class = getDefinitionByName("customer_" + _loc4_ + "_head") as Class;
         var _loc8_:MovieClip = new _loc7_();
         _loc8_.name = "clip";
         if(!(_loc33_ && Boolean(_loc3_)))
         {
            _loc3_.customerClip.head.addChild(_loc8_);
         }
         var _loc9_:Class = getDefinitionByName("customer_" + _loc4_ + "_eyes") as Class;
         var _loc10_:MovieClip = new _loc9_();
         _loc10_.name = "clip";
         if(!(_loc33_ && Boolean(_loc3_)))
         {
            _loc3_.customerClip.eyes.addChild(_loc10_);
         }
         var _loc11_:Class = getDefinitionByName("customer_" + _loc4_ + "_mouth") as Class;
         var _loc12_:MovieClip = new _loc11_();
         _loc12_.name = "clip";
         if(!(_loc33_ && Boolean(param1)))
         {
            _loc3_.customerClip.mouth.addChild(_loc12_);
         }
         var _loc13_:Class = getDefinitionByName("customer_" + _loc4_ + "_neck") as Class;
         var _loc14_:MovieClip = new _loc13_();
         _loc14_.name = "clip";
         if(_loc34_)
         {
            _loc3_.customerClip.neck.addChild(_loc14_);
         }
         try
         {
            _loc28_ = getDefinitionByName("customer_" + _loc4_ + "_hair") as Class;
            _loc29_ = new _loc28_();
            _loc29_.name = "clip";
            if(_loc34_ || Boolean(_loc3_))
            {
               _loc3_.customerClip.hair.addChild(_loc29_);
            }
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc30_ = getDefinitionByName("customer_" + _loc4_ + "_back_hair") as Class;
            _loc31_ = new _loc30_();
            _loc31_.name = "clip";
            if(!(_loc33_ && Boolean(this)))
            {
               _loc3_.customerClip.back_hair.addChild(_loc31_);
            }
         }
         catch(err:Error)
         {
         }
         var _loc15_:Class = getDefinitionByName("customer_" + _loc4_ + "_foot") as Class;
         var _loc16_:MovieClip = new _loc15_();
         _loc16_.name = "clip";
         if(_loc34_)
         {
            _loc3_.customerClip.front_shoe.addChild(_loc16_);
         }
         var _loc17_:MovieClip = new _loc15_();
         _loc17_.name = "clip";
         if(!_loc33_)
         {
            _loc3_.customerClip.back_shoe.addChild(_loc17_);
         }
         var _loc18_:Class = getDefinitionByName("customer_" + _loc4_ + "_hand") as Class;
         var _loc19_:MovieClip = new _loc18_();
         _loc19_.name = "clip";
         if(!(_loc33_ && Boolean(_loc3_)))
         {
            _loc3_.customerClip.fronthand.addChild(_loc19_);
         }
         var _loc20_:Class = getDefinitionByName("customer_" + _loc4_ + "_hand2") as Class;
         var _loc21_:MovieClip = new _loc20_();
         _loc21_.name = "clip";
         if(!(_loc33_ && Boolean(_loc3_)))
         {
            _loc3_.customerClip.backhand.addChild(_loc21_);
         }
         var _loc22_:Class = getDefinitionByName("customer_" + _loc4_ + "_upperarm") as Class;
         var _loc23_:MovieClip = new _loc22_();
         _loc23_.name = "clip";
         if(!(_loc33_ && Boolean(_loc3_)))
         {
            _loc3_.customerClip.front_upperarm.addChild(_loc23_);
         }
         var _loc24_:MovieClip = new _loc22_();
         _loc24_.name = "clip";
         if(!(_loc33_ && Boolean(_loc3_)))
         {
            _loc3_.customerClip.back_upperarm.addChild(_loc24_);
         }
         var _loc25_:Class = getDefinitionByName("customer_" + _loc4_ + "_forearm") as Class;
         var _loc26_:MovieClip = new _loc25_();
         _loc26_.name = "clip";
         if(!_loc33_)
         {
            _loc3_.customerClip.front_forearm.addChild(_loc26_);
         }
         var _loc27_:MovieClip = new _loc25_();
         _loc27_.name = "clip";
         _loc3_.customerClip.back_forearm.addChild(_loc27_);
         if(param2 > 0)
         {
            _loc3_.customerClip.gotoAndStop("overjoyedposter");
         }
         else
         {
            _loc3_.customerClip.gotoAndStop("portrait");
         }
         _loc3_.clip.customers.holder.gotoAndStop(_loc3_.gameObj.customerData.getCustomerColor(param1));
         if(_loc34_ || Boolean(_loc3_))
         {
            _loc3_.clip.customers.holder.addChild(_loc3_.customerClip);
         }
         _loc3_.customerClip.x = 20;
      }
      
      public function clickCustomerNext(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(_loc5_ || _loc3_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc5_ || Boolean(param1))
            {
            }
            addr90:
            addr92:
            if(_loc2_.currentCustomerPage < _loc2_.totalCustomerPages)
            {
               _loc2_.clip.customers.right_btn.visible = true;
               if(_loc5_)
               {
               }
               §§goto(addr132);
            }
            else
            {
               _loc2_.clip.customers.right_btn.visible = false;
            }
            if(!_loc2_.clip.customers.hasEventListener(Event.ENTER_FRAME))
            {
               _loc2_.clip.customers.addEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
            }
            §§goto(addr132);
         }
         var _loc3_:* = _loc2_;
         §§push(_loc3_.currentCustomerPage);
         if(_loc5_)
         {
            §§push(§§pop() + 1);
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.currentCustomerPage = _loc4_;
         }
         §§push(_loc2_.currentCustomerPage);
         if(_loc5_)
         {
            if(§§pop() > 1)
            {
               if(_loc5_ || Boolean(param1))
               {
                  _loc2_.clip.customers.left_btn.visible = true;
                  if(_loc5_)
                  {
                  }
                  addr132:
                  return;
               }
            }
            else
            {
               _loc2_.clip.customers.left_btn.visible = false;
            }
            §§goto(addr90);
         }
         §§goto(addr92);
      }
      
      public function clickCustomerPrev(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(_loc6_ || Boolean(_loc2_))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            §§push(_loc2_.currentCustomerPage);
            if(_loc6_)
            {
               §§push(1);
               if(_loc6_)
               {
                  §§goto(addr141);
               }
               if(§§pop() > §§pop())
               {
                  if(!_loc5_)
                  {
                     _loc2_.clip.customers.left_btn.visible = true;
                     addr99:
                     §§push(_loc2_.currentCustomerPage);
                  }
                  §§goto(addr141);
               }
               else
               {
                  _loc2_.clip.customers.left_btn.visible = false;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§goto(addr99);
                  }
               }
               §§goto(addr133);
            }
            if(§§pop() < _loc2_.totalCustomerPages)
            {
               _loc2_.clip.customers.right_btn.visible = true;
               §§goto(addr110);
            }
            else
            {
               _loc2_.clip.customers.right_btn.visible = false;
            }
         }
         if(!_loc2_.clip.customers.hasEventListener(Event.ENTER_FRAME))
         {
            if(_loc6_)
            {
               addr133:
               _loc2_.clip.customers.addEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
               §§goto(addr141);
            }
         }
         addr141:
         if(§§pop() > §§pop())
         {
            var _loc3_:* = _loc2_;
            §§push(_loc3_.currentCustomerPage);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || Boolean(_loc3_))
            {
               _loc3_.currentCustomerPage = _loc4_;
            }
            addr110:
            if(_loc6_)
            {
               §§push(_loc2_.currentCustomerPage);
               if(_loc6_ || Boolean(param1))
               {
                  §§push(1);
               }
            }
         }
      }
      
      public function animateCustomerPanel(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:Number = 328;
         §§push(_loc2_.customerStartX);
         if(_loc7_)
         {
            §§push(_loc2_.currentCustomerPage);
            if(!_loc6_)
            {
               §§push(§§pop() - 1);
               if(_loc6_)
               {
               }
               addr40:
               var _loc4_:* = §§pop();
               if(!_loc6_)
               {
                  §§push(§§pop() - _loc2_.clip.customers.thumbholder.x);
                  if(_loc7_)
                  {
                  }
                  addr52:
                  var _loc5_:* = §§pop();
                  if(!(_loc6_ && Boolean(this)))
                  {
                     _loc2_.clip.customers.thumbholder.x += _loc5_ / _loc2_.customerTweenSpeed;
                     if(!(_loc6_ && Boolean(this)))
                     {
                        addr116:
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           §§push(-1);
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              §§push(§§pop() >= §§pop());
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 addr118:
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       _loc2_.clip.customers.thumbholder.x = _loc4_;
                                       if(_loc6_ && Boolean(this))
                                       {
                                       }
                                    }
                                    _loc2_.clip.customers.removeEventListener(Event.ENTER_FRAME,_loc2_.animateCustomerPanel);
                                 }
                              }
                              §§pop();
                              if(_loc7_)
                              {
                              }
                           }
                           addr117:
                           §§goto(addr118);
                           §§push(§§pop() <= §§pop());
                        }
                        §§goto(addr117);
                        §§push(1);
                     }
                     return;
                  }
                  §§goto(addr116);
                  §§push(_loc5_);
               }
               §§goto(addr52);
               §§push(§§pop());
            }
            §§push(§§pop() * _loc3_);
            if(!_loc6_)
            {
               §§push(§§pop() - §§pop());
               if(_loc7_)
               {
                  §§push(§§pop());
               }
            }
         }
         §§goto(addr40);
         §§push(§§pop());
      }
      
      public function setupHelp(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(param1)
         {
            if(_loc4_ || _loc3_)
            {
               _loc2_.clip.help.panel.next_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpNext);
               if(_loc4_ || Boolean(this))
               {
                  _loc2_.clip.help.panel.prev_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpPrevious);
                  _loc2_.clip.help.panel.main_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpMain);
               }
               §§goto(addr415);
            }
            _loc2_.clip.help.inside.pattern.next_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternNext);
            _loc2_.clip.help.inside.pattern.prev_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternPrevious);
            _loc2_.clip.help.inside.orders_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.tickets_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.building_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.frying_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            _loc2_.clip.help.inside.saucing_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.clip.help.inside.finishing_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
               _loc2_.clip.help.inside.ranking_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
               _loc2_.clip.help.inside.arranging_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
               if(_loc4_)
               {
                  _loc2_.clip.help.inside.closers_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.clip.help.inside.rewards_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_.clip.help.inside.shop_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                        _loc2_.clip.help.inside.clothing_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                        _loc2_.clip.help.inside.minigames_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                        if(_loc4_)
                        {
                           _loc2_.clip.help.inside.badges_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                           if(_loc3_ && _loc3_)
                           {
                              §§goto(addr415);
                           }
                           addr415:
                           _loc2_.clip.help.inside.closers_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                           addr425:
                           _loc2_.clip.help.inside.shop_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                           if(!_loc3_)
                           {
                              _loc2_.clip.help.inside.rewards_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                           }
                           §§goto(addr447);
                        }
                        addr447:
                        _loc2_.clip.help.inside.clothing_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr464:
                           _loc2_.clip.help.inside.minigames_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                           _loc2_.clip.help.inside.badges_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                        }
                        return;
                     }
                  }
                  §§goto(addr425);
               }
               §§goto(addr415);
            }
            §§goto(addr464);
         }
         else
         {
            _loc2_.clip.help.panel.next_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpNext);
            _loc2_.clip.help.panel.prev_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpPrevious);
            if(_loc4_)
            {
               _loc2_.clip.help.panel.main_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpMain);
               _loc2_.clip.help.inside.pattern.next_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternNext);
               _loc2_.clip.help.inside.pattern.prev_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpPatternPrevious);
               _loc2_.clip.help.inside.orders_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
               if(!_loc3_)
               {
                  _loc2_.clip.help.inside.tickets_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                  if(_loc4_ || param1)
                  {
                     _loc2_.clip.help.inside.building_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                     _loc2_.clip.help.inside.frying_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                  }
                  addr378:
                  _loc2_.clip.help.inside.finishing_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                  _loc2_.clip.help.inside.ranking_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.clip.help.inside.arranging_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
                  }
                  §§goto(addr415);
               }
               §§goto(addr464);
            }
         }
         _loc2_.clip.help.inside.saucing_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickHelpSection);
         §§goto(addr378);
      }
      
      public function clickHelpSection(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(_loc5_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         }
         var _loc3_:String = String(param1.currentTarget.name).substr(0,param1.currentTarget.name.length - 4);
         if(_loc5_ || Boolean(this))
         {
            _loc2_.clip.help.inside.gotoAndStop(_loc3_);
         }
      }
      
      public function clickHelpPatternNext(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(!_loc3_)
            {
               if(_loc2_.clip.help.inside.pattern.currentFrame == _loc2_.clip.help.inside.pattern.totalFrames)
               {
                  if(_loc4_)
                  {
                     _loc2_.clip.help.inside.pattern.gotoAndStop(1);
                     if(_loc3_ && Boolean(_loc2_))
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.clip.help.inside.pattern.nextFrame();
               }
            }
         }
      }
      
      public function clickHelpPatternPrevious(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(!_loc3_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc3_ && Boolean(_loc2_))
            {
            }
            §§goto(addr53);
         }
         if(_loc2_.clip.help.inside.pattern.currentFrame == 1)
         {
            if(_loc4_ || Boolean(this))
            {
               §§goto(addr53);
            }
            §§goto(addr74);
         }
         else
         {
            _loc2_.clip.help.inside.pattern.prevFrame();
         }
         addr53:
         _loc2_.clip.help.inside.pattern.gotoAndStop(_loc2_.clip.help.inside.pattern.totalFrames);
         if(_loc4_)
         {
            addr74:
         }
      }
      
      public function clickHelpNext(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc3_ && _loc3_)
            {
            }
            addr77:
            return;
            addr71:
         }
         if(_loc2_.clip.help.inside.currentFrame == _loc2_.clip.help.inside.totalFrames)
         {
            if(_loc4_)
            {
               _loc2_.clip.help.inside.gotoAndStop(1);
               if(!_loc3_)
               {
                  §§goto(addr71);
               }
            }
         }
         else
         {
            _loc2_.clip.help.inside.nextFrame();
         }
         §§goto(addr77);
      }
      
      public function clickHelpPrevious(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(!(_loc3_ && Boolean(param1)))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc4_)
            {
               if(_loc2_.clip.help.inside.currentFrame == 1)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.clip.help.inside.gotoAndStop(_loc2_.clip.help.inside.totalFrames);
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.clip.help.inside.prevFrame();
               }
            }
         }
      }
      
      public function clickHelpMain(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(_loc4_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(!(_loc3_ && Boolean(param1)))
            {
               _loc2_.clip.help.inside.gotoAndStop("menu");
            }
         }
      }
      
      public function setupCredits(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(param1)
         {
            _loc2_.clip.credits.flipline1_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.flipline2_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            _loc2_.clip.credits.links.flipline3_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            if(!_loc3_)
            {
               _loc2_.clip.credits.links.papalouie_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
               _loc2_.clip.credits.facebook_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
            }
            _loc2_.clip.credits.twitter_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
         }
         else
         {
            _loc2_.clip.credits.flipline1_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
            if(!_loc3_)
            {
               _loc2_.clip.credits.flipline2_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
               _loc2_.clip.credits.links.flipline3_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsFlipline);
               _loc2_.clip.credits.links.papalouie_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickCreditsPapaLouie);
               _loc2_.clip.credits.facebook_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickFacebook);
            }
            _loc2_.clip.credits.twitter_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickTwitter);
         }
      }
      
      public function clickCreditsFlipline(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(_loc3_)
         {
            §§push(_loc2_.gameObj);
            if(_loc3_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(_loc2_.gameObj);
               }
            }
            §§pop().§_-4P§.api.§_-DI§("http://www.flipline.com","CreditsFlipline","Links");
         }
      }
      
      public function clickCreditsPapaLouie(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(_loc3_ || Boolean(param1))
         {
            §§push(_loc2_.gameObj);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc3_ || _loc3_)
               {
                  §§push(_loc2_.gameObj);
               }
            }
            §§pop().§_-4P§.api.§_-DI§("http://www.papalouie.com","CreditsPapaLouie","Links");
         }
      }
      
      public function clickFacebook(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_.gameObj);
            if(_loc3_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc3_ || Boolean(this))
               {
               }
               §§goto(addr59);
            }
            §§goto(addr53);
         }
         addr53:
         §§pop().§_-4P§.api.§_-DI§("http://www.facebook.com/pages/Flipline-Studios/121045844606187","CreditsFliplineFacebook","Links");
         addr59:
         _loc2_.gameObj;
      }
      
      public function clickTwitter(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(_loc2_.gameObj);
            if(!(_loc4_ && Boolean(this)))
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(_loc3_)
               {
                  §§push(_loc2_.gameObj);
               }
            }
            §§pop().§_-4P§.api.§_-DI§("http://www.twitter.com/FliplineStudios","CreditsFliplineTwitter","Links");
         }
      }
      
      public function setupConfirmQuit(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         if(_loc3_)
         {
            if(param1)
            {
               addr180:
               if(!_loc4_)
               {
                  _loc2_.confirmYesButton = new §_-7M§(null,"YES","small","button","clickYesQuit",null,false,false,false,null,false,80);
                  §§push(_loc2_.confirmYesButton);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(203);
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§pop().x = §§pop();
                        addr186:
                        if(_loc3_)
                        {
                           §§push(_loc2_.confirmYesButton);
                           if(!_loc4_)
                           {
                              §§push(230);
                           }
                        }
                        §§push(_loc2_.confirmYesButton);
                        if(_loc4_)
                        {
                        }
                        addr211:
                        §§pop().destroy();
                        §§goto(addr221);
                     }
                     §§pop().y = §§pop();
                     if(_loc3_)
                     {
                        _loc2_.confirmNoButton = new §_-7M§(null,"NO","small","button","clickNoQuit",null,false,false,false,null,false,80);
                        §§push(_loc2_.confirmNoButton);
                        if(!_loc4_)
                        {
                           §§pop().x = 356;
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(_loc2_.confirmNoButton);
                              if(!_loc4_)
                              {
                                 §§pop().y = _loc2_.confirmYesButton.y;
                                 _loc2_.clip.confirmquit.addChild(_loc2_.confirmYesButton);
                                 _loc2_.clip.confirmquit.addChild(_loc2_.confirmNoButton);
                              }
                              addr199:
                              §§pop().removeEventListener("clickNoQuit",_loc2_.clickCancelQuit);
                              addr198:
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr209:
                                 §§push(_loc2_.confirmYesButton);
                              }
                           }
                           §§push(_loc2_.confirmYesButton);
                           if(_loc3_ || Boolean(this))
                           {
                              §§push("clickYesQuit");
                              if(_loc3_ || Boolean(this))
                              {
                                 §§pop().addEventListener(§§pop(),_loc2_.clickConfirmQuit);
                                 if(!_loc4_)
                                 {
                                    §§push(_loc2_.confirmNoButton);
                                    if(_loc4_ && Boolean(this))
                                    {
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr209);
                              }
                              else
                              {
                                 addr191:
                                 §§pop().removeEventListener(§§pop(),_loc2_.clickConfirmQuit);
                              }
                              §§goto(addr194);
                           }
                        }
                        §§push("clickNoQuit");
                        if(!_loc4_)
                        {
                           §§pop().addEventListener(§§pop(),_loc2_.clickCancelQuit);
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr191);
                  §§push("clickYesQuit");
               }
               _loc2_.clip.confirmquit.removeChild(_loc2_.confirmNoButton);
               §§goto(addr186);
            }
            else
            {
               _loc2_.clip.confirmquit.removeChild(_loc2_.confirmYesButton);
               if(!_loc4_)
               {
                  §§goto(addr180);
               }
            }
            _loc2_.confirmYesButton = null;
            _loc2_.confirmNoButton = null;
            §§goto(addr186);
         }
         _loc2_.clip.confirmquit.visible = false;
         if(_loc4_ && param1)
         {
            addr194:
            §§push(_loc2_.confirmNoButton);
            if(!_loc4_)
            {
               §§goto(addr198);
            }
            addr221:
            _loc2_.confirmNoButton.destroy();
            if(_loc3_)
            {
            }
            return;
         }
         §§goto(addr186);
      }
      
      public function closeMainMenuScreen(param1:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         §§push(param1);
         if(_loc4_)
         {
            if(§§pop())
            {
               if(_loc4_)
               {
                  _loc2_.gameObj.§_-9O§();
                  if(!_loc5_)
                  {
                     §§push(_loc2_.gameObj);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§pop().§_-Df§();
                     }
                     else
                     {
                        addr54:
                        §§push(§§pop().soundManager);
                        if(_loc4_)
                        {
                           §§push("order");
                           if(_loc4_ || _loc3_)
                           {
                              §§pop().switchMusic(§§pop());
                              §§push(_loc2_.gameObj);
                              if(_loc4_)
                              {
                                 addr71:
                                 §§pop().§_-A5§.playFurniMusic();
                                 if(!_loc4_)
                                 {
                                    addr163:
                                    _loc2_.gameObj.soundManager.switchMusic("other");
                                    _loc2_.gameObj.§_-5G§();
                                    addr165:
                                    addr160:
                                    addr162:
                                 }
                              }
                              else
                              {
                                 addr84:
                                 §§push(§§pop().soundManager);
                                 if(!_loc5_)
                                 {
                                    §§push("order");
                                 }
                                 else
                                 {
                                    §§goto(addr163);
                                 }
                              }
                           }
                           §§pop().switchMusic(§§pop());
                           §§goto(addr165);
                        }
                        else
                        {
                           addr125:
                           §§pop().switchMusic("grill");
                           §§goto(addr163);
                        }
                     }
                     return;
                  }
                  addr82:
                  §§goto(addr84);
                  §§push(_loc2_.gameObj);
               }
            }
            else
            {
               try
               {
                  §§push(_loc2_.gameObj.§_-A5§);
                  if(_loc4_)
                  {
                     §§push(§§pop().isActive);
                     if(_loc4_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           §§goto(addr54);
                           §§push(_loc2_.gameObj);
                        }
                        else
                        {
                           §§push(_loc2_.gameObj.§_-3N§.isActive);
                           if(_loc5_)
                           {
                           }
                           addr110:
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(_loc2_.gameObj);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop().soundManager);
                                    if(_loc4_)
                                    {
                                       §§goto(addr125);
                                    }
                                    else
                                    {
                                       addr145:
                                       §§pop().switchMusic("build");
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr160);
                              }
                              §§goto(addr162);
                           }
                           else
                           {
                              §§push(_loc2_.gameObj.§_-7q§.isActive);
                              if(_loc5_ && param1)
                              {
                              }
                              addr152:
                              if(§§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr163);
                                 }
                              }
                           }
                        }
                        §§goto(addr163);
                     }
                     addr139:
                     if(§§pop())
                     {
                        addr142:
                        §§push(_loc2_.gameObj.soundManager);
                        if(!_loc5_)
                        {
                           §§goto(addr145);
                        }
                        else
                        {
                           §§goto(addr163);
                        }
                     }
                     else
                     {
                        §§goto(addr152);
                        §§push(_loc2_.gameObj.§_-Bg§.isActive);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr71);
               }
               catch(err:Error)
               {
               }
            }
            §§goto(addr163);
            err = §§pop();
            §§goto(addr163);
         }
         if(§§pop())
         {
            §§goto(addr82);
         }
         else
         {
            §§push(_loc2_.gameObj);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§push(§§pop().§_-8f§.isActive);
               if(_loc4_)
               {
                  §§goto(addr110);
               }
               §§goto(addr139);
            }
            §§goto(addr142);
         }
      }
      
      public function getSectionTitle() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MainMenuScreen = this;
         if(_loc2_ || Boolean(_loc1_))
         {
            §§push(_loc1_.currentSection);
            if(_loc2_)
            {
               if(§§pop() == "info")
               {
                  return "INFO";
               }
               §§push(_loc1_.currentSection);
               if(_loc2_)
               {
                  if(§§pop() == "credits")
                  {
                     return "CREDITS";
                  }
                  §§push(_loc1_.currentSection);
                  if(_loc3_)
                  {
                  }
               }
               addr72:
               if(§§pop() == "customers")
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return "CUSTOMERS";
                  }
               }
               else
               {
                  §§goto(addr107);
               }
            }
            if(§§pop() == "help")
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  return "HELP";
               }
               §§goto(addr105);
            }
            else
            {
               §§push(_loc1_.currentSection);
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr72);
               }
            }
            addr107:
            §§push(_loc1_.currentSection);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != "medals")
               {
                  addr105:
                  §§push(_loc1_.currentSection);
               }
            }
            return §§pop().toUpperCase();
         }
         return "BADGES";
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MainMenuScreen = this;
         _loc1_.container.removeEventListener("clickInfo",_loc1_.clickInfo);
         if(!_loc2_)
         {
            _loc1_.container.removeEventListener("clickCustomers",_loc1_.clickCustomers);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.container.addEventListener("clickMedals",_loc1_.clickMedals);
               if(_loc2_ && _loc3_)
               {
               }
            }
            §§goto(addr72);
         }
         _loc1_.container.removeEventListener("clickCredits",_loc1_.clickCredits);
         if(!_loc2_)
         {
            _loc1_.container.removeEventListener("clickHelp",_loc1_.clickHelp);
         }
         addr72:
         _loc1_.container.removeEventListener("clickBackToGame",_loc1_.clickBackToGame);
         _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
         if(_loc3_)
         {
            _loc1_.setupInfo(false);
            _loc1_.setupCustomers(false);
            _loc1_.setupMedals(false);
         }
         _loc1_.setupHelp(false);
         _loc1_.setupCredits(false);
         _loc1_.setupConfirmQuit(false);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.container.removeChild(_loc1_.clip);
            _loc1_.clip = null;
         }
      }
      
      public function setupMedals(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:ChallengeManager = _loc2_.gameObj.challengeManager;
         if(!_loc5_)
         {
            _loc2_.medalsPage = 0;
            _loc2_.medalsDirection = "next";
            _loc2_.medalsTransitioning = true;
            if(param1)
            {
               _loc2_.clip.medals.next_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickNextMedals);
               _loc2_.clip.medals.prev_btn.addEventListener(MouseEvent.CLICK,_loc2_.clickPrevMedals);
               _loc2_.clip.medals.prev_btn.visible = false;
               _loc2_.clip.medals.total_txt.text = String(_loc3_.getTotalBadgesEarned() + "/" + _loc4_.getNumberOfBadges());
               _loc2_.populateMedals();
               if(!(_loc5_ && param1))
               {
                  _loc2_.clip.medals.panel.addEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
                  if(_loc5_)
                  {
                  }
               }
               addr148:
               _loc2_.clip.medals.panel.removeEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
            }
            else
            {
               _loc2_.clip.medals.next_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickNextMedals);
               if(_loc6_)
               {
                  _loc2_.clip.medals.prev_btn.removeEventListener(MouseEvent.CLICK,_loc2_.clickPrevMedals);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     if(_loc2_.clip.medals.panel.hasEventListener(Event.ENTER_FRAME))
                     {
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
      }
      
      public function getDesaturatedFilter() : ColorMatrixFilter
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(0.212671);
         if(_loc4_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(0.71516);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(0.072169);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         return new ColorMatrixFilter([_loc1_,_loc2_,_loc3_,0,0,_loc1_,_loc2_,_loc3_,0,0,_loc1_,_loc2_,_loc3_,0,0,0,0,0,1,0]);
      }
      
      public function populateMedals() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:MovieClip = null;
         var _loc10_:* = NaN;
         var _loc1_:MainMenuScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:ChallengeManager = _loc1_.gameObj.challengeManager;
         §§push(0);
         §§push(_loc1_.medalsPage);
         if(_loc11_ || Boolean(this))
         {
            §§push(§§pop() * _loc1_.medalsPerPage);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc12_ && Boolean(_loc1_)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = Math.min(_loc3_.getNumberOfBadges() - 1,_loc4_ + (_loc1_.medalsPerPage - 1));
         §§push(_loc5_);
         if(!(_loc12_ && Boolean(_loc3_)))
         {
            §§push(§§pop() - _loc4_);
            if(_loc11_)
            {
               §§push(§§pop() + 1);
               if(_loc11_ || Boolean(_loc2_))
               {
               }
            }
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         var _loc7_:int = 0;
         while(_loc7_ < _loc1_.medalsPerPage)
         {
            _loc9_ = _loc1_.clip.medals.panel["panel" + (_loc7_ + 1)];
            if(_loc11_)
            {
               §§push(_loc7_);
               if(_loc11_)
               {
                  §§push(_loc4_);
                  if(_loc11_)
                  {
                     addr180:
                     §§push(§§pop() + §§pop());
                     if(_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc11_)
                        {
                           _loc10_ = §§pop();
                           §§push(_loc7_);
                        }
                     }
                     if(§§pop() > 0)
                     {
                        _loc9_.tickets_txt.text = String(_loc3_.getChallengeTicketAmount(_loc10_));
                        if(_loc11_ || Boolean(this))
                        {
                           _loc9_.ticketicon.visible = true;
                           if(_loc11_ || Boolean(_loc1_))
                           {
                           }
                           addr227:
                           if(_loc2_.hasBadge(_loc10_))
                           {
                              addr231:
                              _loc9_.earned.visible = true;
                              _loc9_.thumb.filters = [];
                              if(!_loc11_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              _loc9_.earned.visible = false;
                           }
                           addr252:
                        }
                        addr246:
                        _loc9_.thumb.filters = [_loc1_.getDesaturatedFilter()];
                        §§goto(addr252);
                     }
                     else
                     {
                        _loc9_.tickets_txt.text = "";
                        if(!_loc12_)
                        {
                           _loc9_.ticketicon.visible = false;
                        }
                     }
                     _loc9_.thumb.gotoAndStop(_loc10_ + 1);
                     if(_loc11_)
                     {
                        §§goto(addr227);
                     }
                     §§goto(addr231);
                  }
                  addr122:
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc12_ && Boolean(_loc3_)))
                     {
                        _loc9_.visible = true;
                        if(!(_loc12_ && Boolean(_loc1_)))
                        {
                           _loc9_.title_txt.text = _loc3_.getChallengeTitle(_loc10_);
                           _loc9_.description_txt.text = _loc3_.getChallengeDescription(_loc10_) + " " + _loc3_.getBadgeTallyString(_loc10_);
                           _loc9_.reward_txt.text = "+ $" + §_-9m§.§_-3E§(_loc3_.getChallengeRewardAmount(_loc10_) / 100);
                           §§goto(addr180);
                           §§push(_loc3_.getChallengeTicketAmount(_loc10_));
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr246);
                  }
                  else
                  {
                     _loc9_.visible = false;
                  }
               }
               §§goto(addr122);
               §§push(_loc6_);
            }
            _loc7_++;
         }
         var _loc8_:Number = Math.ceil(_loc3_.getNumberOfBadges() / _loc1_.medalsPerPage);
         if(_loc11_)
         {
            §§push(_loc1_.medalsPage);
            if(!_loc12_)
            {
               if(§§pop() > 0)
               {
                  _loc1_.clip.medals.prev_btn.visible = true;
               }
               else
               {
                  _loc1_.clip.medals.prev_btn.visible = false;
               }
            }
            §§goto(addr293);
         }
         addr293:
         §§push(_loc8_);
         if(_loc11_ || Boolean(_loc1_))
         {
            §§push(§§pop() - 1);
         }
         if(§§pop() < §§pop())
         {
            _loc1_.clip.medals.next_btn.visible = true;
         }
         else
         {
            _loc1_.clip.medals.next_btn.visible = false;
         }
         _loc1_.clip.medals.page_txt.text = _loc1_.medalsPage + 1 + " / " + _loc8_;
         if(_loc1_.medalsDirection == "next")
         {
            _loc1_.clip.medals.panel.gotoAndPlay("innext");
         }
         else
         {
            _loc1_.clip.medals.panel.gotoAndPlay("inprev");
         }
         _loc1_.medalsPage;
      }
      
      public function clickNextMedals(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
         if(_loc6_)
         {
            if(!_loc2_.medalsTransitioning)
            {
               var _loc3_:* = _loc2_;
               §§push(_loc3_.medalsPage);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc3_.medalsPage = _loc4_;
               }
               if(!_loc5_)
               {
                  _loc2_.medalsDirection = "next";
               }
            }
            §§goto(addr88);
         }
         _loc2_.medalsTransitioning = true;
         if(!_loc5_)
         {
            _loc2_.clip.medals.panel.gotoAndPlay("outnext");
            if(_loc6_)
            {
               _loc2_.clip.medals.panel.addEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
            }
         }
         addr88:
      }
      
      public function clickPrevMedals(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:MainMenuScreen = this;
         if(!_loc5_)
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(!_loc2_.medalsTransitioning)
            {
               if(_loc6_ || _loc3_)
               {
               }
               addr71:
               _loc2_.medalsTransitioning = true;
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc2_.clip.medals.panel.gotoAndPlay("outprev");
               }
               _loc2_.clip.medals.panel.addEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
            }
            return;
         }
         var _loc3_:* = _loc2_;
         §§push(_loc3_.medalsPage);
         if(_loc6_)
         {
            §§push(§§pop() - 1);
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || Boolean(_loc2_))
         {
            _loc3_.medalsPage = _loc4_;
         }
         _loc2_.medalsDirection = "prev";
         if(_loc6_ || Boolean(_loc3_))
         {
         }
         §§goto(addr71);
      }
      
      public function animateMedalsTransition(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainMenuScreen = this;
         §§push(_loc2_.clip.medals.panel.currentLabel == "outnextframe");
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(§§pop());
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(_loc2_.clip.medals.panel.currentLabel == "outprevframe");
                     if(_loc4_)
                     {
                     }
                     §§goto(addr82);
                  }
               }
            }
            addr79:
            if(!§§pop())
            {
               if(_loc3_)
               {
                  addr82:
                  §§pop();
                  if(_loc3_)
                  {
                     addr92:
                     if(_loc2_.clip.medals.panel.currentLabel == "inprevframe")
                     {
                        if(!_loc4_)
                        {
                           _loc2_.clip.medals.panel.removeEventListener(Event.ENTER_FRAME,_loc2_.animateMedalsTransition);
                        }
                     }
                     §§goto(addr114);
                  }
                  _loc2_.medalsTransitioning = false;
                  addr114:
                  return;
               }
            }
            §§goto(addr92);
         }
         if(§§pop())
         {
            _loc2_.populateMedals();
            if(_loc4_ && Boolean(_loc2_))
            {
            }
         }
         else
         {
            §§push(_loc2_.clip.medals.panel.currentLabel == "innextframe");
            if(_loc3_)
            {
               §§goto(addr79);
               §§push(§§pop());
            }
            §§goto(addr92);
         }
         §§goto(addr92);
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:BitmapData = null;
         var _loc1_:MainMenuScreen = this;
         var _loc2_:GiveOrderScreen = _loc1_.gameObj.§_-Bq§;
         var _loc3_:Bitmap = null;
         if(_loc6_ || Boolean(_loc2_))
         {
            §§push(_loc2_ == null);
            if(_loc6_ || Boolean(_loc1_))
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                     }
                  }
               }
               §§goto(addr79);
            }
            §§pop();
            if(_loc6_ || Boolean(this))
            {
               §§push(_loc2_.backdropBitmap == null);
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§push(!§§pop());
               }
               §§goto(addr79);
            }
         }
         _loc4_ = _loc2_.backdropBitmap.bitmapData.clone();
         _loc3_ = new Bitmap(_loc4_);
         addr79:
         if(!§§pop())
         {
            _loc3_ = new Bitmap();
         }
         return _loc3_;
      }
   }
}

