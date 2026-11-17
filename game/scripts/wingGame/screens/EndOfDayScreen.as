package wingGame.screens
{
   import §_-1d§.*;
   import §_-C2§.§_-9m§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Rectangle;
   import mochi.as3.*;
   import wingGame.data.UserData;
   import wingGame.models.Worker;
   
   public class EndOfDayScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var initialRank:Number = 0;
      
      public var newRank:Number = 0;
      
      public var showRankUpgrade:Boolean = false;
      
      public var scoreStopFrame:Number = 24;
      
      public var tipStopFrame:Number = 36;
      
      public var revealTimer:Number = 0;
      
      public var revealTodayLabel:Number = 5;
      
      public var revealTodayPoints:Number = 45;
      
      public var revealTotalLabel:Number = 60;
      
      public var revealTotalPoints:Number = 100;
      
      public var revealRank:Number = 140;
      
      public var revealMax:Number = 200;
      
      public var tipRevealTimer:Number = 0;
      
      public var tipRevealRaise:Number = 15;
      
      public var tipRevealMax:Number = 60;
      
      public var scoreToday:Number = 0;
      
      public var customersToday:Number = 0;
      
      public var endAction:String = "none";
      
      public var worker:Worker;
      
      public var backdropBitmap:Bitmap = null;
      
      public var hasSubmittedScore:Boolean = false;
      
      public function EndOfDayScreen(param1:§_-BY§, param2:MovieClip, param3:Object = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
         }
         var _loc4_:EndOfDayScreen = this;
         _loc4_.gameObj = param1;
         if(_loc6_)
         {
            _loc4_.container = param2;
            if(!(_loc5_ && Boolean(this)))
            {
               _loc4_.setupScreen();
            }
         }
      }
      
      public function setupScreen() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:EndOfDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         §§push(_loc2_.getDay());
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            _loc1_.clip = new endOfDayMC();
            if(_loc7_ || Boolean(this))
            {
               _loc1_.container.addChild(_loc1_.clip);
               if(_loc7_)
               {
                  §§push(_loc1_.gameObj);
                  if(!(_loc8_ && Boolean(_loc1_)))
                  {
                     §§push(§§pop().§_-4P§.api);
                     §§push("DAY " + _loc2_.getDay());
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        §§push(§§pop() + " COMPLETE!");
                     }
                     §§pop().§_-CY§(§§pop());
                     if(_loc7_ || Boolean(this))
                     {
                        _loc1_.clip.taco.customers.customers_txt.text = String(_loc2_.todayCustomers);
                        addr163:
                        if(!_loc8_)
                        {
                           _loc1_.clip.taco.waiting.waiting_txt.text = _loc2_.getTodayWaitingAverage() + "%";
                           if(_loc7_)
                           {
                           }
                           addr130:
                           _loc1_.clip.taco.saucing.saucing_txt.text = _loc2_.getTodaySauceAverage() + "%";
                           addr140:
                           _loc1_.clip.taco.percent.percent_txt.text = _loc2_.getTodayTotalAverage() + "%";
                           if(_loc7_ || _loc3_)
                           {
                           }
                           addr182:
                           var _loc4_:Number = Math.floor(_loc2_.getTipsToday() / 100);
                           _loc1_.clip.scoreclip.tips.wage_txt.text = _loc2_.getWeeklyWage(true);
                           _loc1_.clip.scoreclip.tips.payday_txt.text = _loc2_.getPaydayMessage(true);
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              _loc1_.clip.scoreclip.points.today_txt.text = §_-9m§.§_-3E§(_loc2_.getTodayTotalScore());
                              _loc1_.clip.scoreclip.points.total_txt.text = §_-9m§.§_-3E§(_loc2_.getTotalPoints(true));
                           }
                           _loc1_.clip.scoreclip.points.rank_txt.text = _loc2_.getRank();
                           if(_loc7_)
                           {
                              _loc1_.clip.scoreclip.points.rank_title.text = _loc2_.getRankTitle();
                           }
                           _loc1_.initialRank = _loc2_.getRank();
                           if(_loc7_)
                           {
                              _loc1_.scoreToday = _loc2_.getTodayTotalScore();
                           }
                           _loc1_.customersToday = _loc2_.todayCustomers;
                           §§push(_loc2_.saveScores());
                           if(_loc7_ || _loc3_)
                           {
                              §§push(§§pop());
                           }
                           var _loc5_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc7_ || _loc3_)
                           {
                              addr331:
                              §§push(_loc1_.initialRank);
                              if(!_loc8_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       _loc1_.newRank = _loc5_;
                                       if(!_loc8_)
                                       {
                                          _loc1_.showRankUpgrade = true;
                                          if(_loc8_)
                                          {
                                          }
                                       }
                                    }
                                    addr322:
                                    _loc2_.playedALevel = true;
                                 }
                                 else
                                 {
                                    _loc1_.showRankUpgrade = false;
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       §§goto(addr322);
                                    }
                                 }
                                 §§push(_loc2_.getPointsUntilNextRank());
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              var _loc6_:* = §§pop();
                              if(_loc7_ || Boolean(_loc1_))
                              {
                                 addr344:
                                 if(§§pop() < 0)
                                 {
                                    §§push(0);
                                 }
                                 _loc1_.clip.scoreclip.points.nextrank.nextrank_txt.text = §_-9m§.§_-3E§(_loc6_);
                                 if(!(_loc8_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.clip.scoreclip.gotoAndStop(1);
                                    if(!(_loc8_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.clip.scoreclip.points.total_label.visible = false;
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          _loc1_.clip.scoreclip.points.today_label.visible = false;
                                          _loc1_.clip.scoreclip.points.today_txt.visible = false;
                                          _loc1_.clip.scoreclip.points.total_txt.visible = false;
                                          if(!_loc8_)
                                          {
                                             _loc1_.clip.scoreclip.points.nextrank.visible = false;
                                             _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
                                          }
                                          addr553:
                                          §§push(_loc1_.gameObj.§_-4P§);
                                          if(!_loc8_)
                                          {
                                             §§pop().api.§_-EY§("DayReachedRank",_loc1_.newRank,"average",_loc3_);
                                             if(_loc7_)
                                             {
                                                addr567:
                                                §§push(_loc1_.gameObj.§_-4P§);
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   §§push(§§pop().api);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr585:
                                                      §§pop().§_-EY§("TotalMoneyAtDay",_loc3_,"average",Math.floor(_loc2_.totalMoneyEarned / 100));
                                                   }
                                                   addr643:
                                                   §§pop().§_-1q§();
                                                }
                                                addr616:
                                                §§push(§§pop().api);
                                                if(!(_loc8_ && Boolean(_loc1_)))
                                                {
                                                   §§pop().§_-EY§("RankAtDay",_loc3_,"average",_loc2_.getRank());
                                                   if(_loc7_)
                                                   {
                                                      addr641:
                                                      §§push(_loc1_.gameObj.§_-4P§);
                                                   }
                                                }
                                                §§goto(addr643);
                                             }
                                             addr599:
                                             _loc1_.gameObj.§_-4P§.api.§_-EY§("MoneyEarnedToday",_loc3_,"average",_loc4_);
                                          }
                                          addr642:
                                          §§goto(addr643);
                                          §§push(§§pop().api);
                                       }
                                       §§push(_loc1_.gameObj);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().§_-4P§);
                                          if(_loc7_ || Boolean(this))
                                          {
                                             §§goto(addr616);
                                          }
                                          §§goto(addr642);
                                       }
                                       §§goto(addr641);
                                    }
                                    §§goto(addr644);
                                 }
                                 _loc1_.container.addEventListener("clickContinue",_loc1_.clickContinue);
                                 if(!_loc8_)
                                 {
                                    _loc1_.container.addEventListener("clickSubmitScore",_loc1_.clickSubmitScore);
                                    _loc1_.clip.bg.gotoAndStop(4);
                                    _loc1_.initBackdrop();
                                    if(_loc7_ || Boolean(this))
                                    {
                                       _loc1_.gameObj.soundManager.switchMusic("other");
                                       _loc1_.clip.taco.gotoAndPlay(2);
                                    }
                                    addr508:
                                    if(_loc1_.showRankUpgrade)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§goto(addr516);
                                       }
                                       §§goto(addr641);
                                    }
                                    §§goto(addr567);
                                 }
                                 _loc1_.worker = new Worker(_loc1_.gameObj,_loc1_.clip.workerholder,_loc1_.gameObj.workerData,130,106,0.8,false,true);
                                 _loc1_.worker.playAnimation("stand");
                                 _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                                 if(!_loc8_)
                                 {
                                    §§push(_loc1_.gameObj.§_-4P§);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(§§pop().api);
                                       if(_loc7_)
                                       {
                                          §§pop().§_-EY§("CompletedDay",_loc3_,"counter");
                                          §§goto(addr508);
                                       }
                                       §§goto(addr585);
                                    }
                                    addr516:
                                    _loc1_.gameObj.§_-4P§.api.§_-EY§("ReachedRank",_loc1_.newRank,"counter");
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       §§push(_loc1_.gameObj.§_-4P§.api);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§pop().§_-EY§("totalMoneyAtRank",_loc1_.newRank,"average",Math.floor(_loc2_.totalMoneyEarned / 100));
                                          if(_loc7_)
                                          {
                                             §§goto(addr553);
                                          }
                                       }
                                       §§goto(addr599);
                                    }
                                    addr644:
                                    return;
                                 }
                                 §§goto(addr567);
                              }
                              _loc6_ = §§pop();
                              §§goto(addr344);
                           }
                           §§goto(addr331);
                           §§push(§§pop());
                        }
                        _loc1_.clip.scoreclip.tips.today_txt.text = _loc2_.getTipsToday(true);
                        _loc1_.clip.scoreclip.tips.total_txt.text = _loc2_.getTipsTotal(true,true);
                        §§goto(addr182);
                     }
                     §§push(_loc1_.gameObj);
                  }
                  §§pop().challengeManager.recordServiceQuality(_loc2_.getTodayTotalAverage());
                  §§goto(addr163);
               }
            }
         }
         _loc1_.clip.taco.building.building_txt.text = _loc2_.getTodayBuildAverage() + "%";
         _loc1_.clip.taco.grilling.grilling_txt.text = _loc2_.getTodayGrillAverage() + "%";
         if(!_loc8_)
         {
            §§goto(addr130);
         }
         §§goto(addr140);
      }
      
      public function updateScreen(param1:Event = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:EndOfDayScreen = this;
         if(_loc2_.clip)
         {
            §§push(_loc2_.worker);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_.worker);
                     if(_loc6_)
                     {
                        §§pop().animateModel();
                     }
                     addr188:
                     §§pop().playAnimation("score_happy");
                     addr411:
                     addr221:
                  }
                  addr389:
                  §§goto(addr411);
               }
               §§push(_loc2_.clip.taco.currentFrame == _loc2_.clip.taco.totalFrames);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || Boolean(param1))
                     {
                     }
                  }
                  addr60:
                  if(§§pop())
                  {
                     _loc2_.clip.scoreclip.gotoAndPlay(2);
                  }
                  else if(_loc2_.clip.scoreclip.currentFrame == _loc2_.scoreStopFrame)
                  {
                     var _loc4_:* = _loc2_;
                     §§push(_loc4_.revealTimer);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(!_loc7_)
                     {
                        _loc4_.revealTimer = _loc5_;
                     }
                     if(_loc2_.revealTimer == _loc2_.revealTodayLabel)
                     {
                        _loc2_.clip.scoreclip.points.today_label.visible = true;
                        if(!_loc7_)
                        {
                           §§push(_loc2_.gameObj.soundManager);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push("talkbubble.wav");
                              if(!_loc7_)
                              {
                                 §§pop().playSound(§§pop());
                                 if(_loc7_ && Boolean(_loc3_))
                                 {
                                    addr272:
                                    _loc2_.clip.scoreclip.points.total_txt.visible = true;
                                 }
                                 §§goto(addr411);
                              }
                              else
                              {
                                 addr256:
                                 §§pop().playSound(§§pop());
                                 if(!_loc7_)
                                 {
                                    §§goto(addr411);
                                 }
                                 else
                                 {
                                    addr325:
                                    _loc2_.clip.scoreclip.points.rank_title.text = _loc2_.gameObj.userData.getRankTitle();
                                    _loc2_.clip.scoreclip.points.fireworks.gotoAndPlay(2);
                                    §§push(_loc2_.gameObj);
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       §§push(§§pop().soundManager);
                                       if(_loc7_ && Boolean(_loc3_))
                                       {
                                          addr383:
                                          §§push("dropticket.wav");
                                          if(_loc6_)
                                          {
                                             §§pop().playSound(§§pop());
                                             if(!_loc7_)
                                             {
                                                §§goto(addr389);
                                             }
                                             else
                                             {
                                                addr455:
                                                addr459:
                                                addr457:
                                                if(_loc2_.newRank > _loc2_.initialRank)
                                                {
                                                   _loc2_.clip.scoreclip.tips.wage_txt.text = _loc2_.gameObj.userData.getWeeklyWage(true);
                                                   if(_loc6_ || Boolean(_loc2_))
                                                   {
                                                      _loc2_.clip.scoreclip.tips.fireworks.gotoAndPlay(2);
                                                      if(_loc7_ && Boolean(_loc3_))
                                                      {
                                                      }
                                                      addr539:
                                                   }
                                                   addr492:
                                                   §§push(_loc2_.gameObj);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().soundManager);
                                                      if(!_loc7_)
                                                      {
                                                         addr499:
                                                         §§pop().playSound("getstar.wav");
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr539);
                                                         }
                                                         else
                                                         {
                                                            addr597:
                                                            _loc2_.startNextDay();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr562:
                                                         §§push("talkbubble.wav");
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr532:
                                                      §§push(§§pop().§_-4P§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop().api);
                                                         if(_loc6_)
                                                         {
                                                            §§pop().enableButtons();
                                                            §§goto(addr539);
                                                         }
                                                      }
                                                      addr568:
                                                      §§pop().enableButtons();
                                                   }
                                                   addr567:
                                                   §§goto(addr568);
                                                   §§push(§§pop().api);
                                                }
                                                else
                                                {
                                                   _loc2_.clip.scoreclip.points.nextrank.visible = true;
                                                   §§push(_loc2_.gameObj.soundManager);
                                                   §§push("talkbubble.wav");
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      addr522:
                                                      §§pop().playSound(§§pop());
                                                      §§push(_loc2_.gameObj);
                                                      if(_loc6_ || Boolean(param1))
                                                      {
                                                         §§goto(addr532);
                                                      }
                                                      else
                                                      {
                                                         addr561:
                                                         §§goto(addr562);
                                                         §§push(§§pop().soundManager);
                                                      }
                                                      §§goto(addr567);
                                                   }
                                                }
                                                §§pop().playSound(§§pop());
                                                §§push(_loc2_.gameObj);
                                             }
                                          }
                                          §§goto(addr411);
                                       }
                                       addr410:
                                       §§pop().playSound(§§pop());
                                       §§goto(addr411);
                                    }
                                    §§goto(addr567);
                                    §§push(§§pop().§_-4P§);
                                 }
                              }
                           }
                           §§pop().playSound("customer_overjoyed.wav");
                           addr363:
                           _loc2_.worker.playAnimation("levelup");
                           if(_loc6_)
                           {
                              §§goto(addr389);
                           }
                           else
                           {
                              addr397:
                              _loc2_.clip.scoreclip.gotoAndPlay("showtips");
                              if(!_loc7_)
                              {
                                 addr406:
                                 §§push(_loc2_.gameObj.soundManager);
                                 if(_loc6_)
                                 {
                                    §§goto(addr410);
                                    §§push("dropticket.wav");
                                 }
                                 else
                                 {
                                    §§goto(addr499);
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr446:
                           §§push(_loc2_.tipRevealTimer);
                           if(!_loc7_)
                           {
                              §§push(_loc2_.tipRevealRaise);
                              if(_loc6_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr455);
                                 }
                                 else
                                 {
                                    §§push(_loc2_.tipRevealTimer);
                                 }
                              }
                              §§goto(addr459);
                           }
                           addr542:
                           §§push(_loc2_.tipRevealMax);
                        }
                        addr569:
                     }
                     else
                     {
                        if(_loc2_.revealTimer == _loc2_.revealTodayPoints)
                        {
                           _loc2_.clip.scoreclip.points.today_txt.visible = true;
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              §§push(_loc2_.scoreToday / _loc2_.customersToday);
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc6_ || Boolean(this))
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          §§push(80);
                                          if(!(_loc7_ && Boolean(param1)))
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§push(_loc2_.worker);
                                                if(!(_loc7_ && Boolean(_loc2_)))
                                                {
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr221);
                                             }
                                             else
                                             {
                                                §§push(_loc3_);
                                                if(!_loc7_)
                                                {
                                                   §§push(60);
                                                }
                                                else
                                                {
                                                   addr226:
                                                   §§push(_loc2_.revealTotalLabel);
                                                   if(!(_loc7_ && Boolean(this)))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         _loc2_.clip.scoreclip.points.total_label.visible = true;
                                                         §§push(_loc2_.gameObj);
                                                         if(!(_loc7_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(§§pop().soundManager);
                                                            §§push("talkbubble.wav");
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr522);
                                                         }
                                                         §§goto(addr406);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc2_.revealTimer);
                                                         §§push(_loc2_.revealTotalPoints);
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§goto(addr272);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc2_.revealTimer);
                                                               if(_loc6_)
                                                               {
                                                               }
                                                               addr392:
                                                               §§push(_loc2_.revealMax);
                                                               if(_loc7_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr286:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§push(_loc2_.newRank);
                                                            if(_loc6_)
                                                            {
                                                               if(§§pop() > _loc2_.initialRank)
                                                               {
                                                                  if(!(_loc7_ && Boolean(this)))
                                                                  {
                                                                     _loc2_.clip.scoreclip.points.rank_txt.text = _loc2_.gameObj.userData.getRank();
                                                                     if(!(_loc7_ && Boolean(param1)))
                                                                     {
                                                                        §§goto(addr325);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr579:
                                                                     §§push(_loc2_.endAction);
                                                                     if(!(_loc7_ && Boolean(_loc3_)))
                                                                     {
                                                                        if(§§pop() == "continue")
                                                                        {
                                                                           if(_loc6_ || Boolean(_loc3_))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc2_.endAction);
                                                                        }
                                                                     }
                                                                     if(§§pop() == "quit")
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc2_.quitToTitle();
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc2_.clip.scoreclip.gotoAndPlay("showtips");
                                                                  if(_loc6_ || Boolean(_loc3_))
                                                                  {
                                                                     §§goto(addr383);
                                                                     §§push(_loc2_.gameObj.soundManager);
                                                                  }
                                                               }
                                                               §§goto(addr522);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc2_.revealTimer);
                                                         }
                                                         §§goto(addr392);
                                                      }
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      §§goto(addr397);
                                                   }
                                                }
                                             }
                                             §§goto(addr188);
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             §§push(_loc2_.worker);
                                             if(!(_loc7_ && Boolean(param1)))
                                             {
                                                §§pop().playAnimation("score_ok");
                                                §§goto(addr188);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc2_.worker);
                                             if(_loc6_)
                                             {
                                             }
                                             §§goto(addr569);
                                          }
                                          §§goto(addr363);
                                       }
                                       else
                                       {
                                          §§goto(addr542);
                                       }
                                    }
                                    addr559:
                                    §§goto(addr561);
                                    §§push(_loc2_.gameObj);
                                 }
                              }
                              §§goto(addr457);
                           }
                           §§goto(addr597);
                        }
                        else
                        {
                           §§push(_loc2_.revealTimer);
                           if(_loc6_)
                           {
                              §§goto(addr226);
                           }
                        }
                        §§goto(addr286);
                        §§push(_loc2_.revealRank);
                     }
                     if(§§pop() == §§pop())
                     {
                        _loc2_.clip.scoreclip.points.nextrank.visible = true;
                        if(_loc6_ || Boolean(param1))
                        {
                           §§goto(addr559);
                        }
                     }
                     §§goto(addr569);
                  }
                  else if(_loc2_.clip.scoreclip.currentFrame == _loc2_.tipStopFrame)
                  {
                     _loc4_ = _loc2_;
                     §§push(_loc4_.tipRevealTimer);
                     if(_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc5_ = §§pop();
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        _loc4_.tipRevealTimer = _loc5_;
                     }
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§goto(addr446);
                     }
                     §§goto(addr492);
                  }
                  else if(_loc2_.clip.scoreclip.currentFrame == _loc2_.clip.scoreclip.totalFrames)
                  {
                     §§goto(addr579);
                  }
               }
               §§pop();
               §§goto(addr60);
               §§push(_loc2_.clip.scoreclip.currentFrame == 1);
            }
            §§pop().playAnimation("score_sad");
            if(_loc6_ || Boolean(this))
            {
               §§goto(addr188);
            }
            else
            {
               §§goto(addr539);
            }
         }
      }
      
      public function clickContinue(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EndOfDayScreen = this;
         _loc2_.endAction = "continue";
         if(_loc4_ || _loc3_)
         {
            _loc2_.clip.curtains.gotoAndPlay("close");
            if(_loc4_)
            {
            }
            §§goto(addr73);
         }
         _loc2_.clip.scoreclip.gotoAndPlay("raise");
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_.gameObj);
            if(_loc4_ || Boolean(this))
            {
               §§push(§§pop().§_-4P§);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§pop().api.§_-DU§("EndOfDay");
                  addr73:
                  §§push(_loc2_.gameObj);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr90:
                     §§pop().§_-4P§.§_-CO§();
                     §§push(_loc2_.gameObj);
                     addr89:
                  }
                  §§pop().soundManager.playSound("buttonclick.wav");
                  return;
               }
               §§goto(addr90);
            }
            §§goto(addr89);
         }
         §§goto(addr90);
      }
      
      public function clickSubmitScore(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EndOfDayScreen = this;
         §§push(_loc2_.gameObj);
         if(!_loc4_)
         {
            §§push(§§pop().§_-4P§);
            if(!_loc4_)
            {
               §§push(§§pop().api);
               if(_loc3_)
               {
                  §§push(§§pop().§_-6z§());
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr139);
                  }
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc2_.gameObj);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().soundManager.playSound("buttonclick.wav");
                           §§push(_loc2_.gameObj);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr131);
                        }
                     }
                     addr119:
                     _loc2_.hasSubmittedScore = true;
                     §§goto(addr131);
                     §§push(_loc2_.gameObj);
                  }
                  §§goto(addr139);
               }
               §§pop().disableButtons("EndOfDay",["Submit Score"],false,false);
               addr139:
               if(§§pop())
               {
                  §§push(_loc2_.gameObj);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§push(§§pop().§_-4P§);
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§pop().§_-CO§();
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                     }
                  }
                  else
                  {
                     addr131:
                     §§push(§§pop().§_-4P§);
                  }
                  addr132:
                  §§push(§§pop().api);
               }
               else
               {
                  §§push(_loc2_.hasSubmittedScore);
               }
               return;
            }
            addr102:
            §§pop().submitScore(_loc2_.gameObj.userData.getTotalPoints(),_loc2_.gameObj.userData.myName,_loc2_.showButtonsAfterScore,_loc2_.gameObj.workerData.getDataToSave());
            _loc2_.hideButtonsDuringScore();
            §§goto(addr119);
         }
         §§push(§§pop().§_-4P§);
         if(!(_loc4_ && Boolean(param1)))
         {
            §§goto(addr102);
         }
         §§goto(addr132);
      }
      
      public function hideButtonsDuringScore() : void
      {
         var _loc1_:EndOfDayScreen = this;
      }
      
      public function showButtonsAfterScore() : void
      {
         var _loc1_:EndOfDayScreen = this;
      }
      
      public function clickQuit(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EndOfDayScreen = this;
         _loc2_.endAction = "quit";
         _loc2_.clip.fader.gotoAndPlay("fadeout");
         _loc2_.clip.scoreclip.gotoAndPlay("raise");
         if(_loc4_ || Boolean(param1))
         {
            §§push(_loc2_.gameObj);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop().§_-4P§);
               if(_loc4_ || Boolean(this))
               {
                  §§pop().api.§_-DU§("EndOfDay");
                  §§push(_loc2_.gameObj);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop().§_-4P§);
                  }
               }
               §§pop().§_-CO§();
               if(_loc4_)
               {
               }
               §§goto(addr89);
            }
            §§goto(addr86);
         }
         addr86:
         §§pop().soundManager.playSound("buttonclick.wav");
         addr89:
         _loc2_.gameObj;
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:EndOfDayScreen = this;
         if(_loc3_)
         {
            _loc1_.worker.destroy();
            if(_loc3_)
            {
               _loc1_.worker = null;
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc1_.backdropBitmap != null)
                  {
                     if(_loc4_)
                     {
                     }
                     try
                     {
                        addr43:
                        _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
                        if(_loc3_ || _loc2_)
                        {
                           addr75:
                           _loc1_.backdropBitmap = null;
                        }
                     }
                     catch(err:Error)
                     {
                        §§goto(addr75);
                     }
                     §§goto(addr122);
                  }
                  _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                  _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
                  _loc1_.container.removeEventListener("clickContinue",_loc1_.clickContinue);
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc1_.container.removeEventListener("clickSubmitScore",_loc1_.clickSubmitScore);
                     _loc1_.container.removeChild(_loc1_.clip);
                  }
                  addr122:
                  _loc1_.clip = null;
                  return;
               }
            }
         }
         _loc1_.backdropBitmap.bitmapData.dispose();
         §§goto(addr43);
      }
      
      public function startNextDay() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:EndOfDayScreen = this;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(_loc2_)
            {
            }
            §§goto(addr49);
         }
         _loc1_.gameObj.§_-Bw§();
         addr49:
      }
      
      public function quitToTitle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:EndOfDayScreen = this;
         if(!_loc2_)
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
            if(_loc2_ && Boolean(_loc1_))
            {
            }
            §§goto(addr50);
         }
         _loc1_.gameObj.§_-Df§();
         addr50:
      }
      
      private function createLobbyBackdropBitmap() : Bitmap
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc1_:EndOfDayScreen = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:Bitmap = null;
         var _loc5_:MovieClip = new nowindowBackdropMC();
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            _loc4_ = 1;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            §§push(10);
            if(!_loc7_)
            {
               if(§§pop() > §§pop())
               {
                  _loc4_ = 1;
                  if(_loc8_)
                  {
                     addr108:
                     while(true)
                     {
                        §§push(_loc4_);
                        while(true)
                        {
                           break loop0;
                        }
                        _loc4_ = §§pop();
                     }
                     addr108:
                  }
               }
               else
               {
                  _loc5_.holder.wallparts["wall" + _loc4_].gotoAndStop(_loc2_.lobbyWallpaper);
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc4_++;
                     if(_loc8_)
                     {
                        continue;
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr113);
            }
            break;
         }
         while(true)
         {
            if(§§pop() > §§pop())
            {
               if(!_loc7_)
               {
                  addr113:
                  _loc5_.holder.trim.gotoAndStop(_loc2_.lobbyWallpaper);
                  §§goto(addr119);
               }
               addr119:
               _loc5_.holder.wallparts.mask = _loc5_.holder.wallmask;
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  _loc5_.holder.floorparts.mask = _loc5_.holder.floormask;
               }
               var _loc6_:BitmapData = new BitmapData(706,552,true,0);
               _loc6_.draw(_loc5_,null,null,null,new Rectangle(0,0,706,552));
               _loc3_ = new Bitmap(_loc6_);
               _loc5_ = null;
               return _loc3_;
            }
            _loc5_.holder.floorparts["floor" + _loc4_].gotoAndStop(_loc2_.lobbyFlooring);
            §§push(_loc4_ + 1);
            if(!_loc7_)
            {
               §§push(§§pop());
               if(_loc7_ && Boolean(_loc1_))
               {
                  continue;
               }
            }
            _loc4_ = §§pop();
            §§goto(addr108);
         }
      }
      
      public function initBackdrop() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:EndOfDayScreen = this;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc1_.backdropBitmap != null)
            {
               if(_loc3_ || _loc3_)
               {
                  _loc1_.backdropBitmap.bitmapData.dispose();
               }
            }
            §§goto(addr80);
         }
         try
         {
            _loc1_.clip.backdrop_holder.removeChild(_loc1_.backdropBitmap);
            if(!(_loc4_ && Boolean(this)))
            {
               §§goto(addr70);
            }
            §§goto(addr91);
         }
         catch(err:Error)
         {
            var _loc2_:* = err;
            addr70:
            _loc1_.backdropBitmap = null;
            if(!(_loc4_ && _loc2_))
            {
               addr80:
               _loc1_.backdropBitmap = _loc1_.createLobbyBackdropBitmap();
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr91:
                  _loc1_.clip.backdrop_holder.addChild(_loc1_.backdropBitmap);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                  }
                  §§goto(addr117);
               }
               _loc1_.backdropBitmap.x = -24;
               if(_loc3_)
               {
               }
               §§goto(addr117);
            }
            addr117:
            _loc1_.backdropBitmap.y = -40;
            return;
         }
         §§goto(addr91);
      }
   }
}

