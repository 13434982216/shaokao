package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-C2§.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getDefinitionByName;
   import wingGame.data.*;
   
   public class MiniGameScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var miniGame:MiniGame;
      
      public var forceGame:String = "";
      
      public var whichGame:String = "none";
      
      public var possibleGames:Array;
      
      public var wonPrizeSKU:String = null;
      
      public var wonPrizeAmount:Number = 0;
      
      public var wonPrizeIsClothing:Boolean = false;
      
      public var wonPrizeClothingMode:String = "";
      
      public var clickedPlay:Boolean = false;
      
      public var didPlayApplause:Boolean = false;
      
      public var minigameMusic:SoundChannel;
      
      public var minigameFiller:SoundChannel;
      
      public var musicVolume:Number = 0;
      
      public var musicVolumeSpeed:Number = 0.05;
      
      public var shouldPlayMusic:Boolean = false;
      
      public var mannequinColor:uint = 14540253;
      
      public function MiniGameScreen(param1:§_-BY§, param2:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.possibleGames = [MiniGame.TYPE_CRAVINGS,MiniGame.TYPE_PACHINKO,MiniGame.TYPE_BURGERZILLA,MiniGame.TYPE_HOTSHOT,MiniGame.TYPE_PUTT,MiniGame.TYPE_HALLWAY,MiniGame.TYPE_BLAST];
            if(_loc4_)
            {
               super();
            }
         }
         var _loc3_:MiniGameScreen = this;
         if(_loc4_)
         {
            _loc3_.gameObj = param1;
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               _loc3_.forceGame = param2;
               if(_loc5_ && Boolean(_loc3_))
               {
               }
               §§goto(addr77);
            }
         }
         _loc3_.setupScreen();
         addr77:
      }
      
      public function setupScreen() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:MiniGameScreen = this;
         if(!(_loc4_ && Boolean(this)))
         {
            _loc1_.clip = new miniGameScreenMC();
            if(_loc3_)
            {
               _loc1_.clip.x = 320;
               _loc1_.clip.y = 240;
               _loc1_.gameObj.§_-BG§.addChild(_loc1_.clip);
               if(!_loc4_)
               {
                  if(_loc1_.forceGame != "")
                  {
                     _loc1_.whichGame = _loc1_.forceGame;
                     addr99:
                     _loc1_.clip.logo.gotoAndStop(_loc1_.whichGame);
                     if(!_loc4_)
                     {
                        _loc1_.clip.hud.count.tickets_txt.text = String(_loc1_.gameObj.userData.getTicketsTotal());
                        addr119:
                        _loc1_.clip.skip_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSkip);
                        _loc1_.clip.play_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPlay);
                     }
                     addr245:
                     _loc1_.gameObj.soundManager.playSound("minigame_theme");
                     _loc1_.minigameMusic = _loc1_.gameObj.soundManager.playSound("minigame_music",true,0);
                     _loc1_.minigameFiller = _loc1_.gameObj.soundManager.playSound("minigame_fill",true);
                     addr242:
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
                        addr278:
                        §§push(_loc1_.gameObj.userData);
                        if(_loc3_)
                        {
                           if(§§pop().hasTrainedMinigame == false)
                           {
                              _loc1_.clip.trainingclip.visible = true;
                           }
                           else
                           {
                              _loc1_.clip.trainingclip.visible = false;
                           }
                           §§goto(addr309);
                        }
                        §§goto(addr301);
                     }
                     §§push(_loc1_.gameObj);
                  }
                  else
                  {
                     §§push(_loc1_.gameObj);
                     if(!_loc4_)
                     {
                        §§push(§§pop().userData);
                        if(_loc3_)
                        {
                           §§push(§§pop().getDay());
                           if(!_loc4_)
                           {
                              §§push(7);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(§§pop() % §§pop());
                                 if(_loc4_ && Boolean(_loc1_))
                                 {
                                 }
                                 addr202:
                                 §§push(0);
                              }
                              if(§§pop() <= §§pop())
                              {
                                 _loc1_.clip.logo.gotoAndStop("notickets");
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    addr216:
                                    _loc1_.clip.gotoAndPlay("notickets");
                                    _loc1_.clip.foodini.gotoAndPlay("lose");
                                    _loc1_.clip.play_btn.visible = false;
                                 }
                                 §§goto(addr242);
                              }
                              §§push(_loc1_.gameObj.soundManager);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§pop().switchMusic("none");
                                 §§goto(addr242);
                              }
                              §§goto(addr245);
                           }
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc4_ && _loc3_))
                              {
                                 _loc1_.whichGame = _loc1_.possibleGames[_loc2_];
                                 §§goto(addr99);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr301);
                     }
                  }
                  addr300:
                  addr301:
                  §§pop().hasTrainedMinigame = true;
                  addr309:
                  return;
                  §§push(§§pop().userData);
               }
            }
            _loc1_.clip.hud.gotoAndPlay(2);
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.clip.hud.title_txt.visible = false;
               _loc1_.clip.hud.stars.visible = false;
               if(_loc3_)
               {
                  _loc1_.clip.gotoAndPlay("intro");
                  if(_loc4_ && Boolean(_loc1_))
                  {
                  }
                  §§goto(addr99);
               }
               §§goto(addr216);
            }
            §§goto(addr278);
         }
         _loc1_.clip.foodini.gotoAndPlay("intro");
         §§push(_loc1_.gameObj);
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push(§§pop().userData);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               §§goto(addr202);
               §§push(§§pop().getTicketsTotal());
            }
            §§goto(addr278);
         }
         §§goto(addr300);
      }
      
      public function clickPlay(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MiniGameScreen = this;
         if(!_loc3_)
         {
            if(_loc2_.clip.currentLabel == "waiting")
            {
               if(_loc4_)
               {
               }
               addr38:
               _loc2_.clip.gotoAndPlay("hidetitle");
               if(_loc4_ || Boolean(param1))
               {
                  _loc2_.clip.trainingclip.visible = false;
               }
            }
            §§goto(addr61);
         }
         _loc2_.clickedPlay = true;
         if(!_loc3_)
         {
            §§goto(addr38);
         }
         addr61:
      }
      
      public function clickSkip(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MiniGameScreen = this;
         if(_loc4_)
         {
            if(_loc2_.clip.currentLabel == "waiting")
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.clickedPlay = false;
                  if(_loc3_ && _loc3_)
                  {
                  }
                  addr66:
                  _loc2_.clip.trainingclip.visible = false;
               }
            }
            §§goto(addr71);
         }
         _loc2_.clip.gotoAndPlay("hidetitle");
         if(_loc4_ || Boolean(param1))
         {
            §§goto(addr66);
         }
         addr71:
      }
      
      public function startMiniGame() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MiniGameScreen = this;
         if(_loc4_)
         {
            _loc1_.wonPrizeSKU = null;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.wonPrizeAmount = 0;
               if(!_loc3_)
               {
                  _loc1_.gameObj.userData.useTicket(1);
                  if(_loc4_ || Boolean(this))
                  {
                  }
               }
               _loc1_.clip.hud.count.tickets_txt.text = String(_loc1_.gameObj.userData.getTicketsTotal());
            }
         }
         var _loc2_:Number = Number(_loc1_.possibleGames.indexOf(_loc1_.whichGame));
         if(!_loc3_)
         {
            _loc1_.gameObj.userData.recordMinigamePlayed(_loc2_);
            §§push(_loc1_.whichGame);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               if(§§pop() == MiniGame.TYPE_PACHINKO)
               {
                  _loc1_.miniGame = new MiniGamePachinko(_loc1_,_loc1_.clip.holder);
               }
               else if(_loc1_.whichGame == MiniGame.TYPE_HALLWAY)
               {
                  if(!_loc3_)
                  {
                     _loc1_.miniGame = new MiniGameHallway(_loc1_,_loc1_.clip.holder);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(_loc1_.whichGame);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(§§pop() == MiniGame.TYPE_CRAVINGS)
                     {
                        _loc1_.miniGame = new MiniGameCravings(_loc1_,_loc1_.clip.holder);
                     }
                     else
                     {
                        §§push(_loc1_.whichGame);
                        if(_loc3_ && Boolean(_loc1_))
                        {
                        }
                        addr166:
                        if(§§pop() == MiniGame.TYPE_HOTSHOT)
                        {
                           _loc1_.miniGame = new MiniGameHotshot(_loc1_,_loc1_.clip.holder);
                        }
                        else
                        {
                           §§push(_loc1_.whichGame);
                           if(_loc4_ || _loc3_)
                           {
                              addr187:
                              §§push(MiniGame.TYPE_PUTT);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 addr196:
                                 if(§§pop() == §§pop())
                                 {
                                    _loc1_.miniGame = new MiniGamePutt(_loc1_,_loc1_.clip.holder);
                                 }
                                 else
                                 {
                                    §§push(_loc1_.whichGame);
                                 }
                              }
                              if(§§pop() != §§pop())
                              {
                                 _loc1_.miniGame = new MiniGamePachinko(_loc1_,_loc1_.clip.holder);
                              }
                           }
                        }
                     }
                  }
                  §§push(MiniGame.TYPE_BURGERZILLA);
                  if(_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        _loc1_.miniGame = new MiniGameBurgerzilla(_loc1_,_loc1_.clip.holder);
                     }
                     else
                     {
                        §§push(_loc1_.whichGame);
                        if(!_loc3_)
                        {
                           §§goto(addr166);
                        }
                        §§goto(addr187);
                     }
                  }
                  §§goto(addr196);
               }
               §§goto(addr235);
            }
            §§goto(addr187);
            §§push(MiniGame.TYPE_BLAST);
         }
         _loc1_.miniGame = new MiniGameBlast(_loc1_,_loc1_.clip.holder);
         addr235:
         _loc1_.shouldPlayMusic = true;
      }
      
      public function removeMiniGame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MiniGameScreen = this;
         if(!_loc3_)
         {
            §§push(_loc1_.miniGame);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  §§goto(addr74);
               }
               §§goto(addr48);
            }
            §§pop().destroy();
            if(_loc3_ && Boolean(_loc1_))
            {
            }
            §§goto(addr68);
         }
         _loc1_.miniGame = null;
         if(_loc2_)
         {
            addr48:
            _loc1_.clip.hud.title_txt.visible = false;
            if(!(_loc3_ && Boolean(this)))
            {
               addr68:
               _loc1_.clip.hud.stars.visible = false;
            }
            addr74:
            if(_loc2_)
            {
               §§push(_loc1_.miniGame);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function createFurniThumbnail(param1:FurniData) : MovieClip
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:* = NaN;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Class = null;
         var _loc13_:MovieClip = null;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc2_:MiniGameScreen = this;
         var _loc3_:MovieClip = null;
         var _loc4_:Number = 73;
         var _loc5_:Number = 70;
         if(_loc18_)
         {
            §§push(param1.type);
            if(!_loc19_)
            {
               §§push(FurniData.TYPE_FLOORING);
               if(!(_loc19_ && Boolean(_loc2_)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc19_ && Boolean(_loc3_)))
                     {
                        §§push(Number(String(param1.tag).split("floor")[1]));
                        if(_loc18_ || Boolean(this))
                        {
                           _loc6_ = §§pop();
                           if(!_loc18_)
                           {
                              addr156:
                              §§push(Number(String(param1.tag).split("wall")[1]));
                           }
                        }
                        _loc9_ = §§pop();
                     }
                     _loc3_ = new MovieClip();
                     _loc7_ = new flooring_chunk();
                     _loc7_.gotoAndStop(_loc6_);
                     _loc8_ = new flooring_chunk();
                     _loc8_.gotoAndStop(_loc6_);
                     if(!(_loc19_ && Boolean(this)))
                     {
                        _loc8_.x = _loc7_.width;
                        if(_loc18_)
                        {
                           _loc3_.addChild(_loc7_);
                           if(!_loc19_)
                           {
                              _loc3_.addChild(_loc8_);
                              if(_loc18_)
                              {
                                 _loc3_.scaleX = 0.3;
                                 if(_loc18_)
                                 {
                                 }
                              }
                           }
                        }
                        _loc3_.scaleY = 0.3;
                     }
                  }
                  else
                  {
                     §§push(param1.type);
                  }
                  §§goto(addr419);
               }
               §§goto(addr153);
            }
            addr153:
            if(§§pop() == §§pop())
            {
               if(!_loc19_)
               {
                  §§goto(addr156);
               }
            }
            else
            {
               _loc12_ = getDefinitionByName(param1.tag) as Class;
               _loc13_ = new _loc12_();
               _loc14_ = _loc13_.height / _loc13_.width;
               §§push(_loc13_.width / _loc13_.height);
               if(_loc18_)
               {
                  _loc15_ = §§pop();
                  if(!_loc19_)
                  {
                     §§push(_loc13_.height > _loc5_);
                     if(_loc18_ || Boolean(_loc2_))
                     {
                        if(!§§pop())
                        {
                           if(_loc18_ || Boolean(param1))
                           {
                              §§pop();
                              §§push(_loc13_.width > _loc4_);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc13_.height > _loc13_.width)
                        {
                           _loc13_.height = _loc5_;
                           _loc13_.width = _loc13_.height * _loc15_;
                        }
                        else
                        {
                           _loc13_.width = _loc4_;
                           _loc13_.height = _loc13_.width * _loc14_;
                           if(_loc18_)
                           {
                           }
                        }
                        addr382:
                        _loc13_.x = _loc16_;
                        _loc13_.y = _loc5_ - _loc17_;
                        if(_loc18_ || Boolean(_loc2_))
                        {
                        }
                        _loc3_ = _loc13_;
                     }
                     addr365:
                     §§push(_loc4_ - _loc13_.width);
                     §§push(2);
                     if(!(_loc19_ && Boolean(param1)))
                     {
                        addr366:
                        §§push(§§pop() / §§pop());
                        if(!(_loc19_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(_loc19_ && Boolean(param1))
                           {
                           }
                           addr367:
                           _loc17_ = §§pop();
                           §§push(param1.type);
                           if(!(_loc19_ && Boolean(param1)))
                           {
                              §§push(FurniData.TYPE_FURNI);
                              if(_loc18_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr382);
                                 }
                                 else
                                 {
                                    §§push(param1.type);
                                 }
                                 §§goto(addr382);
                              }
                              addr402:
                              if(§§pop() == §§pop())
                              {
                                 _loc13_.x = _loc16_;
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr402);
                           §§push(FurniData.TYPE_POSTER);
                        }
                        §§goto(addr367);
                        §§push(§§pop());
                     }
                     §§goto(addr366);
                     §§push(§§pop() / §§pop());
                  }
                  _loc13_.y = _loc17_;
                  §§goto(addr382);
               }
               _loc16_ = §§pop();
               if(!(_loc19_ && Boolean(this)))
               {
                  §§push(_loc5_);
                  if(_loc18_)
                  {
                     §§push(§§pop() - _loc13_.height);
                  }
                  §§goto(addr365);
                  §§push(2);
               }
               §§goto(addr382);
            }
            addr419:
            return _loc3_;
            §§push(FurniData.TYPE_WALLPAPER);
         }
         _loc3_ = new MovieClip();
         (_loc10_ = new wallpaper_holder()).gotoAndStop(_loc9_);
         (_loc11_ = new wallpaper_holder()).gotoAndStop(_loc9_);
         if(_loc18_ || Boolean(this))
         {
            _loc11_.x = _loc10_.width;
            if(!(_loc19_ && Boolean(param1)))
            {
               _loc3_.addChild(_loc10_);
               if(_loc19_ && Boolean(param1))
               {
               }
            }
            _loc3_.addChild(_loc11_);
            if(_loc18_ || Boolean(_loc2_))
            {
               _loc3_.scaleX = 0.28;
               if(_loc19_)
               {
               }
            }
            addr239:
            §§goto(addr419);
         }
         _loc3_.scaleY = 0.28;
         §§goto(addr239);
      }
      
      private function createColorTransform(param1:Number) : ColorTransform
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ColorTransform = new ColorTransform();
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.redMultiplier = ((param1 & 0xFF0000) >>> 16) / 255;
            if(!_loc4_)
            {
               _loc2_.greenMultiplier = ((param1 & 0xFF00) >>> 8) / 255;
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.blueMultiplier = (param1 & 0xFF) / 255;
               }
            }
         }
         return _loc2_;
      }
      
      public function createClothingThumbnail(param1:ClothingItem) : MovieClip
      {
         var item:ClothingItem;
         var screen:MiniGameScreen;
         var data:ClothingData;
         var model:MovieClip;
         var sku:String;
         var skinTrans:ColorTransform;
         var maxWidth:Number;
         var maxHeight:Number;
         var bounds:Rectangle;
         var ratio:Number;
         var torsoPart:MovieClip;
         var bicepPart1:MovieClip;
         var bicepPart2:MovieClip;
         var forearmPart1:MovieClip;
         var forearmPart2:MovieClip;
         var neckPartShirt:MovieClip;
         var pantsPart:MovieClip;
         var frontPart:MovieClip;
         var backPart:MovieClip;
         var accneckPart:MovieClip;
         var armPart:MovieClip;
         var headPart:MovieClip;
         var backhairPart:MovieClip;
         var headaccPart:MovieClip;
         var shoePart:MovieClip;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               if(_loc4_ || _loc2_)
               {
                  §§push(NaN);
                  if(!_loc5_)
                  {
                     §§pop().§§slot[7] = §§pop();
                     §§push(§§newactivation());
                     §§push(NaN);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§pop().§§slot[8] = §§pop();
                        if(_loc4_ || Boolean(param1))
                        {
                           bounds = null;
                           if(!(_loc5_ && _loc3_))
                           {
                              §§goto(addr1510);
                           }
                           addr709:
                           model.neck.addChild(neckPartShirt);
                           addr715:
                           model.body.male_skin.transform.colorTransform = skinTrans;
                           if(!_loc5_)
                           {
                              §§push(§§newactivation());
                              if(_loc4_)
                              {
                                 §§pop().§§slot[4].body.female_skin.transform.colorTransform = skinTrans;
                                 if(_loc4_ || _loc3_)
                                 {
                                    model.neck.skin.transform.colorTransform = skinTrans;
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr757:
                                       model.front_forearm.skin.transform.colorTransform = skinTrans;
                                    }
                                    addr765:
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                       §§pop().§§slot[4].front_bicep.skin.transform.colorTransform = skinTrans;
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          §§pop().§§slot[4].back_forearm.skin.transform.colorTransform = skinTrans;
                                          model.back_bicep.skin.transform.colorTransform = skinTrans;
                                          if(!(_loc4_ || Boolean(param1)))
                                          {
                                             addr998:
                                             model.body.female_skin.visible = true;
                                             addr997:
                                             if(_loc4_)
                                             {
                                                addr1020:
                                                addr1022:
                                                §§push(data);
                                                §§push(sku);
                                                §§push(ClothingItem.OPTIONS_HAS_FRONTBODY);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(§§pop().clothingHasOption(§§pop(),§§pop()))
                                                   {
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         addr1042:
                                                         §§push(§§newactivation());
                                                         §§push(§_-CI§);
                                                         §§push("worker_" + item.tag);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() + "_front");
                                                         }
                                                         §§pop().§§slot[18] = §§pop().§_-2l§(§§pop(),false,false);
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§pop().§§slot[18].gotoAndStop(1);
                                                            addr1505:
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               addr1083:
                                                               §§push(§§newactivation());
                                                               if(_loc5_ && Boolean(this))
                                                               {
                                                               }
                                                               addr1347:
                                                               §§pop().§§slot[4] = new worker_mannequin_forearm();
                                                               armPart = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                                               §§push(§§newactivation());
                                                            }
                                                            backhairPart.gotoAndStop(1);
                                                            addr1510:
                                                            §§push(§§newactivation());
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               §§push(NaN);
                                                            }
                                                            §§pop().§§slot[4].back_hair.addChild(backhairPart);
                                                            try
                                                            {
                                                               addr1515:
                                                               §§push(§§newactivation());
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop().§§slot[23].hair.transform.colorTransform = screen.createColorTransform(screen.gameObj.workerData.hairColor);
                                                                  addr1551:
                                                                  model.head.inside.skin.transform.colorTransform = skinTrans;
                                                                  try
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§pop().§§slot[22].hair.transform.colorTransform = screen.createColorTransform(screen.gameObj.workerData.hairColor);
                                                                        addr1604:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr1656:
                                                                        §§pop().§§slot[24].gotoAndStop(1);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§pop().§§slot[4].head.inside.addChild(headaccPart);
                                                                              model.head.inside.skin.transform.colorTransform = skinTrans;
                                                                              model.removeChild(model.back_hair);
                                                                           }
                                                                           addr1954:
                                                                           if(§§pop().§§slot[9].y < 0 - maxHeight / 2)
                                                                           {
                                                                              addr2026:
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    addr1973:
                                                                                    §§pop().§§slot[4].y = 0 - maxHeight / 2 - bounds.y;
                                                                                 }
                                                                                 addr2067:
                                                                                 §§pop().§§slot[4].x = model.x + 32;
                                                                                 addr2074:
                                                                                 model.y += 32;
                                                                                 addr2083:
                                                                                 model.mouseEnabled = false;
                                                                                 addr2082:
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr2095:
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr2098:
                                                                                       §§pop().§§slot[4].mouseChildren = false;
                                                                                    }
                                                                                 }
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc5_ && Boolean(this)))
                                                                              {
                                                                                 §§goto(addr2067);
                                                                              }
                                                                              §§goto(addr2098);
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc5_ && Boolean(this)))
                                                                           {
                                                                              if(§§pop().§§slot[9].x + bounds.width > maxWidth / 2)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§pop().§§slot[4].x = maxWidth / 2 - (bounds.x + bounds.width);
                                                                                    §§goto(addr2026);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr2028:
                                                                                 if(bounds.x < 0 - maxWidth / 2)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc5_ && Boolean(param1)))
                                                                                       {
                                                                                          addr2047:
                                                                                          §§pop().§§slot[4].x = 0 - maxWidth / 2 - bounds.x;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr2095);
                                                                                 }
                                                                              }
                                                                              §§goto(addr2026);
                                                                           }
                                                                           §§goto(addr2083);
                                                                        }
                                                                     }
                                                                     addr1849:
                                                                     model.width = maxWidth;
                                                                     model.height = maxWidth * ratio;
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr1911:
                                                                        bounds = model.getBounds(screen.gameObj);
                                                                        addr1909:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || Boolean(param1))
                                                                        {
                                                                           if(§§pop().§§slot[9].y + bounds.height > maxHeight / 2)
                                                                           {
                                                                              model.y = maxHeight / 2 - (bounds.y + bounds.height);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1954);
                                                                              §§push(§§newactivation());
                                                                           }
                                                                           §§goto(addr1954);
                                                                        }
                                                                        §§goto(addr1973);
                                                                     }
                                                                     §§goto(addr2074);
                                                                  }
                                                                  catch(err:Error)
                                                                  {
                                                                     var _loc3_:* = err;
                                                                     if(!(_loc5_ && Boolean(param1)))
                                                                     {
                                                                        §_-5i§.§_-CE§("Error coloring hair.");
                                                                     }
                                                                     §§goto(addr1604);
                                                                  }
                                                                  addr1544:
                                                               }
                                                               else
                                                               {
                                                                  addr1606:
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop().type);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(ClothingItem.TYPE_ACC_FACE);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§pop().§§slot[4] = new worker_mannequin_head();
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§pop().§§slot[24] = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                                                                       §§goto(addr1656);
                                                                                       §§push(§§newactivation());
                                                                                    }
                                                                                    §§goto(addr2047);
                                                                                 }
                                                                                 §§goto(addr2028);
                                                                              }
                                                                              §§goto(addr2067);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(item);
                                                                           }
                                                                        }
                                                                        addr1696:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc5_ && Boolean(param1)))
                                                                           {
                                                                              §§pop().§§slot[4] = new worker_mannequin_foot();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              §§goto(addr1954);
                                                                           }
                                                                           §§pop().§§slot[25] = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                                                           shoePart.gotoAndStop(1);
                                                                           model.front_foot.addChild(shoePart);
                                                                           if(!(_loc5_ && Boolean(this)))
                                                                           {
                                                                              model.front_foot.skin.gotoAndStop(1);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                              }
                                                                              §§goto(addr1909);
                                                                           }
                                                                           §§goto(addr1954);
                                                                        }
                                                                     }
                                                                     addr1694:
                                                                     §§goto(addr1696);
                                                                     §§push(ClothingItem.TYPE_SHOES);
                                                                  }
                                                                  §§goto(addr1694);
                                                                  §§push(§§pop().type);
                                                               }
                                                               addr1753:
                                                               §§push(§§newactivation());
                                                               §§push(64);
                                                               if(_loc4_ || Boolean(param1))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_ || Boolean(param1))
                                                                  {
                                                                     §§pop().§§slot[7] = §§pop();
                                                                     if(_loc4_ || Boolean(param1))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(64);
                                                                        }
                                                                        §§goto(addr2067);
                                                                     }
                                                                     §§goto(addr2082);
                                                                  }
                                                                  addr1888:
                                                                  §§pop().§§slot[10] = §§pop();
                                                                  model.height = maxHeight;
                                                                  addr1887:
                                                                  if(!(_loc5_ && Boolean(param1)))
                                                                  {
                                                                     model.width = maxHeight * ratio;
                                                                     §§goto(addr1909);
                                                                  }
                                                                  §§goto(addr1954);
                                                               }
                                                               §§push(§§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop().§§slot[8] = §§pop();
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     §§push(§§newactivation());
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§pop().§§slot[9] = §§pop().§§slot[4].getBounds(screen.gameObj);
                                                                     }
                                                                     §§goto(addr1911);
                                                                  }
                                                                  if(bounds.width > bounds.height)
                                                                  {
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop().§§slot[9].height / bounds.width);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                              }
                                                                              §§goto(addr1954);
                                                                           }
                                                                           §§goto(addr1887);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1874:
                                                                           §§push(§§pop().§§slot[9].width / bounds.height);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§goto(addr1887);
                                                                           }
                                                                        }
                                                                        §§goto(addr1888);
                                                                     }
                                                                     §§goto(addr2026);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     §§push(§§newactivation());
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§goto(addr1874);
                                                                     }
                                                                  }
                                                                  §§goto(addr1911);
                                                               }
                                                               §§pop().§§slot[10] = §§pop();
                                                               §§goto(addr1849);
                                                            }
                                                            catch(err:Error)
                                                            {
                                                               _loc3_ = err;
                                                               §§goto(addr1544);
                                                            }
                                                            return §§pop().§§slot[4];
                                                            §§push(§§newactivation());
                                                         }
                                                         §§pop().§§slot[21].gotoAndStop(1);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().§§slot[4].front_forearm.addChild(armPart);
                                                               addr1377:
                                                               §§push(§§newactivation());
                                                               if(!_loc5_)
                                                               {
                                                                  addr1380:
                                                                  §§pop().§§slot[4].front_forearm.skin.transform.colorTransform = skinTrans;
                                                                  addr1388:
                                                                  model.front_hand.skin.transform.colorTransform = skinTrans;
                                                               }
                                                               else
                                                               {
                                                                  addr1417:
                                                                  §§pop().§§slot[4] = new worker_mannequin_head();
                                                                  §§push(§§newactivation());
                                                               }
                                                            }
                                                            §§goto(addr1510);
                                                         }
                                                      }
                                                   }
                                                   addr1096:
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      addr1469:
                                                      §§push(§§pop().§§slot[3]);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push(sku);
                                                         §§push(ClothingItem.OPTIONS_HAS_BACKBODY);
                                                      }
                                                      if(§§pop().clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACK_HAIR))
                                                      {
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                         }
                                                         §§goto(addr1505);
                                                      }
                                                      else
                                                      {
                                                         model.removeChild(model.back_hair);
                                                      }
                                                      §§goto(addr1551);
                                                   }
                                                   addr1258:
                                                   §§pop().§§slot[4].body.female_skin.transform.colorTransform = skinTrans;
                                                   if(!_loc5_)
                                                   {
                                                      addr1268:
                                                      model.neck.skin.transform.colorTransform = skinTrans;
                                                   }
                                                   §§push(§§newactivation());
                                                }
                                                §§push(§§pop().clothingHasOption(§§pop(),§§pop()));
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         §§push(§_-CI§);
                                                         §§push("worker_" + item.tag);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() + "_back");
                                                         }
                                                         §§pop().§§slot[19] = §§pop().§_-2l§(§§pop(),false,false);
                                                         §§push(§§newactivation());
                                                         if(!_loc5_)
                                                         {
                                                            addr1146:
                                                            §§pop().§§slot[19].gotoAndStop(1);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr1156:
                                                               model.back_acca.addChild(backPart);
                                                            }
                                                            addr1242:
                                                            model.body.male_skin.transform.colorTransform = skinTrans;
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§goto(addr1258);
                                                               §§push(§§newactivation());
                                                            }
                                                            §§push(§§newactivation());
                                                            if(_loc4_)
                                                            {
                                                               §§pop().§§slot[4].back_forearm.skin.transform.colorTransform = skinTrans;
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  addr1323:
                                                                  model.back_bicep.skin.transform.colorTransform = skinTrans;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr1468:
                                                               §§goto(addr1469);
                                                               §§push(§§pop().§§slot[3]);
                                                            }
                                                            §§goto(addr1551);
                                                         }
                                                         §§goto(addr1388);
                                                      }
                                                   }
                                                   §§push(§§newactivation());
                                                   if(_loc5_ && Boolean(param1))
                                                   {
                                                      §§goto(addr1347);
                                                   }
                                                }
                                                addr1197:
                                                if(§§pop())
                                                {
                                                   addr1198:
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      addr1201:
                                                      §§push(§_-CI§);
                                                      §§push("worker_" + item.tag);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + "_neck");
                                                      }
                                                      §§pop().§§slot[20] = §§pop().§_-2l§(§§pop(),false,false);
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§pop().§§slot[20].gotoAndStop(1);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               §§pop().§§slot[4].neck.addChild(accneckPart);
                                                            }
                                                            §§goto(addr1268);
                                                         }
                                                         addr1467:
                                                         §§goto(addr1468);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr1380);
                                                   }
                                                   §§goto(addr1510);
                                                }
                                                §§goto(addr1242);
                                             }
                                             addr1482:
                                             §§push(§§newactivation());
                                             §§push(§_-CI§);
                                             §§push("worker_" + item.tag);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + "_back");
                                             }
                                             §§pop().§§slot[23] = §§pop().§_-2l§(§§pop(),false,false);
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§goto(addr1505);
                                             }
                                             §§goto(addr1515);
                                          }
                                          §§goto(addr1753);
                                       }
                                       §§push(§§pop().§§slot[3]);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr1186:
                                             §§push(§§pop().§§slot[5]);
                                             §§push(ClothingItem.OPTIONS_HAS_NECK);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr1197);
                                                §§push(§§pop().clothingHasOption(§§pop(),§§pop()));
                                             }
                                          }
                                       }
                                       §§goto(addr1469);
                                    }
                                    else
                                    {
                                       addr1399:
                                       §§push(§§pop().§§slot[1].type);
                                       if(!_loc5_)
                                       {
                                          addr1345:
                                          if(§§pop() == ClothingItem.TYPE_ACC_ARMS)
                                          {
                                             addr1346:
                                             §§goto(addr1347);
                                             §§push(§§newactivation());
                                          }
                                          else
                                          {
                                             addr1398:
                                             §§push(item.type);
                                          }
                                       }
                                       if(§§pop() == ClothingItem.TYPE_HAIR)
                                       {
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc5_ && Boolean(param1)))
                                             {
                                                §§goto(addr1417);
                                             }
                                             addr1448:
                                             §§pop().§§slot[22].gotoAndStop(1);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr1458:
                                                model.head.inside.addChild(headPart);
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr1505);
                                             }
                                             §§goto(addr1467);
                                          }
                                          §§goto(addr1482);
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                       }
                                    }
                                    §§goto(addr1606);
                                 }
                                 addr1422:
                                 §§pop().§§slot[22] = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr1440:
                                    §§push(§§newactivation());
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§goto(addr1448);
                                    }
                                    §§goto(addr1510);
                                 }
                                 §§goto(addr1505);
                              }
                              addr1276:
                              §§pop().§§slot[4].front_forearm.skin.transform.colorTransform = skinTrans;
                              §§push(§§newactivation());
                              if(_loc4_ || Boolean(this))
                              {
                                 §§pop().§§slot[4].front_bicep.skin.transform.colorTransform = skinTrans;
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§goto(addr1242);
                                 }
                                 else
                                 {
                                    §§goto(addr1377);
                                 }
                              }
                              §§goto(addr1510);
                           }
                           else
                           {
                              addr877:
                           }
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              §§pop().§§slot[17] = §_-CI§.§_-2l§("worker_" + item.tag);
                              pantsPart.gotoAndStop(1);
                              addr910:
                              §§push(§§newactivation());
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§pop().§§slot[4].body.addChild(pantsPart);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr938:
                                       §§pop().§§slot[4].body.male_skin.transform.colorTransform = skinTrans;
                                       model.body.female_skin.transform.colorTransform = skinTrans;
                                    }
                                    else
                                    {
                                       §§goto(addr1323);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr1083);
                                 }
                                 §§goto(addr1515);
                              }
                              else
                              {
                                 addr1007:
                                 §§pop().§§slot[4].body.male_skin.visible = true;
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    addr1015:
                                    §§pop().§§slot[4].body.female_skin.visible = false;
                                    §§goto(addr1020);
                                 }
                              }
                              §§goto(addr1258);
                           }
                           §§goto(addr1422);
                        }
                        addr325:
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§pop().§§slot[4] = new clothesthumb_none();
                           if(_loc4_)
                           {
                              §§goto(addr2026);
                           }
                           else
                           {
                              addr471:
                              §§push(§§newactivation());
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§push(§§pop().§§slot[3].clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BICEP));
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          §§push(§_-CI§);
                                          §§push("worker_" + item.tag);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(§§pop() + "_upperarm");
                                          }
                                          §§pop().§§slot[12] = §§pop().§_-2l§(§§pop(),false,false);
                                          bicepPart1.gotoAndStop(1);
                                          addr515:
                                          model.front_bicep.addChild(bicepPart1);
                                          addr652:
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§push(§§newactivation());
                                             §§push(§_-CI§);
                                             §§push("worker_" + item.tag);
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§push(§§pop() + "_upperarm");
                                             }
                                             §§pop().§§slot[13] = §§pop().§_-2l§(§§pop(),false,false);
                                             addr549:
                                             §§push(§§newactivation());
                                          }
                                          model.back_forearm.addChild(forearmPart2);
                                          §§push(data);
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr671:
                                             if(§§pop().clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
                                             {
                                                if(_loc4_)
                                                {
                                                   addr675:
                                                   §§push(§§newactivation());
                                                   §§push(§_-CI§);
                                                   §§push("worker_" + item.tag);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + "_neck");
                                                   }
                                                   §§pop().§§slot[16] = §§pop().§_-2l§(§§pop(),false,false);
                                                   if(_loc4_)
                                                   {
                                                      neckPartShirt.gotoAndStop(1);
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         §§goto(addr709);
                                                      }
                                                      else
                                                      {
                                                         addr869:
                                                         model.body.female_skin.visible = true;
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr877);
                                                         }
                                                      }
                                                      §§goto(addr1440);
                                                   }
                                                   §§goto(addr1482);
                                                }
                                                §§goto(addr1020);
                                             }
                                             §§goto(addr715);
                                          }
                                          §§goto(addr1022);
                                       }
                                       §§pop().§§slot[13].gotoAndStop(1);
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          model.back_bicep.addChild(bicepPart2);
                                       }
                                       §§goto(addr1515);
                                    }
                                    §§push(data);
                                    if(_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop().§§slot[5]);
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             §§push(ClothingItem.OPTIONS_HAS_FOREARM);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().clothingHasOption(§§pop(),§§pop()));
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr593:
                                                   if(§§pop())
                                                   {
                                                      §§push(§§newactivation());
                                                      §§push(§_-CI§);
                                                      §§push("worker_" + item.tag);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + "_forearm");
                                                      }
                                                      §§pop().§§slot[14] = §§pop().§_-2l§(§§pop(),false,false);
                                                      forearmPart1.gotoAndStop(1);
                                                      model.front_forearm.addChild(forearmPart1);
                                                      §§push(§§newactivation());
                                                      §§push(§_-CI§);
                                                      §§push("worker_" + item.tag);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + "_forearm");
                                                      }
                                                      §§pop().§§slot[15] = §§pop().§_-2l§(§§pop(),false,false);
                                                      forearmPart2.gotoAndStop(1);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr652);
                                                      }
                                                      §§goto(addr1198);
                                                   }
                                                   §§goto(addr652);
                                                }
                                                else
                                                {
                                                   addr822:
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      addr825:
                                                      §§push(item);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         addr838:
                                                         if(§§pop().type == ClothingItem.TYPE_ACC_BELT)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().§§slot[4] = new worker_mannequin_pants();
                                                               if(_loc4_)
                                                               {
                                                                  §§push(item);
                                                               }
                                                               §§goto(addr1156);
                                                            }
                                                            §§goto(addr1015);
                                                         }
                                                         else
                                                         {
                                                            §§push(item);
                                                         }
                                                         §§goto(addr1380);
                                                      }
                                                      if(§§pop().type == ClothingItem.TYPE_ACC_BODY)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr963:
                                                            model = new worker_mannequin_torso();
                                                            addr962:
                                                            §§push(§§newactivation());
                                                            if(!(_loc5_ && Boolean(param1)))
                                                            {
                                                               §§push(§§pop().§§slot[1]);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop().gender);
                                                                  if(!(_loc5_ && Boolean(param1)))
                                                                  {
                                                                     addr986:
                                                                     if(§§pop() == WorkerData.GENDER_FEMALE)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           model.body.male_skin.visible = false;
                                                                           §§goto(addr997);
                                                                        }
                                                                        §§goto(addr1042);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1007);
                                                                        §§push(§§newactivation());
                                                                     }
                                                                     §§goto(addr1258);
                                                                  }
                                                                  §§goto(addr1606);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1398);
                                                               }
                                                            }
                                                            §§goto(addr1083);
                                                         }
                                                         §§goto(addr1458);
                                                      }
                                                      else
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            §§goto(addr1399);
                                                         }
                                                      }
                                                      §§goto(addr1380);
                                                   }
                                                }
                                                §§goto(addr709);
                                             }
                                          }
                                          §§goto(addr671);
                                       }
                                       §§goto(addr1186);
                                    }
                                 }
                                 §§goto(addr1020);
                              }
                              §§goto(addr938);
                           }
                        }
                        else
                        {
                           addr804:
                           §§push(§§pop().§§slot[1]);
                           if(_loc4_)
                           {
                              §§push(§§pop().type);
                              if(!_loc5_)
                              {
                                 §§push(ClothingItem.TYPE_PANTS);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr821:
                                    §§push(§§pop() == §§pop());
                                    if(!(§§pop() == §§pop()))
                                    {
                                       §§goto(addr822);
                                    }
                                    §§goto(addr838);
                                 }
                                 §§goto(addr1399);
                              }
                              §§goto(addr986);
                           }
                        }
                        §§push(§§pop().gender);
                        if(_loc4_)
                        {
                           if(§§pop() == WorkerData.GENDER_FEMALE)
                           {
                              model.body.male_skin.visible = false;
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§goto(addr869);
                              }
                              §§goto(addr1458);
                           }
                           else
                           {
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 addr881:
                                 §§pop().§§slot[4].body.male_skin.visible = true;
                                 model.body.female_skin.visible = false;
                                 if(_loc4_)
                                 {
                                    §§goto(addr709);
                                 }
                                 else
                                 {
                                    §§goto(addr1346);
                                 }
                              }
                           }
                           §§goto(addr1380);
                        }
                        else
                        {
                           §§goto(addr986);
                        }
                     }
                  }
                  §§pop().§§slot[10] = §§pop();
                  §§push(§§newactivation());
                  §§push(null);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§pop().§§slot[11] = §§pop();
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              §§pop().§§slot[12] = §§pop();
                              bicepPart2 = null;
                              if(_loc4_ || _loc2_)
                              {
                                 forearmPart1 = null;
                                 forearmPart2 = null;
                                 if(!_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().§§slot[16] = null;
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§push(§§newactivation());
                                          §§push(null);
                                       }
                                       §§goto(addr869);
                                    }
                                    §§goto(addr1201);
                                 }
                                 §§goto(addr825);
                              }
                              addr456:
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[4].body.addChild(torsoPart);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr471);
                                 }
                                 §§goto(addr757);
                              }
                              §§goto(addr1469);
                           }
                           addr174:
                           §§pop().§§slot[20] = §§pop();
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              addr185:
                              armPart = null;
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                              }
                              §§goto(addr1422);
                           }
                           §§goto(addr675);
                        }
                        §§goto(addr1380);
                     }
                     §§goto(addr1007);
                  }
                  addr166:
                  §§pop().§§slot[19] = §§pop();
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        §§goto(addr174);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr1469);
               }
               §§pop().§§slot[4].body.addChild(frontPart);
               §§goto(addr1096);
            }
            §§pop().§§slot[17] = §§pop();
            if(!(_loc5_ && Boolean(this)))
            {
               frontPart = null;
               if(_loc4_ || Boolean(this))
               {
                  §§push(§§newactivation());
                  §§push(null);
                  if(!_loc5_)
                  {
                     §§goto(addr166);
                  }
                  addr210:
                  §§pop().§§slot[24] = §§pop();
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§pop().§§slot[25] = null;
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§pop().§§slot[1] = param1;
                           if(_loc4_ || Boolean(param1))
                           {
                              addr243:
                              screen = this;
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().§§slot[2]);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§pop().§§slot[3] = §§pop().gameObj.§_-1B§;
                                          §§push(§§newactivation());
                                          if(!_loc5_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_ && Boolean(this))
                                             {
                                             }
                                             addr307:
                                             §§push(§§pop().§§slot[2]);
                                          }
                                          §§goto(addr998);
                                       }
                                       §§pop().§§slot[6] = §§pop().createColorTransform(screen.mannequinColor);
                                    }
                                    §§push(§§pop().§§slot[1].tag);
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§push(§§pop());
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr307);
                                       §§push(§§newactivation());
                                       §§push(§§newactivation());
                                    }
                                    §§goto(addr877);
                                 }
                                 §§goto(addr881);
                              }
                              §§goto(addr549);
                           }
                           if(item == null)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§goto(addr325);
                              }
                              §§goto(addr1242);
                           }
                           else
                           {
                              §§push(item);
                              if(_loc4_ || Boolean(this))
                              {
                                 §§push(§§pop().type == ClothingItem.TYPE_SHIRT);
                                 §§push(§§pop().type == ClothingItem.TYPE_SHIRT);
                                 if(_loc4_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§pop();
                                          §§push(item.type == ClothingItem.TYPE_JACKET);
                                          if(_loc4_ || Boolean(this))
                                          {
                                          }
                                       }
                                       §§goto(addr593);
                                    }
                                    if(§§pop())
                                    {
                                       model = new worker_mannequin_torso();
                                       §§push(item.gender);
                                       if(!_loc5_)
                                       {
                                          §§push(WorkerData.GENDER_FEMALE);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                model.body.male_skin.visible = true;
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§§slot[4].body.female_skin.visible = false;
                                                      addr425:
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§push(§_-CI§);
                                                         §§push("worker_" + item.tag);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() + "_body");
                                                         }
                                                         §§pop().§§slot[11] = §§pop().§_-2l§(§§pop(),false,false);
                                                         §§push(§§newactivation());
                                                         if(_loc4_)
                                                         {
                                                         }
                                                         §§goto(addr1276);
                                                      }
                                                      §§pop().§§slot[11].gotoAndStop(1);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§goto(addr456);
                                                      }
                                                      §§goto(addr962);
                                                   }
                                                }
                                             }
                                             §§goto(addr910);
                                          }
                                          §§goto(addr1345);
                                       }
                                       §§goto(addr838);
                                    }
                                    else
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          §§goto(addr804);
                                       }
                                    }
                                    §§goto(addr1146);
                                 }
                                 §§goto(addr821);
                              }
                           }
                           §§goto(addr1398);
                        }
                        §§goto(addr652);
                     }
                     model.body.male_skin.visible = false;
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        §§pop().§§slot[4].body.female_skin.visible = true;
                        §§goto(addr425);
                     }
                     §§goto(addr998);
                  }
                  §§goto(addr963);
               }
               §§goto(addr515);
            }
            §§goto(addr709);
         }
         §§pop().§§slot[22] = null;
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(§§newactivation());
            if(_loc4_)
            {
               §§pop().§§slot[23] = null;
               if(_loc4_)
               {
                  §§goto(addr210);
                  §§push(§§newactivation());
                  §§push(null);
               }
               §§goto(addr765);
            }
            §§goto(addr243);
         }
         §§goto(addr1268);
      }
      
      public function startShowingPrize() : void
      {
         var ob:MiniGameScreen;
         var user:UserData;
         var minigameIndex:Number;
         var useTips:Number;
         var dollars:Number;
         var cents:Number;
         var textCents:String;
         var textDollars:String;
         var clothing:ClothingItem;
         var furniData:FurniData;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         §§push(NaN);
         if(!_loc4_)
         {
            §§pop().§§slot[3] = §§pop();
            §§push(§§newactivation());
            §§push(NaN);
            if(!_loc4_)
            {
               §§pop().§§slot[4] = §§pop();
               addr1127:
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§push(NaN);
               }
               §§push(§§pop().§§slot[1]);
               if(!_loc4_)
               {
                  addr1130:
                  §§pop().clip.prizepanel.furnipanel.effect_txt.text = "Face Accessory";
                  addr1136:
                  §§push(ob);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr1155);
               }
               addr1140:
               §§pop().clip.prizepanel.furnipanel.own_txt.visible = false;
               if(!(_loc4_ && Boolean(this)))
               {
                  addr1154:
                  addr1155:
                  §§pop().clip.prizepanel.furnipanel.own_label.visible = false;
                  try
                  {
                     addr1161:
                     if(ob.clip.prizepanel.furnipanel.thumb.numChildren > 0)
                     {
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc1_))
                           {
                              §§pop().§§slot[1].clip.prizepanel.furnipanel.thumb.removeChildAt(0);
                           }
                           else
                           {
                              addr1398:
                              §§push(§§pop().§§slot[1]);
                           }
                        }
                        else
                        {
                           addr1362:
                           §§push(ob);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§pop().clip.prizepanel.furnipanel.own_label.visible = true;
                              if(!_loc4_)
                              {
                                 try
                                 {
                                    §§push(ob);
                                    if(_loc3_)
                                    {
                                       addr1383:
                                       if(§§pop().clip.prizepanel.furnipanel.thumb.numChildren > 0)
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             §§goto(addr1398);
                                             §§push(§§newactivation());
                                          }
                                       }
                                    }
                                 }
                                 catch(err:Error)
                                 {
                                    if(!_loc4_)
                                    {
                                       §_-5i§.error("Error removing thumb.");
                                    }
                                    addr1424:
                                 }
                                 §§pop().clip.prizepanel.furnipanel.thumb.addChild(ob.createFurniThumbnail(furniData));
                              }
                              addr1405:
                              §§goto(addr1424);
                           }
                        }
                        addr1399:
                        §§pop().clip.prizepanel.furnipanel.thumb.removeChildAt(0);
                        §§goto(addr1405);
                     }
                     addr1211:
                     ob.clip.prizepanel.furnipanel.thumb.addChild(ob.createClothingThumbnail(clothing));
                  }
                  catch(err:Error)
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        §_-5i§.error("Error removing thumb.");
                     }
                     §§goto(addr1211);
                  }
                  return;
                  §§push(ob);
               }
               §§goto(addr1161);
            }
            §§pop().§§slot[5] = §§pop();
            if(_loc3_)
            {
               §§push(§§newactivation());
               §§push(NaN);
               if(!_loc4_)
               {
                  §§pop().§§slot[6] = §§pop();
                  if(_loc3_)
                  {
                     §§push(§§newactivation());
                     §§push(null);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(_loc3_ || Boolean(this))
                        {
                           §§pop().§§slot[7] = §§pop();
                           §§push(§§newactivation());
                           §§push(null);
                           if(_loc4_)
                           {
                           }
                           addr80:
                           §§pop().§§slot[10] = §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§newactivation());
                              if(!_loc4_)
                              {
                                 §§pop().§§slot[1] = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§newactivation());
                                    §§push(§§newactivation());
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§pop().§§slot[1]);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop().gameObj);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().§§slot[2] = §§pop().userData;
                                             §§push(ob.wonPrizeSKU);
                                             §§push("tips");
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   §§push(user);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop().§§slot[1]);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop().wonPrizeAmount);
                                                            if(!_loc4_)
                                                            {
                                                               §§pop().earnMinigameTips(§§pop());
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                               }
                                                               addr1103:
                                                               §§push(ob);
                                                               if(!_loc4_)
                                                               {
                                                                  addr1106:
                                                                  §§pop().clip.prizepanel.furnipanel.effect_txt.text = "Accessory";
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr1119:
                                                                  }
                                                                  §§goto(addr1136);
                                                               }
                                                               §§goto(addr1140);
                                                            }
                                                            addr542:
                                                            §§push(ob.wonPrizeSKU);
                                                            §§push("tips");
                                                         }
                                                         else
                                                         {
                                                            addr205:
                                                            §§push(§§pop().wonPrizeAmount);
                                                         }
                                                         §§pop().earnMinigameTickets(§§pop());
                                                      }
                                                      addr982:
                                                      §§goto(addr1136);
                                                   }
                                                   else
                                                   {
                                                      addr531:
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr532:
                                                         §§push(§§pop().§§slot[1]);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr262:
                                                            §§push(§§pop().wonPrizeSKU);
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  §§push(§§pop().§§slot[3]);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().earnMinigameFurniture(§§pop(),§§pop());
                                                                     §§goto(addr542);
                                                                  }
                                                                  §§goto(addr982);
                                                               }
                                                               addr534:
                                                               §§pop().earnMinigameClothing(§§pop(),§§pop());
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  §§goto(addr542);
                                                               }
                                                               §§goto(addr982);
                                                            }
                                                            addr533:
                                                            §§goto(addr534);
                                                            §§push(§§pop().§§slot[3]);
                                                         }
                                                         §§goto(addr533);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr532);
                                                      §§push(§§pop().wonPrizeSKU);
                                                   }
                                                   addr530:
                                                   §§goto(addr531);
                                                   §§push(§§pop().§§slot[1]);
                                                }
                                                else
                                                {
                                                   §§push(ob.wonPrizeSKU);
                                                   §§push("tickets");
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§push(§§pop().§§slot[2]);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     §§push(§§pop().§§slot[1]);
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        §§goto(addr205);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr262);
                                                                     }
                                                                  }
                                                                  §§goto(addr532);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr531);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr405:
                                                               §§push(§§pop().§§slot[2]);
                                                               if(!_loc4_)
                                                               {
                                                                  addr665:
                                                                  §§push(§§pop().whichCharacter);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(§§pop() == "marty")
                                                                     {
                                                                        §§push(ob);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr423:
                                                                                 §§push(§§pop().wonPrizeSKU);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() + "_premale");
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       addr435:
                                                                                       §§pop().wonPrizeSKU = §§pop();
                                                                                    }
                                                                                    addr947:
                                                                                    §§goto(addr1136);
                                                                                 }
                                                                                 addr486:
                                                                                 §§pop().wonPrizeSKU = §§pop();
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr947);
                                                                              }
                                                                              addr477:
                                                                              §§push(§§pop() + "_prefemale");
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr486);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr517:
                                                                                 §§pop().wonPrizeSKU = §§pop();
                                                                                 if(_loc3_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr1055:
                                                                              ob.clip.prizepanel.furnipanel.effect_txt.text = "Arm Accessory";
                                                                              §§goto(addr1136);
                                                                              addr1054:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr509:
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(!(_loc3_ || Boolean(this)))
                                                                              {
                                                                                 addr508:
                                                                                 §§push(§§pop().wonPrizeSKU);
                                                                              }
                                                                              §§goto(addr517);
                                                                              §§push(§§pop() + ("_" + ob.gameObj.workerData.gender));
                                                                           }
                                                                           §§push(§§pop().wonPrizeSKU);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr477);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr509);
                                                                           }
                                                                        }
                                                                        addr749:
                                                                        §§pop().clip.prizepanel.ticketpanel.visible = true;
                                                                        addr755:
                                                                        ob.clip.prizepanel.tipspanel.visible = false;
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr771:
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§pop().clip.prizepanel.ticketpanel.tickets_txt.text = String(ob.wonPrizeAmount);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr791:
                                                                                 §§pop().clip.prizepanel.furnipanel.visible = true;
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop().§§slot[1].clip.prizepanel.ticketpanel.visible = false;
                                                                                    addr974:
                                                                                    §§push(ob);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§pop().clip.prizepanel.tipspanel.visible = false;
                                                                                       addr822:
                                                                                       §§push(§§newactivation());
                                                                                       §§push(ob.gameObj);
                                                                                    }
                                                                                    §§pop().clip.prizepanel.furnipanel.effect_txt.text = "Pants";
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§goto(addr982);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr477);
                                                                                    }
                                                                                 }
                                                                                 addr971:
                                                                                 §§push(§§pop().§§slot[1]);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr974);
                                                                                 }
                                                                                 §§goto(addr1140);
                                                                              }
                                                                              §§goto(addr1136);
                                                                           }
                                                                           addr1038:
                                                                           §§push(§§pop().§§slot[9]);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop().type);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr1049:
                                                                                 if(§§pop() == ClothingItem.TYPE_ACC_ARMS)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr1054);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1126:
                                                                                       §§goto(addr1127);
                                                                                       §§push(§§newactivation());
                                                                                    }
                                                                                    §§goto(addr1127);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(clothing);
                                                                                    if(_loc4_ && _loc1_)
                                                                                    {
                                                                                    }
                                                                                    addr1122:
                                                                                    if(§§pop().type == ClothingItem.TYPE_ACC_FACE)
                                                                                    {
                                                                                       §§goto(addr1126);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1136);
                                                                              }
                                                                              addr1097:
                                                                              if(§§pop() == ClothingItem.TYPE_ACC_BODY)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr1161);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              §§goto(addr1136);
                                                                           }
                                                                           addr1075:
                                                                           if(§§pop().type == ClothingItem.TYPE_ACC_BELT)
                                                                           {
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 addr1084:
                                                                                 ob.clip.prizepanel.furnipanel.effect_txt.text = "Belt Accessory";
                                                                                 addr1091:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1119);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(clothing);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr1097);
                                                                                 §§push(§§pop().type);
                                                                              }
                                                                              §§goto(addr1122);
                                                                           }
                                                                           §§goto(addr1136);
                                                                        }
                                                                        §§push(ob);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().clip.prizepanel.furnipanel.title_txt.text = clothing.title;
                                                                           if(_loc3_)
                                                                           {
                                                                              addr844:
                                                                              §§push(§§newactivation());
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr847:
                                                                                 §§pop().§§slot[1].clip.prizepanel.furnipanel.info_txt.text = clothing.description;
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr864:
                                                                                    §§push(§§pop().§§slot[9]);
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       if(§§pop().type == ClothingItem.TYPE_SHIRT)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(ob);
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                §§pop().clip.prizepanel.furnipanel.effect_txt.text = "Shirt";
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr939:
                                                                                                §§pop().clip.prizepanel.furnipanel.effect_txt.text = "Shoes";
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr947);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1127);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1091);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(clothing.type);
                                                                                          §§push(ClothingItem.TYPE_JACKET);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                addr903:
                                                                                                §§push(ob);
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   §§pop().clip.prizepanel.furnipanel.effect_txt.text = "Jacket";
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr939);
                                                                                                }
                                                                                                §§goto(addr1127);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(clothing);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop().type);
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      if(§§pop() == ClothingItem.TYPE_SHOES)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr935:
                                                                                                            §§push(ob);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr939);
                                                                                                            }
                                                                                                            §§goto(addr1106);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr982);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(clothing.type);
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            if(§§pop() == ClothingItem.TYPE_PANTS)
                                                                                                            {
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr1103);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1127);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(clothing);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1122);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1075);
                                                                                       }
                                                                                       §§goto(addr1136);
                                                                                    }
                                                                                    §§push(§§pop().type);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       if(§§pop() == ClothingItem.TYPE_HAIR)
                                                                                       {
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc3_ || Boolean(this)))
                                                                                             {
                                                                                                §§goto(addr1084);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1119);
                                                                                          }
                                                                                          §§goto(addr1136);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§goto(addr1038);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1154);
                                                                                    }
                                                                                    §§goto(addr1049);
                                                                                 }
                                                                                 addr1013:
                                                                                 §§push(§§pop().§§slot[1]);
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    §§pop().clip.prizepanel.furnipanel.effect_txt.text = "Hat";
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§goto(addr1136);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1127);
                                                                              }
                                                                              §§goto(addr971);
                                                                           }
                                                                           §§goto(addr1126);
                                                                        }
                                                                        §§goto(addr1130);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop().§§slot[2]);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr453:
                                                                              if(§§pop().whichCharacter == "rita")
                                                                              {
                                                                                 §§push(ob);
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    §§goto(addr509);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr507:
                                                                                    §§push(§§pop().§§slot[1]);
                                                                                 }
                                                                                 §§goto(addr508);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr572:
                                                                                    §§push(§§pop().§§slot[1]);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr507);
                                                                                       §§push(§§newactivation());
                                                                                    }
                                                                                    §§pop().clip.prizepanel.ticketpanel.visible = false;
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       ob.clip.prizepanel.tipspanel.visible = true;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                          }
                                                                                          addr638:
                                                                                          §§push(§§pop().§§slot[4]);
                                                                                          §§push(dollars);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() * 100);
                                                                                          }
                                                                                          §§pop().§§slot[6] = §§pop() - §§pop();
                                                                                       }
                                                                                       §§push(§§newactivation());
                                                                                       §§push(String(cents));
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§pop().§§slot[7] = §§pop();
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             §§push(textCents);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr844);
                                                                                          }
                                                                                          §§goto(addr1127);
                                                                                       }
                                                                                       addr676:
                                                                                       §§pop().§§slot[7] = §§pop();
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          §§push(§_-9m§.§_-3E§(dollars));
                                                                                          if(_loc4_ && _loc1_)
                                                                                          {
                                                                                          }
                                                                                          addr697:
                                                                                          §§pop().§§slot[8] = §§pop();
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§pop().§§slot[1].clip.prizepanel.tipspanel.tips_txt.text = "$" + textDollars + "." + textCents;
                                                                                             addr702:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr903);
                                                                                          }
                                                                                          §§goto(addr1130);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1013);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr747:
                                                                                       §§goto(addr749);
                                                                                       §§push(ob);
                                                                                    }
                                                                                    §§goto(addr749);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1103);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1122);
                                                                     §§push(§§pop().§§slot[9]);
                                                                  }
                                                                  if(§§pop().length < 2)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     §§push("0" + textCents);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr676);
                                                                     }
                                                                     §§goto(addr697);
                                                                  }
                                                                  §§goto(addr676);
                                                               }
                                                               §§push(§§newactivation());
                                                            }
                                                            §§goto(addr530);
                                                         }
                                                         §§goto(addr1103);
                                                      }
                                                      else
                                                      {
                                                         §§push(§§newactivation());
                                                         §§push(§§newactivation());
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                         }
                                                      }
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr600:
                                                         §§push(§§pop().wonPrizeAmount);
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr638);
                                                      }
                                                      §§goto(addr822);
                                                   }
                                                }
                                                addr732:
                                                if(§§pop() == §§pop())
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§pop().§§slot[1].clip.prizepanel.furnipanel.visible = false;
                                                      §§goto(addr747);
                                                   }
                                                   §§goto(addr1055);
                                                }
                                                else
                                                {
                                                   addr788:
                                                   if(ob.wonPrizeIsClothing)
                                                   {
                                                      §§goto(addr791);
                                                      §§push(ob);
                                                   }
                                                   else
                                                   {
                                                      §§push(ob);
                                                      if(_loc3_)
                                                      {
                                                         §§pop().clip.prizepanel.furnipanel.visible = true;
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            ob.clip.prizepanel.ticketpanel.visible = false;
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§push(ob);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().clip.prizepanel.tipspanel.visible = false;
                                                                  furniData = ob.gameObj.§_-Cf§.getFurniFromTag(ob.wonPrizeSKU);
                                                                  §§push(ob);
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                                  addr1326:
                                                                  §§pop().clip.prizepanel.furnipanel.own_txt.text = String(user.getFurniAmount(furniData.tag,true));
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     addr1348:
                                                                     §§push(§§pop().§§slot[1]);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        §§pop().clip.prizepanel.furnipanel.own_txt.visible = true;
                                                                        §§goto(addr1362);
                                                                     }
                                                                     §§goto(addr1383);
                                                                  }
                                                                  §§goto(addr1424);
                                                               }
                                                               §§goto(addr1399);
                                                            }
                                                            addr1324:
                                                            §§goto(addr1326);
                                                            §§push(ob);
                                                         }
                                                         §§goto(addr1130);
                                                      }
                                                      §§pop().clip.prizepanel.furnipanel.title_txt.text = furniData.title;
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§pop().§§slot[1].clip.prizepanel.furnipanel.info_txt.text = furniData.description;
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§push(§§pop().§§slot[1]);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().clip.prizepanel.furnipanel.effect_txt.text = furniData.effect;
                                                                  §§goto(addr1324);
                                                               }
                                                               §§goto(addr1326);
                                                            }
                                                            §§goto(addr1348);
                                                         }
                                                         §§goto(addr1362);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1362);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(ob);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop().clip.prizepanel.furnipanel.visible = false;
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr572);
                                                         §§push(§§pop().§§slot[1]);
                                                      }
                                                      §§goto(addr747);
                                                   }
                                                   §§goto(addr702);
                                                }
                                                §§goto(addr1126);
                                             }
                                             else
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().§§slot[1]);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr732);
                                                      §§push(§§pop().wonPrizeSKU);
                                                      §§push("tickets");
                                                   }
                                                   §§goto(addr1127);
                                                }
                                             }
                                             §§goto(addr1084);
                                          }
                                          §§pop().§§slot[9] = §§pop().§_-1B§.getItemFromSKU(ob.wonPrizeSKU);
                                          §§goto(addr749);
                                       }
                                       addr225:
                                       §§pop().§§slot[3] = Number(§§pop().possibleGames.indexOf(ob.whichGame));
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().§§slot[1].wonPrizeIsClothing);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                }
                                                §§goto(addr771);
                                             }
                                             else
                                             {
                                                §§push(ob);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop().wonPrizeClothingMode);
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop() == "gender")
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            §§push(§§pop().§§slot[1]);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().wonPrizeSKU);
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        §§push("_");
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().gameObj);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().workerData);
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().gender);
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§pop().wonPrizeSKU = §§pop();
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr477);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr509);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr423);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr507);
                                                               }
                                                               §§goto(addr509);
                                                            }
                                                            §§goto(addr1127);
                                                         }
                                                         §§goto(addr864);
                                                      }
                                                      else
                                                      {
                                                         §§push(ob.wonPrizeClothingMode);
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop() == "hat")
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§goto(addr405);
                                                                  }
                                                                  §§goto(addr847);
                                                               }
                                                               §§goto(addr542);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1122);
                                                   }
                                                   §§goto(addr665);
                                                }
                                             }
                                             §§goto(addr1106);
                                          }
                                          §§goto(addr788);
                                       }
                                       §§goto(addr755);
                                    }
                                    §§push(§§pop().§§slot[1]);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       §§goto(addr225);
                                    }
                                    §§goto(addr600);
                                 }
                              }
                              §§push(§§pop().§§slot[2]);
                              if(!_loc4_)
                              {
                                 §§goto(addr531);
                              }
                              else
                              {
                                 §§goto(addr453);
                              }
                           }
                           §§push(§§newactivation());
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr405);
                              §§push(§§pop().§§slot[2]);
                           }
                           §§goto(addr771);
                        }
                        §§goto(addr697);
                        §§push(§§pop());
                     }
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        §§pop().§§slot[8] = §§pop();
                        §§push(§§newactivation());
                        §§push(null);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().§§slot[9] = §§pop();
                           §§push(§§newactivation());
                           §§push(null);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr697);
                  }
                  §§goto(addr542);
               }
               §§pop().§§slot[4] = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  §§push(Math.floor(useTips / 100));
               }
               §§goto(addr749);
            }
            §§goto(addr1154);
         }
         §§pop().§§slot[5] = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(§§newactivation());
            §§push(§§newactivation());
            if(_loc3_)
            {
               §§goto(addr638);
            }
            else
            {
               §§goto(addr822);
            }
         }
         §§goto(addr935);
      }
      
      public function destroy() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MiniGameScreen = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            §§push(_loc1_.miniGame);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  §§goto(addr34);
               }
               _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.clip.skip_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickSkip);
                  _loc1_.clip.play_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickPlay);
                  if(_loc1_.minigameMusic)
                  {
                     _loc1_.minigameMusic.stop();
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.minigameMusic = null;
                     }
                  }
               }
            }
            §§pop().destroy();
            addr34:
            if(_loc3_)
            {
               §§push(_loc1_.miniGame);
            }
            _loc1_.miniGame = null;
            if(_loc2_ && Boolean(_loc1_))
            {
            }
            §§goto(addr107);
         }
         if(_loc1_.minigameFiller)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               addr107:
               _loc1_.minigameFiller.stop();
               _loc1_.minigameFiller = null;
               §§goto(addr113);
            }
            §§goto(addr34);
         }
         addr113:
         _loc1_.gameObj.§_-BG§.removeChild(_loc1_.clip);
         if(_loc3_ || _loc2_)
         {
            _loc1_.clip = null;
         }
      }
      
      public function updateScreen(param1:Event = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:SoundTransform = null;
         var _loc4_:SoundTransform = null;
         var _loc5_:SoundTransform = null;
         var _loc6_:SoundTransform = null;
         var _loc2_:MiniGameScreen = this;
         if(!(_loc9_ && Boolean(this)))
         {
            if(_loc2_.miniGame != null)
            {
            }
            §§goto(addr54);
         }
         try
         {
            _loc2_.miniGame.updateScreen();
         }
         catch(err:Error)
         {
         }
         addr54:
         §§push(_loc2_.shouldPlayMusic);
         if(!_loc9_)
         {
            if(§§pop())
            {
               §§push(_loc2_.musicVolume);
               if(_loc8_ || Boolean(this))
               {
                  §§push(1);
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.musicVolume);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + _loc2_.musicVolumeSpeed);
                        }
                        §§pop().musicVolume = §§pop();
                        _loc3_ = new SoundTransform(_loc2_.musicVolume);
                        if(_loc8_ || Boolean(param1))
                        {
                           _loc2_.minigameMusic.soundTransform = _loc3_;
                        }
                        _loc4_ = new SoundTransform(1 - _loc2_.musicVolume);
                        if(!_loc9_)
                        {
                           _loc2_.minigameFiller.soundTransform = _loc4_;
                        }
                     }
                  }
                  else
                  {
                     addr135:
                     if(§§pop() > §§pop())
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.musicVolume);
                        if(!_loc9_)
                        {
                           §§push(§§pop() - _loc2_.musicVolumeSpeed);
                        }
                        §§pop().musicVolume = §§pop();
                        if(_loc8_)
                        {
                           _loc5_ = new SoundTransform(_loc2_.musicVolume);
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              _loc2_.minigameMusic.soundTransform = _loc5_;
                           }
                           _loc6_ = new SoundTransform(1 - _loc2_.musicVolume);
                           if(_loc8_)
                           {
                              _loc2_.minigameFiller.soundTransform = _loc6_;
                           }
                        }
                        §§goto(addr378);
                     }
                  }
                  §§push(_loc2_.clip.currentLabel == "waiting");
                  if(!(_loc9_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              §§push(_loc2_.didPlayApplause);
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 §§push(!§§pop());
                                 if(_loc9_ && Boolean(param1))
                                 {
                                 }
                              }
                              addr246:
                              if(§§pop())
                              {
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    _loc2_.clip.gotoAndPlay("showgame");
                                    _loc2_.startMiniGame();
                                 }
                                 else
                                 {
                                    §§goto(addr378);
                                 }
                                 §§goto(addr378);
                              }
                              else
                              {
                                 _loc2_.clip.gotoAndPlay("fadeout");
                              }
                              §§goto(addr378);
                           }
                           addr309:
                           _loc2_.startShowingPrize();
                           if(_loc8_ || Boolean(param1))
                           {
                              §§goto(addr396);
                           }
                           else
                           {
                              addr426:
                           }
                           §§goto(addr378);
                        }
                     }
                  }
               }
               else
               {
                  addr127:
                  §§push(0);
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     §§goto(addr135);
                  }
               }
               addr352:
               if(§§pop() > §§pop())
               {
                  if(!_loc9_)
                  {
                     addr355:
                     _loc2_.clip.gotoAndPlay("showtitle");
                     if(!_loc9_)
                     {
                        _loc2_.clip.foodini.gotoAndPlay("intro");
                     }
                     addr412:
                     _loc2_.clip.gotoAndPlay("showtitle");
                     _loc2_.clip.foodini.gotoAndPlay("intro");
                     §§goto(addr426);
                  }
                  §§goto(addr378);
               }
               else
               {
                  _loc2_.clip.gotoAndPlay("fadeout");
                  if(_loc8_ || Boolean(this))
                  {
                     §§goto(addr378);
                  }
               }
               §§goto(addr396);
            }
            else
            {
               §§push(_loc2_.musicVolume);
               if(!(_loc9_ && Boolean(param1)))
               {
                  §§goto(addr127);
               }
            }
            addr411:
            if(§§pop() > 0)
            {
               §§goto(addr412);
            }
            else
            {
               _loc2_.clip.gotoAndPlay("fadeout");
            }
            §§goto(addr426);
         }
         if(§§pop())
         {
            §§push(_loc2_.gameObj);
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               §§pop().soundManager.playSound("applause.wav");
               _loc2_.didPlayApplause = true;
            }
            §§goto(addr387);
         }
         if(_loc2_.clip.currentLabel == "decideplay")
         {
            if(_loc8_)
            {
               §§goto(addr246);
               §§push(_loc2_.clickedPlay);
            }
            else
            {
               §§goto(addr355);
            }
            §§goto(addr355);
         }
         else if(_loc2_.clip.currentLabel == "decideprize")
         {
            if(_loc8_ || Boolean(param1))
            {
               _loc2_.removeMiniGame();
               if(!_loc9_)
               {
                  _loc2_.clip.hud.count.tickets_txt.text = String(_loc2_.gameObj.userData.getTicketsTotal());
                  if(_loc2_.wonPrizeSKU != null)
                  {
                     _loc2_.clip.gotoAndPlay("showprize");
                     if(_loc8_ || Boolean(_loc3_))
                     {
                     }
                     §§goto(addr426);
                  }
                  else
                  {
                     §§push(_loc2_.gameObj);
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop().userData);
                        if(_loc8_ || Boolean(param1))
                        {
                           §§push(§§pop().getTicketsTotal());
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              §§push(0);
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 §§goto(addr352);
                              }
                           }
                           §§goto(addr411);
                        }
                     }
                     else
                     {
                        addr408:
                        §§push(§§pop().userData);
                     }
                     §§goto(addr409);
                  }
               }
               §§goto(addr309);
            }
            §§goto(addr378);
         }
         else if(_loc2_.clip.currentLabel == "deciderepeat")
         {
            if(_loc8_)
            {
               §§push(_loc2_.gameObj);
               if(!_loc9_)
               {
                  §§goto(addr408);
               }
               else
               {
                  §§goto(addr448);
               }
            }
            §§goto(addr355);
         }
         else if(_loc2_.clip.currentLabel == "end")
         {
            if(!(_loc9_ && Boolean(param1)))
            {
               §§goto(addr448);
               §§push(_loc2_.gameObj);
            }
         }
         addr378:
         §§push(_loc2_.gameObj);
         if(_loc8_ || Boolean(param1))
         {
            addr387:
            §§push(§§pop().userData);
            if(_loc8_ || Boolean(_loc2_))
            {
               §§pop().saveData();
               addr396:
            }
            else
            {
               addr409:
               §§push(§§pop().getTicketsTotal());
            }
         }
         else
         {
            addr448:
            §§pop().§_-6l§();
         }
      }
      
      public function setTitle(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MiniGameScreen = this;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.clip.hud.title_txt.visible = true;
            if(_loc4_ && Boolean(_loc2_))
            {
            }
            §§goto(addr56);
         }
         _loc2_.clip.hud.title_txt.text = param1;
         addr56:
      }
      
      public function setPrizesAlreadyWon(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:MiniGameScreen = this;
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.clip.hud.stars.visible = true;
         }
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < 14)
            {
               §§push(_loc4_);
               if(_loc5_ || Boolean(this))
               {
                  if(§§pop() >= param1)
                  {
                     _loc3_.clip.hud.stars["star" + _loc4_].gotoAndStop("unearned");
                     if(_loc5_)
                     {
                     }
                     break;
                  }
                  if(_loc5_)
                  {
                     _loc3_.clip.hud.stars["star" + _loc4_].gotoAndStop("earned");
                     if(_loc5_ || Boolean(this))
                     {
                     }
                     break;
                  }
                  _loc4_++;
                  if(!(_loc5_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function finishMiniGame(param1:String = null, param2:Number = 1, param3:Boolean = false, param4:String = "") : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:MiniGameScreen = this;
         _loc5_.wonPrizeSKU = param1;
         if(_loc7_ || param3)
         {
            _loc5_.wonPrizeAmount = param2;
            if(!_loc6_)
            {
               _loc5_.wonPrizeIsClothing = param3;
               if(_loc6_ && Boolean(param1))
               {
               }
               §§goto(addr82);
            }
            _loc5_.wonPrizeClothingMode = param4;
            _loc5_.gameObj.soundManager.playSound("applause.wav");
            if(_loc7_ || Boolean(param2))
            {
            }
            §§goto(addr82);
         }
         _loc5_.clip.gotoAndPlay("finishgame");
         if(_loc7_ || Boolean(this))
         {
            §§goto(addr82);
         }
         addr82:
         _loc5_.shouldPlayMusic = false;
      }
   }
}

