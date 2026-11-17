package wingGame.managers
{
   import §_-1d§.*;
   import §_-C2§.§_-5i§;
   import flash.events.*;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import wingGame.screens.*;
   
   public class SoundManager extends EventDispatcher
   {
      public var gameObj:§_-BY§;
      
      public var track_boombox:SoundChannel;
      
      public var track_jukebox:SoundChannel;
      
      public var track_phonograph:SoundChannel;
      
      public var track_order:SoundChannel;
      
      public var track_grill:SoundChannel;
      
      public var track_build:SoundChannel;
      
      public var track_topping:SoundChannel;
      
      public var track_title:SoundChannel;
      
      public var track_other:SoundChannel;
      
      public var track_none:SoundChannel;
      
      public var playingWhichTrack:String = "none";
      
      public var fadingWhichTrack:String = "none";
      
      public var isMute:Boolean = false;
      
      private var fadeTimer:Timer;
      
      private var fadeSpeed:Number = 100;
      
      private var fadeAmount:Number = 0.1;
      
      private var maxVolume:Number = 1;
      
      public var trackLength:Number = 1;
      
      public function SoundManager(param1:§_-BY§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super();
         }
         var _loc2_:SoundManager = this;
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.gameObj = param1;
            if(_loc3_ || Boolean(_loc2_))
            {
            }
            §§goto(addr58);
         }
         _loc2_.setupEngine();
         addr58:
      }
      
      public function setupEngine() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc1_:SoundManager = this;
         if(_loc12_)
         {
            _loc1_.track_none = new SoundChannel();
         }
         var _loc2_:Sound = new boombox_music();
         var _loc3_:Sound = new jukebox_music();
         var _loc4_:Sound = new phonograph_music();
         var _loc5_:Sound = new orderscreen_music();
         var _loc6_:Sound = new grillscreen_music();
         var _loc7_:Sound = new buildscreen_music();
         var _loc8_:Sound = new other_music();
         var _loc9_:Sound = new title_music();
         if(!_loc11_)
         {
            _loc1_.trackLength = _loc5_.length;
         }
         var _loc10_:SoundTransform = new SoundTransform(0,0);
         _loc1_.track_boombox = _loc2_.play(0,int.MAX_VALUE,_loc10_);
         _loc1_.track_jukebox = _loc3_.play(0,int.MAX_VALUE,_loc10_);
         if(!_loc11_)
         {
            _loc1_.track_phonograph = _loc4_.play(0,int.MAX_VALUE,_loc10_);
            if(_loc12_)
            {
               _loc1_.track_order = _loc5_.play(0,int.MAX_VALUE,_loc10_);
               if(_loc12_ || Boolean(_loc2_))
               {
                  _loc1_.track_grill = _loc6_.play(0,int.MAX_VALUE,_loc10_);
                  _loc1_.track_build = _loc7_.play(0,int.MAX_VALUE,_loc10_);
                  _loc1_.track_other = _loc8_.play(0,int.MAX_VALUE,_loc10_);
                  _loc1_.track_title = _loc9_.play(0,int.MAX_VALUE,_loc10_);
                  if(_loc11_)
                  {
                  }
               }
            }
            §§goto(addr187);
         }
         §§push(_loc1_.gameObj);
         if(_loc12_)
         {
            §§push(§§pop().§_-4P§);
            if(!_loc11_)
            {
               §§push(§§pop().api);
               if(!(_loc11_ && Boolean(this)))
               {
                  §§pop().addEventListener("muteSound",_loc1_.apiMutedSound);
                  if(_loc12_)
                  {
                     §§push(_loc1_.gameObj);
                  }
                  §§goto(addr187);
               }
               §§goto(addr183);
            }
            addr182:
            addr183:
            §§pop().addEventListener("unmuteSound",_loc1_.apiUnmutedSound);
            addr187:
            return;
            §§push(§§pop().api);
         }
         §§goto(addr182);
         §§push(§§pop().§_-4P§);
      }
      
      public function restoreSoundAfterAd() : void
      {
         var manager:SoundManager;
         var boomboxMusic:Sound;
         var jukeboxMusic:Sound;
         var phonographMusic:Sound;
         var orderMusic:Sound;
         var grillMusic:Sound;
         var buildMusic:Sound;
         var otherMusic:Sound;
         var titleMusic:Sound;
         var trans:SoundTransform;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         manager = this;
         try
         {
            if(manager.track_boombox)
            {
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc1_))
                  {
                     §§pop().§§slot[1].track_boombox.stop();
                     if(_loc3_)
                     {
                     }
                     addr64:
                     manager.track_phonograph.stop();
                     if(!(_loc3_ && _loc1_))
                     {
                        addr75:
                        if(manager.track_order)
                        {
                           manager.track_order.stop();
                        }
                        §§push(§§newactivation());
                        if(_loc4_ || _loc2_)
                        {
                           if(§§pop().§§slot[1].track_build)
                           {
                              addr94:
                              §§push(manager);
                              if(_loc4_ || _loc2_)
                              {
                                 §§pop().track_build.stop();
                              }
                              addr232:
                              §§push(null);
                              if(_loc4_)
                              {
                                 §§pop().track_order = §§pop();
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    addr262:
                                    §§push(§§pop().§§slot[1]);
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       addr243:
                                       §§pop().track_build = §§pop();
                                       addr365:
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(manager);
                                          §§push(null);
                                       }
                                       §§push(§§newactivation());
                                    }
                                    §§pop().track_title = §§pop();
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                       §§pop().§§slot[1].track_other = null;
                                       addr270:
                                       boomboxMusic = new boombox_music();
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr281:
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[3] = new jukebox_music();
                                             phonographMusic = new phonograph_music();
                                             §§push(§§newactivation());
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§pop().§§slot[5] = new orderscreen_music();
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   §§pop().§§slot[6] = new grillscreen_music();
                                                   addr341:
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      buildMusic = new buildscreen_music();
                                                      §§push(§§newactivation());
                                                      if(_loc3_ && Boolean(this))
                                                      {
                                                      }
                                                      addr506:
                                                      §§push(§§pop().§§slot[1]);
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§pop().track_other = §§pop().§§slot[8].play(0,int.MAX_VALUE,trans);
                                                         addr674:
                                                         if(_loc4_)
                                                         {
                                                            addr658:
                                                            addr526:
                                                            §§push(manager);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(§§newactivation());
                                                            }
                                                            §§push(§§pop().gameObj);
                                                            if(_loc4_)
                                                            {
                                                               addr661:
                                                               §§push(§§pop().§_-Bg§);
                                                               if(_loc4_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §_-5i§.error("No Sauce Screen to restore its sounds");
                                                                  }
                                                                  addr675:
                                                                  err4 = §§pop();
                                                                  §_-5i§.error("Error restoring Drink sounds after ad: " + this.§§slot[1].message);
                                                               }
                                                               addr669:
                                                               §§pop().restoreSoundAfterAd();
                                                            }
                                                            addr668:
                                                            §§goto(addr669);
                                                            §§push(§§pop().§_-Bg§);
                                                         }
                                                      }
                                                      §§pop().track_title = §§pop().§§slot[9].play(0,int.MAX_VALUE,trans);
                                                      if(!_loc3_)
                                                      {
                                                         try
                                                         {
                                                            addr545:
                                                         }
                                                         catch(err2:Error)
                                                         {
                                                            addr577:
                                                            var _loc2_:* = err2;
                                                            §_-5i§.error("Error restoring Build sounds after ad: " + err2.message);
                                                            try
                                                            {
                                                               addr597:
                                                               §§push(manager);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr606:
                                                                  §§push(§§pop().gameObj);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr609:
                                                                     §§push(§§pop().§_-8f§);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr620:
                                                                              §§push(manager.gameObj);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop().§_-8f§);
                                                                              }
                                                                              §§goto(addr661);
                                                                           }
                                                                           §§goto(addr674);
                                                                        }
                                                                        else
                                                                        {
                                                                           §_-5i§.error("No Grill Screen to restore its sounds");
                                                                        }
                                                                        addr633:
                                                                        try
                                                                        {
                                                                           addr654:
                                                                           §§push(_loc1_);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop().§§slot[1]);
                                                                           }
                                                                        }
                                                                        catch(err4:Error)
                                                                        {
                                                                           §§goto(addr675);
                                                                        }
                                                                        §§push(§§pop().§§slot[1].gameObj);
                                                                        addr633:
                                                                     }
                                                                     §§pop().restoreSoundAfterAd();
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr629:
                                                                        §§goto(addr633);
                                                                     }
                                                                     §§goto(addr674);
                                                                  }
                                                                  §§goto(addr668);
                                                               }
                                                               §§goto(addr658);
                                                            }
                                                            catch(err3:Error)
                                                            {
                                                               §_-5i§.error("Error restoring Grill sounds after ad: " + err3.message);
                                                               §§goto(addr654);
                                                            }
                                                         }
                                                         §§push(§§newactivation());
                                                      }
                                                      §§push(§§newactivation());
                                                   }
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().trackLength = orderMusic.length;
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr674);
                                                      }
                                                      addr406:
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§pop().track_jukebox = §§pop().§§slot[3].play(0,int.MAX_VALUE,trans);
                                                         addr422:
                                                         §§push(manager);
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            addr431:
                                                            §§pop().track_phonograph = phonographMusic.play(0,int.MAX_VALUE,trans);
                                                            if(_loc4_)
                                                            {
                                                               addr442:
                                                               §§push(manager);
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§pop().track_order = §§pop().§§slot[5].play(0,int.MAX_VALUE,trans);
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                                  §§goto(addr633);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr620);
                                                      }
                                                      §§pop().track_grill = §§pop().§§slot[6].play(0,int.MAX_VALUE,trans);
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr481:
                                                         §§push(§§pop().§§slot[1]);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr489:
                                                            §§pop().track_build = buildMusic.play(0,int.MAX_VALUE,trans);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§goto(addr506);
                                                               §§push(§§newactivation());
                                                            }
                                                            §§goto(addr545);
                                                         }
                                                      }
                                                      §§goto(addr654);
                                                   }
                                                }
                                             }
                                             addr380:
                                             §§push(§§pop().§§slot[1]);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr388:
                                                §§pop().track_boombox = boomboxMusic.play(0,int.MAX_VALUE,trans);
                                                §§push(manager);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr406);
                                                }
                                                §§goto(addr431);
                                             }
                                             §§goto(addr620);
                                          }
                                          §§push(§§pop().§§slot[1].gameObj);
                                          if(!_loc3_)
                                          {
                                             addr562:
                                             §§pop().§_-7q§.restoreSoundAfterAd();
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                addr576:
                                                §§goto(addr597);
                                             }
                                          }
                                          §§goto(addr609);
                                       }
                                       §§goto(addr654);
                                       §§push(§§newactivation());
                                    }
                                    §§pop().§§slot[8] = new other_music();
                                    titleMusic = new title_music();
                                    §§goto(addr341);
                                 }
                                 §§pop().§§slot[10] = new SoundTransform(0,0);
                                 §§push(§§newactivation());
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr380);
                                 }
                                 §§goto(addr526);
                              }
                              §§pop().track_grill = §§pop();
                              if(_loc4_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    §§goto(addr262);
                                    §§push(§§pop().§§slot[1]);
                                    §§push(null);
                                 }
                                 §§goto(addr380);
                              }
                              §§goto(addr442);
                           }
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              if(§§pop().§§slot[1].track_grill)
                              {
                                 manager.track_grill.stop();
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr422);
                              }
                              §§push(§§newactivation());
                              if(_loc4_ || Boolean(this))
                              {
                                 if(§§pop().§§slot[1].track_title)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(manager);
                                       if(_loc4_)
                                       {
                                          §§pop().track_title.stop();
                                          if(_loc3_)
                                          {
                                          }
                                          §§goto(addr545);
                                       }
                                       §§goto(addr489);
                                    }
                                    §§goto(addr281);
                                 }
                                 if(manager.track_other)
                                 {
                                    if(_loc3_ && _loc1_)
                                    {
                                    }
                                    §§goto(addr422);
                                 }
                                 addr186:
                                 manager.track_boombox = null;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr197:
                                    §§push(manager);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§pop().track_jukebox = null;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(manager);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(null);
                                             if(_loc4_)
                                             {
                                                §§pop().track_phonograph = §§pop();
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr388);
                                       }
                                       §§goto(addr506);
                                    }
                                    §§goto(addr606);
                                 }
                                 §§push(§§newactivation());
                                 if(!_loc3_)
                                 {
                                    §§goto(addr232);
                                    §§push(§§pop().§§slot[1]);
                                 }
                                 §§goto(addr270);
                                 addr167:
                              }
                              §§goto(addr481);
                           }
                           §§goto(addr506);
                        }
                        addr463:
                        §§goto(addr406);
                        §§push(§§pop().§§slot[1]);
                        §§push(§§newactivation());
                     }
                     §§push(manager);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§pop().track_other.stop();
                        if(!_loc3_)
                        {
                           §§goto(addr167);
                        }
                     }
                     §§goto(addr606);
                  }
                  §§push(§§pop().§§slot[1]);
                  if(_loc4_)
                  {
                     §§push(§§pop().gameObj);
                     if(!_loc3_)
                     {
                        §§push(§§pop().§_-7q§);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              §§goto(addr506);
                           }
                           else
                           {
                              §_-5i§.error("No Build Screen to restore its sounds");
                              if(_loc4_)
                              {
                                 §§goto(addr576);
                              }
                              §§goto(addr629);
                           }
                        }
                        §§goto(addr562);
                     }
                     §§goto(addr658);
                  }
                  §§goto(addr606);
               }
               §§goto(addr463);
               §§push(§§newactivation());
            }
            §§push(manager);
            if(!_loc3_)
            {
               if(§§pop().track_jukebox)
               {
                  manager.track_jukebox.stop();
                  if(_loc4_)
                  {
                  }
                  §§goto(addr94);
               }
               if(manager.track_phonograph)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr197);
               }
               §§goto(addr75);
            }
            §§goto(addr606);
         }
         catch(err:Error)
         {
            _loc2_ = err;
            if(!_loc3_)
            {
               §_-5i§.error("Error clearing music tracks after ad");
            }
            §§goto(addr186);
         }
      }
      
      public function switchMusic(param1:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:SoundChannel = null;
         var _loc6_:SoundChannel = null;
         var _loc7_:SoundChannel = null;
         var _loc2_:SoundManager = this;
         §§push(_loc2_.playingWhichTrack);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc9_)
         {
            if(!_loc2_.isMute)
            {
               if(_loc9_ || Boolean(param1))
               {
                  §§push(_loc4_);
                  if(_loc9_)
                  {
                     §§push(_loc3_);
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        §§push(§§pop() != §§pop());
                        §§push(§§pop() != §§pop());
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              addr227:
                              if(!(_loc8_ && Boolean(_loc2_)))
                              {
                                 §§push(_loc2_.fadingWhichTrack);
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    addr125:
                                    §§push("none");
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc2_.fadeTimer)
                                       {
                                          if(_loc9_)
                                          {
                                             _loc2_.fadeTimer.stop();
                                             if(_loc9_ || Boolean(_loc2_))
                                             {
                                             }
                                          }
                                          addr237:
                                       }
                                       addr160:
                                       _loc5_ = _loc2_.getSoundTrack(_loc2_.playingWhichTrack);
                                       _loc6_ = _loc2_.getSoundTrack(_loc2_.fadingWhichTrack);
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc8_)
                                             {
                                                _loc5_.soundTransform = new SoundTransform(0);
                                                if(_loc8_)
                                                {
                                                }
                                                addr204:
                                                _loc2_.fadingWhichTrack = "none";
                                             }
                                          }
                                          _loc6_.soundTransform = new SoundTransform(_loc2_.maxVolume);
                                          if(!_loc8_)
                                          {
                                             _loc2_.playingWhichTrack = _loc2_.fadingWhichTrack;
                                             if(!_loc8_)
                                             {
                                                §§goto(addr204);
                                             }
                                          }
                                       }
                                    }
                                    _loc2_.fadingWhichTrack = _loc4_;
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       addr217:
                                       if(!_loc2_.fadeTimer)
                                       {
                                          _loc2_.fadeTimer = new Timer(_loc2_.fadeSpeed,0);
                                       }
                                       §§goto(addr237);
                                    }
                                 }
                                 addr124:
                                 §§goto(addr125);
                                 §§push("none");
                              }
                              _loc2_.fadeTimer.addEventListener(TimerEvent.TIMER,this.fadeMusic);
                           }
                           §§push(§§pop());
                        }
                        if(!§§pop())
                        {
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§pop();
                              if(_loc9_ || Boolean(this))
                              {
                                 §§push(_loc4_);
                                 if(_loc9_)
                                 {
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr217);
                           }
                        }
                        addr121:
                        if(§§pop())
                        {
                           §§goto(addr124);
                           §§push(_loc2_.fadingWhichTrack);
                        }
                        §§goto(addr237);
                     }
                     addr119:
                     §§goto(addr121);
                     §§push(§§pop() != §§pop());
                  }
                  §§goto(addr119);
                  §§push(_loc2_.fadingWhichTrack);
               }
               _loc2_.fadeTimer.removeEventListener(TimerEvent.TIMER,this.fadeMusic);
               _loc2_.fadeTimer = null;
               if(!_loc8_)
               {
                  §§goto(addr160);
               }
               §§goto(addr227);
            }
            else
            {
               _loc7_ = _loc2_.getSoundTrack(_loc2_.playingWhichTrack);
               if(_loc7_)
               {
                  if(!_loc8_)
                  {
                     _loc7_.soundTransform = new SoundTransform(0);
                     if(_loc8_ && _loc3_)
                     {
                     }
                  }
                  addr272:
                  _loc2_.getSoundTrack(_loc2_.playingWhichTrack).soundTransform = new SoundTransform(1);
               }
               _loc2_.playingWhichTrack = param1;
               if(!_loc8_)
               {
                  §§goto(addr272);
               }
            }
            return;
         }
         _loc2_.fadeTimer.start();
         §§goto(addr237);
      }
      
      public function muteSound() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:SoundManager = this;
         var _loc2_:SoundTransform = new SoundTransform(0);
         if(!_loc3_)
         {
            SoundMixer.soundTransform = _loc2_;
            if(_loc4_ || Boolean(_loc2_))
            {
            }
            §§goto(addr59);
         }
         _loc1_.isMute = true;
         if(_loc4_)
         {
            dispatchEvent(new Event("soundIsMuted",true));
         }
         addr59:
      }
      
      public function unmuteSound() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:SoundManager = this;
         var _loc2_:SoundTransform = new SoundTransform(1);
         if(_loc4_)
         {
            SoundMixer.soundTransform = _loc2_;
            if(_loc4_)
            {
               _loc1_.isMute = false;
               if(_loc3_ && _loc3_)
               {
               }
            }
            dispatchEvent(new Event("soundIsNotMuted",true));
         }
      }
      
      public function apiMutedSound(param1:Event = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:SoundManager = this;
         if(!_loc5_)
         {
            _loc2_.muteSound();
         }
         try
         {
            §§push(_loc2_.gameObj);
            if(_loc4_)
            {
               addr44:
               if(§§pop().hudObj)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc2_.gameObj);
                  }
               }
            }
            §§pop().hudObj.updateMuteButton();
            §§goto(addr44);
         }
         catch(err:Error)
         {
         }
      }
      
      public function apiUnmutedSound(param1:Event = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:SoundManager = this;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.unmuteSound();
         }
         try
         {
            §§push(_loc2_.gameObj);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               addr50:
               if(§§pop().hudObj)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc2_.gameObj);
                  }
               }
            }
            §§pop().hudObj.updateMuteButton();
            §§goto(addr50);
         }
         catch(err:Error)
         {
         }
      }
      
      public function fadeMusic(param1:TimerEvent) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:SoundManager = this;
         var _loc3_:SoundTransform = new SoundTransform();
         var _loc4_:SoundTransform = new SoundTransform();
         var _loc5_:SoundChannel = _loc2_.getSoundTrack(_loc2_.playingWhichTrack);
         var _loc6_:SoundChannel = _loc2_.getSoundTrack(_loc2_.fadingWhichTrack);
         if(_loc6_)
         {
            if(_loc9_ || Boolean(this))
            {
               _loc3_.volume = _loc6_.soundTransform.volume + _loc2_.fadeAmount;
               if(_loc9_)
               {
               }
               addr60:
               _loc4_.volume = _loc5_.soundTransform.volume - _loc2_.fadeAmount;
               addr68:
               var _loc7_:* = false;
               if(!_loc8_)
               {
                  if(_loc3_.volume >= _loc2_.maxVolume)
                  {
                     _loc3_.volume = _loc2_.maxVolume;
                     _loc4_.volume = 0;
                     §§push(true);
                     if(_loc9_)
                     {
                        _loc7_ = §§pop();
                        if(_loc9_)
                        {
                        }
                        §§goto(addr169);
                     }
                     addr148:
                     if(§§pop())
                     {
                        if(_loc2_.fadeTimer)
                        {
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              _loc2_.fadeTimer.stop();
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 addr169:
                                 _loc2_.fadeTimer.removeEventListener(TimerEvent.TIMER,this.fadeMusic);
                                 §§goto(addr176);
                              }
                           }
                           addr176:
                           _loc2_.fadeTimer = null;
                           §§goto(addr179);
                        }
                        addr179:
                        _loc2_.playingWhichTrack = _loc2_.fadingWhichTrack;
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           addr197:
                           _loc2_.fadingWhichTrack = "none";
                        }
                        return;
                     }
                     §§goto(addr169);
                  }
                  if(_loc6_)
                  {
                     if(_loc9_ || Boolean(_loc2_))
                     {
                        _loc6_.soundTransform = _loc3_;
                     }
                     §§goto(addr169);
                  }
               }
               §§push(Boolean(_loc5_));
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  if(§§pop())
                  {
                     if(_loc9_ || Boolean(param1))
                     {
                        §§pop();
                        §§push(_loc5_ == _loc6_);
                        if(_loc8_)
                        {
                        }
                     }
                     §§push(!§§pop());
                     if(_loc8_)
                     {
                     }
                     §§goto(addr148);
                  }
               }
               if(§§pop())
               {
                  if(_loc9_ || Boolean(this))
                  {
                     _loc5_.soundTransform = _loc4_;
                  }
                  §§goto(addr197);
               }
               §§goto(addr148);
               §§push(_loc7_);
            }
         }
         if(_loc5_)
         {
            if(_loc9_)
            {
               §§goto(addr60);
            }
         }
         §§goto(addr68);
      }
      
      public function getSoundTrack(param1:String) : SoundChannel
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SoundManager = this;
         §§push(param1);
         if(_loc3_)
         {
            if(§§pop() == "order")
            {
               return _loc2_.track_order;
            }
            §§push(param1);
            if(_loc3_ || Boolean(this))
            {
            }
            addr97:
            if(§§pop() == "other")
            {
               §§goto(addr99);
            }
            else
            {
               return _loc2_.track_none;
            }
         }
         if(§§pop() == "grill")
         {
            if(!_loc4_)
            {
               return _loc2_.track_grill;
            }
         }
         else
         {
            §§push(param1);
            if(!(_loc4_ && Boolean(param1)))
            {
               if(§§pop() == "build")
               {
                  return _loc2_.track_build;
               }
               §§push(param1);
               if(_loc3_)
               {
               }
               addr77:
               if(§§pop() == "title")
               {
                  return _loc2_.track_title;
               }
               §§goto(addr97);
               §§push(param1);
            }
            if(§§pop() == "topping")
            {
               return _loc2_.track_build;
            }
            §§push(param1);
            if(_loc3_)
            {
               §§goto(addr77);
            }
            §§goto(addr97);
         }
         addr99:
         return _loc2_.track_other;
      }
      
      public function playSound(param1:String, param2:Boolean = false, param3:Number = -1, param4:Number = 0, param5:Number = 0) : SoundChannel
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:Class = null;
         var _loc10_:SoundTransform = null;
         var _loc11_:* = NaN;
         var _loc6_:SoundManager = this;
         var _loc7_:Sound = null;
         var _loc8_:SoundChannel = null;
         try
         {
            _loc9_ = getDefinitionByName(param1) as Class;
            _loc7_ = new _loc9_();
            _loc10_ = new SoundTransform();
            _loc10_.pan = param4;
            if(!_loc14_)
            {
               §§push(_loc6_.isMute);
               if(!(_loc14_ && Boolean(param3)))
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        _loc10_.volume = 0;
                     }
                     addr88:
                     §§push(0);
                     if(_loc13_ || Boolean(param1))
                     {
                     }
                     addr103:
                     _loc11_ = §§pop();
                     _loc8_ = _loc7_.play(param5,_loc11_,_loc10_);
                  }
                  else
                  {
                     §§push(param3);
                     if(!_loc14_)
                     {
                        if(§§pop() == -1)
                        {
                           _loc10_.volume = _loc6_.maxVolume;
                        }
                        else
                        {
                           _loc10_.volume = param3;
                           if(!_loc14_)
                           {
                              §§goto(addr88);
                           }
                        }
                        addr98:
                        §§push(param2);
                     }
                  }
                  _loc11_ = §§pop();
                  §§goto(addr98);
               }
               if(§§pop())
               {
                  §§goto(addr103);
                  §§push(int.MAX_VALUE);
               }
            }
            §§goto(addr88);
         }
         catch(e:Error)
         {
         }
         return _loc8_;
      }
   }
}

