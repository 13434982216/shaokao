package mochi.as3
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.Security;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class MochiAd
   {
      public function MochiAd()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function getVersion() : String
      {
         return MochiServices.getVersion();
      }
      
      public static function doOnEnterFrame(param1:MovieClip) : void
      {
         var mc:MovieClip;
         var f:Function;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(_loc4_ || _loc2_)
         {
            §§pop().§§slot[1] = param1;
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(_loc4_ || MochiAd)
               {
               }
               addr58:
               §§pop().§§slot[1].addEventListener(Event.ENTER_FRAME,f);
            }
            §§goto(addr64);
         }
         §§pop().§§slot[2] = function(param1:Object):void
         {
            if("onEnterFrame" in mc && Boolean(mc.onEnterFrame))
            {
               mc.onEnterFrame();
            }
            else
            {
               param1.target.removeEventListener(param1.type,arguments.callee);
            }
         };
         if(!_loc3_)
         {
            §§goto(addr58);
            §§push(§§newactivation());
         }
         addr64:
      }
      
      public static function createEmptyMovieClip(param1:Object, param2:String, param3:Number) : MovieClip
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:MovieClip = new MovieClip();
         §§push(false);
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(_loc5_ || Boolean(param3))
               {
                  §§pop();
                  §§push(Boolean(param3));
               }
            }
         }
         if(§§pop())
         {
            param1.addChildAt(_loc4_,param3);
            addr50:
            param1[param2] = _loc4_;
            if(!(_loc6_ && MochiAd))
            {
               _loc4_["_name"] = param2;
            }
         }
         else
         {
            param1.addChild(_loc4_);
            if(!_loc6_)
            {
               §§goto(addr50);
            }
         }
         return _loc4_;
      }
      
      public static function showPreGameAd(param1:Object) : void
      {
         var options:Object;
         var DEFAULTS:Object;
         var clip:Object;
         var ad_msec:Number;
         var ad_timeout:Number;
         var fadeout_time:Number;
         var mc:MovieClip;
         var wh:Array;
         var w:Number;
         var h:Number;
         var chk:MovieClip;
         var bar:MovieClip;
         var bar_w:Number;
         var bar_color:Number;
         var bar_background:Number;
         var bar_outline:Number;
         var backing_mc:MovieClip;
         var backing:Object;
         var inside_mc:MovieClip;
         var inside:Object;
         var outline_mc:MovieClip;
         var outline:Object;
         var complete:Boolean;
         var unloaded:Boolean;
         var progress:Number;
         var f:Function;
         var sendHostProgress:Boolean;
         var fn:Function;
         var r:MovieClip;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         §§push(null);
         if(!(_loc4_ && MochiAd))
         {
            §§pop().§§slot[3] = §§pop();
            §§push(§§newactivation());
            if(_loc3_ || _loc3_)
            {
               §§push(null);
               if(!_loc4_)
               {
                  §§pop().§§slot[7] = §§pop();
                  §§push(§§newactivation());
                  §§push(null);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr80);
               }
            }
            §§pop().§§slot[19] = createEmptyMovieClip(bar,"_inside",2);
            §§push(§§newactivation());
            §§push(§§newactivation());
            if(!(_loc4_ && MochiAd))
            {
               §§pop().§§slot[20] = §§pop().§§slot[19].graphics;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr744);
               }
               §§goto(addr907);
            }
            §§goto(addr550);
         }
         §§pop().§§slot[11] = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            complete = false;
            unloaded = false;
            sendHostProgress = false;
            if(!_loc4_)
            {
               §§push(§§newactivation());
               §§push(null);
               if(!_loc4_)
               {
                  §§pop().§§slot[28] = §§pop();
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§newactivation());
                     §§push(null);
                  }
                  §§goto(addr858);
               }
               addr80:
               §§pop().§§slot[29] = §§pop();
               options = param1;
               DEFAULTS = {
                  "ad_timeout":5500,
                  "fadeout_time":250,
                  "regpt":"o",
                  "method":"showPreloaderAd",
                  "color":16747008,
                  "background":16777161,
                  "outline":13994812,
                  "no_progress_bar":false,
                  "ad_started":function():void
                  {
                     if(this.clip is MovieClip)
                     {
                        this.clip.stop();
                        return;
                     }
                     throw new Error("MochiAd.showPreGameAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
                  },
                  "ad_finished":function():void
                  {
                     if(this.clip is MovieClip)
                     {
                        this.clip.play();
                        return;
                     }
                     throw new Error("MochiAd.showPreGameAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
                  },
                  "ad_loaded":function(param1:Number, param2:Number):void
                  {
                  },
                  "ad_failed":function():void
                  {
                     trace("[MochiAd] Couldn\'t load an ad, make sure your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
                  },
                  "ad_skipped":function():void
                  {
                  },
                  "ad_progress":function(param1:Number):void
                  {
                  },
                  "progress_override":function(param1:Object):Number
                  {
                     return NaN;
                  },
                  "bar_offset":0
               };
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  §§push(global);
                  if(!_loc4_)
                  {
                     §§pop().§§slot[1] = §§pop().§§slot[1]._parseOptions(options,DEFAULTS);
                     if("dfeada81ac97cde83665f81c12da7def".substr(0) == "dfeada81ac97cde83665f81c12da7def")
                     {
                        §§push(§§newactivation());
                        if(_loc3_ || MochiAd)
                        {
                           §§pop().§§slot[1].ad_started();
                           fn = function():void
                           {
                              options.ad_finished();
                           };
                           setTimeout(fn,100);
                           return;
                        }
                        addr468:
                        §§push(delete §§pop().§§slot[1].no_progress_bar);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           addr510:
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr513:
                              §§push(w - bar.x);
                              §§push(10);
                              if(_loc3_ || MochiAd)
                              {
                                 addr528:
                                 §§pop().§§slot[13] = §§pop() - §§pop();
                                 §§push(§§newactivation());
                                 §§push(Number(options.color));
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().§§slot[14] = §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          addr550:
                                          delete §§pop().§§slot[1].color;
                                          addr552:
                                          §§push(§§newactivation());
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             §§push(Number(§§pop().§§slot[1].background));
                                             if(!_loc4_)
                                             {
                                                §§pop().§§slot[15] = §§pop();
                                                if(_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || MochiAd)
                                                   {
                                                      addr576:
                                                      delete §§pop().§§slot[1].background;
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr590:
                                                         §§push(Number(options.outline));
                                                         if(!_loc4_)
                                                         {
                                                            addr595:
                                                            §§pop().§§slot[16] = §§pop();
                                                            addr1143:
                                                            §§push(§§newactivation());
                                                            if(!_loc4_)
                                                            {
                                                               §§push(delete §§pop().§§slot[1].outline);
                                                               if(_loc3_)
                                                               {
                                                               }
                                                               addr1041:
                                                               if(§§pop())
                                                               {
                                                                  addr1146:
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr1045:
                                                                     r = clip.root as MovieClip;
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr1062:
                                                                           if(§§pop().§§slot[29].framesLoaded >= r.totalFrames)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc4_ && MochiAd))
                                                                              {
                                                                                 addr1076:
                                                                                 §§push(true);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop().§§slot[23] = §§pop();
                                                                                 }
                                                                                 addr1148:
                                                                                 §§pop().§§slot[27] = §§pop();
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1082:
                                                                              clip.loaderInfo.addEventListener(Event.COMPLETE,f);
                                                                           }
                                                                           addr1089:
                                                                        }
                                                                        addr1147:
                                                                        §§goto(addr1148);
                                                                        §§push(false);
                                                                     }
                                                                  }
                                                                  §§goto(addr1147);
                                                                  §§push(§§newactivation());
                                                               }
                                                               else
                                                               {
                                                                  §§push(§§newactivation());
                                                               }
                                                               mc.unloadAd = function():void
                                                               {
                                                                  unloaded = true;
                                                                  if(complete)
                                                                  {
                                                                     MochiAd.unload(clip);
                                                                  }
                                                               };
                                                               §§push(§§newactivation());
                                                            }
                                                            §§pop().§§slot[7].rpcTestFn = function(param1:String):Object
                                                            {
                                                               trace("[MOCHIAD rpcTestFn] " + param1);
                                                               return param1;
                                                            };
                                                            §§goto(addr1146);
                                                         }
                                                      }
                                                      §§goto(addr818);
                                                   }
                                                   addr1150:
                                                   §§pop().§§slot[7].sendHostLoadProgress = function(param1:String):void
                                                   {
                                                      sendHostProgress = true;
                                                   };
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      §§goto(addr1168);
                                                      §§push(§§newactivation());
                                                   }
                                                }
                                                §§goto(addr1089);
                                             }
                                             §§pop().§§slot[25] = §§pop();
                                             addr982:
                                             §§push(§§newactivation());
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§pop().§§slot[26] = function(param1:Event):void
                                                {
                                                   param1.target.removeEventListener(param1.type,arguments.callee);
                                                   complete = true;
                                                   if(unloaded)
                                                   {
                                                      MochiAd.unload(clip);
                                                   }
                                                };
                                                if(_loc3_ || MochiAd)
                                                {
                                                   addr1000:
                                                   if(!isNaN(progress))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr1045);
                                                      }
                                                      §§goto(addr1041);
                                                   }
                                                   else
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr1024:
                                                         if(§§pop().§§slot[3].loaderInfo.bytesLoaded == clip.loaderInfo.bytesTotal)
                                                         {
                                                            complete = true;
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1037);
                                                            §§push(§§newactivation());
                                                         }
                                                         §§goto(addr1041);
                                                      }
                                                   }
                                                   §§goto(addr1062);
                                                }
                                                addr1015:
                                                §§goto(addr1041);
                                             }
                                             §§goto(addr1008);
                                          }
                                          addr1009:
                                          §§push(§§pop().§§slot[25]);
                                       }
                                       §§pop().§§slot[3].loaderInfo.addEventListener(Event.COMPLETE,f);
                                       §§goto(addr1041);
                                    }
                                    addr768:
                                    inside.lineTo(bar_w,0);
                                    inside.lineTo(bar_w,10);
                                    inside.lineTo(0,10);
                                    inside.lineTo(0,0);
                                    if(_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          addr795:
                                          §§pop().§§slot[20].endFill();
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             addr804:
                                             §§push(§§newactivation());
                                             if(_loc3_)
                                             {
                                                §§pop().§§slot[19].scaleX = 0;
                                                addr810:
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§goto(addr818);
                                                }
                                                §§goto(addr1143);
                                             }
                                             §§goto(addr1132);
                                          }
                                       }
                                       §§goto(addr1041);
                                    }
                                    §§goto(addr1045);
                                 }
                                 §§push(1);
                              }
                              §§pop().§§slot[23] = §§pop() == §§pop();
                              if(_loc3_)
                              {
                                 §§goto(addr1015);
                              }
                              §§goto(addr1146);
                           }
                           §§pop().§§slot[7].adLoaded = options.ad_loaded;
                           if(!(_loc4_ && _loc2_))
                           {
                              addr818:
                              §§pop().§§slot[21] = createEmptyMovieClip(bar,"_outline",3);
                              addr827:
                              outline = outline_mc.graphics;
                              if(!_loc4_)
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc4_ && MochiAd))
                                 {
                                    §§pop().§§slot[22].lineStyle(0,bar_outline,100);
                                    addr848:
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       §§pop().§§slot[22].moveTo(0,0);
                                       §§push(§§newactivation());
                                       if(!_loc4_)
                                       {
                                          addr858:
                                          §§pop().§§slot[22].lineTo(bar_w,0);
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().§§slot[22].lineTo(bar_w,10);
                                             addr876:
                                             §§push(§§newactivation());
                                             if(_loc3_)
                                             {
                                                §§pop().§§slot[22].lineTo(0,10);
                                                §§push(§§newactivation());
                                             }
                                          }
                                          §§goto(addr1147);
                                       }
                                       §§goto(addr1076);
                                    }
                                    §§goto(addr1143);
                                 }
                                 addr1168:
                                 §§pop().§§slot[11]["onEnterFrame"] = function():void
                                 {
                                    var _loc12_:Number = NaN;
                                    if(!this.parent || !this.parent.parent)
                                    {
                                       delete this["onEnterFrame"];
                                       return;
                                    }
                                    var _loc1_:Object = this.parent.parent.root;
                                    var _loc2_:Object = this.parent._mochiad_ctr;
                                    var _loc3_:Number = getTimer() - this.started;
                                    var _loc4_:Boolean = false;
                                    var _loc5_:Number = Number(_loc1_.loaderInfo.bytesTotal);
                                    var _loc6_:Number = Number(_loc1_.loaderInfo.bytesLoaded);
                                    var _loc7_:Number = Math.min(1,options.progress_override(_loc1_));
                                    if(_loc7_ == 1)
                                    {
                                       complete = true;
                                    }
                                    if(complete)
                                    {
                                       _loc5_ = _loc6_ = Math.max(1,_loc6_);
                                    }
                                    var _loc8_:Number = 100 * _loc6_ / _loc5_;
                                    if(!isNaN(_loc7_))
                                    {
                                       _loc8_ = 100 * _loc7_;
                                    }
                                    var _loc9_:Number = 100 * _loc3_ / chk.ad_msec;
                                    var _loc10_:Object = this._mochiad_bar._inside;
                                    var _loc11_:Number = Math.min(100,Math.min(_loc8_ || 0,_loc9_));
                                    _loc11_ = Math.max(this.last_pcnt,_loc11_);
                                    this.last_pcnt = _loc11_;
                                    _loc10_.scaleX = _loc11_ * 0.01;
                                    options.ad_progress(_loc11_);
                                    if(sendHostProgress)
                                    {
                                       clip._mochiad.lc.send(clip._mochiad._containerLCName,"notify",{
                                          "id":"hostLoadPcnt",
                                          "pcnt":_loc8_
                                       });
                                       if(_loc8_ >= 100)
                                       {
                                          sendHostProgress = false;
                                       }
                                    }
                                    if(!chk.showing)
                                    {
                                       _loc12_ = Number(this.parent._mochiad_ctr.contentLoaderInfo.bytesTotal);
                                       if(_loc12_ > 0)
                                       {
                                          chk.showing = true;
                                          chk.started = getTimer();
                                          MochiAd.adShowing(clip);
                                       }
                                       else if(_loc3_ > chk.ad_timeout && _loc8_ == 100)
                                       {
                                          options.ad_failed();
                                          _loc4_ = true;
                                       }
                                    }
                                    if(_loc3_ > chk.ad_msec)
                                    {
                                       _loc4_ = true;
                                    }
                                    if(complete && _loc4_)
                                    {
                                       if(unloaded)
                                       {
                                          MochiAd.unload(_loc1_);
                                       }
                                       else if(this.server_control)
                                       {
                                          delete this.onEnterFrame;
                                       }
                                       else
                                       {
                                          this.fadeout_start = getTimer();
                                          this.onEnterFrame = chk.fadeFunction;
                                       }
                                    }
                                 };
                              }
                              §§goto(addr912);
                           }
                           §§goto(addr1132);
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§pop().§§slot[17] = createEmptyMovieClip(bar,"_outline",1);
                              addr617:
                              §§push(§§newactivation());
                              §§push(§§newactivation());
                              if(_loc3_)
                              {
                                 addr621:
                                 §§pop().§§slot[18] = §§pop().§§slot[17].graphics;
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc4_ && MochiAd))
                                    {
                                       §§pop().§§slot[18].beginFill(bar_background);
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().§§slot[18].moveTo(0,0);
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop().§§slot[18].lineTo(bar_w,0);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[18].lineTo(bar_w,10);
                                                }
                                                §§goto(addr1037);
                                             }
                                             §§goto(addr876);
                                          }
                                          §§goto(addr1082);
                                       }
                                       §§goto(addr1008);
                                    }
                                    addr896:
                                    §§pop().§§slot[11].ad_msec = ad_msec;
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr907:
                                       chk.ad_timeout = ad_timeout;
                                       addr912:
                                       chk.started = getTimer();
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr1118:
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop().§§slot[11].showing = false;
                                             addr1037:
                                             §§push(§§newactivation());
                                             if(!_loc4_)
                                             {
                                                §§pop().§§slot[11].last_pcnt = 0;
                                                chk.fadeout_time = fadeout_time;
                                                if(_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr956:
                                                      §§pop().§§slot[11].fadeFunction = function():void
                                                      {
                                                         var _loc1_:Number = 100 * (1 - (getTimer() - this.fadeout_start) / this.fadeout_time);
                                                         if(_loc1_ > 0)
                                                         {
                                                            this.parent.alpha = _loc1_ * 0.01;
                                                         }
                                                         else
                                                         {
                                                            MochiAd.unload(clip);
                                                            delete this["onEnterFrame"];
                                                         }
                                                      };
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         §§pop().§§slot[23] = false;
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc3_)
                                                            {
                                                               §§pop().§§slot[24] = false;
                                                            }
                                                            §§goto(addr1045);
                                                         }
                                                         §§goto(addr1146);
                                                      }
                                                      addr1008:
                                                      §§push(§§newactivation());
                                                   }
                                                   §§goto(addr1147);
                                                }
                                                addr971:
                                                §§push(§§newactivation());
                                                §§push(Math.min(1,options.progress_override(clip)));
                                             }
                                             §§goto(addr1041);
                                             §§push(§§pop().§§slot[3].root is MovieClip);
                                          }
                                          §§pop().§§slot[7].adSkipped = options.ad_skipped;
                                          if(_loc3_)
                                          {
                                             §§goto(addr1126);
                                          }
                                          §§goto(addr1076);
                                       }
                                       §§push(§§newactivation());
                                       if(!_loc4_)
                                       {
                                          §§goto(addr1118);
                                       }
                                       §§goto(addr1126);
                                    }
                                    §§goto(addr1132);
                                 }
                                 §§goto(addr848);
                              }
                              §§goto(addr1009);
                           }
                           §§goto(addr858);
                        }
                        backing.lineTo(0,10);
                        if(_loc3_ || Boolean(param1))
                        {
                           backing.lineTo(0,0);
                           §§push(§§newactivation());
                           if(_loc3_ || Boolean(param1))
                           {
                              §§pop().§§slot[18].endFill();
                              if(_loc3_)
                              {
                                 addr713:
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr1150);
                              }
                              addr895:
                              §§goto(addr896);
                              §§push(§§newactivation());
                           }
                           §§goto(addr956);
                        }
                        §§goto(addr982);
                     }
                     else
                     {
                        §§push(§§newactivation());
                        if(_loc3_ || _loc2_)
                        {
                           §§pop().§§slot[3] = options.clip;
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              §§push(11000);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    §§pop().§§slot[4] = §§pop();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             §§push(Number(§§pop().§§slot[1].ad_timeout));
                                          }
                                          §§goto(addr590);
                                       }
                                       §§goto(addr552);
                                    }
                                    §§goto(addr713);
                                 }
                                 §§pop().§§slot[5] = §§pop();
                                 addr230:
                                 if(options.skip)
                                 {
                                    §§push(§§newactivation());
                                    §§push(0);
                                 }
                                 §§push(delete options.ad_timeout);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§pop();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       fadeout_time = Number(options.fadeout_time);
                                       §§push(§§newactivation());
                                       if(_loc3_ || MochiAd)
                                       {
                                          delete §§pop().§§slot[1].fadeout_time;
                                          if(!MochiAd.load(options))
                                          {
                                             options.ad_failed();
                                             if(!(_loc4_ && Boolean(param1)))
                                             {
                                                options.ad_finished();
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   return;
                                                }
                                                §§goto(addr810);
                                             }
                                             §§goto(addr1131);
                                          }
                                          else
                                          {
                                             §§push(§§newactivation());
                                             if(_loc3_)
                                             {
                                                §§pop().§§slot[1].ad_started();
                                                §§push(§§newactivation());
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§pop().§§slot[7] = §§pop().§§slot[3]._mochiad;
                                                   if(!_loc4_)
                                                   {
                                                      mc["onUnload"] = function():void
                                                      {
                                                         var fn:Function;
                                                         MochiAd._cleanup(mc);
                                                         fn = function():void
                                                         {
                                                            options.ad_finished();
                                                         };
                                                         setTimeout(fn,100);
                                                      };
                                                      if(_loc3_ || MochiAd)
                                                      {
                                                         §§push(§§newactivation());
                                                         §§push(global);
                                                      }
                                                      §§goto(addr510);
                                                   }
                                                   addr744:
                                                   inside.beginFill(bar_color);
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      addr757:
                                                      §§pop().§§slot[20].moveTo(0,0);
                                                      if(_loc3_ || Boolean(param1))
                                                      {
                                                         §§goto(addr768);
                                                      }
                                                      §§goto(addr971);
                                                   }
                                                   §§goto(addr827);
                                                }
                                                §§goto(addr621);
                                             }
                                          }
                                          §§goto(addr1132);
                                       }
                                       §§goto(addr1024);
                                    }
                                    §§goto(addr1076);
                                 }
                                 §§goto(addr550);
                              }
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 §§pop().§§slot[5] = §§pop();
                                 §§goto(addr230);
                              }
                              §§goto(addr595);
                           }
                           §§goto(addr513);
                        }
                     }
                     §§pop().§§slot[22].lineTo(0,0);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§goto(addr895);
                     }
                     §§goto(addr1132);
                  }
                  §§pop().§§slot[8] = §§pop().§§slot[1]._getRes(options,clip);
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(wh);
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ || MochiAd)
                        {
                           §§pop().§§slot[9] = Number(§§pop()[§§pop()]);
                           if(_loc3_)
                           {
                              §§push(§§newactivation());
                              §§push(wh);
                           }
                           §§goto(addr804);
                        }
                        addr360:
                        §§push(Number(§§pop()[§§pop()]));
                        if(!_loc4_)
                        {
                           §§pop().§§slot[10] = §§pop();
                           §§push(§§newactivation());
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§pop().§§slot[7].x = w * 0.5;
                              if(_loc3_)
                              {
                                 addr381:
                                 mc.y = h * 0.5;
                                 if(!_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       §§pop().§§slot[11] = createEmptyMovieClip(mc,"_mochiad_wait",3);
                                       chk.x = w * -0.5;
                                       if(_loc3_ || _loc3_)
                                       {
                                          chk.y = h * -0.5;
                                          §§push(§§newactivation());
                                       }
                                    }
                                    §§pop().§§slot[12] = createEmptyMovieClip(chk,"_mochiad_bar",4);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          if(§§pop().§§slot[1].no_progress_bar)
                                          {
                                             addr454:
                                             §§push(§§newactivation());
                                             if(_loc3_)
                                             {
                                                §§pop().§§slot[12].visible = false;
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   §§goto(addr468);
                                                }
                                                §§goto(addr576);
                                             }
                                             §§goto(addr1041);
                                          }
                                          else
                                          {
                                             bar.x = 10 + options.bar_offset;
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[12].y = h - 20;
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§goto(addr510);
                                                   }
                                                   §§goto(addr617);
                                                }
                                             }
                                          }
                                          §§goto(addr982);
                                       }
                                       §§goto(addr757);
                                    }
                                 }
                                 §§goto(addr1000);
                              }
                              §§goto(addr1041);
                           }
                           §§goto(addr595);
                        }
                        §§goto(addr528);
                     }
                     §§goto(addr360);
                     §§push(1);
                  }
                  §§goto(addr795);
               }
               doOnEnterFrame(chk);
               addr1126:
               mc.adjustProgress = function(param1:Number):void
               {
                  var _loc2_:Object = mc._mochiad_wait;
                  _loc2_.server_control = true;
                  _loc2_.showing = true;
                  _loc2_.started = getTimer();
                  _loc2_.ad_msec = param1;
               };
               if(_loc3_)
               {
                  addr1132:
                  mc.rpc = function(param1:Number, param2:Object):void
                  {
                     MochiAd.rpc(clip,param1,param2);
                  };
                  §§push(§§newactivation());
                  if(!(_loc4_ && MochiAd))
                  {
                     §§goto(addr1143);
                  }
                  §§goto(addr1168);
                  addr1131:
               }
               return;
            }
            §§goto(addr454);
         }
         §§goto(addr381);
      }
      
      public static function showClickAwayAd(param1:Object) : void
      {
         var options:Object;
         var DEFAULTS:Object;
         var clip:Object;
         var ad_timeout:Number;
         var mc:MovieClip;
         var wh:Array;
         var w:Number;
         var h:Number;
         var chk:MovieClip;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         §§push(null);
         if(!_loc4_)
         {
            §§pop().§§slot[3] = §§pop();
            if(_loc3_)
            {
               §§push(§§newactivation());
               §§push(null);
               if(_loc3_)
               {
               }
               addr35:
               §§pop().§§slot[9] = §§pop();
               options = param1;
               DEFAULTS = {
                  "ad_timeout":5500,
                  "regpt":"o",
                  "method":"showClickAwayAd",
                  "res":"300x250",
                  "no_bg":true,
                  "ad_started":function():void
                  {
                  },
                  "ad_finished":function():void
                  {
                  },
                  "ad_loaded":function(param1:Number, param2:Number):void
                  {
                  },
                  "ad_failed":function():void
                  {
                     trace("[MochiAd] Couldn\'t load an ad, make sure your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
                  },
                  "ad_skipped":function():void
                  {
                  }
               };
               §§push(§§newactivation());
               §§push(global);
               if(_loc3_)
               {
                  §§pop().§§slot[1] = §§pop().§§slot[1]._parseOptions(options,DEFAULTS);
                  §§push(§§newactivation());
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§pop().§§slot[3] = §§pop().§§slot[1].clip;
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           addr208:
                           §§push(Number(§§pop().§§slot[1].ad_timeout));
                           if(_loc3_)
                           {
                              §§pop().§§slot[4] = §§pop();
                              delete options.ad_timeout;
                              if(_loc3_ || Boolean(param1))
                              {
                                 if(!MochiAd.load(options))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc3_)
                                    {
                                       §§pop().§§slot[1].ad_failed();
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().§§slot[1].ad_finished();
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          addr267:
                                          §§push(§§newactivation());
                                       }
                                    }
                                    else
                                    {
                                       addr249:
                                       §§pop().§§slot[9].ad_timeout = ad_timeout;
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    §§pop().§§slot[9].showing = false;
                                    if(_loc3_)
                                    {
                                       mc.unloadAd = function():void
                                       {
                                          MochiAd.unload(clip);
                                       };
                                    }
                                 }
                                 else
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       §§pop().§§slot[1].ad_started();
                                       addr310:
                                       addr151:
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                       }
                                       §§push(§§newactivation());
                                       if(!_loc4_)
                                       {
                                          §§push(global);
                                       }
                                       §§pop().§§slot[9]["onEnterFrame"] = function():void
                                       {
                                          var _loc4_:Number = NaN;
                                          if(!this.parent)
                                          {
                                             delete this.onEnterFrame;
                                             return;
                                          }
                                          var _loc1_:Object = this.parent._mochiad_ctr;
                                          var _loc2_:Number = getTimer() - this.started;
                                          var _loc3_:Boolean = false;
                                          if(!chk.showing)
                                          {
                                             _loc4_ = Number(this.parent._mochiad_ctr.contentLoaderInfo.bytesTotal);
                                             if(_loc4_ > 0)
                                             {
                                                chk.showing = true;
                                                _loc3_ = true;
                                                chk.started = getTimer();
                                             }
                                             else if(_loc2_ > chk.ad_timeout)
                                             {
                                                options.ad_failed();
                                                _loc3_ = true;
                                             }
                                          }
                                          if(this.root == null)
                                          {
                                             _loc3_ = true;
                                          }
                                          if(_loc3_)
                                          {
                                             delete this.onEnterFrame;
                                          }
                                       };
                                       §§goto(addr314);
                                    }
                                 }
                                 §§pop().§§slot[9].started = getTimer();
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§goto(addr267);
                                 }
                                 §§goto(addr314);
                              }
                              §§push(§§newactivation());
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§pop().§§slot[5].adLoaded = options.ad_loaded;
                                 if(_loc3_)
                                 {
                                    addr293:
                                    mc.adSkipped = options.ad_skipped;
                                    §§push(§§newactivation());
                                 }
                                 addr314:
                                 doOnEnterFrame(chk);
                                 return;
                              }
                              §§pop().§§slot[5].rpc = function(param1:Number, param2:Object):void
                              {
                                 MochiAd.rpc(clip,param1,param2);
                              };
                              addr309:
                              §§goto(addr310);
                              §§push(§§newactivation());
                           }
                           §§pop().§§slot[8] = §§pop();
                           mc.x = w * 0.5;
                           if(_loc3_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§pop().§§slot[5].y = h * 0.5;
                                 if(_loc3_ || _loc3_)
                                 {
                                    chk = createEmptyMovieClip(mc,"_mochiad_wait",3);
                                 }
                                 §§goto(addr309);
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr310);
                        }
                        addr142:
                        §§pop().§§slot[5] = §§pop().§§slot[3]._mochiad;
                        mc["onUnload"] = function():void
                        {
                           MochiAd._cleanup(mc);
                           options.ad_finished();
                        };
                        §§goto(addr151);
                     }
                     §§push(§§newactivation());
                     if(_loc3_)
                     {
                        §§goto(addr142);
                     }
                  }
                  addr181:
                  §§push(§§pop().§§slot[6]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(Number(§§pop()[§§pop()]));
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop().§§slot[7] = §§pop();
                           addr204:
                           §§push(§§newactivation());
                           §§push(wh);
                        }
                        §§goto(addr208);
                     }
                     addr206:
                     §§goto(addr208);
                     §§push(Number(§§pop()[§§pop()]));
                  }
                  §§goto(addr206);
                  §§push(1);
               }
               §§pop().§§slot[6] = §§pop().§§slot[1]._getRes(options,clip);
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr178:
                  §§push(§§newactivation());
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§goto(addr181);
                  }
                  §§goto(addr204);
               }
               §§goto(addr310);
            }
            §§goto(addr249);
            §§push(§§newactivation());
         }
         §§pop().§§slot[5] = §§pop();
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§goto(addr35);
            §§push(null);
         }
         §§goto(addr178);
      }
      
      public static function showInterLevelAd(param1:Object) : void
      {
         var options:Object;
         var DEFAULTS:Object;
         var clip:Object;
         var ad_msec:Number;
         var ad_timeout:Number;
         var fadeout_time:Number;
         var mc:MovieClip;
         var wh:Array;
         var w:Number;
         var h:Number;
         var chk:MovieClip;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               §§push(§§newactivation());
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(null);
                  if(_loc4_)
                  {
                  }
                  addr47:
                  §§pop().§§slot[11] = §§pop();
                  if(!_loc4_)
                  {
                     options = param1;
                     if(!(_loc4_ && _loc2_))
                     {
                        DEFAULTS = {
                           "ad_timeout":5500,
                           "fadeout_time":250,
                           "regpt":"o",
                           "method":"showTimedAd",
                           "ad_started":function():void
                           {
                              if(this.clip is MovieClip)
                              {
                                 this.clip.stop();
                                 return;
                              }
                              throw new Error("MochiAd.showInterLevelAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
                           },
                           "ad_finished":function():void
                           {
                              if(this.clip is MovieClip)
                              {
                                 this.clip.play();
                                 return;
                              }
                              throw new Error("MochiAd.showInterLevelAd requires a clip that is a MovieClip or is an instance of a class that extends MovieClip.  If your clip is a Sprite, then you must provide custom ad_started and ad_finished handlers.");
                           },
                           "ad_loaded":function(param1:Number, param2:Number):void
                           {
                           },
                           "ad_failed":function():void
                           {
                              trace("[MochiAd] Couldn\'t load an ad, make sure your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
                           },
                           "ad_skipped":function():void
                           {
                           }
                        };
                        addr228:
                        §§push(§§newactivation());
                        §§push(global);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§pop().§§slot[1] = §§pop().§§slot[1]._parseOptions(options,DEFAULTS);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              §§push(§§newactivation());
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§pop().§§slot[3] = §§pop().§§slot[1].clip;
                                 §§push(§§newactivation());
                                 §§push(11000);
                                 if(_loc3_)
                                 {
                                    §§pop().§§slot[4] = §§pop();
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr313);
                                 }
                                 addr262:
                                 §§pop().§§slot[9] = §§pop();
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr276:
                                    h = Number(wh[1]);
                                    addr278:
                                    mc.x = w * 0.5;
                                    §§push(§§newactivation());
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr292:
                                       §§pop().§§slot[7].y = h * 0.5;
                                       chk = createEmptyMovieClip(mc,"_mochiad_wait",3);
                                       chk.ad_msec = ad_msec;
                                       addr313:
                                       §§pop().§§slot[11].ad_timeout = ad_timeout;
                                       chk.started = getTimer();
                                       chk.showing = false;
                                       chk.fadeout_time = fadeout_time;
                                       if(!_loc4_)
                                       {
                                          addr333:
                                          chk.fadeFunction = function():void
                                          {
                                             if(!this.parent)
                                             {
                                                delete this.onEnterFrame;
                                                delete this.fadeFunction;
                                                return;
                                             }
                                             var _loc1_:Number = 100 * (1 - (getTimer() - this.fadeout_start) / this.fadeout_time);
                                             if(_loc1_ > 0)
                                             {
                                                this.parent.alpha = _loc1_ * 0.01;
                                             }
                                             else
                                             {
                                                MochiAd.unload(clip);
                                                delete this["onEnterFrame"];
                                             }
                                          };
                                          addr337:
                                          mc.unloadAd = function():void
                                          {
                                             MochiAd.unload(clip);
                                          };
                                       }
                                       §§push(§§newactivation());
                                       if(!_loc4_)
                                       {
                                          §§pop().§§slot[7].adLoaded = options.ad_loaded;
                                          if(_loc4_)
                                          {
                                          }
                                          §§goto(addr364);
                                       }
                                       §§pop().§§slot[7].adSkipped = options.ad_skipped;
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          addr364:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             addr367:
                                             §§pop().§§slot[7].adjustProgress = function(param1:Number):void
                                             {
                                                var _loc2_:Object = mc._mochiad_wait;
                                                _loc2_.server_control = true;
                                                _loc2_.showing = true;
                                                _loc2_.started = getTimer();
                                                _loc2_.ad_msec = param1 - 250;
                                             };
                                             §§goto(addr404);
                                          }
                                          §§pop().§§slot[7].rpc = function(param1:Number, param2:Object):void
                                          {
                                             MochiAd.rpc(clip,param1,param2);
                                          };
                                          chk["onEnterFrame"] = function():void
                                          {
                                             var _loc4_:Number = NaN;
                                             if(!this.parent)
                                             {
                                                delete this.onEnterFrame;
                                                delete this.fadeFunction;
                                                return;
                                             }
                                             var _loc1_:Object = this.parent._mochiad_ctr;
                                             var _loc2_:Number = getTimer() - this.started;
                                             var _loc3_:Boolean = false;
                                             if(!chk.showing)
                                             {
                                                _loc4_ = Number(this.parent._mochiad_ctr.contentLoaderInfo.bytesTotal);
                                                if(_loc4_ > 0)
                                                {
                                                   chk.showing = true;
                                                   chk.started = getTimer();
                                                   MochiAd.adShowing(clip);
                                                }
                                                else if(_loc2_ > chk.ad_timeout)
                                                {
                                                   options.ad_failed();
                                                   _loc3_ = true;
                                                }
                                             }
                                             if(_loc2_ > chk.ad_msec)
                                             {
                                                _loc3_ = true;
                                             }
                                             if(_loc3_)
                                             {
                                                if(this.server_control)
                                                {
                                                   delete this.onEnterFrame;
                                                }
                                                else
                                                {
                                                   this.fadeout_start = getTimer();
                                                   this.onEnterFrame = this.fadeFunction;
                                                }
                                             }
                                          };
                                          if(!(_loc4_ && MochiAd))
                                          {
                                             doOnEnterFrame(chk);
                                          }
                                          §§goto(addr404);
                                       }
                                       addr404:
                                       if(_loc3_ || MochiAd)
                                       {
                                          §§push(§§newactivation());
                                       }
                                       return;
                                       §§push(§§newactivation());
                                    }
                                    §§goto(addr364);
                                 }
                                 §§goto(addr337);
                              }
                              addr160:
                              §§push(Number(§§pop().§§slot[1].fadeout_time));
                              if(!_loc4_)
                              {
                                 addr165:
                                 §§pop().§§slot[6] = §§pop();
                                 addr169:
                                 delete options.fadeout_time;
                                 if(!MochiAd.load(options))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc3_)
                                    {
                                       §§pop().§§slot[1].ad_failed();
                                       options.ad_finished();
                                       return;
                                    }
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr313);
                           §§push(§§newactivation());
                        }
                        §§pop().§§slot[8] = §§pop().§§slot[1]._getRes(options,clip);
                        §§push(§§newactivation());
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[8]);
                              if(!(_loc4_ && MochiAd))
                              {
                                 §§push(0);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(Number(§§pop()[§§pop()]));
                                    if(_loc3_)
                                    {
                                       §§goto(addr262);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr276);
                     }
                     addr224:
                     §§push(§§newactivation());
                     if(_loc3_)
                     {
                        §§goto(addr228);
                        §§push(global);
                     }
                     §§goto(addr276);
                  }
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§pop().§§slot[1].ad_started();
                     if(_loc3_ || Boolean(param1))
                     {
                        §§push(§§newactivation());
                        if(_loc3_ || _loc2_)
                        {
                        }
                        §§goto(addr292);
                     }
                     §§goto(addr333);
                  }
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§pop().§§slot[7] = §§pop().§§slot[3]._mochiad;
                     mc["onUnload"] = function():void
                     {
                        MochiAd._cleanup(mc);
                        options.ad_finished();
                     };
                     §§goto(addr224);
                  }
                  §§goto(addr276);
               }
               addr146:
               §§push(delete §§pop().§§slot[1].ad_timeout);
               if(!_loc4_)
               {
                  §§pop();
                  §§push(§§newactivation());
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr160);
                  }
                  §§goto(addr276);
               }
               §§goto(addr169);
            }
            §§pop().§§slot[7] = §§pop();
            §§push(§§newactivation());
            if(_loc3_ || MochiAd)
            {
               §§goto(addr47);
               §§push(null);
            }
            §§goto(addr367);
         }
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(Number(§§pop().§§slot[1].ad_timeout));
            if(!(_loc4_ && Boolean(param1)))
            {
               §§pop().§§slot[5] = §§pop();
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§goto(addr146);
               }
               §§goto(addr276);
            }
            §§goto(addr165);
         }
         §§goto(addr276);
      }
      
      public static function showPreloaderAd(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            trace("[MochiAd] DEPRECATED: showPreloaderAd was renamed to showPreGameAd in 2.0");
            if(!(_loc3_ && _loc2_))
            {
               MochiAd.showPreGameAd(param1);
            }
         }
      }
      
      public static function showTimedAd(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || MochiAd)
         {
            trace("[MochiAd] DEPRECATED: showTimedAd was renamed to showInterLevelAd in 2.0");
            if(!_loc2_)
            {
               MochiAd.showInterLevelAd(param1);
            }
         }
      }
      
      public static function _allowDomains(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop().split("/")[2].split(":")[0]);
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || MochiAd)
         {
            if(Security.sandboxType == "application")
            {
               if(_loc3_)
               {
               }
               §§goto(addr85);
            }
            else
            {
               Security.allowDomain("*");
               Security.allowDomain(_loc2_);
            }
            Security.allowInsecureDomain("*");
            if(!(_loc3_ && _loc2_))
            {
               Security.allowInsecureDomain(_loc2_);
            }
            addr85:
            return §§pop();
            §§push(_loc2_);
         }
         §§push(_loc2_);
         if(!_loc3_)
         {
            return §§pop();
         }
         §§goto(addr85);
      }
      
      public static function load(param1:Object) : MovieClip
      {
         var options:Object;
         var DEFAULTS:Object;
         var clip:Object;
         var depth:Number;
         var mc:MovieClip;
         var wh:Array;
         var lv:URLVariables;
         var k:String;
         var server:String;
         var hostname:String;
         var lc:LocalConnection;
         var name:String;
         var loader:Loader;
         var g:Function;
         var req:URLRequest;
         var v:Object;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[3] = null;
            mc = null;
            §§push(§§newactivation());
            if(_loc6_ || MochiAd)
            {
               §§push(null);
               if(!(_loc5_ && _loc2_))
               {
                  §§pop().§§slot[8] = §§pop();
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     addr98:
                     §§push(null);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           §§pop().§§slot[9] = §§pop();
                           §§push(§§newactivation());
                           §§push(null);
                           if(_loc5_ && MochiAd)
                           {
                           }
                        }
                        §§pop().§§slot[10] = §§pop();
                        lc = null;
                        §§push(§§newactivation());
                        §§push(null);
                     }
                     §§pop().§§slot[15] = §§pop();
                     §§push(§§newactivation());
                     if(!(_loc5_ && _loc2_))
                     {
                        addr109:
                        §§pop().§§slot[16] = null;
                        options = param1;
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                        }
                     }
                     §§pop().§§slot[2] = {
                        "server":"http://x.mochiads.com/srv/1/",
                        "method":"load",
                        "depth":10333,
                        "id":"_UNKNOWN_"
                     };
                     if(!_loc5_)
                     {
                        options = MochiAd._parseOptions(options,DEFAULTS);
                        if(_loc5_ && _loc3_)
                        {
                        }
                        §§push(§§newactivation());
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§pop().§§slot[4] = Number(§§pop().§§slot[1].depth);
                           if(_loc6_)
                           {
                              addr346:
                              delete options.depth;
                              §§push(§§newactivation());
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§pop().§§slot[3]._mochiad_loaded = true;
                                 if(clip.loaderInfo.loaderURL.indexOf("http") == 0)
                                 {
                                    if(!_loc5_)
                                    {
                                       options.as3_swf = clip.loaderInfo.loaderURL;
                                       if(_loc6_)
                                       {
                                       }
                                       addr645:
                                       §§push(§§newactivation());
                                       if(_loc6_ || Boolean(param1))
                                       {
                                          addr653:
                                          §§pop().§§slot[13] = new Loader();
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr664:
                                             g = function(param1:Object):void
                                             {
                                                param1.target.removeEventListener(param1.type,arguments.callee);
                                                MochiAd.unload(clip);
                                             };
                                             loader.contentLoaderInfo.addEventListener(Event.UNLOAD,g);
                                             addr677:
                                             req = new URLRequest(server + ".swf?cacheBust=" + new Date().getTime());
                                             addr676:
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr725);
                                          }
                                       }
                                       §§goto(addr708);
                                    }
                                    addr691:
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       §§pop().§§slot[15].contentType = "application/x-www-form-urlencoded";
                                       addr698:
                                       req.method = URLRequestMethod.POST;
                                       addr703:
                                       req.data = lv;
                                       addr708:
                                       §§pop().§§slot[13].contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):void
                                       {
                                          trace("[MochiAds] Blocked URL");
                                       });
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(!options.skip)
                                          {
                                             §§goto(addr725);
                                          }
                                          §§goto(addr732);
                                       }
                                       addr725:
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          addr728:
                                          §§pop().§§slot[13].load(req);
                                          addr732:
                                          §§push(§§newactivation());
                                       }
                                       §§pop().§§slot[5].addChild(loader);
                                       if(_loc6_)
                                       {
                                          addr747:
                                          mc._mochiad_ctr = loader;
                                       }
                                       return mc;
                                       §§push(§§newactivation());
                                       addr697:
                                       addr702:
                                    }
                                    §§goto(addr725);
                                 }
                                 else
                                 {
                                    trace("[MochiAd] NOTE: Security Sandbox Violation errors below are normal");
                                 }
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§pop().§§slot[7] = new URLVariables();
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       var _loc3_:int = 0;
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          var _loc4_:* = options;
                                          if(!_loc5_)
                                          {
                                             loop0:
                                             while(§§hasnext(_loc4_,_loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§pop().§§slot[8] = §§nextname(_loc3_,_loc4_);
                                                   if(_loc6_ || Boolean(param1))
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop().§§slot[16] is Function)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(!(_loc6_ || _loc2_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(§§newactivation());
                                                         }
                                                         addr459:
                                                      }
                                                   }
                                                   addr451:
                                                }
                                                while(true)
                                                {
                                                   §§pop().§§slot[7][k] = v;
                                                   continue loop0;
                                                }
                                             }
                                             addr477:
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc6_)
                                             {
                                                §§pop().§§slot[16] = options[k];
                                                if(_loc6_)
                                                {
                                                   §§goto(addr451);
                                                }
                                                §§goto(addr477);
                                             }
                                             §§goto(addr459);
                                          }
                                       }
                                       if(_loc6_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc6_ || Boolean(_loc3_))
                                          {
                                             addr491:
                                             §§push(§§newactivation());
                                          }
                                          §§goto(addr703);
                                       }
                                       addr559:
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          §§pop().§§slot[11].allowDomain("*","localhost");
                                          lc.allowInsecureDomain("*","localhost");
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc5_ && MochiAd))
                                             {
                                                §§pop().§§slot[11].connect(name);
                                                if(_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc5_ && MochiAd))
                                                   {
                                                      §§pop().§§slot[5].lc = lc;
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_)
                                                         {
                                                            addr614:
                                                            §§pop().§§slot[5].lcName = name;
                                                            addr618:
                                                            lv.lc = name;
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            §§goto(addr676);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr677);
                                                }
                                                §§goto(addr691);
                                             }
                                             §§goto(addr698);
                                          }
                                          §§goto(addr697);
                                       }
                                       §§goto(addr728);
                                    }
                                    lv.st = getTimer();
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          §§pop().§§slot[5].regContLC = function(param1:String):void
                                          {
                                             mc._containerLCName = param1;
                                          };
                                          if(_loc6_)
                                          {
                                             §§goto(addr645);
                                          }
                                          §§goto(addr664);
                                       }
                                       §§goto(addr653);
                                    }
                                    §§goto(addr698);
                                 }
                                 §§goto(addr664);
                              }
                              §§pop().§§slot[11] = new LocalConnection();
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[11].client = mc;
                                 if(_loc6_)
                                 {
                                    addr551:
                                    name = ["",Math.floor(new Date().getTime()),Math.floor(Math.random() * 999999)].join("_");
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§goto(addr559);
                                    }
                                    §§goto(addr645);
                                 }
                                 §§goto(addr618);
                              }
                              §§goto(addr614);
                           }
                           §§push(§§newactivation());
                           if(_loc6_ || _loc2_)
                           {
                              §§pop().§§slot[5] = createEmptyMovieClip(clip,"_mochiad",depth);
                              wh = MochiAd._getRes(options,clip);
                              if(_loc6_ || MochiAd)
                              {
                                 options.res = wh[0] + "x" + wh[1];
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    options.server += options.id;
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(delete §§pop().§§slot[1].id);
                                          if(!(_loc5_ && MochiAd))
                                          {
                                             §§goto(addr346);
                                          }
                                          addr501:
                                          §§pop();
                                          §§push(§§newactivation());
                                          §§push(_allowDomains(server));
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop());
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr551);
                                          }
                                          §§pop().§§slot[10] = §§pop();
                                          §§push(§§newactivation());
                                          if(!_loc5_)
                                          {
                                             §§goto(addr346);
                                          }
                                          §§goto(addr747);
                                       }
                                    }
                                    §§goto(addr664);
                                 }
                                 §§goto(addr702);
                              }
                              §§goto(addr551);
                           }
                           §§goto(addr491);
                        }
                        addr218:
                        §§push(§§pop().§§slot[7].server);
                        if(!_loc5_)
                        {
                           §§pop().§§slot[9] = §§pop();
                           §§goto(addr501);
                           §§push(delete lv.server);
                        }
                        §§goto(addr501);
                        addr218:
                     }
                     options.swfv = 9;
                     options.mav = MochiAd.getVersion();
                     §§goto(addr216);
                  }
                  addr213:
                  if(§§pop().§§slot[3]._mochiad_loaded)
                  {
                     addr216:
                     if(!_loc5_)
                     {
                        §§push(§§newactivation());
                     }
                     return null;
                  }
                  §§goto(addr218);
               }
               §§pop().§§slot[12] = §§pop();
               §§goto(addr166);
            }
            §§push(null);
            if(_loc6_)
            {
               §§goto(addr87);
            }
            §§goto(addr109);
         }
         §§pop().§§slot[3] = options.clip;
         addr166:
         §§push(§§newactivation());
         if(!_loc5_)
         {
            addr87:
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[13] = §§pop();
               §§push(§§newactivation());
            }
            §§pop().§§slot[14] = §§pop();
            §§push(§§newactivation());
            if(_loc6_ || Boolean(_loc3_))
            {
               §§goto(addr98);
               §§push(null);
            }
         }
         if(!(§§pop().§§slot[3] is DisplayObject))
         {
            if(!(_loc5_ && MochiAd))
            {
               trace("Warning: Object passed as container clip not a descendant of the DisplayObject type");
            }
            §§push(null);
            if(_loc6_)
            {
               return §§pop();
            }
            §§goto(addr98);
         }
         else if(MovieClip(clip).stage == null)
         {
            trace("Warning: Container clip for ad is not attached to the stage");
            if(!_loc5_)
            {
               §§push(null);
               if(!_loc5_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr206:
               §§push(null);
               if(!_loc5_)
               {
                  return §§pop();
               }
            }
            §§goto(addr98);
         }
         else if(!MochiAd._isNetworkAvailable())
         {
            if(!_loc5_)
            {
               §§goto(addr206);
            }
            else
            {
               §§goto(addr98);
            }
         }
         else
         {
            try
            {
               §§goto(addr213);
            }
            catch(e:Error)
            {
            }
            §§goto(addr218);
            §§push(§§newactivation());
         }
         e = §§pop();
         §§newactivation();
         throw new Error("MochiAd requires a clip that is an instance of a dynamic class.  If your class extends Sprite or MovieClip, you must make it dynamic.");
      }
      
      public static function unload(param1:Object) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(param1.clip));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  §§pop();
                  addr62:
                  if(_loc2_)
                  {
                     §§push(Boolean(param1.clip._mochiad));
                  }
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  addr111:
                  §§pop();
                  §§push(true);
               }
               if(§§pop())
               {
                  param1 = param1.clip;
               }
               if(param1.origFrameRate != undefined)
               {
                  param1.stage.frameRate = param1.origFrameRate;
                  if(_loc2_)
                  {
                  }
               }
               if(!param1._mochiad)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr111);
               }
               addr88:
               if(param1._mochiad._containerLCName != undefined)
               {
                  if(_loc2_)
                  {
                  }
                  addr109:
                  §§goto(addr111);
                  §§push(delete param1._mochiad);
               }
               if(param1._mochiad.onUnload)
               {
                  if(!_loc3_)
                  {
                     param1._mochiad.onUnload();
                  }
               }
               §§push(delete param1._mochiad_loaded);
               if(!_loc3_)
               {
                  §§pop();
                  §§goto(addr109);
               }
               §§goto(addr111);
            }
            return §§pop();
         }
         param1._mochiad.lc.send(param1._mochiad._containerLCName,"notify",{"id":"unload"});
         if(!_loc3_)
         {
            §§goto(addr88);
         }
         §§goto(addr109);
      }
      
      public static function _cleanup(param1:Object) : void
      {
         var mc:Object;
         var idx:Number;
         var k:String;
         var lc:LocalConnection;
         var f:Function;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(!(_loc5_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc6_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     §§push(null);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§pop().§§slot[4] = §§pop();
                        if(_loc5_ && Boolean(param1))
                        {
                        }
                        addr96:
                        setTimeout(f,0);
                        idx = DisplayObjectContainer(mc).numChildren;
                        addr101:
                        loop0:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              if(§§pop().§§slot[2] <= 0)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_ && Boolean(param1))
                                 {
                                    continue;
                                 }
                                 §§push(idx);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 §§pop().§§slot[2] = §§pop();
                                 if(!(_loc6_ || Boolean(param1)))
                                 {
                                    break;
                                 }
                                 DisplayObjectContainer(mc).removeChildAt(idx);
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr221);
                           }
                           var _loc3_:int = 0;
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              var _loc4_:* = mc;
                              if(_loc6_ || Boolean(param1))
                              {
                              }
                              while(§§hasnext(_loc4_,_loc3_))
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    §§pop().§§slot[3] = §§nextname(_loc3_,_loc4_);
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    §§push(§§newactivation());
                                 }
                                 delete §§pop().§§slot[1][k];
                              }
                           }
                           addr221:
                           return;
                        }
                     }
                  }
                  addr78:
                  §§pop().§§slot[4] = mc.lc;
                  if(!_loc5_)
                  {
                     addr86:
                     f = function():void
                     {
                        try
                        {
                           lc.client = null;
                           lc.close();
                        }
                        catch(e:Error)
                        {
                        }
                     };
                     if(_loc5_ && Boolean(param1))
                     {
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr96);
               }
               §§push(§§newactivation());
               if(_loc5_)
               {
               }
               §§goto(addr86);
            }
            addr67:
            §§pop().§§slot[5] = §§pop();
            mc = param1;
            if("lc" in mc)
            {
               §§goto(addr78);
               §§push(§§newactivation());
            }
            §§goto(addr96);
         }
         §§goto(addr67);
         §§push(null);
      }
      
      public static function _isNetworkAvailable() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Security.sandboxType == "localWithFile");
         if(!(_loc2_ && _loc2_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function _getRes(param1:Object, param2:Object) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:Array = null;
         var _loc3_:Object = param2.getBounds(param2.root);
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(!(_loc7_ && Boolean(param1)))
         {
            if(typeof param1.res != "undefined")
            {
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  _loc6_ = param1.res.split("x");
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     §§push(parseFloat(_loc6_[0]));
                     if(!_loc7_)
                     {
                        _loc4_ = §§pop();
                        §§push(parseFloat(_loc6_[1]));
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           _loc5_ = §§pop();
                        }
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr173);
               }
               else
               {
                  addr120:
                  §§push(_loc3_.top - _loc3_.bottom);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                  }
               }
            }
            else
            {
               §§push(_loc3_.right - _loc3_.left);
               if(_loc8_ || MochiAd)
               {
                  §§push(§§pop());
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     _loc4_ = §§pop();
                     if(_loc8_ || Boolean(param1))
                     {
                        §§goto(addr120);
                     }
                  }
               }
            }
            _loc5_ = §§pop();
         }
         §§push(_loc4_);
         §§push(0);
         if(!_loc7_)
         {
            §§push(§§pop() == §§pop());
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               if(!§§pop())
               {
                  if(_loc7_)
                  {
                  }
               }
               addr156:
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     §§goto(addr159);
                  }
               }
               §§goto(addr187);
            }
            §§pop();
            if(_loc8_ || Boolean(param1))
            {
               §§push(_loc5_);
               §§push(0);
            }
            addr159:
            §§push(Number(param2.stage.stageWidth));
            if(!(_loc7_ && Boolean(param2)))
            {
               _loc4_ = §§pop();
               if(!_loc7_)
               {
                  addr173:
                  §§push(Number(param2.stage.stageHeight));
                  if(_loc8_)
                  {
                     _loc5_ = §§pop();
                     addr187:
                     §§push(_loc4_);
                  }
                  §§goto(addr188);
               }
            }
            addr188:
            return null;
         }
         §§goto(addr156);
         §§push(§§pop() == §§pop());
      }
      
      public static function _parseOptions(param1:Object, param2:Object) : Object
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:* = NaN;
         var _loc7_:Array = null;
         var _loc3_:Object = {};
         var _loc8_:int = 0;
         var _loc9_:* = param2;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc9_,_loc8_));
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  if(!_loc10_)
                  {
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        if(!_loc10_)
                        {
                           if(param1)
                           {
                              if(!_loc10_)
                              {
                                 _loc8_ = 0;
                                 if(!(_loc10_ && Boolean(param2)))
                                 {
                                    _loc9_ = param1;
                                    if(_loc10_)
                                    {
                                    }
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc9_,_loc8_));
                                       break loop0;
                                    }
                                 }
                              }
                              §§goto(addr132);
                           }
                        }
                        addr121:
                        if(_loc3_.clip == undefined)
                        {
                           if(_loc11_ || Boolean(_loc3_))
                           {
                              §§goto(addr132);
                           }
                        }
                        param1 = _loc3_.clip.loaderInfo.parameters.mochiad_options;
                        if(!_loc10_)
                        {
                           if(param1)
                           {
                              if(_loc11_)
                              {
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr215);
                        }
                        _loc5_ = param1.split("&");
                        if(!_loc10_)
                        {
                           §§push(0);
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              _loc6_ = §§pop();
                              if(_loc11_)
                              {
                              }
                              §§goto(addr215);
                           }
                           loop2:
                           while(§§pop() < _loc5_.length)
                           {
                              _loc7_ = _loc5_[_loc6_].split("=");
                              if(_loc11_ || Boolean(param1))
                              {
                                 _loc3_[unescape(_loc7_[0])] = unescape(_loc7_[1]);
                                 addr211:
                                 if(_loc10_)
                                 {
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                                 addr211:
                              }
                              §§push(_loc6_);
                              if(_loc11_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc10_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              _loc6_ = §§pop();
                              §§goto(addr211);
                           }
                           addr215:
                           if(_loc3_.id == "test")
                           {
                              if(!_loc10_)
                              {
                                 §§goto(addr228);
                              }
                           }
                           addr228:
                           trace("[MochiAd] WARNING: Using the MochiAds test identifier, make sure to use the code from your dashboard, not this example!");
                           return _loc3_;
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr118);
                  }
                  addr118:
                  if(_loc11_)
                  {
                     §§goto(addr121);
                  }
               }
               _loc4_ = §§nextname(_loc8_,_loc9_);
               if(!(_loc10_ && Boolean(param2)))
               {
                  _loc3_[_loc4_] = param2[_loc4_];
               }
               continue;
               addr132:
               throw new Error("MochiAd is missing the \'clip\' parameter.  This should be a MovieClip, Sprite or an instance of a class that extends MovieClip or Sprite.");
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc4_ = §§nextname(_loc8_,_loc9_);
               if(!(_loc10_ && Boolean(param2)))
               {
                  _loc3_[_loc4_] = param1[_loc4_];
               }
               continue;
            }
            §§goto(addr117);
         }
      }
      
      public static function rpc(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:* = param3.id;
         if(_loc7_)
         {
            if("setValue" === _loc6_)
            {
               if(!_loc7_)
               {
                  addr126:
                  §§push(1);
                  if(_loc7_)
                  {
                  }
               }
            }
            else
            {
               if("getValue" === _loc6_)
               {
                  if(_loc7_)
                  {
                     §§goto(addr126);
                  }
               }
               else if("runMethod" !== _loc6_)
               {
                  §§push(3);
               }
               §§push(2);
               if(_loc7_ || Boolean(param1))
               {
                  addr148:
               }
            }
            §§goto(addr153);
         }
         §§push(0);
         if(_loc8_)
         {
            §§goto(addr148);
         }
         addr153:
         switch(§§pop())
         {
            case 0:
               §§push(global);
               if(_loc7_ || Boolean(param1))
               {
                  §§pop().§§slot[1].setValue(param1,param3.objectName,param3.value);
                  if(_loc8_)
                  {
                  }
                  break;
               }
               addr41:
               _loc4_ = §§pop().§§slot[1].getValue(param1,param3.objectName);
               if(_loc7_)
               {
                  param1._mochiad.lc.send(param1._mochiad._containerLCName,"rpcResult",param2,_loc4_);
               }
               break;
            case 1:
               §§goto(addr41);
               §§push(global);
            case 2:
               _loc5_ = MochiAd.runMethod(param1,param3.method,param3.args);
               if(_loc7_ || Boolean(param1))
               {
                  param1._mochiad.lc.send(param1._mochiad._containerLCName,"rpcResult",param2,_loc5_);
                  if(!_loc7_)
                  {
                     addr106:
                     break;
                  }
               }
               break;
            default:
               trace("[mochiads rpc] unknown rpc id: " + param3.id);
               §§goto(addr106);
         }
      }
      
      public static function setValue(param1:Object, param2:String, param3:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Array = param2.split(".");
         var _loc5_:* = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_.length - 1)
            {
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr121);
            }
            §§push(param1[_loc4_[_loc5_]] == undefined);
            if(!(_loc7_ && MochiAd))
            {
               if(!§§pop())
               {
                  if(!_loc7_)
                  {
                     §§pop();
                     if(!(_loc6_ || Boolean(param3)))
                     {
                        break;
                     }
                     §§push(param1[_loc4_[_loc5_]] == null);
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc7_ && Boolean(param2)))
               {
                  return;
               }
            }
            param1 = param1[_loc4_[_loc5_]];
            if(_loc7_ && Boolean(param3))
            {
               continue;
            }
            §§push(_loc5_);
            if(!_loc7_)
            {
               §§push(§§pop() + 1);
               if(_loc7_)
               {
               }
               addr100:
               _loc5_ = §§pop();
               continue;
            }
            §§goto(addr100);
            §§push(§§pop());
         }
         param1[_loc4_[_loc5_]] = param3;
         addr121:
      }
      
      public static function getValue(param1:Object, param2:String) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = param2.split(".");
         var _loc4_:* = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_.length - 1)
            {
               return param1[_loc3_[_loc4_]];
            }
            §§push(param1[_loc3_[_loc4_]] == undefined);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(param1[_loc3_[_loc4_]] == null);
                     }
                     break;
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc5_)
               {
                  break;
               }
            }
            param1 = param1[_loc3_[_loc4_]];
            if(_loc5_)
            {
               continue;
            }
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
               if(_loc5_ && Boolean(param1))
               {
               }
               addr87:
               _loc4_ = §§pop();
               continue;
            }
            §§goto(addr87);
            §§push(§§pop());
         }
         return undefined;
      }
      
      public static function runMethod(param1:Object, param2:String, param3:Array) : Object
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Array = param2.split(".");
         var _loc5_:* = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_.length - 1)
            {
               if(!(_loc6_ && Boolean(param3)))
               {
                  break;
               }
               §§goto(addr156);
            }
            §§push(param1[_loc4_[_loc5_]] == undefined);
            if(!(_loc6_ && MochiAd))
            {
               if(!§§pop())
               {
                  if(_loc6_ && Boolean(param2))
                  {
                  }
               }
               addr62:
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     return undefined;
                  }
                  addr140:
                  return param1[_loc4_[_loc5_]].apply(param1,param3);
               }
               param1 = param1[_loc4_[_loc5_]];
               if(_loc7_ || Boolean(param1))
               {
                  §§push(_loc5_);
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc5_ = §§pop();
               }
               continue;
            }
            §§pop();
            if(_loc6_ && Boolean(param2))
            {
               break;
            }
            §§goto(addr62);
            §§push(param1[_loc4_[_loc5_]] == null);
         }
         if(typeof param1[_loc4_[_loc5_]] == "function")
         {
            if(_loc7_ || Boolean(param3))
            {
               §§goto(addr140);
            }
         }
         addr156:
         return undefined;
      }
      
      public static function adShowing(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.origFrameRate = param1.stage.frameRate;
            if(!_loc2_)
            {
               param1.stage.frameRate = 30;
            }
         }
      }
   }
}

