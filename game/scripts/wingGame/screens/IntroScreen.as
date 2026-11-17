package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   import wingGame.models.Worker;
   
   public class IntroScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var didSkip:Boolean = false;
      
      public var worker:Worker = null;
      
      public var workerFlipped:Worker = null;
      
      public var workerTurned:Worker = null;
      
      public function IntroScreen(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         var _loc2_:IntroScreen = this;
         if(!_loc3_)
         {
            _loc2_.gameObj = param1;
            if(_loc3_ && _loc3_)
            {
            }
            §§goto(addr49);
         }
         _loc2_.setupScreen();
         addr49:
      }
      
      public function setupScreen() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:IntroScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc4_)
         {
            _loc1_.clip = new introMC();
            if(_loc5_)
            {
            }
            addr53:
            _loc1_.clip.y = 0;
            addr57:
            var _loc3_:WorkerData = new WorkerData(_loc1_.gameObj.workerData.getDataToSave());
            §§push(_loc2_.whichCharacter);
            if(!_loc5_)
            {
               if(§§pop() == "marty")
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     _loc3_.shirt = "shirt_01_male";
                     _loc3_.pants = "pants_03_male";
                     _loc3_.accb = "belt_01_male";
                     if(_loc5_ && Boolean(this))
                     {
                     }
                     addr283:
                     _loc1_.gameObj.soundManager.switchMusic("build");
                     §§goto(addr288);
                  }
                  addr203:
                  _loc1_.workerTurned = new Worker(_loc1_.gameObj,_loc1_.clip,_loc3_,0,0,1,true);
                  addr216:
                  _loc1_.worker.clip.visible = false;
                  _loc1_.workerFlipped.clip.visible = false;
                  _loc1_.workerTurned.clip.visible = false;
                  if(_loc4_)
                  {
                     _loc1_.clip.frame0.name_txt.text = String(_loc2_.myName + "\'s");
                     if(!(_loc5_ && Boolean(this)))
                     {
                        _loc1_.clip.frame0.name_txt.cacheAsBitmap = true;
                        _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.checkFrame);
                        _loc1_.clip.gotoAndPlay(1);
                     }
                     addr288:
                     return;
                  }
                  _loc1_.clip.skip_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickSkip);
                  §§goto(addr283);
               }
               else
               {
                  §§push(_loc2_.whichCharacter);
                  if(_loc5_ && Boolean(_loc2_))
                  {
                  }
                  addr132:
                  if(§§pop() == WorkerData.GENDER_FEMALE)
                  {
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        _loc3_.shirt = "shirt_02_female";
                        _loc3_.pants = "pants_04_female";
                        _loc3_.accb = "belt_01_female";
                        addr158:
                     }
                  }
                  else
                  {
                     _loc3_.shirt = "shirt_02_male";
                  }
                  _loc3_.pants = "pants_03_male";
                  if(_loc4_)
                  {
                     addr167:
                     _loc3_.accb = "belt_01_male";
                     if(_loc4_ || Boolean(_loc3_))
                     {
                     }
                     §§goto(addr216);
                  }
               }
               addr177:
               _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip,_loc3_,0,0,1);
               _loc1_.workerFlipped = new Worker(_loc1_.gameObj,_loc1_.clip,_loc3_,0,0,1,false,true);
               §§goto(addr203);
            }
            if(§§pop() == "rita")
            {
               _loc3_.shirt = "shirt_15_female";
               _loc3_.pants = "pants_03_female";
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc3_.accb = "belt_02_female";
                  if(_loc5_ && Boolean(_loc2_))
                  {
                     §§goto(addr158);
                  }
               }
               else
               {
                  §§goto(addr167);
               }
               §§goto(addr203);
            }
            else
            {
               §§goto(addr132);
               §§push(_loc3_.gender);
            }
            §§goto(addr177);
         }
         _loc1_.gameObj.§_-3D§.addChild(_loc1_.clip);
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            _loc1_.clip.x = 0;
            if(_loc5_ && Boolean(_loc2_))
            {
            }
            §§goto(addr57);
         }
         §§goto(addr53);
      }
      
      public function clickSkip(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:IntroScreen = this;
         if(!_loc3_)
         {
            _loc2_.didSkip = true;
            if(!_loc3_)
            {
               _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               if(_loc4_)
               {
               }
            }
            §§goto(addr51);
         }
         _loc2_.clip.gotoAndStop(_loc2_.clip.totalFrames);
         addr51:
      }
      
      public function checkFrame(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:IntroScreen = this;
         if(_loc4_)
         {
            if(_loc2_.clip.currentFrame == 101)
            {
               if(_loc2_.clip != null)
               {
                  if(_loc2_.clip.frame1 != null)
                  {
                     if(_loc2_.clip.frame1.holder != null)
                     {
                        if(!(_loc4_ || Boolean(_loc2_)))
                        {
                           addr299:
                           _loc2_.worker.clip.y = 42;
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.worker.clip.gotoAndStop("intro6");
                              addr318:
                              _loc2_.worker.animateModel();
                           }
                           else
                           {
                              addr501:
                              _loc2_.clip.frame10.holder.addChild(_loc2_.workerTurned.clip);
                              if(_loc4_)
                              {
                                 §§push(_loc2_.workerTurned);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    §§pop().clip.visible = true;
                                    _loc2_.workerTurned.clip.scaleX = 1.36;
                                    §§goto(addr1137);
                                 }
                                 §§pop().clip.x = 150;
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    §§push(_loc2_.workerTurned);
                                    if(_loc4_)
                                    {
                                       §§goto(addr920);
                                    }
                                    §§goto(addr937);
                                 }
                                 addr1226:
                                 §§goto(addr1228);
                                 §§push(_loc2_.gameObj);
                              }
                           }
                        }
                        addr778:
                        _loc2_.workerFlipped.clip.gotoAndStop("intro14");
                        §§push(_loc2_.workerFlipped);
                        if(_loc4_)
                        {
                           §§pop().animateModel();
                        }
                        else
                        {
                           addr999:
                           §§pop().clip.x = 570;
                           §§push(_loc2_.workerFlipped);
                           if(_loc4_ || Boolean(param1))
                           {
                              addr1011:
                              §§pop().clip.y = 38;
                              if(_loc4_)
                              {
                                 §§goto(addr1016);
                              }
                              addr1109:
                              §§push(_loc2_.gameObj);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().§_-4P§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().api);
                                    if(!_loc3_)
                                    {
                                       §§pop().§_-h§("SkippedIntro","Screens");
                                       addr1122:
                                    }
                                    §§goto(addr1137);
                                 }
                                 else
                                 {
                                    addr1133:
                                    §§push(§§pop().api);
                                 }
                                 §§pop().§_-h§("WatchedIntro","Screens");
                                 addr1137:
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§push(_loc2_.workerTurned);
                                    if(!_loc3_)
                                    {
                                       §§pop().clip.scaleY = 1.36;
                                       addr923:
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          _loc2_.workerTurned.clip.x = -24;
                                          §§push(_loc2_.workerTurned);
                                          if(!_loc3_)
                                          {
                                             §§pop().clip.y = 129;
                                             addr561:
                                             _loc2_.workerTurned.clip.gotoAndStop("intro10");
                                             if(!_loc3_)
                                             {
                                                _loc2_.workerTurned.animateModel();
                                                if(_loc3_)
                                                {
                                                   addr1018:
                                                   _loc2_.workerFlipped.clip.gotoAndStop("intro17");
                                                   addr1016:
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                                addr1185:
                                                §§push(_loc2_.gameObj);
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr1194:
                                                   §§push(§§pop().soundManager);
                                                   if(!_loc3_)
                                                   {
                                                      addr1197:
                                                      §§pop().switchMusic("grill");
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr1231);
                                                }
                                                else
                                                {
                                                   addr1228:
                                                   §§push(§§pop().soundManager);
                                                }
                                                §§pop().switchMusic("title");
                                                §§goto(addr1231);
                                             }
                                             else
                                             {
                                                addr773:
                                                _loc2_.workerFlipped.clip.y = 92;
                                             }
                                             addr1025:
                                             §§pop().animateModel();
                                          }
                                          else
                                          {
                                             addr887:
                                             §§pop().clip.visible = true;
                                             if(!_loc3_)
                                             {
                                                _loc2_.workerTurned.clip.scaleX = 0.59;
                                                §§push(_loc2_.workerTurned);
                                                if(_loc3_)
                                                {
                                                }
                                                addr920:
                                                §§pop().clip.y = 272;
                                             }
                                          }
                                          addr1023:
                                          §§goto(addr1025);
                                          §§push(_loc2_.workerFlipped);
                                       }
                                       _loc2_.workerTurned.clip.gotoAndStop("intro16");
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr937:
                                          _loc2_.workerTurned.animateModel();
                                       }
                                       §§goto(addr1231);
                                    }
                                    §§pop().clip.scaleY = 0.59;
                                    §§push(_loc2_.workerTurned);
                                 }
                                 _loc2_.clip.removeEventListener(Event.ENTER_FRAME,_loc2_.checkFrame);
                                 if(!_loc3_)
                                 {
                                    §§push(_loc2_.gameObj);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr1155:
                                       §§pop().§_-6l§();
                                       addr1156:
                                       _loc2_.gameObj.§_-DQ§();
                                    }
                                    else
                                    {
                                       addr1169:
                                       §§push(§§pop().soundManager);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§pop().switchMusic("order");
                                          addr1179:
                                       }
                                       else
                                       {
                                          §§goto(addr1197);
                                       }
                                    }
                                 }
                                 §§goto(addr1231);
                              }
                              §§goto(addr1155);
                           }
                           §§goto(addr1025);
                        }
                     }
                  }
               }
               _loc2_.clip.frame1.holder.addChild(_loc2_.workerFlipped.clip);
               _loc2_.workerFlipped.clip.visible = true;
               _loc2_.workerFlipped.clip.scaleX = -1.6;
               _loc2_.workerFlipped.clip.scaleY = 1.6;
               if(_loc4_)
               {
                  _loc2_.workerFlipped.clip.x = 470.7;
                  _loc2_.workerFlipped.clip.y = 56.5;
                  §§push(_loc2_.workerFlipped);
                  if(!_loc3_)
                  {
                     §§pop().clip.gotoAndStop("intro1");
                     §§push(_loc2_.workerFlipped);
                     if(_loc4_ || _loc3_)
                     {
                        §§pop().animateModel();
                     }
                     else
                     {
                        addr751:
                        §§pop().clip.scaleX = -1.17;
                     }
                  }
                  else
                  {
                     addr868:
                     §§pop().animateModel();
                  }
               }
               else
               {
                  addr701:
                  _loc2_.workerFlipped.clip.y = 255;
                  addr706:
                  _loc2_.workerFlipped.clip.gotoAndStop("intro13");
                  if(!_loc3_)
                  {
                     _loc2_.workerFlipped.animateModel();
                     addr714:
                  }
               }
               §§goto(addr778);
            }
            else
            {
               if(_loc2_.clip.currentFrame == 201)
               {
                  _loc2_.clip.frame2.holder.addChild(_loc2_.workerFlipped.clip);
                  _loc2_.workerFlipped.clip.visible = true;
                  §§push(_loc2_.workerFlipped);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§pop().clip.scaleX = -2.3;
                     if(_loc4_)
                     {
                        §§push(_loc2_.workerFlipped);
                        if(_loc4_ || Boolean(this))
                        {
                           §§pop().clip.scaleY = 2.3;
                           _loc2_.workerFlipped.clip.x = 498;
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§push(_loc2_.workerFlipped);
                              if(_loc4_ || Boolean(this))
                              {
                                 §§pop().clip.y = 47;
                                 _loc2_.workerFlipped.clip.gotoAndStop("intro2");
                                 _loc2_.workerFlipped.animateModel();
                              }
                           }
                        }
                        else
                        {
                           addr646:
                           §§pop().clip.gotoAndStop("intro11");
                           if(!_loc3_)
                           {
                              §§push(_loc2_.workerFlipped);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§pop().animateModel();
                              }
                              else
                              {
                                 addr813:
                                 §§pop().clip.visible = true;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc2_.workerFlipped.clip.scaleX = -1.75;
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       _loc2_.workerFlipped.clip.scaleY = 1.75;
                                       addr840:
                                       §§push(_loc2_.workerFlipped);
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr849:
                                          §§pop().clip.x = 320;
                                          §§push(_loc2_.workerFlipped);
                                          if(!_loc3_)
                                          {
                                             §§pop().clip.y = 97;
                                             if(_loc4_)
                                             {
                                                _loc2_.workerFlipped.clip.gotoAndStop("intro15");
                                                §§goto(addr868);
                                                §§push(_loc2_.workerFlipped);
                                             }
                                             §§goto(addr1155);
                                          }
                                       }
                                       else
                                       {
                                          addr994:
                                          §§pop().clip.scaleY = 1.95;
                                       }
                                    }
                                    else
                                    {
                                       addr1044:
                                       _loc2_.worker.clip.visible = true;
                                       _loc2_.worker.clip.scaleX = 2.78;
                                       if(!_loc3_)
                                       {
                                          addr1054:
                                          §§push(_loc2_.worker);
                                          if(!(_loc3_ && Boolean(_loc2_)))
                                          {
                                             §§pop().clip.scaleY = 2.78;
                                             addr1066:
                                             §§push(_loc2_.worker);
                                             if(_loc4_)
                                             {
                                                §§pop().clip.x = 109;
                                                §§push(_loc2_.worker);
                                             }
                                             §§pop().clip.y = -12;
                                             §§push(_loc2_.worker);
                                             if(_loc3_)
                                             {
                                             }
                                             addr1087:
                                             §§pop().animateModel();
                                             if(_loc3_)
                                             {
                                             }
                                             §§goto(addr1122);
                                          }
                                          addr1082:
                                          §§pop().clip.gotoAndStop("intro19");
                                          §§goto(addr1087);
                                          §§push(_loc2_.worker);
                                       }
                                    }
                                    §§goto(addr1109);
                                 }
                              }
                              §§goto(addr1231);
                           }
                        }
                        addr997:
                        §§goto(addr999);
                        §§push(_loc2_.workerFlipped);
                     }
                     else
                     {
                        addr369:
                        §§push(_loc2_.workerFlipped);
                        if(!_loc3_)
                        {
                           §§pop().clip.y = 94;
                           _loc2_.workerFlipped.clip.gotoAndStop("intro7");
                           if(_loc4_ || Boolean(param1))
                           {
                              §§push(_loc2_.workerFlipped);
                              if(_loc4_)
                              {
                                 §§pop().animateModel();
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    addr992:
                                    §§goto(addr994);
                                    §§push(_loc2_.workerFlipped);
                                 }
                              }
                              else
                              {
                                 addr425:
                                 §§pop().clip.scaleX = -0.82;
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    §§push(_loc2_.workerFlipped);
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       §§pop().clip.scaleY = 0.82;
                                       §§push(_loc2_.workerFlipped);
                                       if(!(_loc4_ || Boolean(param1)))
                                       {
                                          §§goto(addr849);
                                       }
                                    }
                                    addr492:
                                    §§pop().animateModel();
                                 }
                                 else
                                 {
                                    addr885:
                                    §§goto(addr887);
                                    §§push(_loc2_.workerTurned);
                                 }
                              }
                              §§goto(addr1023);
                           }
                           §§goto(addr778);
                        }
                        §§pop().clip.x = 520;
                        §§push(_loc2_.workerFlipped);
                     }
                     §§pop().clip.y = 147;
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(_loc2_.workerFlipped);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§pop().clip.gotoAndStop("intro9");
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr492);
                              §§push(_loc2_.workerFlipped);
                           }
                           §§goto(addr1122);
                        }
                        else
                        {
                           §§goto(addr706);
                        }
                     }
                     §§goto(addr999);
                  }
                  §§goto(addr1025);
               }
               else if(_loc2_.clip.currentFrame == 300)
               {
                  _loc2_.clip.frame3.holder.addChild(_loc2_.worker.clip);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.worker.clip.visible = true;
                     §§push(_loc2_.worker);
                     if(_loc4_)
                     {
                        §§pop().clip.scaleX = 1.2;
                        _loc2_.worker.clip.scaleY = 1.2;
                        _loc2_.worker.clip.x = 222;
                        §§push(_loc2_.worker);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr1044);
                     }
                     §§pop().clip.y = 78;
                     _loc2_.worker.clip.gotoAndStop("intro3");
                     §§push(_loc2_.worker);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop().animateModel();
                     }
                     else
                     {
                        §§goto(addr1044);
                     }
                     §§goto(addr1109);
                  }
                  else
                  {
                     §§goto(addr840);
                  }
               }
               else if(_loc2_.clip.currentFrame == 600)
               {
                  _loc2_.clip.frame6.holder.addChild(_loc2_.worker.clip);
                  _loc2_.worker.clip.visible = true;
                  _loc2_.worker.clip.scaleX = 1.57;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§push(_loc2_.worker);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop().clip.scaleY = 1.57;
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           §§push(_loc2_.worker);
                           if(_loc4_)
                           {
                              §§pop().clip.x = 186;
                              if(_loc4_)
                              {
                                 §§goto(addr299);
                              }
                              §§goto(addr1231);
                           }
                           else
                           {
                              §§goto(addr1082);
                           }
                        }
                        else
                        {
                           addr587:
                           _loc2_.workerFlipped.clip.visible = true;
                           _loc2_.workerFlipped.clip.scaleX = -0.93;
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.workerFlipped.clip.scaleY = 0.93;
                              if(_loc4_)
                              {
                                 §§push(_loc2_.workerFlipped);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§pop().clip.x = 183;
                                    _loc2_.workerFlipped.clip.y = 123;
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(_loc2_.workerFlipped);
                                       if(_loc4_)
                                       {
                                          §§goto(addr646);
                                       }
                                       §§goto(addr1011);
                                    }
                                    §§goto(addr994);
                                 }
                                 else
                                 {
                                    §§goto(addr706);
                                 }
                              }
                              §§goto(addr1082);
                           }
                        }
                        §§goto(addr1185);
                     }
                     §§goto(addr318);
                  }
                  §§goto(addr561);
               }
               else if(_loc2_.clip.currentFrame == 700)
               {
                  _loc2_.clip.frame7.holder.addChild(_loc2_.workerFlipped.clip);
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.workerFlipped.clip.visible = true;
                     if(_loc4_ || _loc3_)
                     {
                        §§push(_loc2_.workerFlipped);
                        if(_loc4_)
                        {
                           §§pop().clip.scaleX = -1.22;
                           _loc2_.workerFlipped.clip.scaleY = 1.22;
                           _loc2_.workerFlipped.clip.x = 574;
                           §§goto(addr369);
                        }
                        §§goto(addr1018);
                     }
                     §§goto(addr868);
                  }
                  §§goto(addr1066);
               }
               else if(_loc2_.clip.currentFrame == 901)
               {
                  _loc2_.clip.frame9.holder.addChild(_loc2_.workerFlipped.clip);
                  _loc2_.workerFlipped.clip.visible = true;
                  if(!_loc3_)
                  {
                     §§push(_loc2_.workerFlipped);
                     if(!_loc3_)
                     {
                        §§goto(addr425);
                     }
                     else
                     {
                        §§goto(addr701);
                     }
                  }
                  §§goto(addr714);
               }
               else if(_loc2_.clip.currentFrame == 1001)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr501);
                  }
                  else
                  {
                     addr1032:
                     _loc2_.clip.frame19.holder.addChild(_loc2_.worker.clip);
                     if(!_loc3_)
                     {
                        §§goto(addr1044);
                     }
                  }
                  §§goto(addr1226);
               }
               else if(_loc2_.clip.currentFrame == 1101)
               {
                  _loc2_.clip.frame11.holder.addChild(_loc2_.workerFlipped.clip);
                  §§goto(addr587);
               }
               else if(_loc2_.clip.currentFrame == 1301)
               {
                  _loc2_.clip.frame13.holder.addChild(_loc2_.workerFlipped.clip);
                  _loc2_.workerFlipped.clip.visible = true;
                  if(!_loc3_)
                  {
                     _loc2_.workerFlipped.clip.scaleX = -0.36;
                     _loc2_.workerFlipped.clip.scaleY = 0.36;
                     _loc2_.workerFlipped.clip.x = 225;
                     if(_loc4_)
                     {
                        §§goto(addr701);
                     }
                     else
                     {
                        §§goto(addr923);
                     }
                  }
                  §§goto(addr868);
               }
               else if(_loc2_.clip.currentFrame != 1401)
               {
                  if(_loc2_.clip.currentFrame == 1501)
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        _loc2_.clip.frame15.holder.addChild(_loc2_.workerFlipped.clip);
                        §§push(_loc2_.workerFlipped);
                        if(_loc4_)
                        {
                           §§goto(addr813);
                        }
                        §§goto(addr1018);
                     }
                     else
                     {
                        §§goto(addr937);
                     }
                  }
                  else if(_loc2_.clip.currentFrame == 1601)
                  {
                     if(_loc4_)
                     {
                        _loc2_.clip.frame16.holder.addChild(_loc2_.workerTurned.clip);
                        §§goto(addr885);
                     }
                     §§goto(addr1179);
                  }
                  else if(_loc2_.clip.currentFrame == 1701)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc2_.clip.frame17.holder.addChild(_loc2_.workerFlipped.clip);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(_loc2_.workerFlipped);
                           if(!_loc3_)
                           {
                              §§pop().clip.visible = true;
                              if(_loc4_ || Boolean(param1))
                              {
                                 §§push(_loc2_.workerFlipped);
                              }
                              §§goto(addr997);
                           }
                           §§pop().clip.scaleX = -1.95;
                           if(_loc3_ && _loc3_)
                           {
                           }
                           §§goto(addr1023);
                        }
                        §§goto(addr992);
                     }
                     §§goto(addr1226);
                  }
                  else if(_loc2_.clip.currentFrame == 1901)
                  {
                     §§goto(addr1032);
                  }
               }
               _loc2_.clip.frame14.holder.addChild(_loc2_.workerFlipped.clip);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§push(_loc2_.workerFlipped);
                  if(_loc4_ || _loc3_)
                  {
                     §§pop().clip.visible = true;
                     if(_loc4_)
                     {
                        §§goto(addr751);
                        §§push(_loc2_.workerFlipped);
                     }
                     else
                     {
                        §§goto(addr992);
                     }
                     §§goto(addr994);
                  }
                  else
                  {
                     §§goto(addr868);
                  }
               }
               else
               {
                  §§goto(addr1054);
               }
               §§goto(addr1122);
            }
            §§goto(addr1194);
         }
         §§push(_loc2_.workerFlipped);
         if(_loc4_)
         {
            §§pop().clip.scaleY = 1.17;
            _loc2_.workerFlipped.clip.x = 430;
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§goto(addr773);
            }
            §§goto(addr1011);
         }
         else
         {
            §§goto(addr994);
         }
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:IntroScreen = this;
         _loc1_.clip.skip_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickSkip);
         _loc1_.worker.destroy();
         if(!_loc4_)
         {
            _loc1_.workerTurned.destroy();
            if(!_loc4_)
            {
               _loc1_.workerFlipped.destroy();
               if(_loc3_)
               {
                  _loc1_.worker = null;
                  if(_loc3_ || Boolean(this))
                  {
                  }
               }
               _loc1_.workerTurned = null;
            }
         }
         _loc1_.workerFlipped = null;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.checkFrame);
            if(!_loc4_)
            {
               addr83:
               _loc1_.gameObj.§_-3D§.removeChild(_loc1_.clip);
               if(!(_loc4_ && _loc2_))
               {
                  _loc1_.clip = null;
               }
            }
         }
         catch(err:Error)
         {
            var _loc2_:* = err;
            §§goto(addr83);
         }
      }
   }
}

