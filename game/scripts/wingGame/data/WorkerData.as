package wingGame.data
{
   import §_-C2§.§_-5i§;
   
   public class WorkerData
   {
      public static const GENDER_MALE:String = "male";
      
      public static const GENDER_FEMALE:String = "female";
      
      public static var skinToneOptions:Array;
      
      public static var hairColorOptions:Array;
      
      public static var eyeDefaultOptions:Array;
      
      public static const HEAD_HEIGHT_MIN:Number = -10;
      
      public static const HEAD_HEIGHT_MAX:Number = 20;
      
      public static const HEAD_FORWARD_MIN:Number = -10;
      
      public static const HEAD_FORWARD_MAX:Number = 10;
      
      public static const HEAD_SCALE_MIN:Number = 0.9;
      
      public static const HEAD_SCALE_MAX:Number = 1.1;
      
      public static const EYE_HEIGHT_MAX:Number = 4;
      
      public static const MOUTH_HEIGHT_MIN:Number = -3;
      
      public static const MOUTH_HEIGHT_MAX:Number = 3;
      
      public static const EYE_STYLE_MAX:Number = 8;
      
      public static const MOUTH_STYLE_MAX:Number = 1;
      
      public static const MOUTH_DEFAULT_MAX:Number = 21;
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      if(!(_loc1_ && WorkerData))
      {
         GENDER_MALE = "male";
         if(!_loc1_)
         {
            GENDER_FEMALE = "female";
            skinToneOptions = [15977899,15511933,15783334,13537877,9592897,14523505,14132337,16299636,16768959];
            hairColorOptions = [4403756,2497293,10837812,16229207,10774566,9525553,5718573,5582342,9856033,8534556,13590576,16227607,16044913,16510613,16119025];
            eyeDefaultOptions = [1,13,4,5,6,9,10,11,12];
            if(!_loc1_)
            {
               HEAD_HEIGHT_MIN = -10;
               HEAD_HEIGHT_MAX = 20;
               HEAD_FORWARD_MIN = -10;
               HEAD_FORWARD_MAX = 10;
            }
            §§goto(addr112);
         }
         HEAD_SCALE_MIN = 0.9;
         HEAD_SCALE_MAX = 1.1;
      }
      
      public static const EYE_SPACING_MIN:Number = -1;
      
      public static const EYE_SPACING_MAX:Number = 3;
      
      public static const EYE_HEIGHT_MIN:Number = -4;
      
      if(!_loc1_)
      {
         EYE_HEIGHT_MAX = 4;
         addr112:
         MOUTH_HEIGHT_MIN = -3;
         if(!(_loc1_ && _loc1_))
         {
            MOUTH_HEIGHT_MAX = 3;
            EYE_STYLE_MAX = 8;
            if(!_loc1_)
            {
               addr137:
               MOUTH_STYLE_MAX = 1;
            }
            MOUTH_DEFAULT_MAX = 21;
         }
         return;
      }
      §§goto(addr137);
      
      public var gender:String = "male";
      
      public var skinTone:uint = 15977899;
      
      public var hairColor:uint = 4403756;
      
      public var eyeStyle:Number = 1;
      
      public var eyeDefaultExpression:Number = 1;
      
      public var eyeHeight:Number = 0;
      
      public var eyeSpacing:Number = 0;
      
      public var mouthStyle:Number = 1;
      
      public var mouthDefaultExpression:Number = 1;
      
      public var mouthHeight:Number = 0;
      
      public var headHeight:Number = 0;
      
      public var headScale:Number = 1;
      
      public var headForward:Number = 0;
      
      public var shirt:String = "";
      
      public var jacket:String = "";
      
      public var pants:String = "";
      
      public var hair:String = "";
      
      public var shoes:String = "";
      
      public var facialhair:String = "";
      
      public var acca:String = "";
      
      public var accb:String = "";
      
      public var accc:String = "";
      
      public var accd:String = "";
      
      public function WorkerData(param1:Object = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
         }
         var _loc2_:WorkerData = this;
         if(_loc3_ || _loc3_)
         {
            if(param1 != null)
            {
               if(!_loc4_)
               {
                  _loc2_.setupDefaults();
                  if(_loc4_ && Boolean(param1))
                  {
                  }
               }
               _loc2_.populateWorkerData(param1);
               if(_loc3_ || _loc3_)
               {
               }
            }
            else
            {
               _loc2_.setupDefaults();
            }
            §§goto(addr73);
         }
         addr73:
      }
      
      public function populateWorkerData(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:WorkerData = this;
         if(param1.hasOwnProperty("gender"))
         {
            if(_loc4_ || Boolean(param1))
            {
               _loc2_.gender = param1.gender;
               if(_loc4_ || Boolean(_loc2_))
               {
               }
               addr74:
               _loc2_.eyeDefaultExpression = param1.eyeDefaultExpression;
               if(!_loc3_)
               {
                  addr80:
                  if(param1.hasOwnProperty("eyeHeight"))
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc2_.eyeHeight = param1.eyeHeight;
                        if(_loc3_)
                        {
                        }
                        addr213:
                        _loc2_.pants = param1.pants;
                        addr217:
                        if(param1.hasOwnProperty("hair"))
                        {
                           if(_loc4_ || _loc3_)
                           {
                              addr228:
                              _loc2_.hair = param1.hair;
                              if(_loc4_ || Boolean(param1))
                              {
                              }
                              addr267:
                              _loc2_.facialhair = param1.facialhair;
                              if(!_loc3_)
                              {
                                 addr273:
                                 if(param1.hasOwnProperty("acca"))
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc2_.acca = param1.acca;
                                       if(_loc3_)
                                       {
                                       }
                                       §§goto(addr320);
                                    }
                                    addr299:
                                    _loc2_.accc = param1.accc;
                                    if(param1.hasOwnProperty("accd"))
                                    {
                                       if(_loc4_)
                                       {
                                          addr316:
                                          _loc2_.accd = param1.accd;
                                       }
                                    }
                                    §§goto(addr320);
                                 }
                              }
                           }
                           addr285:
                           if(param1.hasOwnProperty("accb"))
                           {
                              if(!_loc3_)
                              {
                                 _loc2_.accb = param1.accb;
                              }
                              §§goto(addr320);
                           }
                           if(!param1.hasOwnProperty("accc"))
                           {
                           }
                           §§goto(addr299);
                        }
                        if(param1.hasOwnProperty("shoes"))
                        {
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              _loc2_.shoes = param1.shoes;
                              if(_loc4_ || _loc3_)
                              {
                              }
                              §§goto(addr285);
                           }
                           §§goto(addr316);
                        }
                     }
                     addr133:
                     _loc2_.mouthHeight = param1.mouthHeight;
                     addr137:
                     if(param1.hasOwnProperty("headHeight"))
                     {
                        if(_loc4_)
                        {
                           addr143:
                           _loc2_.headHeight = param1.headHeight;
                        }
                        §§goto(addr267);
                     }
                     if(param1.hasOwnProperty("headScale"))
                     {
                        _loc2_.headScale = param1.headScale;
                     }
                     if(param1.hasOwnProperty("headForward"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           _loc2_.headForward = param1.headForward;
                           if(_loc4_ || Boolean(this))
                           {
                           }
                           addr194:
                           if(param1.hasOwnProperty("jacket"))
                           {
                              _loc2_.jacket = param1.jacket;
                              if(_loc4_ || Boolean(param1))
                              {
                              }
                           }
                           if(param1.hasOwnProperty("pants"))
                           {
                              §§goto(addr213);
                           }
                           §§goto(addr217);
                        }
                     }
                     if(param1.hasOwnProperty("shirt"))
                     {
                        if(_loc4_)
                        {
                           addr190:
                           _loc2_.shirt = param1.shirt;
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr194);
                  }
                  if(param1.hasOwnProperty("eyeSpacing"))
                  {
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.eyeSpacing = param1.eyeSpacing;
                     }
                  }
                  if(param1.hasOwnProperty("mouthDefaultExpression"))
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                     }
                     §§goto(addr143);
                  }
                  addr127:
                  if(param1.hasOwnProperty("mouthHeight"))
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr133);
                     }
                     §§goto(addr228);
                  }
                  §§goto(addr137);
               }
               _loc2_.mouthDefaultExpression = param1.mouthDefaultExpression;
               §§goto(addr127);
            }
            if(param1.hasOwnProperty("facialhair"))
            {
               if(_loc4_)
               {
                  §§goto(addr228);
               }
               addr320:
               return;
            }
            §§goto(addr273);
         }
         if(param1.hasOwnProperty("skinTone"))
         {
            _loc2_.skinTone = param1.skinTone;
         }
         if(param1.hasOwnProperty("hairColor"))
         {
            if(_loc4_ || Boolean(param1))
            {
               _loc2_.hairColor = param1.hairColor;
            }
            §§goto(addr190);
         }
         if(param1.hasOwnProperty("eyeStyle"))
         {
            _loc2_.eyeStyle = param1.eyeStyle;
         }
         if(param1.hasOwnProperty("eyeDefaultExpression"))
         {
            §§goto(addr74);
         }
         §§goto(addr80);
      }
      
      public function getDataToSave() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:WorkerData = this;
         var _loc2_:Object = new Object();
         if(_loc3_)
         {
            _loc2_.gender = _loc1_.gender;
            _loc2_.skinTone = _loc1_.skinTone;
            _loc2_.hairColor = _loc1_.hairColor;
            if(!_loc4_)
            {
               _loc2_.eyeStyle = _loc1_.eyeStyle;
               _loc2_.eyeDefaultExpression = _loc1_.eyeDefaultExpression;
               _loc2_.eyeHeight = _loc1_.eyeHeight;
               _loc2_.eyeSpacing = _loc1_.eyeSpacing;
            }
            §§goto(addr105);
         }
         _loc2_.mouthStyle = _loc1_.mouthStyle;
         _loc2_.mouthDefaultExpression = _loc1_.mouthDefaultExpression;
         _loc2_.mouthHeight = _loc1_.mouthHeight;
         _loc2_.headHeight = _loc1_.headHeight;
         if(!_loc4_)
         {
            _loc2_.headScale = _loc1_.headScale;
            _loc2_.headForward = _loc1_.headForward;
            if(_loc3_)
            {
               _loc2_.shirt = _loc1_.shirt;
               _loc2_.jacket = _loc1_.jacket;
               _loc2_.pants = _loc1_.pants;
               if(!_loc4_)
               {
                  _loc2_.hair = _loc1_.hair;
                  §§goto(addr105);
               }
               addr105:
               _loc2_.shoes = _loc1_.shoes;
               if(_loc3_)
               {
                  _loc2_.facialhair = _loc1_.facialhair;
                  if(!_loc4_)
                  {
                     addr117:
                     _loc2_.acca = _loc1_.acca;
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr123);
            }
            §§goto(addr117);
         }
         addr123:
         _loc2_.accb = _loc1_.accb;
         _loc2_.accc = _loc1_.accc;
         _loc2_.accd = _loc1_.accd;
         addr142:
         return _loc2_;
      }
      
      public function setupPremadeMale() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:WorkerData = this;
         _loc1_.gender = WorkerData.GENDER_MALE;
         _loc1_.skinTone = 15511933;
         if(_loc2_)
         {
            _loc1_.hairColor = 10837812;
            if(_loc2_)
            {
               _loc1_.eyeStyle = 1;
               if(_loc3_ && Boolean(_loc1_))
               {
               }
               _loc1_.mouthDefaultExpression = 1;
               _loc1_.mouthHeight = -1;
               _loc1_.headHeight = 0;
               addr52:
               if(!_loc3_)
               {
                  _loc1_.headScale = 1;
                  _loc1_.headForward = 0;
                  _loc1_.shirt = "shirt_00_male";
                  _loc1_.jacket = "";
                  _loc1_.pants = "pants_01_male";
                  _loc1_.hair = "hair_chuck_1";
                  if(_loc2_)
                  {
                     _loc1_.shoes = "shoes1";
                     _loc1_.facialhair = "";
                     _loc1_.acca = "body_puka";
                     _loc1_.accb = "belt_01_male";
                     if(_loc3_ && _loc3_)
                     {
                     }
                  }
               }
               §§goto(addr119);
            }
            _loc1_.accc = "pukawrist";
            addr119:
            _loc1_.accd = "";
            return;
         }
         _loc1_.eyeDefaultExpression = 11;
         _loc1_.eyeHeight = 2;
         _loc1_.eyeSpacing = 2;
         _loc1_.mouthStyle = 1;
         §§goto(addr52);
      }
      
      public function setupPremadeFemale() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:WorkerData = this;
         if(!_loc2_)
         {
            _loc1_.gender = WorkerData.GENDER_FEMALE;
            if(_loc3_)
            {
               _loc1_.skinTone = 15714219;
               _loc1_.hairColor = 7684124;
               _loc1_.eyeStyle = 5;
               _loc1_.eyeDefaultExpression = 1;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.eyeHeight = 0;
                  if(_loc3_)
                  {
                     _loc1_.eyeSpacing = 1;
                     if(!_loc2_)
                     {
                        _loc1_.mouthStyle = 1;
                        _loc1_.mouthDefaultExpression = 1;
                     }
                     addr119:
                     _loc1_.facialhair = "";
                     if(_loc3_)
                     {
                        addr124:
                        _loc1_.acca = "";
                        _loc1_.accb = "belt_02_female";
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.accc = "";
                           if(_loc3_)
                           {
                           }
                        }
                        §§goto(addr152);
                     }
                  }
                  _loc1_.mouthHeight = 0;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.headHeight = 3;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.headScale = 1;
                        _loc1_.headForward = 0;
                        if(_loc2_)
                        {
                        }
                        addr114:
                        _loc1_.shoes = "shoes1";
                        if(!_loc2_)
                        {
                           §§goto(addr119);
                        }
                     }
                  }
                  §§goto(addr152);
               }
               _loc1_.accd = "";
               addr152:
               return;
            }
            _loc1_.shirt = "shirt_00_female";
            _loc1_.jacket = "";
            _loc1_.pants = "pants_01_female";
            if(_loc2_ && Boolean(this))
            {
            }
            §§goto(addr124);
         }
         _loc1_.hair = "hair_mandi_1";
         §§goto(addr114);
      }
      
      public function setupDefaults() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:WorkerData = this;
         _loc1_.gender = WorkerData.GENDER_MALE;
         _loc1_.skinTone = 15977899;
         _loc1_.hairColor = 4403756;
         _loc1_.eyeStyle = 1;
         if(_loc2_)
         {
            _loc1_.eyeDefaultExpression = 1;
            if(!_loc3_)
            {
               _loc1_.eyeHeight = 0;
               if(!_loc3_)
               {
                  _loc1_.eyeSpacing = 0;
                  if(_loc2_)
                  {
                  }
                  addr77:
                  _loc1_.headForward = 0;
                  _loc1_.shirt = "shirt_00_male";
                  if(_loc2_)
                  {
                     _loc1_.jacket = "";
                     _loc1_.pants = "pants_01_male";
                     addr91:
                     _loc1_.hair = "hair_short_1";
                  }
                  addr119:
                  _loc1_.accb = "";
                  _loc1_.accc = "";
                  _loc1_.accd = "";
               }
               _loc1_.mouthStyle = 1;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mouthDefaultExpression = 1;
                  _loc1_.mouthHeight = 0;
                  if(!_loc3_)
                  {
                     _loc1_.headHeight = 0;
                     _loc1_.headScale = 1;
                     §§goto(addr77);
                  }
                  §§goto(addr91);
               }
            }
            _loc1_.shoes = "shoes1";
            _loc1_.facialhair = "";
            if(!_loc3_)
            {
               _loc1_.acca = "";
               if(_loc3_ && Boolean(this))
               {
               }
               §§goto(addr77);
            }
            §§goto(addr119);
         }
      }
      
      public function setGender(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:WorkerData = this;
         _loc2_.gender = param1;
         §§push(_loc2_.gender);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(WorkerData.GENDER_MALE);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() == §§pop())
               {
                  _loc2_.shirt = "shirt_00_male";
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     _loc2_.hair = "hair_short_1";
                  }
                  _loc2_.pants = "pants_01_male";
               }
               else
               {
                  §§push(_loc2_.gender);
               }
               §§goto(addr97);
            }
            §§goto(addr66);
         }
         addr66:
         if(§§pop() == §§pop())
         {
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.shirt = "shirt_00_female";
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.hair = "hair_ponytailbangs_1";
                  _loc2_.pants = "pants_01_female";
               }
            }
         }
         addr97:
         WorkerData.GENDER_FEMALE;
      }
      
      public function adjustValue(param1:String, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:WorkerData = this;
         if(param1 == "eyeHeight")
         {
            §§push(param2);
            if(!(_loc4_ && Boolean(param2)))
            {
               §§push(WorkerData.EYE_HEIGHT_MIN);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  if(§§pop() >= §§pop() && param2 <= WorkerData.EYE_HEIGHT_MAX)
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        _loc3_.eyeHeight = param2;
                     }
                     addr90:
                  }
                  else
                  {
                     §§push(param2);
                     §§push(WorkerData.EYE_HEIGHT_MIN);
                     if(_loc5_ || Boolean(param1))
                     {
                        if(§§pop() < §§pop())
                        {
                           _loc3_.eyeHeight = WorkerData.EYE_HEIGHT_MIN;
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              §§goto(addr90);
                           }
                        }
                        else
                        {
                           §§push(param2);
                           §§push(WorkerData.EYE_HEIGHT_MAX);
                           if(!_loc4_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 _loc3_.eyeHeight = WorkerData.EYE_HEIGHT_MAX;
                              }
                              §§goto(addr90);
                           }
                           else
                           {
                              addr353:
                              if(§§pop() < §§pop())
                              {
                                 _loc3_.headForward = WorkerData.HEAD_FORWARD_MIN;
                                 addr383:
                              }
                              else
                              {
                                 §§push(param2);
                                 §§push(WorkerData.HEAD_FORWARD_MAX);
                                 if(_loc5_)
                                 {
                                 }
                              }
                           }
                        }
                        addr667:
                        addr668:
                        if(§§pop() <= §§pop())
                        {
                           addr669:
                           _loc3_.mouthDefaultExpression = param2;
                        }
                        else
                        {
                           §§push(param2);
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              addr682:
                              if(§§pop() < 1)
                              {
                                 addr683:
                                 _loc3_.mouthDefaultExpression = 1;
                              }
                              else
                              {
                                 §§push(param2);
                              }
                           }
                           addr690:
                           if(§§pop() > WorkerData.MOUTH_DEFAULT_MAX)
                           {
                              if(!_loc4_)
                              {
                                 addr693:
                                 _loc3_.mouthDefaultExpression = WorkerData.MOUTH_DEFAULT_MAX;
                                 if(_loc5_)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        addr417:
                        if(§§pop() >= §§pop())
                        {
                           §§push(param2);
                           if(_loc5_ || Boolean(param2))
                           {
                              if(§§pop() > WorkerData.HEAD_SCALE_MAX)
                              {
                                 _loc3_.headScale = WorkerData.HEAD_SCALE_MAX;
                              }
                              addr440:
                           }
                        }
                        addr663:
                        §§push(WorkerData.MOUTH_DEFAULT_MAX);
                        if(!_loc4_)
                        {
                           §§goto(addr667);
                        }
                        §§goto(addr690);
                     }
                     _loc3_.headScale = WorkerData.HEAD_SCALE_MIN;
                     if(_loc5_)
                     {
                        §§goto(addr440);
                     }
                     else
                     {
                        addr444:
                        §§push(param2);
                        if(!(_loc4_ && Boolean(param2)))
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              addr456:
                              §§push(§§pop() > §§pop());
                              if(§§pop() > §§pop())
                              {
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§pop();
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr473:
                                       §§push(param2 <= WorkerData.EYE_STYLE_MAX);
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr669);
                                    }
                                    §§goto(addr667);
                                 }
                                 addr560:
                                 §§pop();
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    §§push(param2);
                                    §§push(WorkerData.eyeDefaultOptions);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() < §§pop().length);
                                       if(_loc5_)
                                       {
                                          addr577:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr580:
                                                _loc3_.eyeDefaultExpression = WorkerData.eyeDefaultOptions[param2];
                                                if(!(_loc4_ && Boolean(_loc3_)))
                                                {
                                                   addr634:
                                                }
                                             }
                                             else
                                             {
                                                addr662:
                                                §§push(param2);
                                             }
                                             §§goto(addr667);
                                          }
                                          else
                                          {
                                             §§push(param2);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                             }
                                             §§goto(addr690);
                                          }
                                       }
                                    }
                                    addr623:
                                    if(§§pop() >= §§pop().length)
                                    {
                                       _loc3_.eyeDefaultExpression = WorkerData.eyeDefaultOptions[WorkerData.eyeDefaultOptions.length - 1];
                                    }
                                    §§goto(addr634);
                                 }
                                 §§goto(addr669);
                              }
                              addr479:
                              if(§§pop())
                              {
                                 addr480:
                                 _loc3_.eyeStyle = param2;
                                 if(!(_loc5_ || Boolean(_loc3_)))
                                 {
                                    §§goto(addr580);
                                 }
                                 else
                                 {
                                    addr536:
                                 }
                              }
                              else
                              {
                                 §§push(param2);
                                 §§push(1);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          _loc3_.eyeStyle = 1;
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§goto(addr536);
                                          }
                                          else
                                          {
                                             §§goto(addr580);
                                          }
                                       }
                                       else
                                       {
                                          addr619:
                                       }
                                    }
                                    else
                                    {
                                       §§push(param2);
                                       if(!(_loc5_ || Boolean(param1)))
                                       {
                                          §§goto(addr663);
                                       }
                                    }
                                    §§goto(addr667);
                                 }
                                 else
                                 {
                                    addr610:
                                    if(§§pop() < §§pop())
                                    {
                                       _loc3_.eyeDefaultExpression = WorkerData.eyeDefaultOptions[0];
                                       if(!_loc4_)
                                       {
                                          §§goto(addr619);
                                       }
                                       else
                                       {
                                          §§goto(addr683);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr623);
                                       §§push(param2);
                                       §§push(WorkerData.eyeDefaultOptions);
                                    }
                                 }
                              }
                              §§goto(addr634);
                           }
                           else
                           {
                              addr642:
                              §§push(§§pop() > §§pop());
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 addr651:
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr668);
                              }
                           }
                           addr654:
                           §§pop();
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              §§goto(addr662);
                           }
                           §§goto(addr669);
                        }
                        if(§§pop() > WorkerData.EYE_STYLE_MAX)
                        {
                           _loc3_.eyeStyle = WorkerData.EYE_STYLE_MAX;
                           if(!_loc5_)
                           {
                              §§goto(addr683);
                           }
                        }
                        §§goto(addr536);
                     }
                  }
               }
               addr371:
               if(§§pop() > §§pop())
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     _loc3_.headForward = WorkerData.HEAD_FORWARD_MAX;
                  }
                  else
                  {
                     §§goto(addr473);
                  }
               }
               §§goto(addr383);
            }
            §§push(0);
            if(_loc5_ || Boolean(_loc3_))
            {
               §§goto(addr610);
            }
            else
            {
               §§goto(addr682);
            }
         }
         else if(param1 == "eyeSpacing")
         {
            if(_loc5_)
            {
               §§push(param2);
               if(_loc5_)
               {
                  §§push(WorkerData.EYE_SPACING_MIN);
                  if(_loc5_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        if(§§pop() && param2 <= WorkerData.EYE_SPACING_MAX)
                        {
                           _loc3_.eyeSpacing = param2;
                           addr158:
                        }
                        else
                        {
                           §§push(param2);
                           §§push(WorkerData.EYE_SPACING_MIN);
                           if(_loc5_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 _loc3_.eyeSpacing = WorkerData.EYE_SPACING_MIN;
                                 if(_loc5_)
                                 {
                                    §§goto(addr158);
                                 }
                              }
                              else
                              {
                                 §§push(param2);
                                 §§push(WorkerData.EYE_SPACING_MAX);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       _loc3_.eyeSpacing = WorkerData.EYE_SPACING_MAX;
                                       if(_loc5_ || Boolean(param2))
                                       {
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                                 else
                                 {
                                    §§goto(addr371);
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr353);
                           }
                           §§goto(addr667);
                        }
                     }
                     §§goto(addr479);
                  }
                  else
                  {
                     addr344:
                     if(§§pop() > §§pop())
                     {
                        §§goto(addr353);
                        §§push(param2);
                        §§push(WorkerData.HEAD_FORWARD_MIN);
                     }
                  }
                  _loc3_.headForward = param2;
                  §§goto(addr383);
               }
               §§goto(addr663);
            }
            else
            {
               addr236:
               §§push(param2);
               if(!(_loc5_ || Boolean(param1)))
               {
                  addr342:
                  §§goto(addr344);
                  §§push(WorkerData.HEAD_FORWARD_MAX);
               }
               §§goto(addr667);
            }
            if(§§pop())
            {
               _loc3_.headScale = param2;
               §§goto(addr440);
            }
            else
            {
               §§goto(addr417);
               §§push(param2);
               §§push(WorkerData.HEAD_SCALE_MIN);
            }
         }
         else if(param1 == "mouthHeight")
         {
            §§push(param2 >= WorkerData.MOUTH_HEIGHT_MIN);
            if(param2 >= WorkerData.MOUTH_HEIGHT_MIN)
            {
               §§pop();
               if(_loc5_)
               {
                  §§push(param2);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(WorkerData.MOUTH_HEIGHT_MAX);
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() <= §§pop());
                     }
                     else
                     {
                        §§goto(addr291);
                     }
                     §§goto(addr690);
                  }
                  §§goto(addr667);
               }
               else
               {
                  §§goto(addr268);
               }
            }
            if(§§pop())
            {
               _loc3_.mouthHeight = param2;
            }
            else if(param2 < WorkerData.MOUTH_HEIGHT_MIN)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  _loc3_.mouthHeight = WorkerData.MOUTH_HEIGHT_MIN;
               }
               else
               {
                  §§goto(addr321);
               }
            }
            else if(param2 > WorkerData.MOUTH_HEIGHT_MAX)
            {
               _loc3_.mouthHeight = WorkerData.MOUTH_HEIGHT_MAX;
               if(_loc4_ && Boolean(param1))
               {
                  §§goto(addr444);
               }
            }
         }
         else if(param1 == "headHeight")
         {
            if(!(_loc4_ && Boolean(this)))
            {
               §§goto(addr236);
            }
            §§goto(addr669);
         }
         else if(param1 == "headForward")
         {
            §§push(param2 >= WorkerData.HEAD_FORWARD_MIN);
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§goto(addr342);
                     §§push(param2);
                  }
                  §§goto(addr654);
               }
               §§goto(addr344);
            }
            else
            {
               §§goto(addr456);
            }
         }
         else
         {
            §§push(param1);
            if(_loc5_ || Boolean(param1))
            {
               if(§§pop() == "headScale")
               {
                  §§goto(addr394);
               }
               else if(param1 != "eyeStyle")
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     if(§§pop() == "eyeDefault")
                     {
                        §§push(param2);
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              §§push(§§pop() >= §§pop());
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr559);
                                 }
                                 else
                                 {
                                    §§goto(addr651);
                                 }
                              }
                              §§goto(addr560);
                           }
                           else
                           {
                              §§goto(addr642);
                           }
                        }
                        else
                        {
                           §§goto(addr639);
                        }
                        §§goto(addr682);
                     }
                     else
                     {
                        §§push(param1);
                     }
                  }
               }
               §§goto(addr444);
            }
            if(§§pop() == "mouthDefault")
            {
               §§goto(addr639);
               §§push(param2);
            }
            else
            {
               §§push(§_-5i§);
               §§push("No such type: " + param1);
               if(_loc5_ || Boolean(this))
               {
                  §§push(§§pop() + " (Value ");
                  if(_loc5_ || Boolean(param2))
                  {
                  }
                  addr738:
                  §§pop().error(§§pop() + ")");
                  addr736:
               }
               §§push(§§pop() + param2);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  §§goto(addr736);
               }
               §§goto(addr738);
            }
         }
      }
   }
}

