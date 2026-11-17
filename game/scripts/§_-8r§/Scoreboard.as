package §_-8r§
{
   import Playtomic.*;
   import §_-5m§.§_-2w§;
   import §_-C2§.*;
   import fl.controls.TextInput;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class Scoreboard
   {
      private var api:§_-2w§;
      
      private var clip:MovieClip;
      
      private var largeScoreboardY:Number = 47;
      
      private var smallScoreboardY:Number = 75;
      
      private var scoresPerPage:Number = 10;
      
      private var submittingScore:Boolean = false;
      
      private var showPlace:Boolean = false;
      
      private var requireName:Boolean = true;
      
      private var playerScore:Number = 0;
      
      private var playerName:String = "Anonymous";
      
      private var playerCustomData:Object = null;
      
      private var scoreboardClassName:String = "flipline_highscoresMC";
      
      private var enterNameText:TextInput;
      
      private var enterNameButton:§_-7M§;
      
      private var closeCallback:Function;
      
      private var scoreTableName:String;
      
      private var todayScores:Array;
      
      private var weeklyScores:Array;
      
      private var monthlyScores:Array;
      
      private var alltimeScores:Array;
      
      private var todayTotal:Number;
      
      private var weeklyTotal:Number;
      
      private var monthlyTotal:Number;
      
      private var alltimeTotal:Number;
      
      private var todayPage:Number = 1;
      
      private var weeklyPage:Number = 1;
      
      private var monthlyPage:Number = 1;
      
      private var alltimePage:Number = 1;
      
      public var askingWhichMode:String = "today";
      
      public var viewingMode:String = "today";
      
      public function Scoreboard(param1:§_-2w§, param2:String, param3:Function = null, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:String = "Anonymous", param8:Number = 0, param9:Object = null)
      {
         var api:§_-2w§;
         var scoreTableName:String;
         var closeCallback:Function;
         var submitScore:Boolean;
         var requireName:Boolean;
         var showPlace:Boolean;
         var playerName:String;
         var playerScore:Number;
         var playerCustomData:Object;
         var ob:Scoreboard;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         api = param1;
         if(_loc12_ || Boolean(param3))
         {
            §§push(§§newactivation());
            if(_loc12_ || Boolean(param1))
            {
               §§push(param2);
               if(!(_loc11_ && Boolean(param2)))
               {
                  §§pop().§§slot[2] = §§pop();
                  if(_loc12_ || Boolean(param1))
                  {
                     closeCallback = param3;
                     addr78:
                     §§push(§§newactivation());
                     if(!_loc11_)
                     {
                        §§push(param4);
                        if(_loc12_)
                        {
                           §§pop().§§slot[4] = §§pop();
                           if(_loc12_)
                           {
                           }
                           §§goto(addr289);
                        }
                        addr68:
                        §§pop().§§slot[5] = §§pop();
                        addr119:
                        if(!(_loc11_ && Boolean(param2)))
                        {
                           §§push(§§newactivation());
                        }
                        §§push(ob);
                        §§push(§§newactivation());
                        if(!_loc11_)
                        {
                           §§pop().api = §§pop().§§slot[1];
                           §§push(ob);
                           §§push(§§newactivation());
                           if(!_loc11_)
                           {
                              §§push(§§pop().§§slot[2]);
                              if(!_loc11_)
                              {
                                 §§pop().scoreTableName = §§pop();
                                 §§push(ob);
                                 if(_loc12_ || Boolean(param1))
                                 {
                                    §§push(submitScore);
                                    if(_loc12_ || Boolean(param2))
                                    {
                                       §§pop().submittingScore = §§pop();
                                       addr253:
                                       if(!(_loc11_ && Boolean(this)))
                                       {
                                          §§push(ob);
                                          §§push(§§newactivation());
                                          if(_loc12_)
                                          {
                                             §§push(§§pop().§§slot[5]);
                                             if(_loc12_ || Boolean(this))
                                             {
                                                §§pop().requireName = §§pop();
                                                if(!_loc11_)
                                                {
                                                   §§push(ob);
                                                   §§push(§§newactivation());
                                                }
                                             }
                                          }
                                       }
                                       ob.closeCallback = function():void
                                       {
                                       };
                                       if(!_loc11_)
                                       {
                                          addr288:
                                          ob.setupScoreboard();
                                          addr286:
                                          addr259:
                                       }
                                       §§goto(addr289);
                                    }
                                    addr188:
                                    §§pop().showPlace = §§pop();
                                    if(_loc12_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc11_ && Boolean(this))
                                       {
                                       }
                                       addr213:
                                       §§push(§§pop().§§slot[10]);
                                       §§push(§§newactivation());
                                       if(!(_loc11_ && Boolean(param3)))
                                       {
                                          addr222:
                                          §§pop().playerScore = §§pop().§§slot[8];
                                          if(_loc12_ || Boolean(param3))
                                          {
                                          }
                                          §§goto(addr289);
                                       }
                                    }
                                    addr247:
                                    §§push(§§newactivation());
                                    if(_loc12_)
                                    {
                                       addr250:
                                       if(§§pop().§§slot[3] == null)
                                       {
                                          §§goto(addr253);
                                       }
                                       else
                                       {
                                          §§push(ob);
                                          if(!(_loc11_ && Boolean(param3)))
                                          {
                                             §§goto(addr270);
                                          }
                                       }
                                    }
                                    §§goto(addr288);
                                 }
                                 §§goto(addr235);
                              }
                              addr211:
                              §§pop().playerName = §§pop();
                              addr212:
                              §§goto(addr213);
                              §§push(§§newactivation());
                           }
                           §§pop().playerCustomData = §§pop().§§slot[9];
                           if(_loc12_ || Boolean(this))
                           {
                              §§goto(addr247);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr188);
                        §§push(§§pop().§§slot[6]);
                     }
                     §§pop().§§slot[6] = param6;
                     §§push(§§newactivation());
                     §§push(param7);
                  }
                  §§push(§§newactivation());
                  if(!_loc11_)
                  {
                     addr235:
                     §§push(§§newactivation());
                     if(_loc11_)
                     {
                     }
                     addr270:
                     §§pop().closeCallback = closeCallback;
                     if(!(_loc11_ && Boolean(param3)))
                     {
                        §§goto(addr286);
                     }
                     addr289:
                     return;
                     §§push(§§pop().§§slot[10]);
                  }
                  §§goto(addr250);
               }
               §§pop().§§slot[7] = §§pop();
               if(!(_loc11_ && Boolean(param1)))
               {
                  playerScore = param8;
                  §§push(§§newactivation());
                  if(_loc12_)
                  {
                     §§pop().§§slot[9] = param9;
                     if(_loc12_)
                     {
                        super();
                        if(_loc11_ && Boolean(param2))
                        {
                        }
                        §§goto(addr212);
                     }
                  }
                  §§goto(addr288);
               }
               ob = this;
               if(!(_loc11_ && Boolean(this)))
               {
                  §§goto(addr119);
               }
               §§goto(addr288);
            }
            §§push(§§pop().§§slot[10]);
            if(_loc12_ || Boolean(param1))
            {
               §§push(§§newactivation());
               if(_loc12_)
               {
                  §§goto(addr211);
                  §§push(§§pop().§§slot[7]);
               }
               §§goto(addr222);
            }
            §§goto(addr270);
         }
         §§push(§§newactivation());
         §§push(param5);
         if(_loc12_)
         {
            §§goto(addr68);
         }
         §§goto(addr78);
      }
      
      private function setupScoreboard() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Scoreboard = this;
         if(_loc3_ || _loc2_)
         {
            _loc1_.clip = _loc1_.api.util.§_-2l§(_loc1_.scoreboardClassName);
            _loc1_.clip.x = (_loc1_.api.§_-AE§ - _loc1_.clip.width) / 2;
            if(_loc3_ || Boolean(_loc1_))
            {
               if(_loc1_.showPlace)
               {
                  _loc1_.clip.y = _loc1_.largeScoreboardY;
               }
               else
               {
                  _loc1_.clip.y = _loc1_.smallScoreboardY;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr71:
                     _loc1_.clip.close_btn.addEventListener(MouseEvent.CLICK,_loc1_.closeScoreboard);
                     if(_loc3_)
                     {
                     }
                     addr102:
                     _loc1_.clip.entername.addChild(_loc1_.enterNameText);
                     var _loc2_:TextFormat = new TextFormat();
                     _loc2_.font = "Arial";
                     _loc2_.size = 24;
                     _loc2_.bold = true;
                     _loc2_.align = TextFormatAlign.CENTER;
                     §§push(_loc1_.enterNameText);
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        §§pop().setStyle("textFormat",_loc2_);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(_loc1_.enterNameText);
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              §§pop().maxChars = 16;
                              §§push(_loc1_.enterNameText);
                              if(_loc4_ && Boolean(_loc2_))
                              {
                              }
                           }
                           addr238:
                           §§pop().text = _loc1_.playerName;
                           if(_loc3_)
                           {
                              _loc1_.clip.content.today_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
                              if(!_loc4_)
                              {
                                 _loc1_.clip.content.weekly_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
                                 _loc1_.clip.content.monthly_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
                                 if(!_loc4_)
                                 {
                                    addr274:
                                    _loc1_.clip.content.alltime_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickMode);
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       _loc1_.clip.content.today_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
                                       if(_loc3_ || _loc3_)
                                       {
                                          _loc1_.clip.content.weekly_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
                                          _loc1_.clip.content.monthly_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
                                          _loc1_.clip.content.alltime_btn.addEventListener(MouseEvent.ROLL_OVER,_loc1_.rolloverMode);
                                          if(_loc3_)
                                          {
                                             _loc1_.clip.content.today_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
                                             _loc1_.clip.content.weekly_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
                                             if(_loc4_ && _loc3_)
                                             {
                                             }
                                             addr447:
                                             _loc1_.clip.content.alltime_btn.useHandCursor = true;
                                             _loc1_.clip.content.today_btn.mouseChildren = false;
                                             if(!(_loc4_ && Boolean(_loc1_)))
                                             {
                                                _loc1_.clip.content.weekly_btn.mouseChildren = false;
                                             }
                                             addr521:
                                             _loc1_.clip.bg.gotoAndStop("large");
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                addr539:
                                                §§push(_loc1_.submittingScore);
                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            §§goto(addr576);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_ || Boolean(_loc1_))
                                                            {
                                                               addr574:
                                                               _loc1_.showEnterName();
                                                            }
                                                            §§goto(addr576);
                                                         }
                                                         else
                                                         {
                                                            addr579:
                                                            §§push(_loc1_.submittingScore);
                                                         }
                                                         §§goto(addr597);
                                                      }
                                                      §§goto(addr581);
                                                   }
                                                   addr581:
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                   addr597:
                                                   if(§§pop())
                                                   {
                                                      _loc1_.submitScore();
                                                      addr598:
                                                      if(_loc4_)
                                                      {
                                                         addr613:
                                                         _loc1_.loadScores();
                                                      }
                                                   }
                                                   else if(!_loc1_.submittingScore)
                                                   {
                                                      §§goto(addr613);
                                                   }
                                                   addr576:
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc1_.requireName);
                                                   }
                                                   return;
                                                   §§push(§§pop());
                                                }
                                                §§pop();
                                                if(_loc4_ && Boolean(this))
                                                {
                                                }
                                                §§goto(addr598);
                                                addr533:
                                             }
                                             §§push(_loc1_.requireName);
                                             if(_loc3_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§goto(addr597);
                                          }
                                          addr395:
                                          _loc1_.clip.content.weekly_btn.buttonMode = true;
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             addr408:
                                             _loc1_.clip.content.monthly_btn.buttonMode = true;
                                             if(_loc4_)
                                             {
                                             }
                                             addr497:
                                             _loc1_.clip.content.prev_btn.visible = false;
                                             _loc1_.api.container.addChild(_loc1_.clip);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(_loc1_.showPlace);
                                                if(_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr521);
                                                   }
                                                   else
                                                   {
                                                      _loc1_.clip.bg.gotoAndStop("small");
                                                   }
                                                   §§goto(addr539);
                                                }
                                                §§goto(addr579);
                                             }
                                             §§goto(addr533);
                                          }
                                          _loc1_.clip.content.alltime_btn.buttonMode = true;
                                          _loc1_.clip.content.today_btn.useHandCursor = true;
                                          _loc1_.clip.content.weekly_btn.useHandCursor = true;
                                          _loc1_.clip.content.monthly_btn.useHandCursor = true;
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr447);
                                          }
                                          §§goto(addr574);
                                       }
                                    }
                                    addr485:
                                    _loc1_.clip.content.alltime_btn.mouseChildren = false;
                                    _loc1_.clip.content.next_btn.visible = false;
                                    §§goto(addr497);
                                 }
                                 §§goto(addr576);
                              }
                           }
                           _loc1_.clip.content.monthly_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
                           if(!_loc4_)
                           {
                              _loc1_.clip.content.alltime_btn.addEventListener(MouseEvent.ROLL_OUT,_loc1_.rolloutMode);
                              _loc1_.clip.content.today_btn.buttonMode = true;
                              if(_loc3_)
                              {
                                 §§goto(addr395);
                              }
                              §§goto(addr408);
                           }
                           §§goto(addr395);
                        }
                        addr472:
                        _loc1_.clip.content.monthly_btn.mouseChildren = false;
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§goto(addr485);
                        }
                        §§goto(addr598);
                     }
                     §§pop().restrict = "0-9A-Za-z \'\\-";
                     _loc1_.enterNameButton = new §_-7M§(null,"SUBMIT SCORE","small","button","clickNameOK",null,false,false,false,null,false,180);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§push(_loc1_.enterNameButton);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(57);
                           if(_loc3_)
                           {
                              §§pop().x = §§pop();
                              if(_loc3_)
                              {
                                 §§push(_loc1_.enterNameButton);
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                                 addr232:
                                 §§pop().addEventListener("clickNameOK",_loc1_.clickEnterNameOK);
                                 §§goto(addr238);
                                 §§push(_loc1_.enterNameText);
                              }
                              §§goto(addr472);
                           }
                           addr214:
                           §§pop().y = §§pop();
                           if(_loc3_)
                           {
                              _loc1_.clip.entername.addChild(_loc1_.enterNameButton);
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§goto(addr232);
                                 §§push(_loc1_.enterNameButton);
                              }
                              §§goto(addr485);
                           }
                           §§goto(addr274);
                        }
                        §§goto(addr214);
                        §§push(46);
                     }
                     §§goto(addr395);
                  }
               }
               _loc1_.enterNameText = new TextInput();
               §§push(_loc1_.enterNameText);
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§push(294);
                  if(!_loc4_)
                  {
                     §§pop().width = §§pop();
                  }
                  addr101:
                  §§pop().height = §§pop();
                  §§goto(addr102);
               }
               addr100:
               §§goto(addr101);
               §§push(39);
            }
            §§goto(addr100);
            §§push(_loc1_.enterNameText);
         }
         §§goto(addr71);
      }
      
      public function clickEnterNameOK(param1:Event = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Scoreboard = this;
         if(_loc3_ || _loc3_)
         {
            _loc2_.playerName = _loc2_.enterNameText.text;
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               _loc2_.submitScore();
            }
         }
      }
      
      private function showMessage(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Scoreboard = this;
         if(_loc3_.clip)
         {
            if(!_loc5_)
            {
               _loc3_.clip.content.visible = false;
               _loc3_.clip.entername.visible = false;
               _loc3_.clip.message.visible = true;
            }
            _loc3_.clip.message.message_txt.text = String(param1);
            if(_loc4_)
            {
               _loc3_.clip.message.spinner.visible = param2;
            }
         }
      }
      
      private function showEnterName() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Scoreboard = this;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.clip.content.visible = false;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.clip.message.visible = false;
               if(_loc2_)
               {
                  _loc1_.clip.entername.visible = true;
                  if(_loc3_)
                  {
                  }
                  §§goto(addr80);
               }
            }
         }
         §§push(_loc1_.enterNameText);
         if(!_loc3_)
         {
            §§pop().text = _loc1_.playerName;
            if(_loc2_ || _loc2_)
            {
               §§push(_loc1_.enterNameText);
            }
            §§goto(addr80);
         }
         §§pop().setFocus();
         addr80:
      }
      
      private function submitScore() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Scoreboard = this;
         var _loc2_:PlayerScore = new PlayerScore();
         if(_loc4_)
         {
            _loc2_.Name = _loc1_.playerName;
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.Points = _loc1_.playerScore;
               if(_loc1_.playerCustomData != null)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.CustomData = _loc1_.playerCustomData;
                     if(_loc4_)
                     {
                     }
                  }
               }
               if(_loc1_.api.§_-6f§)
               {
                  if(_loc4_)
                  {
                     Leaderboards.Save(_loc2_,_loc1_.scoreTableName,_loc1_.scoreSubmitCallback);
                     if(_loc4_)
                     {
                        _loc1_.showMessage("Submitting Score...",true);
                     }
                  }
               }
               else
               {
                  _loc1_.showMessage("Sorry, Leaderboards are not available for this game.");
               }
            }
            §§goto(addr92);
         }
         addr92:
      }
      
      public function loadScores() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Scoreboard = this;
         if(_loc3_)
         {
            if(_loc1_.api.§_-6f§)
            {
               if(_loc2_ && Boolean(_loc1_))
               {
               }
            }
            else
            {
               _loc1_.showMessage("Sorry, Leaderboards are not available for this game.");
            }
            §§goto(addr74);
         }
         Leaderboards.List(_loc1_.scoreTableName,_loc1_.loadScoresCallback,{
            "mode":_loc1_.askingWhichMode,
            "perpage":_loc1_.scoresPerPage
         });
         if(!_loc2_)
         {
            _loc1_.showMessage("Getting High Scores...",true);
            if(_loc3_ || Boolean(this))
            {
            }
            §§goto(addr74);
         }
         addr74:
      }
      
      public function showScores(param1:String = "today") : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:MovieClip = null;
         var _loc2_:Scoreboard = this;
         _loc2_.viewingMode = param1;
         if(_loc7_)
         {
            _loc2_.clip.content.today_btn.tab.alpha = 0;
            if(_loc7_ || Boolean(param1))
            {
               _loc2_.clip.content.weekly_btn.tab.alpha = 0;
               if(_loc7_)
               {
                  _loc2_.clip.content.monthly_btn.tab.alpha = 0;
                  if(_loc7_)
                  {
                     _loc2_.clip.content.alltime_btn.tab.alpha = 0;
                     _loc2_.clip.content[_loc2_.viewingMode + "_btn"].tab.alpha = 1;
                     if(_loc7_)
                     {
                     }
                  }
               }
               addr87:
               _loc2_.clip.content.visible = true;
            }
            var _loc3_:Array = _loc2_[_loc2_.viewingMode + "Scores"];
            var _loc4_:int = 0;
            while(_loc4_ < _loc2_.scoresPerPage)
            {
               _loc5_ = _loc2_.clip.content["panel" + _loc4_];
               if(_loc3_.length > _loc4_)
               {
                  _loc5_.visible = true;
                  _loc5_.place_txt.htmlText = "<B>" + (_loc4_ + 1) + ".</B>";
                  _loc5_.name_txt.htmlText = "<B>" + PlayerScore(_loc3_[_loc4_]).Name + "</B>";
                  _loc5_.score_txt.htmlText = "<B>" + §_-9m§.§_-3E§(PlayerScore(_loc3_[_loc4_]).Points) + "</B>";
               }
               else
               {
                  _loc5_.visible = false;
               }
               _loc4_++;
            }
            if(_loc2_.showPlace)
            {
               _loc2_.clip.content.yourscore.visible = true;
               _loc2_.clip.content.yourscore.panel.place_txt.htmlText = "";
               if(_loc7_ || Boolean(this))
               {
                  _loc2_.clip.content.yourscore.panel.name_txt.htmlText = "<B>" + _loc2_.playerName + "</B>";
                  _loc2_.clip.content.yourscore.panel.score_txt.htmlText = "<B>" + §_-9m§.§_-3E§(_loc2_.playerScore) + "</B>";
               }
            }
            else
            {
               _loc2_.clip.content.yourscore.visible = false;
            }
            return;
         }
         _loc2_.clip.message.visible = false;
         _loc2_.clip.entername.visible = false;
         §§goto(addr87);
      }
      
      public function clickMode(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Scoreboard = this;
         var _loc3_:String = param1.currentTarget.name.split("_")[0];
         if(!_loc5_)
         {
            if(_loc3_ != _loc2_.viewingMode)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.showScores(_loc3_);
               }
            }
         }
      }
      
      public function rolloverMode(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Scoreboard = this;
         var _loc3_:String = param1.currentTarget.name.split("_")[0];
         if(!_loc4_)
         {
            if(_loc3_ != _loc2_.viewingMode)
            {
               if(_loc5_ || Boolean(_loc3_))
               {
               }
            }
            §§goto(addr63);
         }
         _loc2_.clip.content[_loc3_ + "_btn"].tab.alpha = 0.4;
         addr63:
      }
      
      public function rolloutMode(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Scoreboard = this;
         var _loc3_:String = param1.currentTarget.name.split("_")[0];
         if(!(_loc5_ && Boolean(param1)))
         {
            if(_loc3_ != _loc2_.viewingMode)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  _loc2_.clip.content[_loc3_ + "_btn"].tab.alpha = 0;
               }
            }
         }
      }
      
      public function closeScoreboard(param1:Event = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Scoreboard = this;
         if(!_loc3_)
         {
            _loc2_.api.§_-8W§();
         }
      }
      
      public function destroy() : void
      {
         var ob:Scoreboard;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         ob = this;
         if(_loc3_ || Boolean(this))
         {
            ob.clip.close_btn.removeEventListener(MouseEvent.CLICK,ob.closeScoreboard);
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc1_)
                  {
                     §§pop().clip.content.today_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(§§newactivation());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop().§§slot[1].clip.content.weekly_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
                           ob.clip.content.monthly_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop().§§slot[1].clip.content.alltime_btn.removeEventListener(MouseEvent.CLICK,ob.clickMode);
                              if(_loc3_)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().§§slot[1]);
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§pop().clip.content.today_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
                                    }
                                    addr390:
                                    §§push(§§pop().api);
                                    if(!_loc4_)
                                    {
                                       addr421:
                                       if(§§pop().container.contains(ob.clip))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§goto(addr423);
                                          }
                                          addr422:
                                          addr423:
                                          addr424:
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr415:
                                             §§push(§§pop().api);
                                          }
                                          §§pop().clip = null;
                                          try
                                          {
                                             addr425:
                                             §§push(§§newactivation());
                                             if(_loc3_)
                                             {
                                                addr438:
                                                §§push(§§pop().§§slot[1]);
                                                if(_loc3_)
                                                {
                                                   addr439:
                                                   if(§§pop().closeCallback != null)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                      }
                                                   }
                                                }
                                                §§pop().closeCallback();
                                                §§goto(addr439);
                                             }
                                             §§goto(addr438);
                                          }
                                          catch(err:Error)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §_-5i§.error("Error with close callback.");
                                             }
                                          }
                                          §§pop().§§slot[1];
                                          return;
                                          §§push(§§pop().§§slot[1]);
                                       }
                                       §§goto(addr422);
                                       §§push(§§newactivation());
                                    }
                                    §§pop().container.removeChild(ob.clip);
                                    §§goto(addr421);
                                 }
                                 addr344:
                                 §§pop().§§slot[1].clip.entername.removeChild(ob.enterNameButton);
                                 addr343:
                                 if(_loc3_ || _loc1_)
                                 {
                                    addr360:
                                    ob.enterNameButton.destroy();
                                    addr359:
                                 }
                                 addr363:
                                 §§push(ob);
                                 §§push(null);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr371:
                                    §§pop().enterNameButton = §§pop();
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr379:
                                       §§push(§§newactivation());
                                       if(_loc4_ && Boolean(this))
                                       {
                                       }
                                       §§goto(addr422);
                                    }
                                    §§goto(addr425);
                                 }
                                 §§goto(addr424);
                              }
                           }
                           addr387:
                           §§push(§§pop().§§slot[1]);
                           if(!_loc4_)
                           {
                              §§goto(addr390);
                           }
                           §§goto(addr415);
                        }
                        addr203:
                        §§pop().§§slot[1].clip.content.weekly_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc2_))
                           {
                              §§pop().§§slot[1].clip.content.monthly_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
                              if(!_loc4_)
                              {
                                 §§push(ob);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§pop().clip.content.alltime_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
                                    if(_loc3_ || _loc1_)
                                    {
                                       addr267:
                                       §§push(ob);
                                       if(_loc3_)
                                       {
                                          addr271:
                                          if(§§pop().enterNameText)
                                          {
                                             addr274:
                                             §§push(ob);
                                             if(_loc3_)
                                             {
                                                §§pop().clip.entername.removeChild(ob.enterNameText);
                                             }
                                             §§goto(addr363);
                                          }
                                          addr303:
                                          §§push(ob);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().enterNameButton);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                   }
                                                   §§goto(addr425);
                                                }
                                                §§goto(addr379);
                                             }
                                             addr335:
                                             §§pop().removeEventListener("clickNameOK",ob.clickEnterNameOK);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr359);
                                    }
                                    §§push(ob);
                                    if(!_loc4_)
                                    {
                                       §§push(null);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().enterNameText = §§pop();
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§goto(addr303);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr371);
                                    }
                                    §§goto(addr344);
                                 }
                                 §§goto(addr423);
                              }
                           }
                           §§goto(addr387);
                        }
                        §§push(§§newactivation());
                        if(_loc3_)
                        {
                           §§goto(addr343);
                        }
                        §§goto(addr422);
                     }
                     §§push(ob);
                     if(_loc3_ || _loc1_)
                     {
                        addr332:
                        §§push(§§pop().enterNameButton);
                        if(_loc3_)
                        {
                           §§goto(addr335);
                        }
                        §§goto(addr360);
                     }
                     §§goto(addr344);
                  }
                  addr191:
                  §§pop().clip.content.today_btn.removeEventListener(MouseEvent.ROLL_OUT,ob.rolloutMode);
                  if(!_loc4_)
                  {
                     §§goto(addr203);
                     §§push(§§newactivation());
                  }
                  §§goto(addr303);
               }
               addr155:
               §§push(§§pop().§§slot[1]);
               if(_loc3_)
               {
                  §§pop().clip.content.monthly_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr379);
               }
               §§goto(addr271);
            }
            §§push(ob);
            if(!_loc4_)
            {
               §§pop().clip.content.alltime_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr191);
                  §§push(ob);
               }
               §§goto(addr267);
            }
            §§goto(addr332);
         }
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[1].clip.content.weekly_btn.removeEventListener(MouseEvent.ROLL_OVER,ob.rolloverMode);
            §§goto(addr155);
            §§push(§§newactivation());
         }
         §§goto(addr274);
      }
      
      public function scoreSubmitCallback(param1:Object) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Scoreboard = this;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(param1.Success)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  §_-5i§.§_-CE§("Score Submit - Success");
                  if(!_loc4_)
                  {
                     _loc2_.loadScores();
                     if(_loc5_)
                     {
                     }
                     §§goto(addr93);
                  }
               }
            }
            else
            {
               _loc2_.showMessage("There was an error submitting your score.");
            }
            try
            {
               §_-5i§.§_-CE§("Error:");
               if(!_loc4_)
               {
                  §_-5i§.§_-CE§(param1.ErrorCode);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §_-5i§.§_-CE§(param1.ErrorDescription);
                  }
               }
            }
            catch(err:Error)
            {
            }
            §§goto(addr93);
         }
         addr93:
      }
      
      public function loadScoresCallback(param1:Array, param2:int, param3:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Scoreboard = this;
         §§push(_loc4_.askingWhichMode);
         if(!_loc6_)
         {
            if(§§pop() == "today")
            {
               if(!(_loc6_ && Boolean(param1)))
               {
                  _loc4_.todayScores = param1.concat();
                  if(_loc5_)
                  {
                     _loc4_.todayTotal = param2;
                     _loc4_.askingWhichMode = "last7days";
                     _loc4_.loadScores();
                  }
               }
               else
               {
                  addr58:
                  _loc4_.weeklyTotal = param2;
                  _loc4_.askingWhichMode = "last30days";
                  if(_loc5_)
                  {
                     _loc4_.loadScores();
                  }
                  else
                  {
                     _loc4_.alltimeScores = param1.concat();
                     addr122:
                  }
               }
               addr133:
               _loc4_.alltimeTotal = param2;
               if(!_loc6_)
               {
                  addr138:
                  _loc4_.showScores();
               }
            }
            else
            {
               §§push(_loc4_.askingWhichMode);
               if(_loc5_)
               {
               }
               addr113:
               if(§§pop() == "alltime")
               {
                  if(_loc5_ || Boolean(this))
                  {
                     §§goto(addr122);
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr140);
         }
         if(§§pop() == "last7days")
         {
            if(!_loc6_)
            {
               _loc4_.weeklyScores = param1.concat();
               if(_loc5_)
               {
                  §§goto(addr58);
               }
               §§goto(addr133);
            }
         }
         else
         {
            §§push(_loc4_.askingWhichMode);
            if(_loc5_ || Boolean(param1))
            {
               if(§§pop() == "last30days")
               {
                  _loc4_.monthlyScores = param1.concat();
                  _loc4_.monthlyTotal = param2;
                  if(_loc5_ || Boolean(param2))
                  {
                     _loc4_.askingWhichMode = "alltime";
                     if(_loc5_)
                     {
                        _loc4_.loadScores();
                        if(_loc6_)
                        {
                        }
                     }
                     §§goto(addr138);
                  }
                  else
                  {
                     §§goto(addr122);
                  }
               }
               else
               {
                  §§push(_loc4_.askingWhichMode);
               }
            }
            §§goto(addr113);
         }
         addr140:
      }
      
      public function newestScoresCallback(param1:Array, param2:int, param3:Object) : void
      {
         var _loc4_:Scoreboard = this;
      }
   }
}

