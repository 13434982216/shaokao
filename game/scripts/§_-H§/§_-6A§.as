package §_-H§
{
   import Playtomic.*;
   import §_-1d§.§_-BY§;
   import §_-3O§.*;
   import §_-5m§.*;
   import §_-C2§.§_-0i§;
   import §_-C2§.§_-5i§;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.system.Security;
   import mochi.as3.*;
   import wingGame.data.UserData;
   import wingGame.managers.ChallengeManager;
   
   public class §_-6A§
   {
      public var gameObj:§_-BY§;
      
      public var api:§_-2w§;
      
      private var §_-3S§:String = "wingeria_leaderboard";
      
      public var §_-E7§:String = "v 1.0";
      
      public var §_-8b§:Boolean = false;
      
      public var §true§:Boolean = false;
      
      public var §_-3p§:*;
      
      private var §_-D3§:String = "http://agi.armorgames.com/assets/agi/AGI.swf";
      
      private var §_-4Z§:String = "b9365840087d7a22e59e3ab63810af79";
      
      private var §_-54§:String = "papas-freezeria";
      
      private var §for§:Loader;
      
      private var §_-A4§:*;
      
      private var §_-5h§:Loader;
      
      public var §_-Cu§:Boolean = false;
      
      public function §_-6A§(param1:§_-BY§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this.gameObj = param1;
            }
         }
      }
      
      public function §_-DV§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-6A§ = this;
         Security.allowDomain(_loc1_.§_-D3§);
         if(_loc2_)
         {
            if(!§_-0i§.§_-24§())
            {
               §_-5i§.info("Connect to Armor API");
            }
            else
            {
               §_-5i§.info("On License Site, do not init AGI.");
            }
            §§goto(addr89);
         }
         _loc1_.§for§ = new Loader();
         if(_loc2_)
         {
            _loc1_.§for§.contentLoaderInfo.addEventListener(Event.COMPLETE,_loc1_.§_-6i§);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.§for§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,_loc1_.§_-Cz§);
            }
            §§goto(addr89);
         }
         _loc1_.§for§.load(new URLRequest(_loc1_.§_-D3§));
         if(_loc3_ && Boolean(_loc1_))
         {
         }
         addr89:
      }
      
      public function §_-6i§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-6A§ = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.§_-3p§ = param1.currentTarget.content;
            if(_loc3_)
            {
            }
            §§goto(addr57);
         }
         _loc2_.gameObj.addChild(_loc2_.§_-3p§);
         if(_loc4_ || Boolean(_loc2_))
         {
            §§goto(addr57);
         }
         addr57:
         _loc2_.§_-3p§.init(_loc2_.§_-4Z§,_loc2_.§_-54§);
      }
      
      public function §_-Cz§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-6A§ = this;
         if(_loc3_)
         {
            §_-5i§.info("Error loading Armor API. Skip.");
            if(_loc4_ && Boolean(_loc2_))
            {
            }
            §§goto(addr46);
         }
         §_-5i§.info(param1.text);
         addr46:
      }
      
      public function §_-Co§(param1:*, param2:MovieClip, param3:String = null, param4:String = null, param5:Array = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§_-6A§ = this;
         if(_loc6_.§_-3p§)
         {
            if(!(_loc7_ && Boolean(param3)))
            {
               _loc6_.§_-3p§.showScoreboardSubmit(param1,param3,param4,param5,param2);
            }
         }
      }
      
      public function §_-2B§(param1:MovieClip, param2:String, param3:Array = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-6A§ = this;
         if(_loc4_.§_-3p§)
         {
            if(!(_loc5_ && Boolean(param2)))
            {
               _loc4_.§_-3p§.showScoreboardList(param3,param2,param1);
            }
         }
      }
      
      public function §_-Ep§(param1:Number, param2:Number, param3:*, param4:DisplayObject = null, param5:Number = 1, param6:* = null) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:§_-6A§ = this;
         var _loc8_:Object = new Object();
         _loc8_.x = param1;
         if(_loc10_)
         {
            _loc8_.y = param2;
            _loc8_.onClose = param3;
            _loc8_.scale = param5;
         }
         if(param4 != null)
         {
            if(!(_loc9_ && Boolean(this)))
            {
               _loc8_.iconGraphic = param4;
            }
            addr72:
            if(_loc7_.§_-3p§)
            {
               if(_loc10_)
               {
                  addr77:
                  _loc7_.§_-3p§.initAGUI(_loc8_);
               }
            }
            §§goto(addr81);
         }
         if(param6 != null)
         {
            if(_loc10_)
            {
               _loc8_.onError = param6;
               if(_loc9_)
               {
               }
               §§goto(addr77);
            }
            addr81:
            return;
         }
         §§goto(addr72);
      }
      
      public function §use§() : void
      {
         var ob:§_-6A§;
         var url:String;
         var splash:§_-9L§;
         var slots:§_-9L§;
         var chareditor:§_-9L§;
         var end:§_-9L§;
         var startday:§_-9L§;
         var shop:§_-9L§;
         var mainmenu:§_-9L§;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§pop().§§slot[1] = this;
            addr35:
            if(_loc3_)
            {
               §§push(§§newactivation());
            }
            if(ExternalInterface.available)
            {
               try
               {
                  addr38:
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§pop().§§slot[2] = String(ExternalInterface.call("window.location.href.toString"));
                     if(_loc4_ && Boolean(this))
                     {
                     }
                     addr840:
                     shop.§_-D§("Leave Shop ►","clickBackToGame",false,false);
                     addr857:
                     mainmenu = ob.api.§_-5x§("MainMenu","wingGame.screens.MainMenuScreen",true,"INFO",true,"top right");
                     addr859:
                     §§push(§§newactivation());
                     if(_loc3_)
                     {
                        addr862:
                        §§push(§§pop().§§slot[9]);
                        if(_loc3_ || Boolean(this))
                        {
                           §§pop().§_-D§("Back to Game ►","clickBackToGame",false,false);
                           if(!_loc4_)
                           {
                              mainmenu.§_-Er§("INFO","clickInfo");
                              if(_loc3_)
                              {
                                 §§push(mainmenu);
                                 if(_loc4_ && _loc2_)
                                 {
                                 }
                                 addr1036:
                                 §§pop().§_-6E§(true,"bottom right",§_-77§.§_-4c§(),false,"small");
                              }
                              addr989:
                              §§push(§§newactivation());
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr997:
                                 §§push(§§pop().§§slot[9]);
                                 if(!_loc4_)
                                 {
                                    §§push(true);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push("bottom right");
                                       if(_loc3_)
                                       {
                                          §§push(§_-77§.§_-8T§());
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop().§_-40§(§§pop(),§§pop(),§§pop(),"small");
                                             addr1022:
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1036);
                              }
                              else
                              {
                                 addr1024:
                                 §§push(§§pop().§§slot[9]);
                              }
                              §§goto(addr1036);
                           }
                           addr1041:
                           ob.§_-6w§();
                           addr1039:
                        }
                        §§pop().§_-Er§("CUSTOMERS","clickCustomers");
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              §§pop().§§slot[9].§_-Er§("BADGES","clickMedals");
                              §§push(§§newactivation());
                              if(_loc3_)
                              {
                              }
                              §§goto(addr1024);
                           }
                           addr913:
                           §§push(§§pop().§§slot[9]);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().§_-Er§("HELP","clickHelp");
                              addr925:
                              mainmenu.§_-Er§("CREDITS","clickCredits");
                              §§push(§§newactivation());
                              if(_loc3_ || _loc1_)
                              {
                                 §§pop().§§slot[9].§_-8h§("QUIT","clickQuit",true);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc4_ && Boolean(this))
                                    {
                                    }
                                    §§goto(addr997);
                                 }
                                 addr984:
                                 if(§_-0i§.§_-24§())
                                 {
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr1024);
                              }
                              addr924:
                           }
                           addr965:
                           §§push(true);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop().§_-3R§(§§pop(),"bottom left",§_-77§.§_-DB§());
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§goto(addr984);
                              }
                              §§goto(addr1022);
                           }
                           §§goto(addr1036);
                        }
                        §§goto(addr989);
                     }
                     addr848:
                     §§push(§§pop().§§slot[9]);
                     if(_loc3_ || _loc1_)
                     {
                        §§goto(addr965);
                     }
                     §§goto(addr1036);
                     addr850:
                     addr848:
                     addr839:
                  }
                  addr333:
                  addr332:
                  §§push(§§pop().§§slot[3]);
                  §§push("http://www.flipline.com/games/papastacomia/index.html?utm_source=promo_panel&utm_medium=papastacomia&utm_campaign=papaswingeria");
                  if(_loc3_ || Boolean(this))
                  {
                     §§pop().§_-8j§(§§pop());
                     if(!_loc4_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop().§§slot[3]);
                           §§push("http://www.flipline.com/games/papasfreezeria/index.html?utm_source=promo_panel&utm_medium=papasfreezeria&utm_campaign=papaswingeria");
                           if(!(_loc4_ && _loc1_))
                           {
                              §§pop().§_-8j§(§§pop());
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(splash);
                                 if(!_loc4_)
                                 {
                                    §§push("http://www.flipline.com/games/papaspancakeria/index.html?utm_source=promo_panel&utm_medium=papaspancakeria&utm_campaign=papaswingeria");
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().§_-8j§(§§pop());
                                       addr382:
                                    }
                                    else
                                    {
                                       addr460:
                                       §§pop().§_-8j§(§§pop());
                                    }
                                    §§push(§§newactivation());
                                    §§push(§§newactivation());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§§pop().§§slot[1]);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop().api.§_-5x§("SlotSelect","wingGame.screens.SlotSelectScreen",true,"CHOOSE A SLOT",true,"top right"));
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop().§§slot[4] = §§pop();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[4].§_-8h§("BACK","clickBack",true);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop().§§slot[1].api);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§pop().§§slot[5] = §§pop().§_-5x§("CharacterEditor","wingGame.screens.CharacterEditorScreen",true,"CREATE YOUR CHARACTER",true,"top right",false,true);
                                                            addr548:
                                                            §§push(chareditor);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§pop().§_-8h§("BACK","clickBack",true);
                                                               §§push(§§newactivation());
                                                            }
                                                            §§pop().§_-D§("Continue ►","clickContinue",false,false);
                                                            §§push(§§newactivation());
                                                            §§push(§§newactivation());
                                                         }
                                                         §§goto(addr850);
                                                      }
                                                      §§goto(addr848);
                                                   }
                                                   addr692:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§pop().§§slot[7].§_-Er§("View Parade","clickParade",true,130);
                                                      if(_loc3_)
                                                      {
                                                         startday.§_-Er§("Visit Shop","clickShop",true,130);
                                                         startday.§_-Er§("Decorate Lobby","clickEditLobby",true,130);
                                                         addr722:
                                                         §§push(startday);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§pop().§_-D§("Continue ►","clickContinue",false,true,-1,true);
                                                            addr738:
                                                            §§push(§§newactivation());
                                                            if(_loc3_)
                                                            {
                                                            }
                                                            addr812:
                                                            §§push(§§newactivation());
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop().§§slot[1]);
                                                            }
                                                            §§goto(addr848);
                                                         }
                                                         addr808:
                                                         §§pop().§_-6E§(true,"bottom right",§_-77§.§_-4c§(),false,"small");
                                                         addr811:
                                                         §§goto(addr812);
                                                         §§push(§§newactivation());
                                                         addr804:
                                                         addr805:
                                                         addr806:
                                                      }
                                                      §§goto(addr924);
                                                   }
                                                   §§goto(addr925);
                                                }
                                                addr624:
                                                §§push(§§pop().§§slot[6]);
                                                if(!_loc4_)
                                                {
                                                   §§push(true);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push("bottom right");
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(§_-77§.§_-8T§());
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§pop().§_-40§(§§pop(),§§pop(),§§pop(),"small");
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                            }
                                                            addr794:
                                                            §§goto(addr811);
                                                         }
                                                      }
                                                      addr668:
                                                      §§pop().§_-6E§(§§pop(),§§pop(),§§pop(),false,"small");
                                                   }
                                                   addr666:
                                                   §§goto(addr668);
                                                   §§push(§_-77§.§_-4c§());
                                                }
                                                else
                                                {
                                                   addr664:
                                                   §§push(true);
                                                }
                                                §§goto(addr666);
                                                §§push("bottom right");
                                             }
                                             §§goto(addr1022);
                                          }
                                          §§goto(addr857);
                                       }
                                       §§push(§§pop().api.§_-5x§("ShopScreen","wingGame.screens.ShopScreen",false,"",false,"",false,false,false,true));
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr835:
                                          §§pop().§§slot[8] = §§pop();
                                          if(_loc3_)
                                          {
                                             §§goto(addr839);
                                          }
                                          §§goto(addr925);
                                       }
                                       §§goto(addr857);
                                    }
                                    §§push(§§pop().§§slot[1].api);
                                    if(_loc3_)
                                    {
                                       §§pop().§§slot[6] = §§pop().§_-5x§("EndOfDay","wingGame.screens.EndOfDayScreen",true,"TODAY\'S SERVICE",true,"top right");
                                       §§push(end);
                                       if(_loc3_)
                                       {
                                          §§pop().§_-8h§("QUIT","clickQuit",true);
                                          addr577:
                                          §§push(end);
                                          if(_loc3_)
                                          {
                                             §§pop().§_-Er§("Submit Score","clickSubmitScore",true);
                                             if(_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(§§pop().§§slot[6]);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().§_-D§("Continue ►","clickContinue",false,true);
                                                      §§push(end);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(true);
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().§_-3R§(§§pop(),"bottom left",§_-77§.§_-DB§());
                                                            §§push(§_-0i§.§_-24§());
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               addr622:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr624);
                                                                  §§push(§§newactivation());
                                                               }
                                                               else
                                                               {
                                                                  addr663:
                                                                  §§push(end);
                                                               }
                                                            }
                                                            §§goto(addr984);
                                                         }
                                                         §§goto(addr624);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1024);
                                             }
                                          }
                                       }
                                       §§goto(addr664);
                                    }
                                    addr677:
                                    §§pop().§§slot[7] = §§pop().§_-5x§("StartDayPanel","wingGame.screens.StartDayPanel",false,"",true,"top right");
                                    startday.§_-8h§("QUIT","clickQuit",true);
                                    §§goto(addr692);
                                 }
                                 else
                                 {
                                    addr437:
                                    §§pop().§_-8j§("http://www.flipline.com/games/papasburgeria/index.html?utm_source=promo_panel&utm_medium=papasburgeria&utm_campaign=papaswingeria");
                                    addr436:
                                    §§push(splash);
                                    §§push("http://www.flipline.com/games/papastacomia/index.html?utm_source=promo_panel&utm_medium=papastacomia&utm_campaign=papaswingeria");
                                 }
                                 addr741:
                                 §§push(§§pop().§§slot[7]);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(true);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§pop().§_-3R§(§§pop(),"bottom left",§_-77§.§_-DB§());
                                       §§push(§_-0i§.§_-24§());
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(startday);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr804);
                                                }
                                             }
                                             §§goto(addr859);
                                          }
                                          else
                                          {
                                             §§push(§§newactivation());
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§goto(addr811);
                                                §§push(§§pop().§§slot[7]);
                                             }
                                          }
                                          §§goto(addr913);
                                       }
                                       §§goto(addr984);
                                    }
                                    §§goto(addr805);
                                 }
                                 §§push(true);
                                 if(_loc3_)
                                 {
                                    §§push("bottom right");
                                    if(_loc3_)
                                    {
                                       §§push(§_-77§.§_-8T§());
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§pop().§_-40§(§§pop(),§§pop(),§§pop(),"small");
                                          §§goto(addr794);
                                       }
                                       §§goto(addr811);
                                    }
                                 }
                                 §§goto(addr808);
                              }
                              §§push(§§newactivation());
                              §§push(§§newactivation());
                              if(!_loc4_)
                              {
                                 addr675:
                                 §§goto(addr677);
                                 §§push(§§pop().§§slot[1].api);
                              }
                              §§goto(addr857);
                           }
                           addr454:
                           §§pop().§_-8j§(§§pop());
                           if(_loc3_)
                           {
                              addr459:
                              §§goto(addr460);
                              §§push(splash);
                              §§push("http://www.flipline.com/games/papaspancakeria/index.html?utm_source=promo_panel&utm_medium=papaspancakeria&utm_campaign=papaswingeria");
                           }
                           §§goto(addr925);
                        }
                        §§goto(addr548);
                        §§push(§§pop().§§slot[5]);
                     }
                     §§goto(addr1039);
                  }
                  §§pop().§_-8j§(§§pop());
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§push(§§pop().§§slot[3]);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr453:
                        §§goto(addr454);
                        §§push("http://www.flipline.com/games/papasfreezeria/index.html?utm_source=promo_panel&utm_medium=papasfreezeria&utm_campaign=papaswingeria");
                     }
                     §§goto(addr459);
                  }
                  §§goto(addr741);
               }
               catch(err:Error)
               {
                  var _loc2_:* = err;
                  url = "Error Calling XX: " + err.message;
               }
               §§goto(addr1042);
            }
            §_-5i§.§_-CE§("[XI]: " + url);
            if(!(_loc4_ && _loc1_))
            {
               §§push(ob);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§pop().api = new §_-2w§(ob.gameObj,ob.gameObj.§_-BG§,640,480);
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§push(§§pop().§§slot[1]);
                     if(_loc3_)
                     {
                        §§pop().api.§_-5R§(§_-77§.§_-0H§(),§_-77§.§_-Bz§(),§_-77§.§_-5M§());
                        if(_loc3_)
                        {
                           §§push(ob);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr1041);
                        }
                        §§goto(addr722);
                     }
                  }
                  §§goto(addr663);
               }
               §§pop().§_-6s§();
               §§push(§§newactivation());
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§push(§§pop().§§slot[1].api.§_-5x§("SplashScreen","wingGame.screens.SplashScreen",false,"",true,"bottom right",false,false,true));
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().§§slot[3] = §§pop();
                     §§push(§§newactivation());
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().§§slot[3].§_-D§("Play ►","clickStart",true,false,-1,true);
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           §§push(§§pop().§§slot[3]);
                           if(!(_loc4_ && _loc1_))
                           {
                              §§pop().§_-3R§(true,"top left",§_-0i§.§_-1y§("31000100011201120108005400430043011501150115004200980104010101080104010101060097004200950107010500590113011201050091011101070113011000950097005700990093010500970091010401010106010301110034011301120105009101050097009601010113010500570112010101120104009701110095011000970097010600910104010700990107003401130112010500910095009301050108009301010099010600570108009301080093011101150101010600990097011001010093"),true,"large");
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().§§slot[3]);
                                    if(!_loc4_)
                                    {
                                       §§push(true);
                                       if(!_loc4_)
                                       {
                                          §§pop().§_-V§(§§pop(),§_-0i§.§_-1y§("2580100011201120108005400430043011501150115004200980104010101080104010101060097004200950107010500430108009301080093011101150101010600990097011001010093009101040101009500970106011100970110009700960101011000970095011200420100011201050104"));
                                          if(!_loc4_)
                                          {
                                             §§push(splash);
                                             §§push(true);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§pop().§_-B8§(§§pop(),"Game and Characters (c) 2012 Flipline Studios. All Rights Reserved.");
                                                if(!_loc4_)
                                                {
                                                   §§push(§_-0i§.§_-24§());
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop().§§slot[3]);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(true);
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            else
                                                            {
                                                               addr391:
                                                               §§push(§§pop().§§slot[3]);
                                                               §§push(true);
                                                               §§push("top right");
                                                            }
                                                            addr397:
                                                            §§pop().§_-6E§(§§pop(),§§pop(),§_-0i§.§_-1y§("310101000112011201080054004300430115011501150042010800930108009301040107011301010097004200950107010500590113011201050091011101070113011000950097005700990093010500970091010401010106010301110034011301120105009101050097009601010113010500570112010101120104009701110095011000970097010600910104010700990107003401130112010500910095009301050108009301010099010600570108009301080093011101150101010600990097011001010093"),true,"large");
                                                            addr394:
                                                            §§push(splash);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               addr409:
                                                               §§pop().§_-1G§();
                                                               §§push(splash);
                                                               if(_loc3_)
                                                               {
                                                                  addr415:
                                                                  §§pop().§_-EZ§(true,"http://www.facebook.com/pages/Flipline-Studios/121045844606187",true,"http://www.twitter.com/FliplineStudios");
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop().§§slot[3]);
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr857);
                                                               }
                                                               §§goto(addr453);
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr548);
                                                      }
                                                      else
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            §§goto(addr391);
                                                         }
                                                      }
                                                      §§goto(addr577);
                                                   }
                                                   §§goto(addr622);
                                                }
                                                §§goto(addr857);
                                             }
                                             §§push("top right");
                                             if(!_loc4_)
                                             {
                                                §§push(§_-77§.§_-8T§());
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§pop().§_-40§(§§pop(),§§pop(),§§pop(),"large");
                                                   splash.§_-Er§("HIGH SCORES","clickHighScores");
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().§_-9N§("MORE GAMES",§_-77§.§_-8T§());
                                                         if(!_loc4_)
                                                         {
                                                            §§push(splash);
                                                         }
                                                         §§goto(addr738);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr409);
                                                      }
                                                   }
                                                   §§goto(addr624);
                                                }
                                                §§goto(addr436);
                                             }
                                             else
                                             {
                                                §§goto(addr394);
                                             }
                                          }
                                          §§goto(addr382);
                                       }
                                       addr305:
                                       §§pop().§_-1G§(§§pop());
                                       §§push(§§newactivation());
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop().§§slot[3]);
                                          if(!_loc4_)
                                          {
                                             §§push("http://www.flipline.com/games/papaspizzeria/index.html?utm_source=promo_panel&utm_medium=papaspizzeria&utm_campaign=papaswingeria");
                                             if(!_loc4_)
                                             {
                                                §§pop().§_-8j§(§§pop());
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(splash);
                                                }
                                                §§goto(addr857);
                                             }
                                             else
                                             {
                                                addr431:
                                                §§pop().§_-8j§(§§pop());
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr436);
                                                   §§push(§§pop().§§slot[3]);
                                                }
                                             }
                                             §§goto(addr862);
                                          }
                                          §§push("http://www.flipline.com/games/papasburgeria/index.html?utm_source=promo_panel&utm_medium=papasburgeria&utm_campaign=papaswingeria");
                                          if(!_loc4_)
                                          {
                                             §§pop().§_-8j§(§§pop());
                                             if(_loc3_)
                                             {
                                                §§goto(addr332);
                                                §§push(§§newactivation());
                                             }
                                             addr1042:
                                             return;
                                          }
                                          §§goto(addr437);
                                       }
                                       §§goto(addr1024);
                                    }
                                    §§goto(addr431);
                                    §§push("http://www.flipline.com/games/papaspizzeria/index.html?utm_source=promo_panel&utm_medium=papaspizzeria&utm_campaign=papaswingeria");
                                 }
                              }
                              §§goto(addr692);
                           }
                           §§push(true);
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr305);
                           }
                           else
                           {
                              §§goto(addr415);
                           }
                        }
                        §§goto(addr913);
                     }
                     §§goto(addr840);
                  }
                  §§goto(addr835);
               }
               §§goto(addr675);
            }
            §§goto(addr925);
         }
         §§pop().§§slot[2] = "???";
         if(_loc3_)
         {
            §§goto(addr35);
         }
         §§goto(addr38);
      }
      
      public function §_-74§(param1:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-6A§ = this;
         if(_loc3_)
         {
            _loc2_.api.§_-74§(param1);
         }
      }
      
      public function submitScore(param1:Number, param2:String = "Anonymous", param3:Function = null, param4:Object = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-6A§ = this;
         if(!(_loc7_ && Boolean(param1)))
         {
            addr103:
            if(!§_-0i§.§_-24§())
            {
               if(_loc6_ || Boolean(this))
               {
               }
               §§goto(addr105);
            }
            else
            {
               §§push(_loc5_.api);
            }
            §§pop().§_-4j§(_loc5_.§_-3S§,param3,true,true,true,param2,param1,param4);
            §§goto(addr105);
         }
         §§push(_loc5_.api);
         if(!(_loc7_ && Boolean(this)))
         {
            §§push(_loc5_.§_-3S§);
            if(!(_loc7_ && Boolean(param1)))
            {
               §§push(param3);
               if(_loc6_)
               {
                  §§push(true);
                  if(!_loc7_)
                  {
                     §§push(true);
                     if(_loc6_)
                     {
                        §§push(true);
                        if(_loc6_)
                        {
                           §§push(param2);
                           if(_loc6_)
                           {
                              §§push(param1);
                              if(_loc6_)
                              {
                                 §§pop().§_-4j§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param4);
                                 if(_loc6_ || Boolean(param3))
                                 {
                                 }
                              }
                              addr105:
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §_-8N§(param1:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-6A§ = this;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(!§_-0i§.§_-24§())
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc2_.api);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§push(_loc2_.§_-3S§);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().§_-4j§(§§pop(),§§pop());
                           if(_loc4_ || _loc3_)
                           {
                           }
                        }
                     }
                     addr88:
                     §§pop().§_-4j§(§§pop(),§§pop());
                  }
                  addr87:
                  §§goto(addr88);
                  §§push(param1);
               }
            }
            else
            {
               §§push(_loc2_.api);
            }
            §§goto(addr87);
            §§push(_loc2_.§_-3S§);
         }
      }
      
      public function §_-CO§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§_-6A§ = this;
         try
         {
            if(!§_-0i§.§_-24§())
            {
               if(_loc4_ || Boolean(_loc1_))
               {
                  §§push(_loc1_.api);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop().§_-8W§();
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
                  addr55:
               }
               §§goto(addr55);
            }
            else
            {
               §§push(_loc1_.api);
            }
            §§pop().§_-8W§();
            §§goto(addr55);
         }
         catch(err:Error)
         {
         }
      }
      
      private function §_-BT§() : LoaderInfo
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LoaderInfo = this.gameObj.root.loaderInfo;
         if(_loc2_)
         {
            if(_loc1_.loader != null)
            {
            }
            §§goto(addr44);
         }
         _loc1_ = _loc1_.loader.loaderInfo;
         addr44:
         return _loc1_;
      }
      
      public function §_-6s§() : void
      {
         var _loc1_:§_-6A§ = this;
      }
      
      public function §_-6a§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            §§push(§_-5i§);
            §§push("Received Game Mochi Achievements (" + param1.length);
            if(!_loc3_)
            {
               §§push(§§pop() + ")");
            }
            §§pop().§_-CE§(§§pop());
         }
      }
      
      public function §_-4a§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:String = null;
         var _loc2_:§_-6A§ = this;
         var _loc3_:ChallengeManager = _loc2_.gameObj.challengeManager;
         if(!_loc7_)
         {
            §_-5i§.§_-CE§("Received Existing Mochi Achievements for User.");
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1[_loc4_].id;
            if(!_loc7_)
            {
               §§push(§_-5i§);
               §§push("Already Earned Mochi Achievement (" + param1[_loc4_].name);
               if(!_loc7_)
               {
                  §§push(§§pop() + ", ");
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(§§pop() + param1[_loc4_].id);
                     if(_loc7_)
                     {
                     }
                  }
                  §§push(§§pop() + ")");
               }
               §§pop().§_-CE§(§§pop());
               if(!(_loc6_ || Boolean(param1)))
               {
                  continue;
               }
               if(_loc3_)
               {
                  if(!_loc7_)
                  {
                     _loc3_.setChallengeMochiEarned(_loc5_);
                     if(_loc6_)
                     {
                     }
                  }
                  break;
               }
            }
            _loc4_++;
            if(!_loc6_)
            {
               break;
            }
         }
      }
      
      public function §_-1§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-6A§ = this;
         var _loc3_:ChallengeManager = _loc2_.gameObj.challengeManager;
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(§_-5i§);
            §§push("Earned Mochi Achievement (" + param1.name);
            if(_loc5_)
            {
               §§push(§§pop() + ", ");
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(§§pop() + param1.id);
                  if(_loc6_)
                  {
                  }
                  addr58:
                  §§pop().§_-CE§(§§pop());
               }
            }
            §§goto(addr58);
            §§push(§§pop() + ")");
         }
         var _loc4_:String = param1.id;
         if(_loc5_ || Boolean(this))
         {
            if(_loc3_)
            {
               if(_loc5_ || Boolean(this))
               {
               }
            }
            §§goto(addr89);
         }
         _loc3_.setChallengeMochiEarned(_loc4_);
         addr89:
      }
      
      public function §_-2a§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-5i§.§_-CE§("Mochi Login Error: " + param1.type);
         }
      }
      
      public function §_-6D§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§_-5i§);
            §§push("Logged in to Mochi.  Username = " + param1.name);
            if(_loc3_ || Boolean(param1))
            {
               §§push(§§pop() + ", ID = ");
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() + param1.uid);
               }
            }
            §§pop().§_-CE§(§§pop());
         }
      }
      
      public function §_-C3§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-6A§ = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:ChallengeManager = _loc1_.gameObj.challengeManager;
         if(!_loc5_)
         {
            §§push(§_-0i§.§_-3k§());
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               §§push(§§pop());
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§goto(addr298);
                  }
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  §§pop();
                  §§push(_loc1_.§_-A4§);
                  if(_loc5_ && Boolean(this))
                  {
                  }
                  §§goto(addr332);
               }
               if(§§pop())
               {
                  _loc1_.§_-A4§.stats.submit("highScore",_loc2_.getTotalPoints());
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     _loc1_.§_-A4§.stats.submit("rank",_loc2_.getRank());
                     _loc1_.§_-A4§.stats.submit("daysPlayed",_loc2_.getDay());
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        _loc1_.§_-A4§.stats.submit("customersUnlocked",_loc2_.getStatCustomersUnlocked());
                        if(_loc4_)
                        {
                        }
                        addr276:
                        §§push(_loc2_.hasBadge(12));
                        if(!_loc5_)
                        {
                           addr281:
                           if(!§§pop())
                           {
                           }
                           addr295:
                           §§push(_loc2_.hasBadge(13));
                        }
                        addr298:
                        §§push(_loc1_.§_-Cu§);
                        if(!_loc5_)
                        {
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           addr299:
                           _loc1_.§_-A4§.stats.submit("burgerzilla",1);
                        }
                        §§goto(addr305);
                     }
                     _loc1_.§_-A4§.stats.submit("hit20Chilifeathers",1);
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        §§goto(addr295);
                     }
                     addr305:
                     if(_loc2_.hasBadge(14))
                     {
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           _loc1_.§_-A4§.stats.submit("freezeputt",1);
                        }
                     }
                     addr322:
                     §§push(_loc2_.hasBadge(41));
                     if(!(_loc5_ && Boolean(this)))
                     {
                        addr332:
                        if(§§pop())
                        {
                           addr333:
                           _loc1_.§_-A4§.stats.submit("serveAllClosers",1);
                        }
                        §§push(_loc2_.hasBadge(45));
                     }
                     if(§§pop())
                     {
                        _loc1_.§_-A4§.stats.submit("unlockMeats",1);
                     }
                     _loc1_.§_-A4§.stats.submit("prizesWon",_loc3_.getBadgeTally(9));
                     §§goto(addr364);
                  }
                  addr268:
                  _loc1_.§_-A4§.stats.submit("earn5PrizesEach",1);
                  if(_loc4_)
                  {
                     §§goto(addr276);
                  }
                  §§goto(addr333);
               }
               §§goto(addr298);
            }
            addr236:
            if(§§pop())
            {
               if(_loc4_)
               {
                  addr239:
                  _loc1_.§_-A4§.stats.submit("playAllMiniGames",1);
               }
               §§goto(addr298);
            }
            if(_loc2_.hasBadge(10))
            {
               _loc1_.§_-A4§.stats.submit("earn1PrizeEach",1);
               if(_loc4_ || Boolean(_loc1_))
               {
               }
               addr364:
               _loc1_.§_-A4§.stats.submit("ordersWithWings",_loc3_.getBadgeTally(50));
               return;
            }
            §§push(_loc2_.hasBadge(11));
            if(!_loc5_)
            {
               addr267:
               if(§§pop())
               {
                  §§goto(addr268);
               }
               §§goto(addr276);
            }
            §§goto(addr281);
         }
         _loc1_.§_-A4§.stats.submit("bronzeCustomers",_loc2_.getStatCustomersBronze());
         _loc1_.§_-A4§.stats.submit("silverCustomers",_loc2_.getStatCustomersSilver());
         if(_loc4_)
         {
            _loc1_.§_-A4§.stats.submit("goldCustomers",_loc2_.getStatCustomersGold());
            _loc1_.§_-A4§.stats.submit("upgradesUnlocked",_loc2_.getStatUpgradesUnlocked());
            if(!_loc5_)
            {
               §§push(_loc2_.getRank());
               if(!_loc5_)
               {
                  §§push(4);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           _loc1_.§_-A4§.stats.submit("unlockBoneless",1);
                           if(_loc4_ || Boolean(this))
                           {
                           }
                           addr201:
                           _loc1_.§_-A4§.stats.submit("unlockStrips",1);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              addr214:
                              §§push(_loc2_.getRank());
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr239);
                     }
                     §§push(_loc2_.getRank());
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        §§push(10);
                        if(_loc4_ || Boolean(_loc1_))
                        {
                        }
                        addr217:
                        if(§§pop() >= §§pop())
                        {
                           _loc1_.§_-A4§.stats.submit("unlockShrimp",1);
                        }
                        _loc1_.§_-A4§.stats.submit("totalBadgesEarned",_loc2_.getTotalBadgesEarned());
                        §§push(_loc2_.hasBadge(7));
                        if(_loc4_)
                        {
                           §§goto(addr236);
                        }
                        §§goto(addr267);
                     }
                  }
                  if(§§pop() >= §§pop())
                  {
                     §§goto(addr201);
                  }
                  §§goto(addr214);
               }
               §§goto(addr217);
               §§push(15);
            }
            §§goto(addr299);
         }
         §§goto(addr276);
      }
      
      public function §_-6w§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:* = null;
         var _loc1_:§_-6A§ = this;
         if(_loc4_ || Boolean(this))
         {
            if(§_-0i§.§_-3k§())
            {
               if(_loc5_)
               {
               }
               addr42:
               _loc2_ = LoaderInfo(_loc1_.§_-BT§()).parameters;
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§push(_loc2_.kongregate_api_path);
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_ || Boolean(_loc3_))
                        {
                           §§pop();
                           §§push("http://www.kongregate.com/flash/API_AS3_Local.swf");
                        }
                     }
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     Security.allowDomain(_loc3_);
                     if(_loc5_ && Boolean(_loc1_))
                     {
                     }
                  }
                  _loc1_.§_-5h§ = new Loader();
                  if(!_loc5_)
                  {
                     _loc1_.§_-5h§.contentLoaderInfo.addEventListener(Event.COMPLETE,_loc1_.§_-51§);
                     _loc1_.§_-5h§.load(new URLRequest(_loc3_));
                     if(_loc5_ && Boolean(_loc3_))
                     {
                     }
                  }
               }
               _loc1_.gameObj.addChild(_loc1_.§_-5h§);
            }
            return;
         }
         §_-5i§.info("On Kongregate, connect to API.");
         if(!_loc5_)
         {
            _loc1_.§_-Cu§ = true;
         }
         §§goto(addr42);
      }
      
      public function §_-51§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-6A§ = this;
         if(!_loc3_)
         {
            §_-5i§.info("Kongregate API Connected.");
            if(_loc4_)
            {
               _loc2_.§_-A4§ = param1.target.content;
               if(_loc4_)
               {
               }
               §§goto(addr49);
            }
         }
         _loc2_.§_-A4§.services.connect();
         addr49:
      }
   }
}

