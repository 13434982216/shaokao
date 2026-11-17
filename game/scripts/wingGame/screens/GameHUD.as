package wingGame.screens
{
   import §_-1d§.*;
   import flash.display.MovieClip;
   import flash.events.*;
   import wingGame.data.UserData;
   
   public class GameHUD
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var currentStation:String = "none";
      
      public var duringTransition:Boolean = false;
      
      private var transitionToScreen:String = "none";
      
      private var transitionSpeed:Number = 0.2;
      
      private var switchedTransition:Boolean = false;
      
      public var trainingClip:MovieClip;
      
      public var whichContextTraining:String = "none";
      
      public var timersGoingOff:Number = 0;
      
      public function GameHUD(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            super();
         }
         var _loc2_:GameHUD = this;
         if(_loc3_ || _loc3_)
         {
            _loc2_.gameObj = param1;
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_.setupScreen();
            }
         }
      }
      
      public function setupScreen() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameHUD = this;
         if(!_loc2_)
         {
            _loc1_.clip = new hudMC();
            §§push(_loc1_.gameObj);
            if(_loc3_)
            {
               §§pop().§_-BG§.addChild(_loc1_.clip);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.clip.mouseEnabled = false;
                  _loc1_.clip.order_ring.visible = false;
                  _loc1_.clip.grill_ring.visible = false;
                  _loc1_.clip.build_ring.visible = false;
                  if(_loc3_)
                  {
                     _loc1_.clip.sauce_ring.visible = false;
                     if(_loc3_)
                     {
                        _loc1_.clip.order_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickOrder);
                     }
                     addr92:
                     _loc1_.clip.sauce_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickSauce);
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.clip.pause_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPause);
                        addr176:
                        if(!_loc2_)
                        {
                           _loc1_.clip.mute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMute);
                           _loc1_.clip.unmute_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
                           if(_loc2_)
                           {
                           }
                           addr241:
                           _loc1_.clip.blue_timer.stop();
                           §§push(_loc1_.gameObj);
                           if(_loc3_)
                           {
                              if(§§pop().userData.currentDay == 1)
                              {
                                 _loc1_.trainingClip = new trainingMC();
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr264:
                                    _loc1_.clip.addChild(_loc1_.trainingClip);
                                    if(_loc3_)
                                    {
                                    }
                                    addr282:
                                    _loc1_.trainingClip.mouseChildren = false;
                                 }
                                 _loc1_.trainingClip.mouseEnabled = false;
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr282);
                                 }
                              }
                              _loc1_.clip.fps_txt.visible = false;
                              addr286:
                              §§push(_loc1_.gameObj);
                           }
                        }
                        _loc1_.clip.doorchime_alert.stop();
                        if(!_loc2_)
                        {
                           _loc1_.clip.doorchime_alert.mouseEnabled = false;
                           addr187:
                           _loc1_.clip.red_timer.visible = false;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.clip.red_timer.mouseEnabled = false;
                              if(!_loc2_)
                              {
                                 _loc1_.clip.yellow_timer.visible = false;
                                 _loc1_.clip.yellow_timer.mouseEnabled = false;
                                 addr216:
                                 _loc1_.clip.blue_timer.visible = false;
                              }
                           }
                        }
                        §§goto(addr264);
                     }
                     _loc1_.clip.pausedBG.visible = false;
                     if(_loc3_)
                     {
                        _loc1_.clip.pausedBG.mouseEnabled = true;
                        _loc1_.clip.doorchime_alert.visible = false;
                        §§goto(addr176);
                     }
                     §§goto(addr286);
                  }
                  _loc1_.clip.grill_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickGrill);
                  if(!_loc2_)
                  {
                     _loc1_.clip.build_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickBuild);
                     §§goto(addr92);
                  }
                  §§goto(addr216);
               }
               _loc1_.clip.menu_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMenu);
               _loc1_.updateMuteButton();
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr92);
               }
               §§goto(addr187);
            }
            §§pop().addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickHeatMap);
            return;
         }
         _loc1_.clip.blue_timer.mouseEnabled = false;
         _loc1_.clip.red_timer.stop();
         _loc1_.clip.yellow_timer.stop();
         if(_loc3_ || Boolean(_loc1_))
         {
            §§goto(addr241);
         }
         §§goto(addr264);
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameHUD = this;
         if(!_loc2_)
         {
            §§push(_loc1_.gameObj);
            if(!(_loc2_ && _loc3_))
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickHeatMap);
               _loc1_.clip.order_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickOrder);
               _loc1_.clip.grill_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickGrill);
               if(!_loc2_)
               {
                  _loc1_.clip.build_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickBuild);
                  _loc1_.clip.sauce_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickSauce);
                  if(_loc3_ || _loc3_)
                  {
                  }
                  addr116:
                  _loc1_.clip.removeChild(_loc1_.trainingClip);
               }
               _loc1_.clip.pause_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPause);
               _loc1_.clip.mute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMute);
               _loc1_.clip.unmute_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickUnmute);
               _loc1_.clip.menu_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickMenu);
               if(_loc1_.trainingClip)
               {
                  §§goto(addr116);
               }
               addr133:
               §§push(_loc1_.gameObj);
            }
            §§pop().§_-BG§.removeChild(_loc1_.clip);
            §§goto(addr139);
         }
         _loc1_.trainingClip = null;
         if(_loc3_)
         {
            §§goto(addr133);
         }
         addr139:
         _loc1_.clip = null;
      }
      
      public function clickOrder(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GameHUD = this;
         if(!_loc3_)
         {
            §§push(_loc2_.currentStation == "order");
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ && Boolean(this))
                     {
                     }
                  }
                  §§goto(addr58);
               }
               addr57:
               addr58:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                  }
                  _loc2_.startTransition("order");
                  addr69:
                  if(_loc3_)
                  {
                  }
                  §§goto(addr86);
               }
               _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               addr86:
               return;
               §§push(§§pop());
            }
            §§pop();
            if(!_loc3_)
            {
               §§push(_loc2_.canClickInTraining(param1));
               if(!_loc3_)
               {
                  §§goto(addr57);
               }
               §§goto(addr58);
            }
         }
         §§push(_loc2_.gameObj);
         if(!_loc3_)
         {
            §§pop().§_-A5§.registerClickForForcing();
            if(_loc4_)
            {
               §§goto(addr69);
            }
         }
         §§goto(addr58);
      }
      
      public function clickGrill(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GameHUD = this;
         if(_loc4_)
         {
            §§push(_loc2_.currentStation == "grill");
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_ && Boolean(this))
               {
               }
               addr44:
               §§pop();
               if(_loc4_)
               {
                  addr53:
                  §§push(_loc2_.canClickInTraining(param1));
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        _loc2_.startTransition("grill");
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                     }
                  }
                  _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               }
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  §§goto(addr44);
               }
            }
            §§goto(addr53);
         }
      }
      
      public function clickBuild(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GameHUD = this;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(_loc2_.currentStation == "build");
            if(_loc4_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  addr63:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                     addr62:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        _loc2_.startTransition("build");
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               }
            }
            §§pop();
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(_loc2_.canClickInTraining(param1));
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr62);
               }
            }
            §§goto(addr63);
         }
      }
      
      public function clickSauce(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:GameHUD = this;
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(_loc2_.currentStation == "sauce");
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                     }
                  }
                  addr62:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr65:
                        _loc2_.startTransition("sauce");
                        if(_loc4_ && Boolean(this))
                        {
                        }
                     }
                  }
                  _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
               }
               §§pop();
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(_loc2_.canClickInTraining(param1));
                  if(_loc4_ && Boolean(_loc2_))
                  {
                  }
                  §§goto(addr62);
               }
               §§goto(addr65);
            }
            §§goto(addr62);
            §§push(§§pop());
         }
      }
      
      public function clickMute(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GameHUD = this;
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.gameObj.soundManager.muteSound();
            if(!_loc3_)
            {
               _loc2_.updateMuteButton();
            }
         }
      }
      
      public function updateMuteButton() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameHUD = this;
         if(_loc3_ || _loc2_)
         {
            _loc1_.clip.mute_btn.visible = !_loc1_.gameObj.soundManager.isMute;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.clip.unmute_btn.visible = _loc1_.gameObj.soundManager.isMute;
            }
         }
      }
      
      public function clickUnmute(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GameHUD = this;
         if(_loc4_)
         {
            §§push(_loc2_.gameObj);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop().soundManager);
               if(!_loc3_)
               {
                  §§pop().unmuteSound();
                  if(_loc4_)
                  {
                  }
                  §§goto(addr55);
               }
               §§goto(addr51);
            }
            addr50:
            addr51:
            §§pop().playSound("buttonclick.wav");
            if(_loc4_)
            {
               §§goto(addr55);
            }
            addr55:
            _loc2_.updateMuteButton();
            return;
            §§push(§§pop().soundManager);
         }
         §§goto(addr50);
         §§push(_loc2_.gameObj);
      }
      
      public function clickPause(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:GameHUD = this;
         if(_loc3_)
         {
            _loc2_.clickMenu(param1);
         }
      }
      
      public function clickMenu(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GameHUD = this;
         if(!_loc3_)
         {
            if(_loc2_.canClickInTraining(param1))
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§push(_loc2_.gameObj);
                  if(!_loc3_)
                  {
                     §§pop().§_-8f§.quietSoundWhenPaused();
                     if(_loc4_)
                     {
                     }
                  }
                  addr74:
                  §§pop().soundManager.playSound("buttonclick.wav");
                  if(_loc4_)
                  {
                     addr81:
                     _loc2_.gameObj.§_-9D§();
                     addr79:
                  }
               }
            }
            return;
         }
         §§push(_loc2_.gameObj);
         if(!_loc3_)
         {
            §§pop().§_-A5§.stopFurniMusic();
            if(_loc4_ || Boolean(param1))
            {
               §§push(_loc2_.gameObj);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr74);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr81);
      }
      
      public function startTransition(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:GameHUD = this;
         if(!_loc5_)
         {
            §§push(_loc3_.duringTransition);
            if(_loc4_ || Boolean(param1))
            {
               §§goto(addr83);
            }
            if(!§§pop())
            {
            }
            §§goto(addr77);
         }
         _loc3_.clip.transition.alpha = 1;
         addr77:
         if(_loc3_.whichContextTraining != "none")
         {
            _loc3_.removeContextTraining();
         }
         addr83:
         if(!§§pop())
         {
            if(_loc4_)
            {
               _loc3_.transitionToScreen = param1;
               _loc3_.duringTransition = true;
               _loc3_.switchedTransition = false;
               _loc3_.clip.transition.visible = true;
               if(_loc4_ || Boolean(param1))
               {
                  _loc3_.clip.transition.alpha = 0;
               }
            }
            §§push(param2);
         }
      }
      
      private function triggerTransition() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameHUD = this;
         _loc1_.clip.order_ring.visible = false;
         _loc1_.clip.grill_ring.visible = false;
         if(!_loc2_)
         {
            _loc1_.clip.build_ring.visible = false;
            _loc1_.clip.sauce_ring.visible = false;
            §§push(_loc1_.currentStation);
            if(_loc3_)
            {
               §§push("build");
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_)
                     {
                        addr474:
                        §§push(_loc1_.gameObj);
                        if(!_loc2_)
                        {
                           §§push(§§pop().§_-7q§);
                           if(_loc3_)
                           {
                              §§pop().deactivateScreen();
                           }
                           addr459:
                           §§pop().activateScreen();
                           _loc1_.clip.build_ring.visible = true;
                           addr694:
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(_loc1_.gameObj);
                           }
                           §§push(_loc1_.gameObj);
                           if(!_loc2_)
                           {
                              addr699:
                              §§pop().userData.hasTrainedRibbon = true;
                              addr701:
                              addr745:
                              addr704:
                              §§push(_loc1_.transitionToScreen == "takeOrder");
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr712:
                                 if(!§§pop())
                                 {
                                    addr714:
                                    §§pop();
                                    §§push(_loc1_.transitionToScreen);
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                    }
                                    §§goto(addr800);
                                 }
                                 if(!§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr732:
                                       §§pop();
                                       §§push(_loc1_.gameObj);
                                       if(_loc2_ && _loc3_)
                                       {
                                       }
                                       §§goto(addr804);
                                    }
                                    addr744:
                                    §§push(§§pop());
                                 }
                              }
                              if(§§pop())
                              {
                                 _loc1_.clip.build_btn.visible = false;
                                 addr751:
                                 _loc1_.clip.grill_btn.visible = false;
                                 addr756:
                                 _loc1_.clip.order_btn.visible = false;
                                 _loc1_.clip.sauce_btn.visible = false;
                              }
                              else
                              {
                                 _loc1_.clip.build_btn.visible = true;
                                 if(_loc3_)
                                 {
                                    _loc1_.clip.grill_btn.visible = true;
                                    if(!_loc2_)
                                    {
                                       addr781:
                                       _loc1_.clip.order_btn.visible = true;
                                       if(_loc2_ && _loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr804);
                                 }
                                 _loc1_.clip.sauce_btn.visible = true;
                              }
                              addr800:
                              if(§§pop() == "ending")
                              {
                                 addr804:
                                 _loc1_.gameObj.§_-DN§();
                                 addr802:
                              }
                              else
                              {
                                 _loc1_.currentStation = _loc1_.transitionToScreen;
                                 if(!_loc2_)
                                 {
                                    _loc1_.transitionToScreen = "none";
                                 }
                              }
                              return;
                              §§push(_loc1_.transitionToScreen);
                              addr698:
                           }
                           §§goto(addr744);
                           §§push(§§pop().§_-A5§.isWaitingToEnd);
                        }
                        §§push(§§pop().§_-3f§);
                        if(!_loc2_)
                        {
                           addr477:
                           §§push(§§pop());
                           §§push(§§pop());
                           if(_loc3_ || Boolean(this))
                           {
                              if(§§pop())
                              {
                                 addr616:
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§pop();
                                    §§push(_loc1_.gameObj);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop().§_-DZ§);
                                       if(_loc3_)
                                       {
                                          addr503:
                                          §§push(§§pop() == 3);
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   addr667:
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      addr551:
                                                      §§push(_loc1_.gameObj.§_-DZ§);
                                                      §§push(22);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                   §§push(_loc1_.gameObj.§_-A5§);
                                                   if(!_loc2_)
                                                   {
                                                      addr672:
                                                      §§push(§§pop().isWaitingToEnd);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc3_)
                                                         {
                                                            addr683:
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr691:
                                                                  _loc1_.showContextTraining("ribbon");
                                                                  §§goto(addr694);
                                                               }
                                                               §§goto(addr756);
                                                            }
                                                            §§goto(addr701);
                                                         }
                                                         §§goto(addr714);
                                                      }
                                                      §§goto(addr712);
                                                   }
                                                   §§goto(addr694);
                                                }
                                                if(!§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§pop();
                                                      if(_loc3_ || Boolean(_loc1_))
                                                      {
                                                         §§push(_loc1_.gameObj.§_-DZ§);
                                                      }
                                                      else
                                                      {
                                                         addr575:
                                                         _loc1_.gameObj.§_-3N§.activateScreen();
                                                      }
                                                   }
                                                   §§goto(addr683);
                                                }
                                             }
                                             addr632:
                                             if(§§pop())
                                             {
                                                addr633:
                                                §§pop();
                                                §§push(_loc1_.gameObj);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(§§pop().userData);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§push(§§pop().hasTrainedRibbon);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                         }
                                                         addr664:
                                                         §§pop();
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr667);
                                                         }
                                                         §§goto(addr714);
                                                      }
                                                   }
                                                   §§goto(addr699);
                                                }
                                                §§goto(addr694);
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr664);
                                             }
                                             §§goto(addr683);
                                          }
                                       }
                                       addr550:
                                       §§goto(addr551);
                                       §§push(27);
                                    }
                                    else
                                    {
                                       addr595:
                                       §§pop().§_-Bq§.activateScreen();
                                    }
                                    addr596:
                                    §§push(_loc1_.transitionToScreen == "order");
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 §§push(§§pop());
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr624:
                                    §§push(§§pop());
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§goto(addr632);
                                    }
                                 }
                                 §§goto(addr712);
                              }
                              if(§§pop())
                              {
                                 _loc1_.gameObj.§_-8o§();
                                 if(_loc2_ && _loc3_)
                                 {
                                 }
                                 §§goto(addr781);
                              }
                              §§goto(addr596);
                           }
                           addr608:
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc1_.gameObj.userData);
                              if(_loc3_)
                              {
                                 §§goto(addr616);
                                 §§push(§§pop().hasRibbon());
                              }
                              §§goto(addr699);
                           }
                           §§goto(addr624);
                        }
                        §§goto(addr745);
                     }
                     else
                     {
                        addr142:
                     }
                     addr181:
                     §§push(_loc1_.transitionToScreen);
                     if(!_loc2_)
                     {
                        §§push("order");
                        if(_loc3_ || _loc3_)
                        {
                           addr725:
                           if(§§pop() == §§pop())
                           {
                              §§push(_loc1_.gameObj);
                              if(_loc3_)
                              {
                                 §§push(§§pop().§_-A5§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§pop().activateScreen();
                                    _loc1_.clip.order_ring.visible = true;
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(_loc1_.gameObj.§_-3f§);
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§push(§§pop());
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                             }
                                             addr402:
                                             §§pop();
                                             §§push(_loc1_.gameObj);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().§_-DZ§);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   addr424:
                                                   if(§§pop() == 15)
                                                   {
                                                      §§push(_loc1_.gameObj);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         addr434:
                                                         §§pop().§_-8o§();
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                         }
                                                         §§goto(addr667);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr550);
                                                }
                                                §§goto(addr596);
                                             }
                                             §§goto(addr804);
                                          }
                                          addr285:
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                addr458:
                                                §§goto(addr459);
                                                §§push(_loc1_.gameObj.§_-7q§);
                                             }
                                             §§goto(addr459);
                                          }
                                          §§goto(addr596);
                                       }
                                       §§pop();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(_loc1_.gameObj);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop().§_-DZ§ == 4);
                                             §§push(§§pop().§_-DZ§ == 4);
                                             if(!_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§push(_loc1_.gameObj.§_-DZ§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(28);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr714);
                                                      }
                                                   }
                                                   §§goto(addr503);
                                                }
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§push(_loc1_.gameObj);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr474);
                                                }
                                                §§goto(addr285);
                                             }
                                             else
                                             {
                                                addr379:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(_loc1_.gameObj);
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      §§push(§§pop().§_-DZ§);
                                                      §§push(2);
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!(§§pop() == §§pop()))
                                                         {
                                                            §§goto(addr402);
                                                         }
                                                      }
                                                      §§goto(addr551);
                                                   }
                                                   §§goto(addr434);
                                                }
                                                §§goto(addr424);
                                             }
                                          }
                                          else
                                          {
                                             addr342:
                                             §§push(§§pop().§_-DZ§ == 9);
                                             if(!_loc2_)
                                             {
                                                addr347:
                                                if(§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      _loc1_.gameObj.§_-8o§();
                                                   }
                                                   §§goto(addr699);
                                                }
                                                §§goto(addr596);
                                             }
                                             §§goto(addr608);
                                          }
                                          §§goto(addr477);
                                       }
                                       §§goto(addr751);
                                    }
                                    §§goto(addr691);
                                 }
                                 §§goto(addr672);
                              }
                              §§goto(addr285);
                              §§push(§§pop().§_-DZ§ == 7);
                           }
                           else
                           {
                              §§push(_loc1_.transitionToScreen);
                              §§push("grill");
                           }
                           §§push(§§pop() == §§pop());
                           if(!_loc2_)
                           {
                              §§goto(addr712);
                           }
                           §§goto(addr732);
                        }
                        §§goto(addr596);
                     }
                     §§push("build");
                  }
                  else
                  {
                     §§push(_loc1_.currentStation);
                     §§push("grill");
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           §§push(_loc1_.gameObj);
                           if(!_loc2_)
                           {
                              §§push(§§pop().§_-8f§);
                              if(!_loc2_)
                              {
                                 §§pop().deactivateScreen();
                                 §§goto(addr181);
                              }
                              addr299:
                              §§pop().activateScreen();
                              _loc1_.clip.grill_ring.visible = true;
                              addr305:
                              §§push(_loc1_.gameObj.§_-3f§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop());
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(_loc1_.gameObj);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().§_-DZ§ == 1);
                                          if(!(§§pop().§_-DZ§ == 1))
                                          {
                                             if(_loc3_)
                                             {
                                                §§pop();
                                                §§push(_loc1_.gameObj);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr458);
                                                }
                                                §§goto(addr459);
                                             }
                                             §§goto(addr633);
                                          }
                                       }
                                       §§goto(addr342);
                                    }
                                    §§goto(addr781);
                                 }
                              }
                              §§goto(addr347);
                           }
                           else
                           {
                              addr170:
                              §§push(§§pop().§_-Bq§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().deactivateScreen();
                                 if(!_loc2_)
                                 {
                                    §§goto(addr181);
                                 }
                                 §§goto(addr305);
                              }
                           }
                           §§goto(addr595);
                        }
                        else
                        {
                           §§push(_loc1_.currentStation);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push("sauce");
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§push(_loc1_.gameObj);
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§push(§§pop().§_-Bg§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().deactivateScreen();
                                          §§goto(addr181);
                                       }
                                       addr361:
                                       §§pop().activateScreen();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          _loc1_.clip.sauce_ring.visible = true;
                                          §§goto(addr379);
                                          §§push(_loc1_.gameObj.§_-3f§);
                                          §§push(_loc1_.gameObj.§_-3f§);
                                       }
                                       §§goto(addr802);
                                    }
                                    §§goto(addr459);
                                 }
                                 else
                                 {
                                    §§push(_loc1_.currentStation);
                                 }
                              }
                              addr357:
                              if(§§pop() == §§pop())
                              {
                                 addr358:
                                 §§goto(addr361);
                                 §§push(_loc1_.gameObj.§_-Bg§);
                              }
                              else
                              {
                                 §§push(_loc1_.transitionToScreen);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr181);
                                 }
                                 addr579:
                                 §§push("giveOrder");
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr587:
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(_loc1_.gameObj);
                                          if(!_loc2_)
                                          {
                                             §§goto(addr595);
                                          }
                                          §§goto(addr698);
                                       }
                                       §§goto(addr751);
                                    }
                                    §§goto(addr596);
                                 }
                              }
                              §§goto(addr725);
                           }
                           §§push("order");
                           if(_loc3_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§push(_loc1_.gameObj.§_-A5§);
                                 if(_loc3_)
                                 {
                                    §§pop().deactivateScreen();
                                    §§goto(addr181);
                                 }
                                 §§goto(addr672);
                              }
                              else
                              {
                                 §§push(_loc1_.currentStation);
                                 if(!_loc2_)
                                 {
                                    §§push("takeOrder");
                                    if(!_loc2_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§push(_loc1_.gameObj.§_-3N§);
                                          if(_loc3_)
                                          {
                                             §§pop().deactivateScreen();
                                             §§goto(addr142);
                                          }
                                          §§goto(addr575);
                                       }
                                       else
                                       {
                                          §§push(_loc1_.currentStation);
                                          if(_loc2_ && Boolean(_loc1_))
                                          {
                                          }
                                       }
                                       addr566:
                                       §§push("takeOrder");
                                       if(!_loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr575);
                                             }
                                             §§goto(addr691);
                                          }
                                          else
                                          {
                                             §§goto(addr579);
                                             §§push(_loc1_.transitionToScreen);
                                          }
                                          §§goto(addr725);
                                       }
                                    }
                                    §§goto(addr704);
                                 }
                                 §§push("giveOrder");
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr170);
                                          §§push(_loc1_.gameObj);
                                       }
                                       §§goto(addr358);
                                    }
                                    §§goto(addr181);
                                 }
                              }
                              §§goto(addr587);
                           }
                        }
                        §§goto(addr596);
                     }
                  }
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr299);
                     §§push(_loc1_.gameObj.§_-8f§);
                  }
                  else
                  {
                     §§goto(addr357);
                     §§push(_loc1_.transitionToScreen);
                     §§push("sauce");
                  }
                  §§goto(addr725);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr458);
                  }
                  §§goto(addr596);
               }
               else
               {
                  §§goto(addr566);
                  §§push(_loc1_.transitionToScreen);
               }
               §§goto(addr699);
            }
            §§goto(addr725);
            §§push("giveOrder");
         }
         _loc1_.gameObj.§_-8o§();
         §§goto(addr285);
      }
      
      public function disableStationButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameHUD = this;
         if(_loc3_)
         {
            _loc1_.clip.build_btn.visible = false;
            if(_loc3_)
            {
               _loc1_.clip.grill_btn.visible = false;
               if(_loc3_ || _loc3_)
               {
               }
            }
            §§goto(addr59);
         }
         _loc1_.clip.order_btn.visible = false;
         if(_loc3_)
         {
            §§goto(addr59);
         }
         addr59:
         _loc1_.clip.sauce_btn.visible = false;
      }
      
      public function enableStationButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:GameHUD = this;
         if(_loc3_ || _loc2_)
         {
            _loc1_.clip.build_btn.visible = true;
            if(_loc3_)
            {
               _loc1_.clip.grill_btn.visible = true;
               if(_loc2_ && _loc3_)
               {
               }
               addr69:
               _loc1_.clip.sauce_btn.visible = true;
            }
            _loc1_.clip.order_btn.visible = true;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr69);
            }
         }
      }
      
      public function updateHUD() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GameHUD = this;
         §§push(_loc1_.duringTransition);
         if(_loc2_)
         {
            §§goto(addr107);
         }
         if(!§§pop())
         {
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.clip.transition.alpha += _loc1_.transitionSpeed;
               if(_loc1_.clip.transition.alpha >= 1)
               {
                  if(_loc2_)
                  {
                     _loc1_.clip.transition.alpha = 1;
                  }
                  else
                  {
                     addr99:
                     _loc1_.clip.transition.visible = false;
                  }
                  addr104:
                  _loc1_.duringTransition = false;
               }
               addr69:
            }
            _loc1_.triggerTransition();
            _loc1_.switchedTransition = true;
            if(!_loc3_)
            {
               §§goto(addr69);
            }
            else
            {
               §§goto(addr104);
            }
         }
         else
         {
            _loc1_.clip.transition.alpha -= _loc1_.transitionSpeed;
            if(_loc1_.clip.transition.alpha <= 0)
            {
               _loc1_.clip.transition.alpha = 0;
               §§goto(addr99);
            }
         }
         addr107:
         if(§§pop())
         {
            §§push(_loc1_.switchedTransition);
         }
      }
      
      public function startHUD() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GameHUD = this;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.updateMuteButton();
            if(_loc2_)
            {
               _loc1_.startTransition("order",true);
            }
         }
      }
      
      public function showCustomerAlert() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc1_:GameHUD = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         §§push(_loc2_.hasBonus("doorbell"));
         if(!_loc4_)
         {
            if(§§pop())
            {
               §§push(_loc1_.gameObj);
               if(_loc5_)
               {
                  §§push(Number(§§pop().§_-EW§.orderline.length));
                  if(_loc5_ || Boolean(this))
                  {
                     _loc3_ = §§pop();
                     §§push(_loc3_);
                  }
                  if(§§pop() > 0)
                  {
                     §§push(_loc1_.currentStation);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        addr87:
                        §§push("order");
                        if(_loc5_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc5_)
                           {
                              §§push(!§§pop());
                              if(_loc5_ || Boolean(_loc1_))
                              {
                                 addr91:
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§pop();
                                       §§push(_loc1_.transitionToScreen);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       _loc1_.clip.doorchime_alert.visible = true;
                                       _loc1_.clip.doorchime_alert.play();
                                    }
                                    _loc1_.clip.doorchime_alert.num_txt.text = String(_loc3_);
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 §§push(_loc1_.gameObj);
                              }
                           }
                        }
                        §§push(§§pop() == §§pop());
                        if(_loc4_)
                        {
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr87);
                     §§push("order");
                  }
               }
               §§pop().soundManager.playSound("doorchime.wav");
            }
            return;
         }
         §§goto(addr91);
         §§push(!§§pop());
      }
      
      public function showTimerAlert(param1:Number = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:GameHUD = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         §§push(_loc2_.currentStation);
         if(!_loc7_)
         {
            §§push("grill");
            if(_loc6_)
            {
               §§push(§§pop() == §§pop());
               if(!_loc7_)
               {
                  §§push(!§§pop());
                  if(_loc7_)
                  {
                  }
                  §§goto(addr48);
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc2_.transitionToScreen);
                     }
                     §§goto(addr104);
                  }
               }
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         addr44:
         §§push(§§pop() == §§pop());
         if(_loc6_)
         {
            §§goto(addr48);
         }
         addr48:
         if(!§§pop())
         {
            var _loc4_:* = _loc2_;
            §§push(_loc4_.timersGoingOff);
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || Boolean(this))
            {
               _loc4_.timersGoingOff = _loc5_;
            }
            §§push(_loc2_.timersGoingOff);
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(1);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  if(§§pop() == §§pop())
                  {
                     _loc2_.clip.blue_timer.visible = true;
                     addr104:
                     _loc2_.clip.blue_timer.play();
                  }
                  else
                  {
                     §§push(_loc2_.timersGoingOff);
                     if(_loc6_)
                     {
                        §§push(2);
                        if(_loc7_)
                        {
                        }
                        addr141:
                        if(§§pop() > §§pop())
                        {
                           addr149:
                           _loc2_.clip.red_timer.visible = true;
                           _loc2_.clip.red_timer.play();
                        }
                     }
                  }
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc7_)
                  {
                     _loc2_.clip.yellow_timer.visible = true;
                     if(_loc6_ || Boolean(_loc3_))
                     {
                     }
                     addr137:
                  }
                  _loc2_.clip.yellow_timer.play();
                  if(!_loc7_)
                  {
                     §§goto(addr137);
                  }
                  else
                  {
                     §§goto(addr149);
                  }
               }
               else
               {
                  §§push(_loc2_.timersGoingOff);
               }
            }
            §§goto(addr141);
            §§push(2);
         }
         "grill";
      }
      
      public function hideTimerAlerts() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GameHUD = this;
         _loc1_.timersGoingOff = 0;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.clip.blue_timer.visible = false;
            _loc1_.clip.yellow_timer.visible = false;
            _loc1_.clip.red_timer.visible = false;
         }
         _loc1_.clip.blue_timer.stop();
         _loc1_.clip.yellow_timer.stop();
         _loc1_.clip.red_timer.stop();
      }
      
      public function canClickInTraining(param1:Event) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:GameHUD = this;
         var _loc3_:§_-BY§ = _loc2_.gameObj;
         var _loc4_:* = false;
         if(!_loc5_)
         {
            if(!_loc3_.§_-3f§)
            {
               §§push(true);
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  addr292:
                  _loc4_ = §§pop();
                  §§push(_loc4_);
               }
            }
            return §§pop();
         }
         §§push(param1.currentTarget == _loc2_.clip.grill_btn);
         §§push(param1.currentTarget == _loc2_.clip.grill_btn);
         if(_loc6_)
         {
            if(§§pop())
            {
               §§pop();
               if(!(_loc5_ && Boolean(this)))
               {
                  addr156:
                  §§push(_loc3_.§_-DZ§);
                  if(!_loc5_)
                  {
                     §§push(1);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc6_ || Boolean(this))
                        {
                        }
                        addr135:
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           addr160:
                           if(§§pop())
                           {
                              §§pop();
                              addr245:
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 §§push(_loc3_.§_-DZ§);
                              }
                              §§push(true);
                              if(_loc6_)
                              {
                                 return §§pop();
                              }
                              addr258:
                              addr257:
                              if(§§pop())
                              {
                                 §§goto(addr275);
                              }
                              if(§§pop())
                              {
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    addr275:
                                    if(!_loc5_)
                                    {
                                       addr261:
                                       §§pop();
                                       §§push(_loc3_.§_-DZ§);
                                       §§push(28);
                                    }
                                    return §§pop();
                                    §§push(true);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              §§push(true);
                              if(_loc6_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr261);
                           }
                           else
                           {
                              addr172:
                              §§push(param1.currentTarget == _loc2_.clip.sauce_btn);
                              if(param1.currentTarget == _loc2_.clip.sauce_btn)
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop();
                                    addr222:
                                    if(_loc6_ || Boolean(this))
                                    {
                                       addr218:
                                       §§push(_loc3_.§_-DZ§);
                                       §§push(2);
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          §§push(§§pop() == §§pop());
                                       }
                                       §§push(§§pop() == §§pop());
                                    }
                                    §§push(param1.currentTarget == _loc2_.clip.order_btn);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ && Boolean(param1))
                                       {
                                       }
                                       §§goto(addr258);
                                    }
                                    else
                                    {
                                       §§goto(addr292);
                                    }
                                 }
                                 addr219:
                                 if(§§pop())
                                 {
                                    return true;
                                 }
                                 §§goto(addr222);
                              }
                              if(§§pop())
                              {
                                 §§goto(addr195);
                              }
                              else
                              {
                                 §§push(param1.currentTarget == _loc2_.clip.sauce_btn);
                                 §§push(param1.currentTarget == _loc2_.clip.sauce_btn);
                                 if(_loc6_ || Boolean(this))
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(_loc3_.§_-DZ§);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr218);
                                          §§push(15);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr258);
                              }
                           }
                           §§goto(addr258);
                        }
                        if(§§pop())
                        {
                           §§pop();
                           addr243:
                           §§push(_loc3_.§_-DZ§ == 4);
                        }
                        if(§§pop())
                        {
                           §§goto(addr245);
                        }
                        else
                        {
                           §§push(param1.currentTarget == _loc2_.clip.order_btn);
                           if(_loc6_)
                           {
                              §§goto(addr257);
                           }
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr258);
                     §§push(§§pop() == §§pop());
                  }
                  §§push(22);
                  if(_loc6_)
                  {
                     §§goto(addr160);
                     §§push(§§pop() == §§pop());
                  }
                  §§goto(addr243);
               }
               §§goto(addr292);
            }
            if(§§pop())
            {
               return true;
            }
            §§push(param1.currentTarget == _loc2_.clip.grill_btn);
            if(_loc6_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(_loc3_.§_-DZ§ == 9);
                           if(_loc6_ || Boolean(this))
                           {
                           }
                           §§goto(addr275);
                        }
                        addr195:
                        return true;
                     }
                     addr113:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     return true;
                  }
                  §§goto(addr113);
                  §§push(param1.currentTarget == _loc2_.clip.build_btn);
               }
               §§goto(addr172);
            }
            §§goto(addr219);
         }
         if(§§pop())
         {
            §§pop();
            if(!_loc5_)
            {
               §§push(_loc3_.§_-DZ§);
               if(!_loc5_)
               {
                  §§push(§§pop() == 3);
               }
               §§goto(addr156);
            }
            §§goto(addr292);
         }
         if(§§pop())
         {
            return true;
         }
         §§goto(addr135);
         §§push(param1.currentTarget == _loc2_.clip.build_btn);
      }
      
      public function showContextTraining(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:GameHUD = this;
         §§push(!_loc2_.trainingClip);
         if(_loc3_ || Boolean(_loc2_))
         {
            if(§§pop())
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§pop();
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(_loc2_.gameObj.§_-3f§);
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr56);
         }
         addr56:
         if(§§pop())
         {
            if(_loc3_)
            {
               _loc2_.trainingClip = new trainingMC();
               if(_loc4_)
               {
               }
               §§goto(addr81);
            }
            _loc2_.clip.addChild(_loc2_.trainingClip);
            _loc2_.trainingClip.mouseEnabled = false;
            if(!(_loc4_ && Boolean(param1)))
            {
               addr81:
               _loc2_.trainingClip.mouseChildren = false;
               if(_loc3_ || Boolean(_loc2_))
               {
               }
               §§goto(addr106);
            }
            §§goto(addr102);
         }
         _loc2_.whichContextTraining = param1;
         addr102:
         _loc2_.trainingClip.gotoAndStop(param1);
         addr106:
         !§§pop();
      }
      
      public function removeContextTraining() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:GameHUD = this;
         if(!_loc3_)
         {
            §§push(_loc1_.gameObj.§_-3f§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc3_)
               {
               }
               addr58:
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr93);
               }
               §§goto(addr90);
            }
            if(§§pop())
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(Boolean(_loc1_.trainingClip));
                  }
                  addr90:
                  _loc1_.whichContextTraining = "none";
                  §§goto(addr93);
               }
            }
            §§goto(addr58);
         }
         _loc1_.clip.removeChild(_loc1_.trainingClip);
         if(_loc2_ || Boolean(this))
         {
            _loc1_.trainingClip = null;
            if(!_loc3_)
            {
               §§goto(addr58);
            }
         }
         addr93:
      }
      
      public function showTrainingWarning(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:GameHUD = this;
         if(_loc4_ || Boolean(this))
         {
            if(!_loc2_.trainingClip)
            {
            }
            §§goto(addr57);
         }
         try
         {
            _loc2_.trainingClip.warningMC.gotoAndPlay(param1);
         }
         catch(err:Error)
         {
         }
         addr57:
      }
      
      public function clickHeatMap(param1:MouseEvent) : void
      {
         var _loc2_:GameHUD = this;
      }
   }
}

