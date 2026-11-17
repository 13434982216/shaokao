package wingGame.models
{
   import flash.display.MovieClip;
   import flash.utils.getDefinitionByName;
   import wingGame.screens.*;
   
   public class HotshotEnemy
   {
      public static const ACTION_POPUP:String = "popup";
      
      public static const TYPE_GUAC:String = "guacamonster";
      
      public static const TYPE_PINTO:String = "pinto";
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      
      private static const _2PI:Number = Math.PI * 2;
      
      if(!_loc2_)
      {
         ACTION_POPUP = "popup";
         if(_loc2_ && HotshotEnemy)
         {
         }
         §§goto(addr70);
      }
      
      public static const ACTION_WALK:String = "walk";
      
      public static const ACTION_FLY:String = "fly";
      
      public static const ACTION_JUMP:String = "jump";
      
      public static const TYPE_PEPPER:String = "habandito";
      
      if(_loc1_ || _loc1_)
      {
         TYPE_GUAC = "guacamonster";
         TYPE_PINTO = "pinto";
      }
      addr70:
      
      public static const TYPE_FLYER:String = "chilifeather";
      
      public var popupdepth_habandito:Number = 120;
      
      public var popupdepth_guacamonster:Number = 200;
      
      public var popupdepth_pinto:Number = 130;
      
      public var popupdepth_chilifeather:Number = 120;
      
      public var minigame:MiniGameHotshot;
      
      public var clip:MovieClip;
      
      public var action:String;
      
      public var type:String;
      
      public var bg:Boolean = false;
      
      public var startTime:Number = 0;
      
      public var duration:Number = 30;
      
      public var startX:Number = 0;
      
      public var startY:Number = 0;
      
      public var endX:Number = 0;
      
      public var endY:Number = 0;
      
      public var useRotation:Number = 0;
      
      public var jumpHeight:Number = 100;
      
      public var jumpPeriod:Number = 20;
      
      public var jumpTimer:Number = 0;
      
      public var popupDuration:Number = 15;
      
      public var walkBounceRange:Number = 6;
      
      public var flyBounceRange:Number = 8;
      
      public var durationTimer:Number = 0;
      
      public var isActive:Boolean = false;
      
      public var canHit:Boolean = false;
      
      public var didHit:Boolean = false;
      
      public var hitAtTime:Number = 0;
      
      public var hitAtY:Number = 0;
      
      public function HotshotEnemy(param1:Number, param2:Number, param3:MiniGameHotshot, param4:String, param5:String, param6:Boolean, param7:Number, param8:Number, param9:Number = -1, param10:Number = -1, param11:Number = 0, param12:Number = 0, param13:Number = 0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && Boolean(this)))
         {
            super();
            this.minigame = param3;
            this.type = param4;
            this.action = param5;
            this.duration = param2;
            if(_loc15_)
            {
               this.startTime = param1;
               if(_loc14_ && Boolean(param1))
               {
               }
               §§goto(addr150);
            }
            addr96:
            §§push(this.action == HotshotEnemy.ACTION_POPUP);
            if(_loc15_ || Boolean(param2))
            {
               §§push(§§pop());
               if(_loc15_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(_loc14_ && Boolean(param1))
                     {
                     }
                  }
                  addr134:
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(_loc15_)
                  {
                     §§pop();
                     if(!(_loc14_ && Boolean(param2)))
                     {
                        addr148:
                        §§push(param10 == -1);
                     }
                     §§goto(addr150);
                  }
               }
               §§goto(addr149);
            }
            §§pop();
            §§push(param9);
            if(_loc15_)
            {
               §§push(-1);
               if(_loc15_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc15_)
                  {
                     §§goto(addr134);
                  }
                  addr149:
                  if(§§pop())
                  {
                     §§goto(addr150);
                  }
                  addr150:
                  this.endX = this.startX;
                  §§goto(addr154);
               }
            }
            §§goto(addr148);
         }
         this.startX = param7;
         this.startY = param8;
         this.endX = param9;
         this.endY = param10;
         if(!_loc14_)
         {
            this.useRotation = param11;
            if(_loc15_ || Boolean(this))
            {
            }
            §§goto(addr160);
         }
         this.bg = param6;
         this.jumpHeight = param12;
         if(_loc15_ || Boolean(this))
         {
            this.jumpPeriod = param13;
            if(_loc14_)
            {
            }
            addr154:
            this.endY = this.startY;
            if(!_loc14_)
            {
               this.startY = this.endY + this["popupdepth_" + this.type];
               addr160:
            }
            return;
         }
         §§goto(addr96);
      }
      
      public function clone(param1:MiniGameHotshot) : HotshotEnemy
      {
         var _loc2_:HotshotEnemy = this;
         return new HotshotEnemy(_loc2_.startTime,_loc2_.duration,param1,_loc2_.type,_loc2_.action,_loc2_.bg,_loc2_.startX,_loc2_.startY,_loc2_.endX,_loc2_.endY,_loc2_.useRotation,_loc2_.jumpHeight,_loc2_.jumpPeriod);
      }
      
      public function initEnemy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:HotshotEnemy = this;
         var _loc2_:Class = getDefinitionByName("minigame_hotshot_" + _loc1_.type) as Class;
         if(!_loc3_)
         {
            _loc1_.clip = new _loc2_() as MovieClip;
            _loc1_.clip.x = _loc1_.startX;
         }
         _loc1_.clip.y = _loc1_.startY;
         _loc1_.clip.rotation = _loc1_.useRotation;
         _loc1_.clip.mouseChildren = false;
         _loc1_.clip.splat.visible = false;
         if(_loc4_ || Boolean(_loc1_))
         {
            §§push(_loc1_.action);
            if(_loc4_ || _loc3_)
            {
               §§push(HotshotEnemy.ACTION_POPUP);
               if(_loc4_ || Boolean(this))
               {
                  if(§§pop() == §§pop())
                  {
                     if(Math.random() < 0.5)
                     {
                        _loc1_.clip.scaleX = -1;
                     }
                     §§goto(addr177);
                  }
                  else
                  {
                     §§push(_loc1_.action);
                     if(_loc4_)
                     {
                     }
                     addr143:
                     §§push(HotshotEnemy.ACTION_WALK);
                     if(!_loc3_)
                     {
                        addr147:
                        §§push(§§pop() == §§pop());
                        if(_loc4_)
                        {
                           §§goto(addr167);
                        }
                     }
                     §§push(§§pop() == §§pop());
                     if(_loc4_)
                     {
                        addr167:
                        if(!§§pop())
                        {
                           if(_loc4_ || Boolean(this))
                           {
                              addr159:
                              §§pop();
                              §§push(_loc1_.action);
                              §§push(HotshotEnemy.ACTION_JUMP);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc1_.startX < _loc1_.endX)
                           {
                              _loc1_.clip.scaleX = -1;
                           }
                        }
                        §§goto(addr177);
                     }
                  }
                  addr214:
                  if(!§§pop())
                  {
                     §§push(_loc1_.minigame);
                  }
                  §§pop().clip.enemyholder.addChild(_loc1_.clip);
                  §§goto(addr177);
               }
               addr102:
               §§push(§§pop() == §§pop());
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ && Boolean(this))
                        {
                        }
                        §§goto(addr159);
                     }
                  }
                  §§goto(addr167);
               }
               §§pop();
               §§push(_loc1_.action);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§goto(addr143);
               }
               §§goto(addr159);
            }
            §§push(HotshotEnemy.ACTION_FLY);
            if(_loc4_)
            {
               §§goto(addr102);
            }
            §§goto(addr147);
         }
         §§push(_loc1_.minigame);
         if(_loc4_)
         {
            §§pop().clip.bgenemyholder.addChild(_loc1_.clip);
            if(!_loc3_)
            {
               §§goto(addr177);
            }
         }
         else
         {
            §§goto(addr214);
         }
         addr177:
         _loc1_.canHit = true;
         _loc1_.isActive = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc1_.bg);
         }
      }
      
      public function updateEnemy() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:HotshotEnemy = this;
         §§push(_loc1_.isActive);
         §§push(_loc1_.isActive);
         if(_loc7_ || Boolean(this))
         {
            if(§§pop())
            {
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  §§pop();
                  §§push(!_loc1_.didHit);
                  if(_loc7_ || Boolean(this))
                  {
                  }
                  §§goto(addr1056);
               }
               §§goto(addr1051);
            }
            if(§§pop())
            {
               if(_loc7_ || Boolean(_loc2_))
               {
                  var _loc5_:* = _loc1_;
                  §§push(_loc5_.durationTimer);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc6_:* = §§pop();
                  if(!_loc8_)
                  {
                     _loc5_.durationTimer = _loc6_;
                  }
                  §§push(_loc1_.action);
                  if(!_loc8_)
                  {
                     §§push(HotshotEnemy.ACTION_POPUP);
                     if(_loc7_)
                     {
                        addr191:
                        §§push(§§pop() == §§pop());
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc7_)
                           {
                           }
                           addr283:
                           if(§§pop())
                           {
                              §§pop();
                              addr915:
                              §§push(_loc1_.durationTimer);
                              §§push(_loc1_.duration);
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 §§push(_loc1_.popupDuration);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    addr305:
                                    §§push(§§pop() + §§pop());
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                       addr1025:
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_ || Boolean(_loc1_))
                                       {
                                          addr317:
                                          §§push(§§pop() == §§pop());
                                       }
                                       §§push(_loc4_);
                                       if(_loc8_)
                                       {
                                       }
                                       addr1030:
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(_loc1_.minigame);
                                             if(_loc7_)
                                             {
                                                §§pop().removeEnemy(_loc1_);
                                             }
                                          }
                                          §§goto(addr1056);
                                       }
                                       §§push(§§pop() >= §§pop());
                                       if(!_loc8_)
                                       {
                                          addr1050:
                                          if(§§pop())
                                          {
                                             §§goto(addr1051);
                                          }
                                       }
                                       §§goto(addr1056);
                                    }
                                    addr949:
                                    if(§§pop() < §§pop() / §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          addr953:
                                          _loc1_.clip.y = _loc1_.quadEaseOut(_loc2_,_loc1_.hitAtY,-40,_loc3_ / 2);
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                          }
                                          addr1019:
                                          §§push(_loc1_.durationTimer);
                                          if(!_loc8_)
                                          {
                                             addr1023:
                                             §§goto(addr1025);
                                             §§push(_loc1_.hitAtTime);
                                          }
                                          §§goto(addr1025);
                                          §§push(_loc1_.startTime);
                                       }
                                       else
                                       {
                                          addr983:
                                          _loc1_.clip.y = _loc1_.quadEaseIn(_loc2_ - _loc3_ / 2,_loc1_.hitAtY - 40,40,_loc3_ / 2);
                                          if(_loc7_)
                                          {
                                             §§goto(addr1019);
                                          }
                                       }
                                       §§goto(addr1056);
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc3_);
                                       if(!(_loc8_ && Boolean(this)))
                                       {
                                          addr982:
                                          if(§§pop() <= §§pop())
                                          {
                                             §§goto(addr983);
                                          }
                                          else
                                          {
                                             _loc1_.clip.y = _loc1_.tween(_loc2_ - _loc3_,_loc1_.hitAtY,700 - _loc1_.hitAtY,_loc4_);
                                          }
                                          §§goto(addr1019);
                                       }
                                    }
                                    addr1029:
                                    §§goto(addr1030);
                                    §§push(_loc3_);
                                 }
                                 §§goto(addr1029);
                                 §§push(§§pop() + §§pop());
                              }
                              if(§§pop() <= §§pop())
                              {
                                 addr916:
                                 _loc1_.clip.rotationY = _loc1_.quadEaseOut(_loc2_,0,360,_loc3_);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    addr939:
                                    §§push(_loc2_);
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr949);
                                       §§push(_loc3_);
                                       §§push(2);
                                    }
                                    §§goto(addr1019);
                                 }
                              }
                              else
                              {
                                 _loc1_.clip.rotationY = 0;
                                 if(!_loc8_)
                                 {
                                    §§goto(addr939);
                                 }
                              }
                           }
                           addr318:
                           if(§§pop())
                           {
                              §§push(_loc1_.minigame);
                              if(!(_loc8_ && Boolean(_loc3_)))
                              {
                                 §§pop().removeEnemy(_loc1_);
                                 if(_loc7_ || Boolean(this))
                                 {
                                 }
                                 addr860:
                                 _loc1_.clip.rotation = 0;
                                 if(_loc7_ || Boolean(_loc1_))
                                 {
                                    addr871:
                                    §§push(10);
                                    if(!_loc8_)
                                    {
                                       _loc3_ = §§pop();
                                       addr876:
                                       §§push(20);
                                    }
                                    _loc4_ = §§pop();
                                    _loc5_ = _loc1_;
                                    §§push(_loc5_.durationTimer);
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc7_)
                                    {
                                       _loc5_.durationTimer = _loc6_;
                                    }
                                    if(_loc7_ || Boolean(_loc1_))
                                    {
                                       _loc2_ = _loc1_.durationTimer - _loc1_.hitAtTime;
                                       addr914:
                                       §§goto(addr915);
                                       §§push(_loc2_);
                                       §§push(_loc3_);
                                    }
                                    §§goto(addr1019);
                                 }
                                 §§goto(addr939);
                              }
                           }
                           addr337:
                           §§push(_loc1_.action);
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              §§push(HotshotEnemy.ACTION_WALK);
                              if(!(_loc8_ && Boolean(_loc3_)))
                              {
                                 addr355:
                                 if(§§pop() == §§pop())
                                 {
                                    §§push(_loc1_.durationTimer);
                                    if(_loc7_)
                                    {
                                       _loc2_ = §§pop();
                                       _loc1_.clip.x = _loc1_.tween(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.duration);
                                       _loc1_.clip.y = _loc1_.tween(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.duration);
                                       addr392:
                                       _loc1_.clip.y += _loc1_.walkBounceRange * Math.sin(_loc1_.clip.x / 20 + _loc1_.startTime);
                                       §§push(_loc1_.durationTimer);
                                       if(_loc7_)
                                       {
                                          §§push(_loc1_.duration);
                                          if(_loc7_ || Boolean(_loc1_))
                                          {
                                             addr425:
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(_loc1_.minigame);
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   §§pop().removeEnemy(_loc1_);
                                                }
                                                else
                                                {
                                                   addr585:
                                                   §§pop().removeEnemy(_loc1_);
                                                   if(_loc8_ && Boolean(_loc1_))
                                                   {
                                                      addr668:
                                                      if(_loc1_.jumpTimer > _loc1_.jumpPeriod)
                                                      {
                                                         if(!(_loc8_ && Boolean(_loc1_)))
                                                         {
                                                            _loc1_.jumpTimer = 0;
                                                            if(_loc7_ || Boolean(_loc2_))
                                                            {
                                                            }
                                                            addr826:
                                                            _loc1_.clip.rotation = 0;
                                                            if(_loc7_)
                                                            {
                                                               addr832:
                                                               §§goto(addr871);
                                                            }
                                                            §§goto(addr953);
                                                         }
                                                         §§goto(addr876);
                                                      }
                                                      §§push(_loc1_.jumpTimer);
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                      }
                                                      §§goto(addr914);
                                                   }
                                                }
                                                §§goto(addr1056);
                                             }
                                          }
                                          addr710:
                                          if(§§pop() <= §§pop())
                                          {
                                             if(!(_loc8_ && Boolean(_loc3_)))
                                             {
                                                _loc1_.clip.y -= _loc1_.quadEaseOut(_loc1_.jumpTimer,0,_loc1_.jumpHeight,_loc1_.jumpPeriod / 2);
                                             }
                                             else
                                             {
                                                addr806:
                                                _loc1_.clip.rotation += 0.2;
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   addr821:
                                                   if(_loc1_.clip.rotation > 0)
                                                   {
                                                      §§goto(addr826);
                                                   }
                                                   §§goto(addr832);
                                                }
                                             }
                                             §§goto(addr871);
                                          }
                                          else
                                          {
                                             _loc1_.clip.y -= _loc1_.quadEaseIn(_loc1_.jumpTimer - _loc1_.jumpPeriod / 2,_loc1_.jumpHeight,0 - _loc1_.jumpHeight,_loc1_.jumpPeriod / 2);
                                             if(_loc8_ && Boolean(_loc1_))
                                             {
                                                §§goto(addr860);
                                             }
                                             §§goto(addr939);
                                          }
                                       }
                                       else
                                       {
                                          addr566:
                                          if(§§pop() >= _loc1_.duration)
                                          {
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                addr576:
                                                §§push(_loc1_.minigame);
                                                if(!(_loc8_ && Boolean(_loc3_)))
                                                {
                                                   §§goto(addr585);
                                                }
                                             }
                                             else
                                             {
                                                addr648:
                                                _loc5_ = _loc1_;
                                                §§push(_loc5_.jumpTimer);
                                                if(_loc7_ || Boolean(_loc3_))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc6_ = §§pop();
                                                if(_loc7_)
                                                {
                                                   _loc5_.jumpTimer = _loc6_;
                                                }
                                             }
                                             §§goto(addr668);
                                          }
                                       }
                                    }
                                    §§push(_loc1_.jumpPeriod);
                                    §§push(2);
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       §§goto(addr710);
                                       §§push(§§pop() / §§pop());
                                    }
                                    §§goto(addr949);
                                 }
                                 else
                                 {
                                    §§push(_loc1_.action);
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                    }
                                 }
                                 addr788:
                                 §§goto(addr1056);
                              }
                              addr599:
                              if(§§pop() == §§pop())
                              {
                                 if(_loc7_ || Boolean(this))
                                 {
                                    addr607:
                                    _loc2_ = _loc1_.durationTimer;
                                    _loc1_.clip.x = _loc1_.tween(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.duration);
                                    addr626:
                                    _loc1_.clip.y = _loc1_.tween(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.duration);
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       §§goto(addr648);
                                    }
                                 }
                                 §§goto(addr914);
                              }
                              §§goto(addr788);
                           }
                           §§goto(addr599);
                           §§push(HotshotEnemy.ACTION_JUMP);
                        }
                        §§pop();
                        §§push(_loc1_.durationTimer);
                        if(_loc7_)
                        {
                           addr196:
                           §§push(_loc1_.duration);
                           §§push(_loc1_.popupDuration);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 addr211:
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(_loc1_.durationTimer);
                                       §§push(_loc1_.duration);
                                       if(_loc7_)
                                       {
                                          _loc2_ = §§pop() - §§pop();
                                          if(!(_loc8_ && Boolean(_loc3_)))
                                          {
                                             _loc1_.clip.x = _loc1_.easeIn(_loc2_,_loc1_.endX,_loc1_.startX - _loc1_.endX,_loc1_.popupDuration);
                                             _loc1_.clip.y = _loc1_.easeIn(_loc2_,_loc1_.endY,_loc1_.startY - _loc1_.endY,_loc1_.popupDuration);
                                          }
                                          §§goto(addr337);
                                       }
                                       §§goto(addr425);
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc1_.action);
                                    if(_loc7_)
                                    {
                                       addr265:
                                       §§push(HotshotEnemy.ACTION_POPUP);
                                       if(_loc8_ && Boolean(_loc2_))
                                       {
                                       }
                                       §§goto(addr355);
                                    }
                                 }
                              }
                              §§goto(addr982);
                           }
                           §§goto(addr305);
                        }
                        §§goto(addr914);
                     }
                     §§push(§§pop() == §§pop());
                     §§push(§§pop() == §§pop());
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        §§goto(addr283);
                     }
                     §§goto(addr1050);
                  }
                  §§push(HotshotEnemy.ACTION_FLY);
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(_loc1_.durationTimer);
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop());
                           if(_loc7_)
                           {
                           }
                           §§goto(addr1023);
                        }
                        _loc2_ = §§pop();
                        if(!_loc8_)
                        {
                           _loc1_.clip.x = _loc1_.tween(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.duration);
                           _loc1_.clip.y = _loc1_.tween(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.duration);
                           if(_loc7_ || Boolean(this))
                           {
                              _loc1_.clip.y += _loc1_.flyBounceRange * Math.sin(_loc1_.clip.x / 100 + _loc1_.startTime);
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 _loc1_.clip.rotation = 5 * Math.sin(_loc1_.durationTimer / 8 + _loc1_.startTime);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr566);
                                    §§push(_loc1_.durationTimer);
                                 }
                                 §§goto(addr826);
                              }
                              §§goto(addr648);
                           }
                           §§goto(addr576);
                        }
                        else
                        {
                           §§goto(addr626);
                        }
                     }
                     else
                     {
                        §§goto(addr283);
                        §§push(_loc1_.action);
                     }
                     §§goto(addr355);
                  }
                  §§goto(addr599);
               }
               addr1051:
               §§pop();
               §§push(_loc1_.isActive);
               if(!_loc8_)
               {
                  addr1056:
                  §§goto(addr1057);
               }
               addr1057:
               if(!§§pop())
               {
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     _loc1_.initEnemy();
                  }
               }
               return;
            }
            if(_loc1_.didHit)
            {
               if(_loc7_ || Boolean(_loc2_))
               {
                  if(_loc1_.clip.rotation < 0)
                  {
                     if(!_loc8_)
                     {
                        §§goto(addr806);
                     }
                     §§goto(addr821);
                  }
                  else if(_loc1_.clip.rotation > 0)
                  {
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        _loc1_.clip.rotation -= 0.2;
                     }
                     if(_loc1_.clip.rotation < 0)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr860);
                        }
                        §§goto(addr1056);
                     }
                  }
                  §§goto(addr871);
               }
               §§goto(addr916);
            }
            else
            {
               §§push(_loc1_.minigame);
            }
            §§goto(addr953);
            §§push(§§pop().gameTimer);
         }
         if(§§pop())
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               §§pop();
               if(_loc7_)
               {
                  §§push(_loc1_.durationTimer);
                  if(!_loc8_)
                  {
                     §§push(_loc1_.popupDuration);
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop() <= §§pop());
                     }
                     §§goto(addr317);
                  }
                  §§goto(addr1023);
               }
               §§goto(addr283);
            }
            addr180:
            §§push(§§pop());
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     §§goto(addr191);
                  }
                  §§goto(addr318);
               }
               §§goto(addr211);
            }
            §§goto(addr283);
         }
         if(§§pop())
         {
            if(!_loc8_)
            {
               §§push(_loc1_.durationTimer);
               if(!_loc8_)
               {
                  _loc2_ = §§pop();
                  _loc1_.clip.x = _loc1_.easeOut(_loc2_,_loc1_.startX,_loc1_.endX - _loc1_.startX,_loc1_.popupDuration);
                  if(_loc7_)
                  {
                     _loc1_.clip.y = _loc1_.easeOut(_loc2_,_loc1_.startY,_loc1_.endY - _loc1_.startY,_loc1_.popupDuration);
                     §§goto(addr283);
                  }
                  §§goto(addr392);
               }
               else
               {
                  §§goto(addr196);
               }
            }
            §§goto(addr607);
         }
         else
         {
            §§push(_loc1_.action);
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               §§push(HotshotEnemy.ACTION_POPUP);
               if(!(_loc8_ && Boolean(_loc1_)))
               {
                  §§goto(addr180);
                  §§push(§§pop() == §§pop());
               }
               §§goto(addr355);
            }
         }
         §§goto(addr265);
      }
      
      public function checkHittingEnemy(param1:Number, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:HotshotEnemy = this;
         var _loc4_:Boolean = false;
         §§push(_loc3_.isActive);
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            if(§§pop())
            {
            }
            §§goto(addr51);
         }
         §§pop();
         §§push(_loc3_.didHit);
         if(!_loc5_)
         {
            §§push(!§§pop());
            if(_loc6_ || Boolean(_loc3_))
            {
               §§goto(addr51);
            }
         }
         addr51:
         if(§§pop())
         {
            if(_loc3_.clip.hitTestPoint(param1,param2,true))
            {
               _loc3_.didHit = true;
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc3_.hitAtTime = _loc3_.durationTimer;
               }
               _loc3_.hitAtY = _loc3_.clip.y;
               if(_loc6_)
               {
                  _loc4_ = true;
                  _loc3_.clip.splat.visible = true;
               }
            }
         }
         return _loc4_;
      }
      
      public function destroy() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:HotshotEnemy = this;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_.clip != null)
            {
            }
            §§goto(addr62);
         }
         try
         {
            _loc1_.clip.parent.removeChild(_loc1_.clip);
            if(_loc4_)
            {
               §§goto(addr62);
            }
         }
         catch(err:Error)
         {
            §§goto(addr62);
         }
         addr62:
         _loc1_.clip = null;
      }
      
      public function easeIn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = NaN;
         §§push(param1);
         if(_loc10_)
         {
            §§push(0);
            if(_loc10_ || Boolean(this))
            {
               if(§§pop() == §§pop())
               {
                  §§push(param2);
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     return §§pop();
                  }
                  addr107:
                  §§push(!§§pop());
                  if(_loc10_)
                  {
                     §§push(§§pop());
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        if(§§pop())
                        {
                        }
                        addr161:
                        §§push(§§pop());
                        if(_loc10_ || Boolean(param3))
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 addr219:
                                 addr179:
                                 §§push(param3);
                                 §§push(0);
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    §§push(§§pop() < §§pop());
                                    §§push(§§pop() < §§pop());
                                 }
                                 _loc7_ = §§pop() / §§pop();
                                 §§push(param5 * Math.pow(2,10 * (param1 = param1 - 1)));
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    addr269:
                                    §§push(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6));
                                    if(_loc10_)
                                    {
                                       addr290:
                                       §§push(-§§pop());
                                       if(_loc10_)
                                       {
                                          addr294:
                                          §§push(§§pop() + param2);
                                       }
                                    }
                                 }
                                 return §§pop();
                                 addr222:
                              }
                              addr205:
                              §§push(param3);
                              if(!_loc9_)
                              {
                                 param5 = §§pop();
                                 if(_loc10_ || Boolean(param2))
                                 {
                                    §§goto(addr219);
                                    §§push(param6);
                                    §§push(4);
                                 }
                                 §§goto(addr222);
                              }
                              else
                              {
                                 addr243:
                                 §§push(§§pop());
                                 if(_loc10_)
                                 {
                                    _loc7_ = §§pop();
                                    §§goto(addr219);
                                 }
                              }
                              §§goto(addr290);
                           }
                           addr204:
                           if(§§pop())
                           {
                              §§goto(addr205);
                           }
                           else
                           {
                              §§push(param6);
                           }
                           §§goto(addr294);
                        }
                     }
                     addr189:
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           §§pop();
                           §§push(param5);
                           if(_loc10_ || Boolean(param1))
                           {
                              addr202:
                              §§push(§§pop() < -param3);
                           }
                           §§goto(addr269);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§pop();
                  §§push(param3);
                  if(!_loc9_)
                  {
                     §§push(0);
                     if(_loc10_ || Boolean(param3))
                     {
                     }
                     §§goto(addr219);
                  }
                  §§push(param3);
                  if(_loc10_ || Boolean(param3))
                  {
                     §§goto(addr161);
                     §§push(§§pop() < §§pop());
                  }
                  §§goto(addr202);
               }
               else
               {
                  §§push(param1 / param4);
                  if(_loc10_ || Boolean(param3))
                  {
                     var _loc8_:* = §§pop();
                     §§push(_loc8_);
                     if(!(_loc9_ && Boolean(param3)))
                     {
                        §§push(§§pop());
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           param1 = §§pop();
                           §§push(_loc8_);
                        }
                     }
                     if(!_loc9_)
                     {
                        §§push(1);
                        if(_loc10_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§push(param2);
                              if(_loc10_)
                              {
                                 §§push(§§pop() + param3);
                                 if(_loc10_ || Boolean(param3))
                                 {
                                    return §§pop();
                                 }
                                 addr105:
                                 param6 = §§pop();
                                 §§push(param5);
                              }
                              §§goto(addr179);
                           }
                           else
                           {
                              §§push(param6);
                              if(_loc10_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       §§push(param4);
                                       if(_loc10_)
                                       {
                                          §§goto(addr105);
                                          §§push(§§pop() * 0.3);
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr105);
                              }
                           }
                        }
                     }
                     §§goto(addr107);
                  }
               }
               §§push(_2PI);
               if(!(_loc9_ && Boolean(this)))
               {
                  §§push(§§pop() / §§pop());
                  if(_loc9_)
                  {
                  }
                  §§goto(addr243);
               }
               §§goto(addr294);
            }
            §§push(§§pop() > §§pop());
            §§push(§§pop() > §§pop());
            if(_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && Boolean(param3)))
                  {
                     §§pop();
                     §§goto(addr107);
                     §§push(param5);
                  }
               }
               §§goto(addr161);
            }
            §§goto(addr189);
         }
         §§push(§§pop() * Math.asin(param3 / param5));
         if(!_loc9_)
         {
            §§goto(addr243);
         }
         §§goto(addr290);
      }
      
      public function easeOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = NaN;
         if(_loc10_ || Boolean(param3))
         {
            §§push(param1);
            if(!(_loc9_ && Boolean(this)))
            {
               §§push(0);
               if(!(_loc9_ && Boolean(this)))
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(param2);
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§push(param1 / param4);
                     if(!_loc9_)
                     {
                        var _loc8_:* = §§pop();
                        §§push(_loc8_);
                        if(!_loc9_)
                        {
                           §§push(§§pop());
                           if(_loc10_ || Boolean(param1))
                           {
                           }
                           addr68:
                           §§push(1);
                           if(!(_loc9_ && Boolean(param2)))
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§push(param2 + param3);
                                 if(_loc10_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 §§push(param6);
                                 if(_loc10_ || Boolean(param3))
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(param4 * 0.3);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             param6 = §§pop();
                                          }
                                          addr110:
                                          §§push(!§§pop());
                                          if(_loc10_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc9_)
                                             {
                                                if(§§pop())
                                                {
                                                }
                                                addr171:
                                                §§push(§§pop());
                                                if(_loc9_)
                                                {
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      addr190:
                                                      §§pop();
                                                      addr192:
                                                      addr202:
                                                      addr271:
                                                      addr215:
                                                      §§push(param3);
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                      §§push(§§pop() < §§pop() ? (param5 = param3, §§push(param6), 4) : param6);
                                                      §§push(_2PI);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_)
                                                      {
                                                      }
                                                      return §§pop();
                                                      §§push(param5);
                                                   }
                                                }
                                                §§goto(addr202);
                                             }
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                §§push(param3);
                                                §§push(0);
                                                if(_loc9_ && Boolean(param1))
                                                {
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          §§pop();
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             §§push(param3);
                                             if(!(_loc9_ && Boolean(param3)))
                                             {
                                                §§push(0);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(!(_loc9_ && Boolean(param3)))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_ || Boolean(param2))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                         }
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr190);
                                                }
                                             }
                                          }
                                          §§push(param5 * Math.pow(2,-10 * param1));
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6));
                                             if(_loc10_ || Boolean(this))
                                             {
                                                addr256:
                                                §§push(param3);
                                                if(!(_loc9_ && Boolean(param1)))
                                                {
                                                   §§goto(addr271);
                                                }
                                                addr275:
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          §§goto(addr192);
                                          addr213:
                                       }
                                    }
                                    §§push(param5);
                                    if(_loc10_)
                                    {
                                       §§goto(addr110);
                                    }
                                    §§goto(addr192);
                                 }
                              }
                              addr226:
                              _loc7_ = §§pop();
                              §§goto(addr110);
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc10_)
                           {
                              _loc7_ = §§pop();
                              §§goto(addr213);
                           }
                           else
                           {
                              §§goto(addr215);
                           }
                        }
                        param1 = §§pop();
                        §§goto(addr68);
                        §§push(_loc8_);
                     }
                  }
                  §§goto(addr275);
                  §§push(param2);
               }
               §§goto(addr171);
               §§push(§§pop() < §§pop());
               §§push(§§pop() < §§pop());
            }
            §§goto(addr226);
            §§push(§§pop() * Math.asin(param3 / param5));
         }
         §§push(param5);
         if(_loc10_ || Boolean(param3))
         {
            §§goto(addr171);
            §§push(§§pop() < param3);
         }
         §§goto(addr256);
      }
      
      public function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 15, param6:Number = 10) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = NaN;
         §§push(param1);
         if(_loc10_ || Boolean(this))
         {
            §§push(0);
            if(_loc10_ || Boolean(param1))
            {
               if(§§pop() != §§pop())
               {
                  §§push(param1);
                  if(_loc10_ || Boolean(this))
                  {
                     §§push(param4);
                     §§push(0.5);
                     if(_loc10_ || Boolean(param3))
                     {
                        §§push(§§pop() / (§§pop() * §§pop()));
                        if(_loc10_ || Boolean(param1))
                        {
                           addr252:
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              var _loc8_:* = §§pop();
                              if(!_loc9_)
                              {
                                 §§push(§§pop());
                                 if(_loc10_)
                                 {
                                 }
                                 addr81:
                                 §§push(2);
                                 if(_loc10_ || Boolean(param1))
                                 {
                                    §§push(§§pop() == §§pop() ? param2 : param6);
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       addr201:
                                       §§pop();
                                       §§goto(addr202);
                                    }
                                 }
                              }
                              param1 = §§pop();
                              §§goto(addr81);
                              §§push(_loc8_);
                           }
                           §§push(§§pop() / §§pop() * Math.asin(param3 / param5));
                           if(_loc10_)
                           {
                              _loc7_ = §§pop();
                              addr265:
                              if(param1 < 1)
                              {
                                 §§goto(addr266);
                              }
                              else
                              {
                                 addr307:
                                 §§push(param5);
                              }
                           }
                           §§goto(addr352);
                        }
                        if(!§§pop())
                        {
                           if(_loc10_)
                           {
                              §§goto(addr223);
                           }
                           addr249:
                           §§goto(addr265);
                        }
                        addr115:
                        §§push(!param5);
                        §§push(!param5);
                        if(_loc10_ || Boolean(param2))
                        {
                           if(!§§pop())
                           {
                              if(!(_loc9_ && Boolean(param3)))
                              {
                                 §§pop();
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    §§push(param3);
                                    §§push(0);
                                    if(!(_loc9_ && Boolean(param2)))
                                    {
                                       §§push(§§pop() > §§pop());
                                       §§push(§§pop() > §§pop());
                                       if(!_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                §§pop();
                                                addr159:
                                                §§push(param5 < param3);
                                             }
                                             §§goto(addr201);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr202);
                              }
                           }
                           §§push(§§pop());
                           if(_loc9_ && Boolean(param3))
                           {
                           }
                           §§goto(addr81);
                        }
                        if(!§§pop())
                        {
                           if(!(_loc9_ && Boolean(param3)))
                           {
                              §§pop();
                              if(!_loc9_)
                              {
                                 §§push(param3);
                                 §§push(0);
                                 if(_loc10_ || Boolean(param3))
                                 {
                                    §§goto(addr81);
                                 }
                                 §§goto(addr265);
                              }
                              §§goto(addr307);
                           }
                           §§goto(addr201);
                        }
                     }
                     §§push(§§pop() * (§§pop() * §§pop()));
                     if(!_loc9_)
                     {
                        param6 = §§pop();
                        §§goto(addr115);
                     }
                     §§goto(addr159);
                  }
                  return §§pop() + param3;
               }
               if(!(_loc9_ && Boolean(this)))
               {
                  §§push(param2);
                  if(_loc9_)
                  {
                     addr274:
                     §§push(§§pop() * (param5 * Math.pow(2,10 * (param1 = param1 - 1)) * Math.sin((param1 * param4 - _loc7_) * _2PI / param6)));
                     if(!_loc9_)
                     {
                        §§goto(addr304);
                     }
                     else
                     {
                        §§goto(addr352);
                     }
                  }
               }
               else
               {
                  addr202:
                  §§push(param5);
                  §§push(param3);
                  if(_loc10_ || Boolean(param3))
                  {
                     §§push(§§pop() < -§§pop());
                  }
               }
               addr352:
               §§push(§§pop() * Math.pow(2,-10 * (param1 = param1 - 1)));
               if(_loc10_ || Boolean(param2))
               {
                  addr350:
                  §§push(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6) * 0.5);
                  §§push(param3);
               }
               return §§pop() + param2;
               §§push(§§pop() + §§pop());
               if(§§pop())
               {
                  addr238:
                  §§push(param3);
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     addr223:
                     §§push(param4);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        §§push(0.3);
                        §§push(1.5);
                     }
                     param5 = §§pop();
                     if(!_loc9_)
                     {
                        §§push(param6);
                        §§push(4);
                        if(_loc10_)
                        {
                        }
                        §§goto(addr265);
                     }
                     addr266:
                     §§push(-0.5);
                     if(_loc10_ || Boolean(param1))
                     {
                        §§goto(addr274);
                     }
                     addr304:
                     return §§pop() + param2;
                     §§push(§§pop());
                  }
                  §§push(§§pop());
                  if(_loc10_)
                  {
                     _loc7_ = §§pop();
                     if(!(_loc9_ && Boolean(this)))
                     {
                        §§goto(addr249);
                     }
                     §§goto(addr307);
                  }
                  §§goto(addr352);
               }
               else
               {
                  §§goto(addr252);
                  §§push(param6);
                  §§push(_2PI);
               }
               §§goto(addr352);
            }
            §§push(§§pop() / §§pop());
            if(!(_loc9_ && Boolean(param2)))
            {
               §§goto(addr238);
            }
            §§goto(addr350);
         }
         return §§pop();
      }
      
      public function quadEaseIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!(_loc7_ && Boolean(param1)))
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(param4);
               if(!_loc7_)
               {
                  §§goto(addr70);
               }
               var _loc5_:* = §§pop();
               if(!(_loc7_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(!(_loc7_ && Boolean(param2)))
                  {
                     param1 = §§pop();
                     §§push(_loc5_);
                  }
               }
               if(_loc7_)
               {
               }
               §§goto(addr70);
            }
            §§push(§§pop() * §§pop());
            if(_loc6_)
            {
               §§push(param1);
               if(_loc6_)
               {
                  §§goto(addr70);
               }
               addr86:
               §§push(§§pop() + §§pop());
            }
            addr70:
            §§push(§§pop() / §§pop());
            if(_loc6_ || Boolean(param3))
            {
               §§push(§§pop());
            }
            §§push(§§pop() * §§pop());
            if(_loc6_ || Boolean(param2))
            {
            }
            return §§pop();
         }
         §§goto(addr86);
         §§push(param2);
      }
      
      public function quadEaseOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!(_loc7_ && Boolean(param3)))
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               §§push(param1);
               if(!_loc7_)
               {
                  §§push(param4);
                  if(!_loc7_)
                  {
                     addr57:
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() * §§pop());
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                           §§push(§§pop() - 2);
                           if(_loc6_)
                           {
                           }
                        }
                        addr88:
                        §§push(§§pop() + §§pop());
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        param1 = §§pop();
                        §§push(_loc5_);
                     }
                  }
                  if(_loc6_)
                  {
                     §§goto(addr57);
                  }
               }
               §§push(§§pop() * §§pop());
               if(_loc6_ || Boolean(this))
               {
               }
            }
            return §§pop();
         }
         §§goto(addr88);
         §§push(param2);
      }
      
      public function tween(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc6_ && Boolean(param3)))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && Boolean(param3)))
               {
                  §§push(param4);
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc6_ && Boolean(param3)))
                     {
                        §§push(param2);
                     }
                  }
               }
            }
            §§push(§§pop() + §§pop());
         }
         return §§pop();
      }
   }
}

