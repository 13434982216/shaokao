package §_-1d§
{
   import §_-C2§.§_-0i§;
   import §_-C2§.§_-5i§;
   import §_-H§.§_-6A§;
   import flash.display.*;
   import flash.events.Event;
   import mochi.as3.*;
   import wingGame.data.ClothingData;
   import wingGame.data.CustomerData;
   import wingGame.data.GameData;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   import wingGame.events.GameControls;
   import wingGame.managers.ChallengeManager;
   import wingGame.managers.CustomerManager;
   import wingGame.managers.SoundManager;
   import wingGame.managers.TicketManager;
   import wingGame.screens.*;
   
   public dynamic class §_-BY§ extends MovieClip
   {
      public var §_-3D§:MovieClip;
      
      public var §_-BG§:MovieClip;
      
      public var userData:UserData;
      
      public var customerData:CustomerData;
      
      public var §_-Cf§:GameData;
      
      public var §_-1B§:ClothingData;
      
      public var workerData:WorkerData;
      
      public var §_-A5§:OrderScreen;
      
      public var §_-8f§:GrillScreen;
      
      public var §_-7q§:BuildScreen;
      
      public var §_-Bg§:SauceScreen;
      
      public var §_-3N§:TakeOrderScreen;
      
      public var §_-Bq§:GiveOrderScreen;
      
      public var §_-8m§:StartDayScreen;
      
      public var each:NewCustomerScreen;
      
      public var §_-2C§:NewToppingScreen;
      
      public var §_-6L§:PayDayScreen;
      
      public var §_-Az§:ParadeScreen;
      
      public var §_-AA§:CharacterEditorScreen;
      
      public var §_-0j§:MiniGameScreen;
      
      public var §_-9R§:LobbyEditorScreen;
      
      public var §_-CT§:IntroScreen;
      
      public var §_-EW§:CustomerManager;
      
      public var §_-A7§:TicketManager;
      
      public var challengeManager:ChallengeManager;
      
      public var loadingScreen:§_-5j§;
      
      public var §_-3§:SponsorLogoScreen;
      
      public var §_-C-§:LicenseLogoScreen;
      
      public var §_-2W§:FliplineLogoScreen;
      
      public var §_-4B§:§throw§;
      
      public var §implements§:Array;
      
      public var hud:GameHUD;
      
      public var §_-6v§:GameControls;
      
      public var soundManager:SoundManager;
      
      public var §_-4P§:§_-6A§;
      
      public var §_-5b§:Boolean = false;
      
      public var §return§:Boolean = false;
      
      public var §_-EG§:Number = 5400;
      
      public var §_-0L§:Number = 3600;
      
      public var §_-Dp§:Number = 600;
      
      public var §_-Bl§:Number = 10800;
      
      public var §_-68§:Number = 640;
      
      public var §_-3Y§:Number = 480;
      
      public var §_-3f§:Boolean = false;
      
      public var §_-DZ§:Number = 1;
      
      public var §_-7F§:Number = 28;
      
      public var §_-4V§:Boolean = false;
      
      public var §switch§:Boolean = false;
      
      private var §case §:Boolean = false;
      
      public function §_-BY§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            this.§implements§ = [SplashScreen,SlotSelectScreen,EndOfDayScreen,StartDayPanel,ShopScreen,MainMenuScreen,CharacterEditorScreen];
            if(!(_loc2_ && _loc1_))
            {
               super();
            }
         }
      }
      
      public function §_-5a§(param1:Event = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-BY§ = this;
         _loc2_.§_-7Y§();
         _loc2_.§_-3D§ = new MovieClip();
         if(_loc5_ || _loc3_)
         {
            _loc2_.§_-3D§.mouseEnabled = false;
            if(_loc6_)
            {
            }
            §§goto(addr53);
         }
         _loc2_.addChild(_loc2_.§_-3D§);
         _loc2_.§_-BG§ = new MovieClip();
         _loc2_.§_-BG§.mouseEnabled = false;
         if(!_loc6_)
         {
            _loc2_.addChild(_loc2_.§_-BG§);
         }
         addr53:
         var _loc3_:MovieClip = new border_overlay();
         _loc2_.addChild(_loc3_);
         if(!_loc6_)
         {
            _loc2_.customerData = new CustomerData(_loc2_);
         }
         _loc2_.userData = new UserData(_loc2_);
         _loc2_.§_-Cf§ = new GameData(_loc2_);
         _loc2_.§_-1B§ = new ClothingData(_loc2_);
         _loc2_.workerData = new WorkerData();
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            _loc2_.challengeManager = new ChallengeManager(_loc2_);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               _loc2_.§_-4P§ = new §_-6A§(_loc2_);
               _loc2_.§_-4P§.§use§();
            }
            §§goto(addr136);
         }
         _loc2_.customerData.outputTallies();
         §_-5i§.info("Papa\'s Wingeria (c) 2012 Flipline Studios.  All Rights Reserved.");
         §_-5i§.info("Game Version: " + _loc2_.§_-4P§.§_-E7§);
         §_-5i§.info("----------------------------------------------------------------");
         addr136:
         var _loc4_:String = "af215a5291e7199d";
         if(_loc5_ || Boolean(param1))
         {
            _loc2_.§_-55§();
         }
      }
      
      public function §_-7Y§() : void
      {
         var mod:§_-BY§;
         var loaderInfo:LoaderInfo;
         var sentLevel:String;
         var numberLevel:Number;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§push(null);
            if(_loc3_ || _loc2_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc3_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ && _loc1_)
                  {
                  }
                  §§goto(addr63);
               }
               addr55:
               §§push(§§newactivation());
               if(!(_loc4_ && _loc3_))
               {
                  addr63:
                  §§pop().§§slot[4] = NaN;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr73:
                     mod = this;
                     if(_loc3_ || _loc1_)
                     {
                        addr83:
                        §_-5i§.§_-Y§(§_-5i§.INFO_LEVEL);
                     }
                  }
                  try
                  {
                     §§push(§§newactivation());
                     if(_loc3_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc4_ && _loc2_))
                        {
                           §§pop().§§slot[2] = §§pop().§§slot[1].root.loaderInfo;
                           if(_loc3_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(§§pop().§§slot[2].loader != null)
                                 {
                                    addr320:
                                    §§push(§§newactivation());
                                    if(_loc3_)
                                    {
                                       §§push(§§newactivation());
                                    }
                                    §§pop().§§slot[4] = Number(sentLevel);
                                    addr326:
                                    §_-5i§.§_-Y§(numberLevel);
                                 }
                                 addr126:
                                 if(loaderInfo.parameters.hasOwnProperty("traceall"))
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §_-5i§.§_-Y§(§_-5i§.ALL);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§§newactivation());
                                    if(_loc3_ || Boolean(this))
                                    {
                                       if(§§pop().§§slot[2].parameters.hasOwnProperty("tracelevel"))
                                       {
                                          if(_loc3_ || Boolean(this))
                                          {
                                             sentLevel = String(loaderInfo.parameters.tracelevel);
                                             numberLevel = 0;
                                             §§push(§§newactivation());
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(_loc3_)
                                                {
                                                   addr317:
                                                   addr316:
                                                   if(§§pop() == "all")
                                                   {
                                                      §§push(§§newactivation());
                                                   }
                                                   else
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop().§§slot[3]);
                                                         if(_loc3_)
                                                         {
                                                         }
                                                         addr305:
                                                         if(§§pop() == "off")
                                                         {
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               §§push(§§newactivation());
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr320);
                                                            §§push(§§newactivation());
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§push(§_-5i§.§_-6y§);
                                                   }
                                                   §§pop().§§slot[4] = §§pop();
                                                   §§goto(addr320);
                                                }
                                                if(§§pop() == "debug")
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      §§push(§_-5i§.DEBUG_LEVEL);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().§§slot[4] = §§pop();
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr317);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr237:
                                                      §§push(§§newactivation());
                                                   }
                                                   addr241:
                                                   §§pop().§§slot[4] = §§pop();
                                                   addr240:
                                                }
                                                else
                                                {
                                                   §§push(§§newactivation());
                                                }
                                                §§goto(addr320);
                                             }
                                             §§goto(addr240);
                                             §§push(§_-5i§.ERROR_LEVEL);
                                          }
                                       }
                                    }
                                    §§push(§§pop().§§slot[3]);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() == "error")
                                       {
                                          §§goto(addr237);
                                       }
                                       else
                                       {
                                          §§push(sentLevel);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(§§pop() == "warn")
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr320);
                                          }
                                          §§push(§§pop() == "none");
                                          if(_loc3_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§pop();
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr317);
                                                }
                                             }
                                          }
                                          §§goto(addr305);
                                       }
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr320);
                              }
                              §§push(§_-5i§.ALL);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§pop().§§slot[4] = §§pop();
                                    if(_loc4_)
                                    {
                                       addr268:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr316);
                                 }
                              }
                              else
                              {
                                 §§goto(addr241);
                              }
                              §§goto(addr320);
                           }
                           §§goto(addr305);
                           §§push(sentLevel);
                        }
                        §§pop().§§slot[2] = §§pop().§§slot[2].loader.loaderInfo;
                        §§goto(addr126);
                     }
                     §§push(§_-5i§.WARN_LEVEL);
                     if(_loc3_ || _loc1_)
                     {
                        §§pop().§§slot[4] = §§pop();
                        §§goto(addr268);
                     }
                     else
                     {
                        §§goto(addr317);
                     }
                  }
                  catch(err:Error)
                  {
                     if(!_loc4_)
                     {
                        §_-5i§.error("Error checking parameters for trace override.");
                     }
                  }
                  return;
               }
               §§goto(addr73);
            }
            addr46:
            §§pop().§§slot[3] = §§pop();
            if(_loc3_ || _loc3_)
            {
               §§goto(addr55);
            }
            §§goto(addr83);
         }
         §§goto(addr46);
         §§push(null);
      }
      
      public function §_-55§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         _loc1_.stage.stageFocusRect = false;
         if(_loc3_)
         {
            _loc1_.soundManager = new SoundManager(_loc1_);
            if(_loc3_)
            {
               _loc1_.§_-4P§.§_-74§(_loc1_.soundManager);
               §§push(§_-0i§.§ do§());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     §§push(§_-0i§.§_-24§());
                  }
                  else
                  {
                     _loc1_.§_-AM§();
                  }
               }
               if(!§§pop())
               {
                  _loc1_.§_-7C§();
                  if(!_loc2_)
                  {
                     addr64:
                  }
               }
            }
            return;
         }
         _loc1_.§_-4f§();
         §§goto(addr64);
      }
      
      public function §_-Eg§() : void
      {
      }
      
      public function §_-4y§() : void
      {
      }
      
      public function §_-AM§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!(_loc2_ && _loc3_))
         {
            if(!_loc1_.§_-4B§)
            {
               if(_loc2_ && _loc3_)
               {
               }
            }
            §§goto(addr53);
         }
         _loc1_.§_-4B§ = new §throw§(_loc1_);
         addr53:
      }
      
      public function §_-7C§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§_-3§ = new SponsorLogoScreen(_loc1_);
         }
      }
      
      public function final() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!_loc2_)
         {
            §§push(_loc1_.§_-3§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr50:
                  if(!_loc2_)
                  {
                     §§push(_loc1_.§_-3§);
                  }
                  _loc1_.§_-3§ = null;
               }
            }
            §§pop().destroy();
            if(_loc3_ || _loc3_)
            {
               §§goto(addr50);
            }
         }
      }
      
      public function §_-4f§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.§_-C-§ = new LicenseLogoScreen(_loc1_);
         }
      }
      
      public function §_-AO§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(_loc2_)
         {
            §§push(_loc1_.§_-C-§);
            if(_loc2_)
            {
               §§goto(addr52);
            }
            §§pop().destroy();
            if(_loc3_ && _loc2_)
            {
            }
            §§goto(addr52);
         }
         _loc1_.§_-C-§ = null;
         addr52:
         if(§§pop())
         {
            if(!_loc3_)
            {
               §§push(_loc1_.§_-C-§);
            }
         }
      }
      
      public function §_-AF§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_)
         {
            _loc1_.§_-2W§ = new FliplineLogoScreen(_loc1_);
         }
      }
      
      public function §_-Bh§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(_loc2_ || _loc2_)
         {
            §§push(_loc1_.§_-2W§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                  }
                  addr59:
                  _loc1_.§_-2W§ = null;
               }
               §§goto(addr62);
            }
            §§goto(addr44);
         }
         addr44:
         §§pop().destroy();
         if(_loc2_ || Boolean(_loc1_))
         {
            §§goto(addr59);
         }
         addr62:
         _loc1_.§_-2W§;
      }
      
      public function §_-Df§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!_loc2_)
         {
            §§push(_loc1_.§_-4P§);
            if(!_loc2_)
            {
               §§push(§§pop().api);
               if(_loc3_ || Boolean(this))
               {
                  §§pop().§_-2K§("EndOfDay");
                  if(!_loc2_)
                  {
                     _loc1_.§_-5G§();
                     if(_loc3_ || Boolean(this))
                     {
                     }
                     addr56:
                     _loc1_.§case § = false;
                     §§goto(addr78);
                  }
               }
               §§goto(addr76);
            }
            addr76:
            §§pop().§_-76§("SplashScreen");
            addr78:
            if(!(_loc2_ && _loc3_))
            {
               §§push(_loc1_.§_-4P§);
            }
            return;
            §§push(§§pop().api);
         }
         _loc1_.§_-5b§ = false;
         if(_loc2_)
         {
         }
         §§goto(addr56);
      }
      
      public function §_-Bi§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!_loc2_)
         {
            if(!_loc1_.§_-8m§)
            {
               if(_loc2_)
               {
               }
            }
            §§goto(addr36);
         }
         _loc1_.§_-8m§ = new StartDayScreen(_loc1_);
         addr36:
      }
      
      public function §_-94§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(!_loc3_)
         {
            §§push(_loc1_.§_-8m§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  §§goto(addr37);
               }
            }
            §§pop().destroy();
            if(_loc2_)
            {
               §§goto(addr37);
            }
         }
         §§push(_loc1_.§_-6v§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc1_.§_-6v§);
               }
            }
            §§goto(addr37);
         }
         §§pop().resetKeyFocus();
         addr37:
         if(!_loc3_)
         {
            §§push(_loc1_.§_-8m§);
         }
         _loc1_.§_-8m§ = null;
         if(_loc3_)
         {
         }
      }
      
      public function §_-08§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         var _loc2_:Object = new Object();
         _loc2_.showAd = false;
         §§push(_loc1_.userData);
         if(_loc3_ || Boolean(this))
         {
            §§push(§§pop().playedALevel);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(_loc2_))
                     {
                     }
                  }
                  §§goto(addr104);
               }
               addr93:
               if(§§pop())
               {
                  _loc2_.showClickaway = true;
               }
               §§goto(addr104);
            }
            §§pop();
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(_loc1_.userData);
               if(_loc4_ && Boolean(_loc1_))
               {
               }
               §§goto(addr92);
            }
            §§goto(addr104);
         }
         §§push(§§pop().currentDay > 3);
         if(_loc3_)
         {
            addr104:
            if(§§pop())
            {
               if(!_loc4_)
               {
                  _loc2_.showAd = true;
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr110);
            }
            else
            {
               addr92:
               §§push(_loc1_.userData.playedALevel);
            }
            _loc1_.§_-4P§.api.§_-76§("StartDayPanel",_loc2_);
            addr110:
            return;
         }
         §§goto(addr93);
      }
      
      public function §_-9f§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || _loc2_)
         {
            _loc1_.§_-4P§.api.§_-2K§("StartDayPanel");
         }
      }
      
      public function §_-5f§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_)
         {
            §_-5i§.§_-CE§("Show Shop Screen!");
            if(!_loc2_)
            {
               _loc1_.§_-4P§.api.§_-76§("ShopScreen");
            }
         }
      }
      
      public function §_-E0§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(!_loc3_)
         {
            _loc1_.§_-4P§.api.§_-2K§("ShopScreen");
         }
      }
      
      public function §_-6C§(param1:Number = -1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-BY§ = this;
         var _loc3_:Object = new Object();
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc3_.selectedSlot = param1;
            if(!(_loc4_ && Boolean(param1)))
            {
               _loc3_.firsttime = true;
               if(_loc4_ && Boolean(_loc3_))
               {
               }
            }
            §§goto(addr68);
         }
         _loc2_.§_-4P§.api.§_-76§("CharacterEditor",_loc3_);
         addr68:
      }
      
      public function §_-Ak§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.§_-4P§.api.§_-2K§("CharacterEditor");
         }
      }
      
      public function §_-6T§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(!(_loc3_ && _loc2_))
         {
            if(!_loc1_.§_-9R§)
            {
               if(_loc3_)
               {
               }
            }
            §§goto(addr47);
         }
         _loc1_.§_-9R§ = new LobbyEditorScreen(_loc1_);
         addr47:
      }
      
      public function §_-0O§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push(_loc1_.§_-9R§);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  addr60:
                  if(!_loc2_)
                  {
                     §§push(_loc1_.§_-9R§);
                  }
                  _loc1_.§_-9R§ = null;
               }
            }
            §§pop().destroy();
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr60);
            }
         }
      }
      
      public function §_-9D§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || Boolean(this))
         {
            _loc1_.§switch§ = true;
            if(_loc3_ || _loc3_)
            {
               _loc1_.§case § = _loc1_.§_-5b§;
               if(_loc3_)
               {
               }
               addr64:
               _loc1_.§_-4P§.api.§_-76§("MainMenu");
            }
            _loc1_.§_-5b§ = true;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr64);
            }
         }
      }
      
      public function §_-5G§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || _loc2_)
         {
            _loc1_.§switch§ = false;
            if(_loc3_)
            {
               _loc1_.§_-5b§ = _loc1_.§case §;
               if(_loc3_ || _loc2_)
               {
               }
               §§goto(addr59);
            }
         }
         _loc1_.§_-4P§.api.§_-2K§("MainMenu");
         addr59:
      }
      
      public function §function§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(_loc2_ || Boolean(this))
         {
            if(!_loc1_.each)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.each = new NewCustomerScreen(_loc1_);
               }
            }
         }
      }
      
      public function §_-AG§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!_loc2_)
         {
            §§push(_loc1_.each);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  addr55:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(_loc1_.each);
                  }
                  _loc1_.each = null;
               }
            }
            §§pop().destroy();
            if(!_loc2_)
            {
               §§goto(addr55);
            }
         }
      }
      
      public function §_-EH§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            if(!_loc1_.§_-2C§)
            {
               if(_loc3_)
               {
               }
            }
            §§goto(addr48);
         }
         _loc1_.§_-2C§ = new NewToppingScreen(_loc1_);
         addr48:
      }
      
      public function §_-7c§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!_loc2_)
         {
            §§push(_loc1_.§_-2C§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr47);
         }
         addr47:
         §§pop().destroy();
         if(_loc3_)
         {
            _loc1_.§_-2C§ = null;
         }
         addr53:
         _loc1_.§_-2C§;
      }
      
      public function §_-25§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            if(!_loc1_.§_-6L§)
            {
               if(_loc3_)
               {
               }
            }
            §§goto(addr48);
         }
         _loc1_.§_-6L§ = new PayDayScreen(_loc1_);
         addr48:
      }
      
      public function §_-2M§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_.§_-6L§);
            if(!_loc2_)
            {
               §§goto(addr53);
            }
            §§pop().destroy();
            if(_loc2_)
            {
            }
            §§goto(addr53);
         }
         _loc1_.§_-6L§ = null;
         addr53:
         if(§§pop())
         {
            if(_loc3_)
            {
               §§push(_loc1_.§_-6L§);
            }
         }
      }
      
      public function §_-DK§(param1:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-BY§ = this;
         if(!(_loc4_ && Boolean(this)))
         {
            if(!_loc2_.§_-Az§)
            {
               if(!_loc4_)
               {
                  _loc2_.§_-Az§ = new ParadeScreen(_loc2_,param1);
               }
            }
         }
      }
      
      public function §_-Dj§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!_loc2_)
         {
            §§push(_loc1_.§_-Az§);
            if(!_loc2_)
            {
               §§goto(addr53);
            }
            §§pop().destroy();
            if(_loc2_)
            {
            }
            §§goto(addr53);
         }
         _loc1_.§_-Az§ = null;
         addr53:
         if(§§pop())
         {
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(_loc1_.§_-Az§);
            }
         }
      }
      
      public function §_-Bw§(param1:String = "") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-BY§ = this;
         if(!_loc3_)
         {
            if(!_loc2_.§_-0j§)
            {
               if(!_loc3_)
               {
                  _loc2_.§_-9O§();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.§_-4P§.api.§_-2K§("EndOfDay");
                     if(_loc3_ && _loc3_)
                     {
                     }
                  }
               }
            }
            §§goto(addr65);
         }
         _loc2_.§_-0j§ = new MiniGameScreen(_loc2_,param1);
         addr65:
      }
      
      public function §_-28§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_.§_-0j§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr60:
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§push(_loc1_.§_-0j§);
                  }
                  _loc1_.§_-0j§ = null;
               }
            }
            §§pop().destroy();
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr60);
            }
         }
      }
      
      public function §_-CV§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(!_loc3_)
         {
            if(!_loc1_.§_-CT§)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.§_-CT§ = new IntroScreen(_loc1_);
               }
            }
         }
      }
      
      public function §_-DQ§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(!_loc3_)
         {
            §§push(_loc1_.§_-CT§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                  }
                  addr44:
                  _loc1_.§_-CT§ = null;
               }
               §§goto(addr47);
            }
            §§goto(addr41);
         }
         addr41:
         §§pop().destroy();
         if(_loc2_)
         {
            §§goto(addr44);
         }
         addr47:
         _loc1_.§_-CT§;
      }
      
      public function §_-6l§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || _loc3_)
         {
            _loc1_.§_-4P§.api.§_-2K§("EndOfDay");
            _loc1_.§_-28§();
            §§push(_loc1_.userData);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop().currentDay);
               if(_loc3_)
               {
                  §§goto(addr138);
               }
               addr137:
               addr138:
               §§push(1);
               if(_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     _loc1_.§_-3f§ = true;
                     if(!_loc2_)
                     {
                        _loc1_.§_-DZ§ = 1;
                        addr61:
                        _loc1_.§_-6v§ = new GameControls(_loc1_);
                     }
                     addr88:
                     _loc1_.§_-A5§ = new OrderScreen(_loc1_);
                     _loc1_.§_-8f§ = new GrillScreen(_loc1_);
                     if(!_loc2_)
                     {
                        _loc1_.§_-7q§ = new BuildScreen(_loc1_);
                        if(_loc2_ && Boolean(this))
                        {
                        }
                        addr117:
                        _loc1_.§_-3N§ = new TakeOrderScreen(_loc1_);
                     }
                     _loc1_.§_-Bg§ = new SauceScreen(_loc1_);
                     §§goto(addr117);
                  }
                  else
                  {
                     _loc1_.§_-3f§ = false;
                     if(_loc3_)
                     {
                        §§goto(addr61);
                     }
                  }
                  _loc1_.§_-Bq§ = new GiveOrderScreen(_loc1_);
                  §§push(_loc1_.userData);
               }
               if(§§pop() > §§pop())
               {
                  if(!_loc2_)
                  {
                     _loc1_.§_-08§();
                  }
               }
               else
               {
                  _loc1_.§_-Bi§();
               }
               return;
               §§push(1);
            }
            §§goto(addr137);
            §§push(§§pop().currentDay);
         }
         _loc1_.§_-EW§ = new CustomerManager(_loc1_);
         _loc1_.§_-A7§ = new TicketManager(_loc1_);
         _loc1_.hud = new GameHUD(_loc1_);
         §§goto(addr88);
      }
      
      public function §_-9O§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(_loc1_.hud);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     _loc1_.§_-6v§.destroy();
                     _loc1_.§_-EW§.destroy();
                     if(_loc2_)
                     {
                        _loc1_.§_-A7§.destroy();
                        addr69:
                        addr75:
                        if(_loc2_)
                        {
                           §§push(_loc1_.hud);
                        }
                        _loc1_.§_-3N§.destroy();
                        _loc1_.§_-Bq§.destroy();
                        _loc1_.§_-6v§ = null;
                        _loc1_.§_-EW§ = null;
                        _loc1_.§_-A7§ = null;
                        _loc1_.hud = null;
                        _loc1_.§_-A5§ = null;
                        _loc1_.§_-8f§ = null;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.§_-7q§ = null;
                        }
                        _loc1_.§_-Bg§ = null;
                     }
                  }
                  addr49:
                  _loc1_.§_-8f§.destroy();
                  if(!_loc3_)
                  {
                     _loc1_.§_-7q§.destroy();
                     _loc1_.§_-Bg§.destroy();
                     if(!_loc3_)
                     {
                        §§goto(addr69);
                     }
                     §§goto(addr75);
                  }
                  _loc1_.§_-Bq§ = null;
               }
               return;
            }
            §§pop().destroy();
            _loc1_.§_-A5§.destroy();
            §§goto(addr49);
         }
         _loc1_.§_-3N§ = null;
         §§goto(addr49);
      }
      
      public function §_-2R§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(_loc2_)
         {
            _loc1_.§return§ = false;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.soundManager.restoreSoundAfterAd();
               if(_loc2_ || Boolean(_loc1_))
               {
               }
               _loc1_.§_-Bq§.initStationUpgrades();
               §§goto(addr63);
            }
            _loc1_.§_-6v§.setupGameCycle();
            _loc1_.§_-Bg§.initStationUpgrades();
            _loc1_.§_-8f§.initStationUpgrades();
            _loc1_.§_-7q§.initStationUpgrades();
         }
         _loc1_.§_-A5§.initStationUpgrades();
         _loc1_.§_-3N§.initStationUpgrades();
         addr63:
         if(_loc2_)
         {
            _loc1_.hud.startHUD();
            _loc1_.§_-EW§.startSpawningCustomers();
         }
      }
      
      public function §_-DN§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(_loc2_ || Boolean(this))
         {
            _loc1_.§_-9O§();
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.§_-4P§.api.§_-76§("EndOfDay");
            }
         }
      }
      
      public function quitToTitle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(!_loc2_)
         {
            _loc1_.§_-E0§();
            if(_loc2_ && _loc3_)
            {
            }
            §§goto(addr39);
         }
         _loc1_.§_-9f§();
         if(_loc3_)
         {
            §§goto(addr39);
         }
         addr39:
         _loc1_.§_-5G§();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.§_-9O§();
            if(_loc3_)
            {
               _loc1_.§_-Df§();
            }
         }
      }
      
      public function §_-8o§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc5_)
         {
            var _loc2_:* = _loc1_;
            §§push(_loc2_.§_-DZ§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§_-DZ§ = _loc3_;
            }
         }
         try
         {
            §§push(_loc1_.hud);
            if(!_loc4_)
            {
               §§pop().trainingClip.nextFrame();
               addr72:
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  try
                  {
                     addr66:
                  }
                  catch(err:Error)
                  {
                     addr84:
                     if(_loc1_.§_-DZ§ > _loc1_.§_-7F§)
                     {
                        if(_loc5_)
                        {
                           addr98:
                           _loc1_.§_-3f§ = false;
                        }
                     }
                  }
                  §§push(_loc1_.hud);
               }
               §§goto(addr84);
            }
            §§pop().showTrainingWarning("hidden");
            if(!_loc4_)
            {
               §§goto(addr72);
            }
            §§goto(addr98);
         }
         catch(err:Error)
         {
            §§goto(addr66);
         }
      }
      
      public function showAd() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(!(_loc3_ && _loc3_))
         {
            MochiAd.showPreGameAd({
               "clip":_loc1_,
               "id":"194fdfab80576799",
               "res":"608x480",
               "background":16770518,
               "color":8501569,
               "outline":5117533
            });
         }
      }
      
      public function showInterLevelAd() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-BY§ = this;
         if(_loc3_ || Boolean(this))
         {
            MochiAd.showInterLevelAd({
               "clip":_loc1_,
               "id":"194fdfab80576799",
               "res":"608x480",
               "background":16770518,
               "color":8501569,
               "outline":5117533
            });
         }
      }
      
      public function showClickAwayAd() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(_loc2_ || Boolean(this))
         {
            MochiAd.showClickAwayAd({
               "clip":_loc1_,
               "id":"194fdfab80576799"
            });
         }
      }
      
      public function §_-BX§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-BY§ = this;
         if(_loc2_)
         {
            MochiAd.unload(_loc1_);
         }
      }
   }
}

