package wingGame.screens
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-CI§;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import wingGame.data.ClothingData;
   import wingGame.data.ClothingItem;
   import wingGame.data.FurniData;
   import wingGame.data.UserData;
   import wingGame.data.WorkerData;
   
   public class ShopScreen
   {
      public var gameObj:§_-BY§;
      
      public var clip:MovieClip;
      
      public var container:MovieClip;
      
      public var whichSet:Number = 1;
      
      public var panelsPerSet:Number = 6;
      
      public var workingArray:Array;
      
      public var shouldShowNext:Boolean = false;
      
      public var shouldShowPrev:Boolean = false;
      
      public var purchasedToday:Array;
      
      public var lastPurchaseTag:String = "none";
      
      public var mode:String = "upgrades";
      
      public var mannequinColor:uint = 14540253;
      
      public function ShopScreen(param1:§_-BY§, param2:MovieClip, param3:Object = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || Boolean(param1))
         {
            this.workingArray = [];
            if(_loc6_ || Boolean(param3))
            {
            }
            §§goto(addr43);
         }
         this.purchasedToday = [];
         if(_loc6_ || Boolean(param1))
         {
            super();
         }
         addr43:
         var _loc4_:ShopScreen = this;
         _loc4_.gameObj = param1;
         if(!_loc5_)
         {
            _loc4_.container = param2;
            §§push(_loc4_.gameObj);
            if(_loc6_)
            {
               §§push(§§pop().§_-4P§);
               if(!_loc5_)
               {
                  §§push(§§pop().api);
                  if(!_loc5_)
                  {
                     §§pop().§_-h§("ShopScreen","Screens");
                     §§push(_loc4_.gameObj);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§push(§§pop().userData);
                        if(!(_loc5_ && Boolean(param3)))
                        {
                           if(§§pop().hasVisitedUpgradeShop == false)
                           {
                              addr118:
                              if(_loc6_)
                              {
                                 §§push(_loc4_.gameObj);
                                 if(_loc5_ && Boolean(param2))
                                 {
                                 }
                                 addr120:
                                 §§push(§§pop().userData);
                              }
                              §§goto(addr120);
                              §§push(_loc4_.gameObj);
                           }
                        }
                        §§pop().hasVisitedUpgradeShop = true;
                     }
                  }
                  §§pop().§_-h§("NoticedShop","Screens",true);
                  addr107:
                  §§goto(addr118);
               }
               addr106:
               §§goto(addr107);
               §§push(§§pop().api);
            }
            §§goto(addr106);
            §§push(§§pop().§_-4P§);
         }
         _loc4_.setupScreen();
      }
      
      public function setupScreen() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:ShopScreen = this;
         if(!_loc3_)
         {
            §_-5i§.§_-CE§("Setup Shop Screen!");
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.clip = new shopScreenMC();
               _loc1_.container.addChild(_loc1_.clip);
               _loc1_.clip.tips_txt.text = _loc1_.gameObj.userData.getTipsTotal(true);
               _loc1_.clip.next_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickNext);
               if(!_loc3_)
               {
                  _loc1_.clip.prev_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
                  if(_loc3_ && Boolean(_loc1_))
                  {
                  }
                  §§goto(addr133);
               }
               _loc1_.clip.upgrades_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
            }
            §§goto(addr95);
         }
         _loc1_.clip.furniture_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
         if(_loc4_ || Boolean(this))
         {
            addr95:
            _loc1_.clip.poster_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc1_.clip.wallfloor_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
               addr125:
               _loc1_.clip.clothing_btn.addEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
            }
            addr133:
            var _loc2_:int = 1;
            while(true)
            {
               if(_loc2_ > 6)
               {
                  _loc1_.clip.next_btn.visible = false;
                  if(!_loc3_)
                  {
                     _loc1_.clip.prev_btn.visible = false;
                     _loc1_.container.addEventListener("clickBackToGame",_loc1_.clickBackToGame);
                     _loc1_.container.addEventListener("clickQuit",_loc1_.clickQuit);
                  }
                  addr236:
                  _loc1_.gameObj.soundManager.switchMusic("other");
                  break;
               }
               _loc1_.clip.panels["panel" + _loc2_].purchase_btn.addEventListener(MouseEvent.CLICK,_loc1_.clickPurchase);
               _loc1_.clip.panels["panel" + _loc2_].confirm.yes_btn.addEventListener(MouseEvent.CLICK,_loc1_.confirmPurchase);
               _loc1_.clip.panels["panel" + _loc2_].confirm.no_btn.addEventListener(MouseEvent.CLICK,_loc1_.cancelPurchase);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_++;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     continue;
                  }
               }
               break;
               _loc1_.clip.addEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
               if(!_loc3_)
               {
                  §§goto(addr236);
               }
               break;
            }
            _loc1_.selectMode("upgrades",true);
            return;
         }
         §§goto(addr125);
      }
      
      public function clickChangeMode(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:ShopScreen = this;
         var _loc3_:Array = String(param1.currentTarget.name).split("_");
         var _loc4_:String = _loc3_[0];
         if(!(_loc5_ && Boolean(param1)))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               if(_loc2_.mode != _loc4_)
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     _loc2_.selectMode(_loc4_);
                  }
               }
            }
         }
      }
      
      public function selectMode(param1:String, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         var _loc3_:ShopScreen = this;
         if(_loc6_ || param2)
         {
            _loc3_.mode = param1;
            _loc3_.clip.tabbg.gotoAndStop(_loc3_.mode);
            if(_loc6_)
            {
               _loc3_.workingArray = _loc3_.gameObj.§_-Cf§.getStoreTags(_loc3_.mode);
               if(_loc6_)
               {
                  _loc3_.purchasedToday = [];
               }
               addr62:
               _loc4_ = 0;
            }
            §§goto(addr64);
         }
         if(_loc3_.workingArray.length > 0)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               §§goto(addr62);
            }
            addr64:
            while(true)
            {
               if(_loc4_ < _loc3_.workingArray.length)
               {
                  _loc3_.purchasedToday.push(0);
                  if(!(_loc6_ || Boolean(this)))
                  {
                     break;
                  }
                  _loc4_++;
                  continue;
               }
               §_-5i§.§_-CE§("MODE: " + _loc3_.mode);
               if(!_loc5_)
               {
                  §_-5i§.§_-CE§("Working Array: " + _loc3_.workingArray);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     _loc3_.whichSet = 1;
                  }
                  §§goto(addr174);
               }
               if(!param2)
               {
                  if(!_loc5_)
                  {
                     _loc3_.clip.panels.gotoAndPlay("nextset");
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        _loc3_.clip.next_btn.visible = false;
                        if(_loc6_ || param2)
                        {
                           _loc3_.clip.prev_btn.visible = false;
                           break;
                        }
                     }
                  }
                  break;
               }
               _loc3_.populatePanels();
               _loc3_.clip.panels.gotoAndPlay(1);
               _loc3_.clip.next_btn.visible = false;
               if(_loc6_ || Boolean(param1))
               {
               }
               §§goto(addr174);
            }
            addr174:
            _loc3_.clip.prev_btn.visible = false;
            return;
         }
         §§goto(addr90);
      }
      
      public function updateScreen(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:ShopScreen = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         §§push(_loc2_.clip.panels.currentFrame == 6);
         if(!_loc5_)
         {
            if(!§§pop())
            {
               if(_loc5_ && Boolean(param1))
               {
               }
            }
            §§goto(addr47);
         }
         §§pop();
         §§push(_loc2_.clip.panels.currentFrame == 17);
         if(!_loc5_)
         {
            addr47:
            if(§§pop())
            {
               _loc2_.clip.panels.stop();
               if(_loc4_)
               {
                  §§push(_loc2_.shouldShowNext);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     addr63:
                     if(§§pop())
                     {
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           _loc2_.clip.next_btn.visible = true;
                        }
                        addr116:
                        if(_loc2_.clip.panels.currentFrame == 11)
                        {
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              _loc2_.populatePanels();
                              _loc2_.clip.panels.gotoAndPlay(1);
                           }
                        }
                        else if(_loc2_.clip.panels.currentFrame == 22)
                        {
                           _loc2_.populatePanels();
                           if(_loc4_)
                           {
                           }
                        }
                        addr103:
                     }
                     else
                     {
                        _loc2_.clip.next_btn.visible = false;
                     }
                     §§push(_loc2_.shouldShowPrev);
                  }
                  if(§§pop())
                  {
                     _loc2_.clip.prev_btn.visible = true;
                  }
                  else
                  {
                     _loc2_.clip.prev_btn.visible = false;
                  }
                  §§goto(addr103);
               }
               §§goto(addr159);
            }
            else
            {
               _loc2_.clip.next_btn.visible = false;
               if(_loc4_)
               {
                  _loc2_.clip.prev_btn.visible = false;
                  §§goto(addr116);
               }
            }
            _loc2_.clip.panels.gotoAndPlay(12);
            addr159:
            return;
         }
         §§goto(addr63);
      }
      
      public function populatePanels() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1863
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function createClothingThumbnail(param1:ClothingItem) : MovieClip
      {
         var item:ClothingItem;
         var screen:ShopScreen;
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         model = null;
         §§push(§§newactivation());
         §§push(NaN);
         if(!_loc4_)
         {
            §§pop().§§slot[7] = §§pop();
            §§push(§§newactivation());
            if(!(_loc4_ && _loc2_))
            {
               §§push(NaN);
               if(_loc5_)
               {
                  §§pop().§§slot[8] = §§pop();
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        §§push(null);
                        if(_loc5_ || Boolean(param1))
                        {
                           §§pop().§§slot[9] = §§pop();
                           addr840:
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              §§push(NaN);
                           }
                           §§push(§§pop().§§slot[1]);
                           if(!_loc4_)
                           {
                              addr843:
                              if(§§pop().gender == WorkerData.GENDER_FEMALE)
                              {
                                 addr848:
                                 model.body.male_skin.visible = false;
                                 model.body.female_skin.visible = true;
                                 addr879:
                                 pantsPart = §_-CI§.§_-2l§("worker_" + item.tag);
                                 pantsPart.gotoAndStop(1);
                                 addr893:
                                 model.body.addChild(pantsPart);
                                 §§push(§§newactivation());
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    §§pop().§§slot[4].body.male_skin.transform.colorTransform = skinTrans;
                                    §§push(§§newactivation());
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr922:
                                       §§pop().§§slot[4].body.female_skin.transform.colorTransform = skinTrans;
                                       if(_loc4_)
                                       {
                                          addr1148:
                                          accneckPart.gotoAndStop(1);
                                          if(!_loc4_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr1162:
                                                §§pop().§§slot[4].neck.addChild(accneckPart);
                                                addr1233:
                                                if(!_loc4_)
                                                {
                                                   addr1170:
                                                   model.body.male_skin.transform.colorTransform = skinTrans;
                                                   model.body.female_skin.transform.colorTransform = skinTrans;
                                                   addr1169:
                                                   if(!_loc4_)
                                                   {
                                                      addr1188:
                                                      model.neck.skin.transform.colorTransform = skinTrans;
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                      }
                                                      addr1292:
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && Boolean(param1)))
                                                      {
                                                         §§pop().§§slot[4].front_forearm.addChild(armPart);
                                                         if(_loc4_ && Boolean(param1))
                                                         {
                                                         }
                                                      }
                                                   }
                                                   §§push(§§newactivation());
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      §§pop().§§slot[4].front_forearm.skin.transform.colorTransform = skinTrans;
                                                      if(!(_loc4_ && Boolean(param1)))
                                                      {
                                                         addr1335:
                                                         model.front_hand.skin.transform.colorTransform = skinTrans;
                                                         addr1334:
                                                      }
                                                      else
                                                      {
                                                         addr1385:
                                                         headPart.gotoAndStop(1);
                                                         addr1384:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr1396:
                                                            model.head.inside.addChild(headPart);
                                                            addr1402:
                                                            addr1405:
                                                            addr1404:
                                                            addr1408:
                                                            if(data.clothingHasOption(sku,ClothingItem.OPTIONS_HAS_BACK_HAIR))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(§_-CI§);
                                                                  §§push("worker_" + item.tag);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + "_back");
                                                                  }
                                                                  §§pop().§§slot[23] = §§pop().§_-2l§(§§pop(),false,false);
                                                               }
                                                               §§goto(addr1441);
                                                            }
                                                            else
                                                            {
                                                               model.removeChild(model.back_hair);
                                                               if(!(_loc4_ && Boolean(param1)))
                                                               {
                                                                  §§goto(addr1500);
                                                               }
                                                            }
                                                            model.x += 32;
                                                            if(!(_loc4_ && Boolean(param1)))
                                                            {
                                                               model.y += 32;
                                                            }
                                                            §§goto(addr1984);
                                                         }
                                                         addr1438:
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr1441);
                                                         }
                                                         addr1452:
                                                         §§pop().§§slot[4].back_hair.addChild(backhairPart);
                                                         §§goto(addr1457);
                                                      }
                                                   }
                                                   addr1451:
                                                   §§goto(addr1452);
                                                   §§push(§§newactivation());
                                                }
                                                model.back_bicep.skin.transform.colorTransform = skinTrans;
                                                if(!(_loc5_ || Boolean(this)))
                                                {
                                                   §§goto(addr1334);
                                                }
                                             }
                                             addr1344:
                                             if(§§pop().§§slot[1].type == ClothingItem.TYPE_HAIR)
                                             {
                                                if(_loc5_)
                                                {
                                                   addr1351:
                                                   §§push(§§newactivation());
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§pop().§§slot[4] = new worker_mannequin_head();
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr1451);
                                                   }
                                                   §§goto(addr1396);
                                                }
                                                §§goto(addr1402);
                                             }
                                             else
                                             {
                                                §§push(item);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop().type);
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      §§push(ClothingItem.TYPE_ACC_FACE);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc5_ || Boolean(param1))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§pop().§§slot[4] = new worker_mannequin_head();
                                                                  headaccPart = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                                                  headaccPart.gotoAndStop(1);
                                                                  model.head.inside.addChild(headaccPart);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     model.head.inside.skin.transform.colorTransform = skinTrans;
                                                                     §§push(§§newactivation());
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§pop().§§slot[4].removeChild(model.back_hair);
                                                                     }
                                                                     §§goto(addr1722);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1646:
                                                                     shoePart = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                                                     §§goto(addr1658);
                                                                  }
                                                               }
                                                               §§goto(addr1998);
                                                            }
                                                            §§goto(addr1888);
                                                         }
                                                         else
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(§§pop().§§slot[1]);
                                                            }
                                                         }
                                                         §§goto(addr1909);
                                                      }
                                                      addr1638:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         model = new worker_mannequin_foot();
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr1646);
                                                         }
                                                         §§goto(addr1762);
                                                      }
                                                   }
                                                   addr1636:
                                                   §§goto(addr1638);
                                                   §§push(ClothingItem.TYPE_SHOES);
                                                }
                                                §§goto(addr1636);
                                                §§push(§§pop().type);
                                             }
                                          }
                                          armPart.gotoAndStop(1);
                                          §§goto(addr1292);
                                       }
                                       else
                                       {
                                          addr931:
                                       }
                                       addr1680:
                                       §§push(§§newactivation());
                                       §§push(64);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop().§§slot[7] = §§pop();
                                             if(!_loc4_)
                                             {
                                                §§goto(addr1695);
                                             }
                                             §§goto(addr1839);
                                          }
                                          §§goto(addr1702);
                                       }
                                       §§goto(addr1699);
                                    }
                                    §§pop().§§slot[22] = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                    if(_loc5_)
                                    {
                                       §§goto(addr1384);
                                    }
                                    §§goto(addr1451);
                                 }
                                 else
                                 {
                                    addr975:
                                    §§pop().§§slot[4].body.female_skin.visible = true;
                                    if(!_loc4_)
                                    {
                                       addr1009:
                                       §§push(§§newactivation());
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr1017:
                                          §§push(§§pop().§§slot[3]);
                                          §§push(sku);
                                          §§push(ClothingItem.OPTIONS_HAS_FRONTBODY);
                                          if(!_loc4_)
                                          {
                                             if(§§pop().clothingHasOption(§§pop(),§§pop()))
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   §§push(§_-CI§);
                                                   §§push("worker_" + item.tag);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + "_front");
                                                   }
                                                   §§pop().§§slot[18] = §§pop().§_-2l§(§§pop(),false,false);
                                                   frontPart.gotoAndStop(1);
                                                   model.body.addChild(frontPart);
                                                   if(_loc4_ && Boolean(this))
                                                   {
                                                   }
                                                   §§goto(addr1351);
                                                }
                                                §§goto(addr1384);
                                             }
                                             §§push(§§newactivation());
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc4_)
                                                   {
                                                      addr1076:
                                                      §§push(§§pop().§§slot[5]);
                                                      §§push(ClothingItem.OPTIONS_HAS_BACKBODY);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr1085:
                                                         addr1086:
                                                         if(§§pop().clothingHasOption(§§pop(),§§pop()))
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               addr1095:
                                                               §§push(§§newactivation());
                                                               §§push(§_-CI§);
                                                               §§push("worker_" + item.tag);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() + "_back");
                                                               }
                                                               §§pop().§§slot[19] = §§pop().§_-2l§(§§pop(),false,false);
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().§§slot[19].gotoAndStop(1);
                                                                  model.back_acca.addChild(backPart);
                                                               }
                                                               §§goto(addr1344);
                                                            }
                                                            §§goto(addr1438);
                                                         }
                                                         §§push(§§newactivation());
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop().§§slot[3].clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
                                                            {
                                                               addr1133:
                                                               §§push(§§newactivation());
                                                               §§push(§_-CI§);
                                                               §§push("worker_" + item.tag);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() + "_neck");
                                                               }
                                                               §§pop().§§slot[20] = §§pop().§_-2l§(§§pop(),false,false);
                                                               §§goto(addr1148);
                                                            }
                                                            §§goto(addr1169);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1405);
                                                }
                                                §§goto(addr1404);
                                             }
                                             §§goto(addr1441);
                                          }
                                          §§goto(addr1408);
                                       }
                                       §§goto(addr1188);
                                    }
                                 }
                                 §§goto(addr1680);
                              }
                              else
                              {
                                 model.body.male_skin.visible = true;
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr874:
                                    model.body.female_skin.visible = false;
                                    addr873:
                                    §§goto(addr879);
                                 }
                              }
                              §§push(§§newactivation());
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§pop().§§slot[4].front_forearm.skin.transform.colorTransform = skinTrans;
                                 model.front_bicep.skin.transform.colorTransform = skinTrans;
                                 addr1226:
                                 model.back_forearm.skin.transform.colorTransform = skinTrans;
                                 §§goto(addr1233);
                              }
                              else
                              {
                                 addr1257:
                                 §§push(§§pop().§§slot[1]);
                              }
                              §§goto(addr1680);
                           }
                           if(§§pop().type == ClothingItem.TYPE_ACC_ARMS)
                           {
                              if(!_loc4_)
                              {
                                 addr1264:
                                 §§push(§§newactivation());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().§§slot[4] = new worker_mannequin_forearm();
                                    armPart = §_-CI§.§_-2l§("worker_" + item.tag,false,false);
                                    §§goto(addr1148);
                                 }
                                 §§goto(addr1396);
                              }
                              §§goto(addr1188);
                           }
                           else
                           {
                              §§push(§§newactivation());
                           }
                           §§goto(addr1344);
                        }
                        addr160:
                        §§pop().§§slot[18] = §§pop();
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           §§pop().§§slot[19] = null;
                           §§push(§§newactivation());
                           if(_loc5_ || Boolean(param1))
                           {
                              §§pop().§§slot[20] = null;
                              if(!_loc4_)
                              {
                                 §§push(§§newactivation());
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    §§pop().§§slot[21] = §§pop();
                                    addr189:
                                    headPart = null;
                                    addr193:
                                    backhairPart = null;
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                    }
                                    addr626:
                                    §§pop().§§slot[15].gotoAndStop(1);
                                    model.back_forearm.addChild(forearmPart2);
                                    addr635:
                                    §§push(§§newactivation());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr645:
                                       addr643:
                                       if(§§pop().§§slot[3].clothingHasOption(sku,ClothingItem.OPTIONS_HAS_NECK))
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(§§newactivation());
                                             §§push(§_-CI§);
                                             §§push("worker_" + item.tag);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                                §§push(§§pop() + "_neck");
                                             }
                                             §§pop().§§slot[16] = §§pop().§_-2l§(§§pop(),false,false);
                                             §§push(§§newactivation());
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§pop().§§slot[16].gotoAndStop(1);
                                                if(!_loc4_)
                                                {
                                                   addr692:
                                                   model.neck.addChild(neckPartShirt);
                                                }
                                                §§goto(addr1334);
                                             }
                                             else
                                             {
                                                §§goto(addr840);
                                             }
                                          }
                                          §§goto(addr879);
                                       }
                                       §§push(§§newactivation());
                                       if(!_loc4_)
                                       {
                                          §§pop().§§slot[4].body.male_skin.transform.colorTransform = skinTrans;
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§pop().§§slot[4].body.female_skin.transform.colorTransform = skinTrans;
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[4].neck.skin.transform.colorTransform = skinTrans;
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      model.front_forearm.skin.transform.colorTransform = skinTrans;
                                                      §§push(§§newactivation());
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         §§pop().§§slot[4].front_bicep.skin.transform.colorTransform = skinTrans;
                                                         addr769:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§pop().§§slot[4].back_forearm.skin.transform.colorTransform = skinTrans;
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1233);
                                                         }
                                                         §§goto(addr1335);
                                                      }
                                                      else
                                                      {
                                                         addr969:
                                                         §§pop().§§slot[4].body.male_skin.visible = false;
                                                         §§goto(addr975);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr879);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr931);
                                                   }
                                                }
                                                §§goto(addr1384);
                                             }
                                             §§goto(addr1385);
                                          }
                                          §§goto(addr1351);
                                       }
                                       else
                                       {
                                          addr959:
                                          §§push(§§pop().§§slot[2].gameObj.workerData.gender);
                                          §§push(WorkerData.GENDER_FEMALE);
                                          if(_loc5_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §§goto(addr969);
                                                §§push(§§newactivation());
                                             }
                                             else
                                             {
                                                model.body.male_skin.visible = true;
                                                model.body.female_skin.visible = false;
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§goto(addr1009);
                                                }
                                             }
                                             §§goto(addr1148);
                                          }
                                       }
                                       §§goto(addr840);
                                    }
                                    §§goto(addr1017);
                                 }
                                 addr203:
                                 §§pop().§§slot[25] = §§pop();
                                 §§push(§§newactivation());
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    screen = this;
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       §§push(§§newactivation());
                                       §§push(§§newactivation());
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop().§§slot[2]);
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             §§pop().§§slot[3] = §§pop().gameObj.§_-1B§;
                                             §§push(§§newactivation());
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop().§§slot[1].tag);
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   §§pop().§§slot[5] = §§pop();
                                                   §§push(§§newactivation());
                                                   §§push(§§newactivation());
                                                }
                                             }
                                             §§goto(addr692);
                                          }
                                          addr272:
                                          §§pop().§§slot[6] = §§pop().createColorTransform(screen.mannequinColor);
                                          if(_loc5_)
                                          {
                                             if(item == null)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   model = new clothesthumb_none();
                                                }
                                                else
                                                {
                                                   §§goto(addr873);
                                                }
                                                §§goto(addr1396);
                                             }
                                             else
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§push(§§pop().§§slot[1]);
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      §§push(§§pop().type == ClothingItem.TYPE_SHIRT);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(item);
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop().type == ClothingItem.TYPE_JACKET);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                  }
                                                                  addr808:
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               model = new worker_mannequin_torso();
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr367:
                                                                  §§push(item);
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop().gender);
                                                                     §§push(WorkerData.GENDER_FEMALE);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!(_loc4_ && Boolean(param1)))
                                                                           {
                                                                              model.body.male_skin.visible = false;
                                                                              §§push(§§newactivation());
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§pop().§§slot[4].body.female_skin.visible = true;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr420:
                                                                                    §§push(§§newactivation());
                                                                                    §§push(§_-CI§);
                                                                                    §§push("worker_" + item.tag);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + "_body");
                                                                                    }
                                                                                    §§pop().§§slot[11] = §§pop().§_-2l§(§§pop(),false,false);
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       §§pop().§§slot[11].gotoAndStop(1);
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§pop().§§slot[4].body.addChild(torsoPart);
                                                                                          §§push(data);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                addr559:
                                                                                                if(§§pop().clothingHasOption(§§pop().§§slot[5],ClothingItem.OPTIONS_HAS_BICEP))
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc4_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(§_-CI§);
                                                                                                         §§push("worker_" + item.tag);
                                                                                                         if(_loc5_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(§§pop() + "_upperarm");
                                                                                                         }
                                                                                                         §§pop().§§slot[12] = §§pop().§_-2l§(§§pop(),false,false);
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§pop().§§slot[12].gotoAndStop(1);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               model.front_bicep.addChild(bicepPart1);
                                                                                                            }
                                                                                                            §§goto(addr893);
                                                                                                         }
                                                                                                         §§goto(addr1226);
                                                                                                      }
                                                                                                      §§goto(addr1344);
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   §§push(§_-CI§);
                                                                                                   §§push("worker_" + item.tag);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() + "_upperarm");
                                                                                                   }
                                                                                                   §§pop().§§slot[13] = §§pop().§_-2l§(§§pop(),false,false);
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§push(data);
                                                                                                §§push(sku);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(ClothingItem.OPTIONS_HAS_FOREARM);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(§§pop().clothingHasOption(§§pop(),§§pop()))
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         §§push(§_-CI§);
                                                                                                         §§push("worker_" + item.tag);
                                                                                                         if(_loc5_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(§§pop() + "_forearm");
                                                                                                         }
                                                                                                         §§pop().§§slot[14] = §§pop().§_-2l§(§§pop(),false,false);
                                                                                                      }
                                                                                                      §§goto(addr635);
                                                                                                   }
                                                                                                   §§goto(addr1085);
                                                                                                }
                                                                                                §§goto(addr1076);
                                                                                             }
                                                                                             §§goto(addr645);
                                                                                          }
                                                                                          §§goto(addr1396);
                                                                                       }
                                                                                       §§goto(addr1148);
                                                                                    }
                                                                                    §§goto(addr1162);
                                                                                 }
                                                                                 §§goto(addr1351);
                                                                              }
                                                                              §§goto(addr874);
                                                                           }
                                                                           §§goto(addr1009);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop().§§slot[4].body.male_skin.visible = true;
                                                                              model.body.female_skin.visible = false;
                                                                              §§goto(addr420);
                                                                           }
                                                                        }
                                                                        §§goto(addr1188);
                                                                     }
                                                                     §§goto(addr1086);
                                                                  }
                                                               }
                                                               §§goto(addr1085);
                                                            }
                                                            else
                                                            {
                                                               §§push(item.type);
                                                               §§push(ClothingItem.TYPE_PANTS);
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr808);
                                                            }
                                                            §§goto(addr1085);
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§push(item);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop().type);
                                                                  if(!(_loc4_ && Boolean(param1)))
                                                                  {
                                                                     §§push(§§pop() == ClothingItem.TYPE_ACC_BELT);
                                                                  }
                                                                  §§goto(addr840);
                                                               }
                                                               §§goto(addr1344);
                                                            }
                                                            §§goto(addr1148);
                                                         }
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         §§push(item);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop().type);
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop() == ClothingItem.TYPE_ACC_BODY)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     model = new worker_mannequin_torso();
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr959);
                                                                        }
                                                                        §§goto(addr1162);
                                                                     }
                                                                     §§goto(addr1226);
                                                                  }
                                                                  §§goto(addr1264);
                                                               }
                                                               else
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr1257);
                                                                  }
                                                               }
                                                               addr1441:
                                                               §§pop().§§slot[23].gotoAndStop(1);
                                                               if(_loc4_ && Boolean(this))
                                                               {
                                                               }
                                                               try
                                                               {
                                                                  addr1457:
                                                                  backhairPart.hair.transform.colorTransform = screen.createColorTransform(screen.gameObj.workerData.hairColor);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr1500:
                                                                     model.head.inside.skin.transform.colorTransform = skinTrans;
                                                                     try
                                                                     {
                                                                        headPart.hair.transform.colorTransform = screen.createColorTransform(screen.gameObj.workerData.hairColor);
                                                                     }
                                                                     catch(err:Error)
                                                                     {
                                                                        var _loc3_:* = err;
                                                                        if(!_loc4_)
                                                                        {
                                                                           §_-5i§.§_-CE§("Error coloring hair.");
                                                                        }
                                                                     }
                                                                     addr1486:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1658:
                                                                     shoePart.gotoAndStop(1);
                                                                     §§push(§§newactivation());
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§pop().§§slot[4].front_foot.addChild(shoePart);
                                                                        §§push(§§newactivation());
                                                                        if(_loc5_)
                                                                        {
                                                                           §§pop().§§slot[4].front_foot.skin.gotoAndStop(1);
                                                                           if(_loc5_)
                                                                           {
                                                                           }
                                                                           addr1695:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr1699:
                                                                              §§push(64);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr1702:
                                                                                 §§pop().§§slot[8] = §§pop();
                                                                                 §§push(§§newactivation());
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§pop().§§slot[9] = §§pop().§§slot[4].getBounds(screen.gameObj);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr1722:
                                                                                       if(bounds.width > bounds.height)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                             }
                                                                                             addr1923:
                                                                                             §§pop().§§slot[4].x = maxWidth / 2 - (bounds.x + bounds.width);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          §§push(§§newactivation());
                                                                                          if(!(_loc4_ && Boolean(param1)))
                                                                                          {
                                                                                             addr1807:
                                                                                             §§push(§§pop().§§slot[9].width / bounds.height);
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                addr1806:
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             §§pop().§§slot[10] = §§pop();
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                             }
                                                                                             addr1823:
                                                                                             §§pop().§§slot[4].width = maxHeight * ratio;
                                                                                             addr1830:
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr1888:
                                                                                    model.y = 0 - maxHeight / 2 - bounds.y;
                                                                                    addr1901:
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr1909:
                                                                                       if(§§pop().§§slot[9].x + bounds.width > maxWidth / 2)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr1922:
                                                                                             §§push(§§newactivation());
                                                                                          }
                                                                                       }
                                                                                       else if(bounds.x < 0 - maxWidth / 2)
                                                                                       {
                                                                                          addr1949:
                                                                                          model.x = 0 - maxWidth / 2 - bounds.x;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1923);
                                                                                 }
                                                                                 addr1839:
                                                                                 §§pop().§§slot[9] = §§pop().§§slot[4].getBounds(screen.gameObj);
                                                                                 if(bounds.y + bounds.height > maxHeight / 2)
                                                                                 {
                                                                                    model.y = maxHeight / 2 - (bounds.y + bounds.height);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr1901);
                                                                                    }
                                                                                    model.mouseEnabled = false;
                                                                                    addr1984:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr1998:
                                                                                       model.mouseChildren = false;
                                                                                    }
                                                                                    §§push(§§newactivation());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(§§pop().§§slot[9].y < 0 - maxHeight / 2)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr1888);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1949);
                                                                              }
                                                                              addr1762:
                                                                              §§pop().§§slot[10] = §§pop();
                                                                              model.width = maxWidth;
                                                                              §§push(§§newactivation());
                                                                           }
                                                                           §§pop().§§slot[4].height = maxWidth * ratio;
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§goto(addr1830);
                                                                           }
                                                                           §§goto(addr1922);
                                                                        }
                                                                        §§pop().§§slot[4].height = maxHeight;
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           §§goto(addr1823);
                                                                           §§push(§§newactivation());
                                                                        }
                                                                        §§goto(addr1984);
                                                                     }
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  if(_loc5_ || Boolean(param1))
                                                                  {
                                                                     §§push(§§pop().§§slot[9].height / bounds.width);
                                                                     if(!(_loc4_ && Boolean(param1)))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr1762);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1806);
                                                                        }
                                                                     }
                                                                     §§goto(addr1807);
                                                                  }
                                                                  §§goto(addr1839);
                                                               }
                                                               catch(err:Error)
                                                               {
                                                                  _loc3_ = err;
                                                                  §§goto(addr1486);
                                                               }
                                                               return §§pop().§§slot[4];
                                                            }
                                                            §§goto(addr840);
                                                         }
                                                      }
                                                      §§goto(addr1344);
                                                   }
                                                   §§goto(addr843);
                                                }
                                             }
                                             §§goto(addr1170);
                                          }
                                          §§goto(addr840);
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr272);
                                       §§push(§§pop().§§slot[2]);
                                    }
                                    forearmPart1.gotoAndStop(1);
                                    model.front_forearm.addChild(forearmPart1);
                                    §§push(§§newactivation());
                                    §§push(§_-CI§);
                                    §§push("worker_" + item.tag);
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + "_forearm");
                                    }
                                    §§pop().§§slot[15] = §§pop().§_-2l§(§§pop(),false,false);
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       §§goto(addr626);
                                    }
                                    §§goto(addr643);
                                 }
                                 §§goto(addr922);
                              }
                              model = new worker_mannequin_pants();
                              §§goto(addr272);
                           }
                           §§goto(addr1133);
                        }
                        §§goto(addr1095);
                     }
                     addr199:
                     §§pop().§§slot[24] = null;
                     §§goto(addr203);
                     §§push(§§newactivation());
                     §§push(null);
                  }
                  §§push(§§newactivation());
                  if(_loc5_ || Boolean(param1))
                  {
                     addr792:
                     §§pop().§§slot[4].back_bicep.skin.transform.colorTransform = skinTrans;
                  }
                  else
                  {
                     §§goto(addr1335);
                  }
                  §§goto(addr922);
               }
            }
            addr543:
            §§pop().§§slot[13].gotoAndStop(1);
            model.back_bicep.addChild(bicepPart2);
            if(_loc5_ || _loc2_)
            {
               §§goto(addr559);
            }
            §§goto(addr879);
         }
         §§pop().§§slot[10] = §§pop();
         §§push(§§newactivation());
         §§push(null);
         if(_loc5_ || _loc3_)
         {
            §§pop().§§slot[11] = §§pop();
            bicepPart1 = null;
            if(_loc5_)
            {
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§push(null);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§pop().§§slot[13] = §§pop();
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§newactivation());
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§pop().§§slot[14] = §§pop();
                           if(_loc5_ || Boolean(param1))
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 §§push(null);
                              }
                              §§goto(addr848);
                           }
                           §§goto(addr367);
                        }
                        §§pop().§§slot[15] = §§pop();
                        neckPartShirt = null;
                        §§push(§§newactivation());
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(null);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop().§§slot[17] = §§pop();
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§push(null);
                                    if(_loc5_)
                                    {
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr543);
                              }
                              §§goto(addr769);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr1017);
                     }
                     §§goto(addr874);
                  }
                  §§goto(addr193);
               }
               §§goto(addr792);
            }
            §§goto(addr1133);
         }
         §§goto(addr199);
      }
      
      private function createColorTransform(param1:Number) : ColorTransform
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ColorTransform = new ColorTransform();
         if(!_loc3_)
         {
            _loc2_.redMultiplier = ((param1 & 0xFF0000) >>> 16) / 255;
            if(_loc4_ || Boolean(this))
            {
               _loc2_.greenMultiplier = ((param1 & 0xFF00) >>> 8) / 255;
               if(_loc4_)
               {
               }
            }
            _loc2_.blueMultiplier = (param1 & 0xFF) / 255;
         }
         return _loc2_;
      }
      
      public function createFurniThumbnail(param1:FurniData) : MovieClip
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:* = NaN;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Class = null;
         var _loc13_:MovieClip = null;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc2_:ShopScreen = this;
         var _loc3_:MovieClip = null;
         var _loc4_:Number = 73;
         var _loc5_:Number = 70;
         if(_loc19_)
         {
            §§push(param1.type);
            if(!_loc18_)
            {
               §§push(FurniData.TYPE_FLOORING);
               if(!(_loc18_ && Boolean(this)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc19_ || Boolean(param1))
                     {
                        §§push(Number(String(param1.tag).split("floor")[1]));
                        if(!_loc18_)
                        {
                           _loc6_ = §§pop();
                           if(_loc19_)
                           {
                              _loc3_ = new MovieClip();
                              _loc7_ = new flooring_chunk();
                              _loc7_.gotoAndStop(_loc6_);
                              _loc8_ = new flooring_chunk();
                              _loc8_.gotoAndStop(_loc6_);
                              if(_loc19_ || Boolean(param1))
                              {
                                 _loc8_.x = _loc7_.width;
                                 if(_loc19_ || Boolean(_loc3_))
                                 {
                                    _loc3_.addChild(_loc7_);
                                    if(_loc19_ || Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 _loc3_.addChild(_loc8_);
                                 if(_loc19_ || Boolean(param1))
                                 {
                                 }
                                 addr156:
                                 _loc3_.scaleY = 0.3;
                              }
                              _loc3_.scaleX = 0.3;
                              if(_loc18_)
                              {
                              }
                              §§goto(addr156);
                           }
                        }
                        addr178:
                        _loc9_ = §§pop();
                        addr179:
                        _loc3_ = new MovieClip();
                        _loc10_ = new wallpaper_holder();
                        _loc10_.gotoAndStop(_loc9_);
                        _loc11_ = new wallpaper_holder();
                        _loc11_.gotoAndStop(_loc9_);
                        if(!(_loc18_ && Boolean(_loc3_)))
                        {
                           _loc11_.x = _loc10_.width;
                           if(!_loc18_)
                           {
                              _loc3_.addChild(_loc10_);
                              if(!_loc18_)
                              {
                                 _loc3_.addChild(_loc11_);
                                 if(_loc18_ && Boolean(param1))
                                 {
                                 }
                              }
                              addr245:
                           }
                           addr242:
                           _loc3_.scaleY = 0.28;
                           §§goto(addr245);
                        }
                        _loc3_.scaleX = 0.28;
                        if(_loc19_ || Boolean(_loc3_))
                        {
                           §§goto(addr242);
                        }
                        §§goto(addr245);
                     }
                  }
                  else
                  {
                     §§push(param1.type);
                  }
                  §§goto(addr442);
               }
               §§goto(addr164);
            }
            addr164:
            if(§§pop() == §§pop())
            {
               if(_loc18_)
               {
               }
               §§goto(addr179);
            }
            else
            {
               _loc12_ = getDefinitionByName(param1.tag) as Class;
               _loc13_ = new _loc12_();
               §§push(_loc13_.height / _loc13_.width);
               if(_loc19_)
               {
                  _loc14_ = §§pop();
                  _loc15_ = _loc13_.width / _loc13_.height;
                  §§push(_loc13_.height > _loc5_);
                  if(!(_loc18_ && Boolean(this)))
                  {
                     if(!§§pop())
                     {
                        if(_loc19_ || Boolean(_loc2_))
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
                        if(!(_loc18_ && Boolean(this)))
                        {
                           _loc13_.height = _loc5_;
                           _loc13_.width = _loc13_.height * _loc15_;
                           if(_loc18_ && Boolean(_loc3_))
                           {
                           }
                        }
                        addr389:
                        §§push(param1.type);
                        if(!_loc18_)
                        {
                           §§push(FurniData.TYPE_FURNI);
                           if(!(_loc18_ && Boolean(_loc3_)))
                           {
                              if(§§pop() == §§pop())
                              {
                                 addr403:
                                 _loc13_.x = _loc16_;
                                 _loc13_.y = _loc5_ - _loc17_;
                                 if(_loc19_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(param1.type);
                              }
                              addr439:
                              _loc3_ = _loc13_;
                           }
                           addr423:
                           if(§§pop() == §§pop())
                           {
                              _loc13_.x = _loc16_;
                              if(_loc19_)
                              {
                                 _loc13_.y = _loc17_;
                              }
                           }
                           §§goto(addr439);
                        }
                        §§goto(addr423);
                        §§push(FurniData.TYPE_POSTER);
                     }
                     else
                     {
                        _loc13_.width = _loc4_;
                        if(!(_loc18_ && Boolean(param1)))
                        {
                           _loc13_.height = _loc13_.width * _loc14_;
                        }
                     }
                     §§goto(addr439);
                  }
                  §§push(_loc4_);
               }
               §§push(§§pop() - _loc13_.width);
               §§push(2);
               if(_loc19_ || Boolean(this))
               {
                  _loc16_ = §§pop() / §§pop();
                  if(_loc19_ || Boolean(_loc3_))
                  {
                     §§push(_loc5_);
                     if(!(_loc18_ && Boolean(this)))
                     {
                        §§push(§§pop() - _loc13_.height);
                     }
                     §§push(2);
                  }
                  §§goto(addr403);
               }
               _loc17_ = §§pop() / §§pop();
               if(!(_loc18_ && Boolean(_loc2_)))
               {
                  §§goto(addr389);
               }
               §§goto(addr403);
            }
            §§push(FurniData.TYPE_WALLPAPER);
         }
         §§goto(addr178);
         §§push(Number(String(param1.tag).split("wall")[1]));
      }
      
      public function clickBackToGame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ShopScreen = this;
         if(!_loc4_)
         {
            §§push(_loc2_.gameObj);
            if(_loc3_)
            {
               §§pop().soundManager.playSound("buttonclick.wav");
               if(!_loc4_)
               {
                  §§push(_loc2_.gameObj);
                  if(_loc3_)
                  {
                  }
                  addr55:
                  §§pop().§_-E0§();
                  §§goto(addr56);
               }
            }
            §§pop().§_-08§();
            if(_loc4_ && Boolean(_loc2_))
            {
            }
            addr56:
            return;
         }
         §§goto(addr55);
         §§push(_loc2_.gameObj);
      }
      
      public function clickQuit(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ShopScreen = this;
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.gameObj.quitToTitle();
         }
      }
      
      public function clickPrevious(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:ShopScreen = this;
         if(_loc5_ || Boolean(param1))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc5_ || Boolean(this))
            {
               var _loc3_:* = _loc2_;
               §§push(_loc3_.whichSet);
               if(!_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc4_:* = §§pop();
               if(!_loc6_)
               {
                  _loc3_.whichSet = _loc4_;
               }
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  _loc2_.clip.panels.gotoAndPlay("prevset");
                  if(!_loc6_)
                  {
                     _loc2_.clip.next_btn.visible = false;
                     if(_loc5_)
                     {
                     }
                  }
               }
            }
            §§goto(addr90);
         }
         _loc2_.clip.prev_btn.visible = false;
         addr90:
      }
      
      public function clickNext(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:ShopScreen = this;
         if(!(_loc5_ && Boolean(this)))
         {
            _loc2_.gameObj.soundManager.playSound("buttonclick.wav");
            if(_loc6_ || Boolean(this))
            {
            }
            §§goto(addr82);
         }
         var _loc3_:* = _loc2_;
         §§push(_loc3_.whichSet);
         if(_loc6_)
         {
            §§push(§§pop() + 1);
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            _loc3_.whichSet = _loc4_;
         }
         if(_loc6_ || Boolean(param1))
         {
            _loc2_.clip.panels.gotoAndPlay("nextset");
            if(_loc5_ && Boolean(_loc2_))
            {
            }
            §§goto(addr101);
         }
         addr82:
         _loc2_.clip.next_btn.visible = false;
         if(!(_loc5_ && Boolean(param1)))
         {
            addr101:
            _loc2_.clip.prev_btn.visible = false;
         }
      }
      
      public function destroy() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ShopScreen = this;
         try
         {
            _loc1_.clip.removeEventListener(Event.ENTER_FRAME,_loc1_.updateScreen);
         }
         catch(err:Error)
         {
            var _loc3_:* = err;
         }
         var _loc2_:int = 1;
         while(true)
         {
            if(_loc2_ <= 6)
            {
               _loc1_.clip.panels["panel" + _loc2_].purchase_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPurchase);
               if(_loc5_ || _loc3_)
               {
                  _loc1_.clip.panels["panel" + _loc2_].confirm.yes_btn.removeEventListener(MouseEvent.CLICK,_loc1_.confirmPurchase);
                  if(_loc5_)
                  {
                     _loc1_.clip.panels["panel" + _loc2_].confirm.no_btn.removeEventListener(MouseEvent.CLICK,_loc1_.cancelPurchase);
                     if(_loc5_)
                     {
                        _loc2_++;
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr141);
                     }
                  }
               }
               break;
            }
            _loc1_.clip.upgrades_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               _loc1_.clip.furniture_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
               _loc1_.clip.poster_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
               addr141:
               _loc1_.clip.wallfloor_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
               if(_loc5_)
               {
               }
               _loc1_.clip.prev_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickPrevious);
               _loc1_.container.removeEventListener("clickBackToGame",_loc1_.clickBackToGame);
               if(_loc5_ || _loc3_)
               {
                  _loc1_.container.removeEventListener("clickQuit",_loc1_.clickQuit);
                  if(_loc5_)
                  {
                     _loc1_.container.removeChild(_loc1_.clip);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                     }
                  }
                  _loc1_.clip = null;
               }
            }
            _loc1_.clip.clothing_btn.removeEventListener(MouseEvent.MOUSE_DOWN,_loc1_.clickChangeMode);
            if(!_loc4_)
            {
               break;
            }
            return;
         }
         _loc1_.clip.next_btn.removeEventListener(MouseEvent.CLICK,_loc1_.clickNext);
         §§goto(addr141);
      }
      
      public function cancelPurchase(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:ShopScreen = this;
         var _loc3_:* = -1;
         if(param1.currentTarget == _loc2_.clip.panels.panel1.confirm.no_btn)
         {
            §§push(1);
            if(_loc4_ || Boolean(param1))
            {
               _loc3_ = §§pop();
               if(_loc4_)
               {
               }
               §§goto(addr185);
            }
            else
            {
               addr94:
               _loc3_ = §§pop();
            }
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel2.confirm.no_btn)
         {
            §§push(2);
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(§§pop());
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc3_ = §§pop();
               }
               else
               {
                  addr164:
                  _loc3_ = §§pop();
               }
            }
            else
            {
               §§goto(addr94);
            }
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel3.confirm.no_btn)
         {
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(3);
               if(!_loc5_)
               {
                  §§goto(addr94);
               }
               else
               {
                  addr156:
                  §§push(§§pop());
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr164);
                  }
               }
               §§goto(addr166);
            }
            §§goto(addr94);
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel4.confirm.no_btn)
         {
            §§push(4);
            if(!_loc5_)
            {
               _loc3_ = §§pop();
            }
            else
            {
               addr129:
               §§push(§§pop());
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr166);
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel5.confirm.no_btn)
         {
            §§push(5);
            if(!(_loc5_ && Boolean(param1)))
            {
               §§goto(addr129);
            }
            else
            {
               §§goto(addr156);
            }
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel6.confirm.no_btn)
         {
            if(_loc4_ || Boolean(param1))
            {
               §§goto(addr156);
               §§push(6);
            }
            §§goto(addr168);
         }
         addr166:
         if(§§pop() > -1)
         {
            _loc2_.clip.panels["panel" + _loc3_].confirm.visible = false;
            addr168:
         }
         addr185:
         _loc3_;
      }
      
      public function clickPurchase(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:ShopScreen = this;
         var _loc3_:* = -1;
         if(_loc5_)
         {
            if(param1.currentTarget == _loc2_.clip.panels.panel1.purchase_btn)
            {
               §§push(1);
               if(!_loc4_)
               {
                  _loc3_ = §§pop();
               }
               else
               {
                  addr114:
                  _loc3_ = §§pop();
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr172);
            }
            else if(param1.currentTarget == _loc2_.clip.panels.panel2.purchase_btn)
            {
               §§push(2);
               if(_loc5_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     _loc3_ = §§pop();
                  }
                  else
                  {
                     §§goto(addr114);
                  }
                  §§goto(addr172);
               }
               else
               {
                  addr78:
                  §§push(§§pop());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     _loc3_ = §§pop();
                  }
                  else
                  {
                     addr135:
                     _loc3_ = §§pop();
                     if(_loc4_)
                     {
                     }
                  }
               }
               _loc2_.clip.panels["panel" + _loc3_].confirm.visible = true;
               §§goto(addr155);
            }
            else if(param1.currentTarget == _loc2_.clip.panels.panel3.purchase_btn)
            {
               §§push(3);
               if(_loc5_ || Boolean(_loc3_))
               {
                  §§goto(addr78);
               }
               else
               {
                  addr134:
                  §§push(§§pop());
               }
               §§goto(addr135);
            }
            else if(param1.currentTarget == _loc2_.clip.panels.panel4.purchase_btn)
            {
               if(_loc5_ || Boolean(param1))
               {
                  §§push(4);
                  if(!_loc4_)
                  {
                     §§goto(addr114);
                  }
                  else
                  {
                     §§goto(addr134);
                  }
               }
               addr155:
               §§goto(addr172);
            }
            else if(param1.currentTarget == _loc2_.clip.panels.panel5.purchase_btn)
            {
               §§push(5);
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§goto(addr134);
               }
               else
               {
                  addr150:
                  _loc3_ = §§pop();
               }
            }
            else if(param1.currentTarget == _loc2_.clip.panels.panel6.purchase_btn)
            {
               if(_loc5_)
               {
                  §§goto(addr150);
                  §§push(6);
               }
               §§goto(addr172);
            }
            §§goto(addr152);
         }
         addr152:
         if(_loc3_ > -1)
         {
            §§goto(addr155);
         }
         addr172:
      }
      
      public function confirmPurchase(param1:MouseEvent) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc2_:ShopScreen = this;
         var _loc3_:* = null;
         var _loc4_:* = -1;
         if(param1.currentTarget == _loc2_.clip.panels.panel1.confirm.yes_btn)
         {
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               §§push(1);
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     _loc4_ = §§pop();
                  }
                  addr199:
                  _loc6_ = §§pop() - 1 + _loc5_;
                  addr196:
                  addr198:
                  §§push(_loc2_.workingArray);
                  if(!_loc9_)
                  {
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        §§push(§§pop()[§§pop()]);
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           _loc3_ = §§pop();
                           _loc7_ = false;
                           addr331:
                           if(_loc8_ || Boolean(this))
                           {
                              §§push(_loc2_.mode);
                              if(_loc9_)
                              {
                              }
                              addr268:
                              if(§§pop() == "upgrades")
                              {
                                 addr347:
                                 if(!_loc9_)
                                 {
                                    addr272:
                                    §§push(_loc2_.gameObj);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop().userData);
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          addr284:
                                          §§push(_loc3_);
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             addr292:
                                             §§push(§§pop().purchaseBonus(§§pop()));
                                             if(_loc8_ || Boolean(_loc2_))
                                             {
                                                _loc7_ = §§pop();
                                             }
                                             §§goto(addr315);
                                          }
                                       }
                                       else
                                       {
                                          addr308:
                                          §§push(_loc3_);
                                       }
                                       addr310:
                                       _loc7_ = Boolean(§§pop().purchaseFurniture(§§pop()));
                                       if(_loc8_)
                                       {
                                          addr314:
                                          addr315:
                                          if(§§pop())
                                          {
                                             addr316:
                                             _loc2_.lastPurchaseTag = _loc3_;
                                             §§push(_loc2_.gameObj);
                                          }
                                          else
                                          {
                                             §_-5i§.error("(Error Purchasing)");
                                          }
                                          return;
                                          §§push(_loc7_);
                                       }
                                    }
                                 }
                                 _loc2_.populatePanels();
                                 §§goto(addr315);
                              }
                              else
                              {
                                 §§push(_loc2_.gameObj);
                                 if(_loc8_)
                                 {
                                    addr307:
                                    §§goto(addr308);
                                    §§push(§§pop().userData);
                                 }
                              }
                              §§pop().soundManager.playSound("multicoin.wav");
                              §§push(_loc2_.purchasedToday);
                           }
                           _loc2_.clip.tips_txt.text = _loc2_.gameObj.userData.getTipsTotal(true);
                           §§goto(addr347);
                        }
                        if(§§pop() == "clothing")
                        {
                           §§push(_loc2_.gameObj);
                           if(!_loc9_)
                           {
                              §§push(§§pop().userData);
                              if(!_loc9_)
                              {
                                 §§push(_loc3_);
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    §§push(Boolean(§§pop().purchaseClothing(§§pop())));
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       _loc7_ = §§pop();
                                       if(!(_loc9_ && Boolean(param1)))
                                       {
                                          §§goto(addr314);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr310);
                                    }
                                    §§goto(addr331);
                                 }
                                 §§goto(addr315);
                              }
                              else
                              {
                                 §§goto(addr284);
                              }
                           }
                           else
                           {
                              §§goto(addr307);
                           }
                           §§goto(addr310);
                        }
                        else
                        {
                           §§goto(addr268);
                           §§push(_loc2_.mode);
                        }
                        §§goto(addr268);
                     }
                     addr327:
                     §§pop()[§§pop()] = 1;
                     if(!_loc9_)
                     {
                        §§goto(addr331);
                     }
                     §§goto(addr347);
                  }
                  §§goto(addr327);
                  §§push(_loc6_);
               }
               else
               {
                  addr69:
                  §§push(§§pop());
                  if(!(_loc9_ && Boolean(this)))
                  {
                     _loc4_ = §§pop();
                  }
               }
               addr184:
               §§push(§§pop());
               if(!_loc9_)
               {
                  _loc5_ = §§pop();
                  if(_loc8_ || Boolean(param1))
                  {
                     §§goto(addr196);
                     §§push(_loc4_);
                  }
                  §§goto(addr316);
               }
               §§goto(addr199);
            }
            §§goto(addr314);
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel2.confirm.yes_btn)
         {
            §§push(2);
            if(!_loc9_)
            {
               §§goto(addr69);
            }
            else
            {
               addr142:
               _loc4_ = §§pop();
            }
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel3.confirm.yes_btn)
         {
            §§push(3);
            if(!_loc9_)
            {
               §§push(§§pop());
               if(_loc8_ || Boolean(_loc3_))
               {
                  _loc4_ = §§pop();
                  if(_loc9_ && Boolean(_loc2_))
                  {
                  }
               }
               §§goto(addr184);
            }
            else
            {
               addr120:
               _loc4_ = §§pop();
            }
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel4.confirm.yes_btn)
         {
            §§push(4);
            if(!_loc9_)
            {
               §§goto(addr120);
            }
            else
            {
               §§goto(addr142);
            }
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel5.confirm.yes_btn)
         {
            if(_loc8_ || Boolean(_loc3_))
            {
               §§push(5);
               if(_loc8_)
               {
                  §§goto(addr142);
               }
               else
               {
                  addr155:
                  _loc4_ = §§pop();
               }
            }
            §§goto(addr272);
         }
         else if(param1.currentTarget == _loc2_.clip.panels.panel6.confirm.yes_btn)
         {
            §§goto(addr155);
            §§push(6);
         }
         §§push(_loc4_);
         if(!_loc9_)
         {
            if(§§pop() > -1)
            {
               §§push(_loc2_.panelsPerSet);
            }
            §§goto(addr292);
         }
         §§push(_loc2_.whichSet);
         if(_loc8_ || Boolean(_loc2_))
         {
            §§push(§§pop() - 1);
            if(_loc8_)
            {
            }
            §§goto(addr198);
         }
         §§goto(addr184);
         §§push(§§pop() * §§pop());
      }
   }
}

