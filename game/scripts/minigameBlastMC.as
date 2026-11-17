package
{
   import adobe.utils.*;
   import fl.motion.AnimatorFactory3D;
   import fl.motion.MotionBase;
   import fl.motion.motion_internal;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.engine.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7874")]
   public dynamic class minigameBlastMC extends MovieClip
   {
      public var shot_3:MovieClip;
      
      public var shot_4:MovieClip;
      
      public var shots_txt:TextField;
      
      public var reticule:MovieClip;
      
      public var break1:MovieClip;
      
      public var icon_0:MovieClip;
      
      public var break2:MovieClip;
      
      public var bread1:MovieClip;
      
      public var icon_1:MovieClip;
      
      public var bread2:MovieClip;
      
      public var icon_2:MovieClip;
      
      public var shadowholder:MovieClip;
      
      public var icon_3:MovieClip;
      
      public var icon_4:MovieClip;
      
      public var icon_5:MovieClip;
      
      public var icon_6:MovieClip;
      
      public var round_txt:TextField;
      
      public var panel:MovieClip;
      
      public var icon_7:MovieClip;
      
      public var icon_8:MovieClip;
      
      public var shadow1:MovieClip;
      
      public var icon_9:MovieClip;
      
      public var shadow2:MovieClip;
      
      public var shadowmask:MovieClip;
      
      public var hit_txt:TextField;
      
      public var popup:MovieClip;
      
      public var backholder:MovieClip;
      
      public var shot_0:MovieClip;
      
      public var topholder:MovieClip;
      
      public var shot_1:MovieClip;
      
      public var shot_2:MovieClip;
      
      public var flasher:MovieClip;
      
      public var __animFactory_shadow2af1:AnimatorFactory3D;
      
      public var __animArray_shadow2af1:Array;
      
      public var ____motion_shadow2af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_shadow2af1_matArray__:Array;
      
      public var __motion_shadow2af1:MotionBase;
      
      public var __animFactory_shadow1af1:AnimatorFactory3D;
      
      public var __animArray_shadow1af1:Array;
      
      public var ____motion_shadow1af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_shadow1af1_matArray__:Array;
      
      public var __motion_shadow1af1:MotionBase;
      
      public var __animFactory_bread2af1:AnimatorFactory3D;
      
      public var __animArray_bread2af1:Array;
      
      public var ____motion_bread2af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_bread2af1_matArray__:Array;
      
      public var __motion_bread2af1:MotionBase;
      
      public var __animFactory_bread1af1:AnimatorFactory3D;
      
      public var __animArray_bread1af1:Array;
      
      public var ____motion_bread1af1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_bread1af1_matArray__:Array;
      
      public var __motion_bread1af1:MotionBase;
      
      public function minigameBlastMC()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         §§push(this.__animFactory_shadow2af1);
         if(!_loc2_)
         {
            if(§§pop() == null)
            {
               if(_loc1_ || _loc2_)
               {
                  this.__animArray_shadow2af1 = new Array();
                  if(_loc1_ || Boolean(this))
                  {
                     this.__motion_shadow2af1 = new MotionBase();
                     this.__motion_shadow2af1.duration = 1;
                     this.__motion_shadow2af1.overrideTargetTransform();
                     if(!_loc2_)
                     {
                        this.__motion_shadow2af1.addPropertyArray("cacheAsBitmap",[false]);
                        if(!_loc2_)
                        {
                           §§push(this.__motion_shadow2af1);
                           if(_loc1_ || Boolean(this))
                           {
                              §§pop().addPropertyArray("blendMode",["normal"]);
                              if(_loc1_ || _loc1_)
                              {
                                 this.__motion_shadow2af1.is3D = true;
                                 addr391:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(this.__motion_shadow2af1);
                                 }
                                 this.____motion_shadow1af1_mat3DVec__[5] = 0;
                                 this.____motion_shadow1af1_mat3DVec__[6] = -1;
                                 this.____motion_shadow1af1_mat3DVec__[7] = 0;
                                 this.____motion_shadow1af1_mat3DVec__[8] = 0;
                                 if(!_loc2_)
                                 {
                                    this.____motion_shadow1af1_mat3DVec__[9] = 1;
                                 }
                                 addr1220:
                                 this.____motion_bread1af1_mat3DVec__[13] = 420.450043;
                                 if(_loc2_ && _loc1_)
                                 {
                                 }
                                 addr1271:
                                 this.__animFactory_bread1af1 = new AnimatorFactory3D(null,this.__animArray_bread1af1);
                                 addr1278:
                                 §§push(this.__animFactory_bread1af1);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr1287:
                                    §§pop().sceneName = "minigameBlastMC";
                                    §§goto(addr1309);
                                 }
                                 §§pop().addTargetInfo(this,"bread1",0,true,0,true,null,-1);
                                 §§goto(addr1309);
                              }
                              addr1232:
                              this.____motion_bread1af1_mat3DVec__[14] = 42.200012;
                              addr1237:
                              this.____motion_bread1af1_mat3DVec__[15] = 1;
                              §§push(this.____motion_bread1af1_matArray__);
                              if(!_loc2_)
                              {
                                 addr1246:
                                 §§pop().push(new Matrix3D(this.____motion_bread1af1_mat3DVec__));
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr1260);
                                 }
                                 §§goto(addr1291);
                              }
                              §§pop().push(this.__motion_bread1af1);
                              §§goto(addr1271);
                           }
                           §§pop().motion_internal::spanStart = 0;
                           this.____motion_shadow2af1_matArray__ = new Array();
                           this.____motion_shadow2af1_mat3DVec__ = new Vector.<Number>(16);
                           this.____motion_shadow2af1_mat3DVec__[0] = 1;
                           if(!_loc2_)
                           {
                              this.____motion_shadow2af1_mat3DVec__[1] = 0;
                              this.____motion_shadow2af1_mat3DVec__[2] = 0;
                              if(_loc1_)
                              {
                                 this.____motion_shadow2af1_mat3DVec__[3] = 0;
                                 this.____motion_shadow2af1_mat3DVec__[4] = 0;
                                 this.____motion_shadow2af1_mat3DVec__[5] = 0;
                                 this.____motion_shadow2af1_mat3DVec__[6] = -1;
                                 if(_loc1_ || _loc2_)
                                 {
                                    this.____motion_shadow2af1_mat3DVec__[7] = 0;
                                    if(_loc1_ || _loc1_)
                                    {
                                       this.____motion_shadow2af1_mat3DVec__[8] = 0;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          this.____motion_shadow2af1_mat3DVec__[9] = 1;
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             this.____motion_shadow2af1_mat3DVec__[10] = 0;
                                             if(_loc1_)
                                             {
                                                this.____motion_shadow2af1_mat3DVec__[11] = 0;
                                                if(!_loc2_)
                                                {
                                                   this.____motion_shadow2af1_mat3DVec__[12] = 685;
                                                   this.____motion_shadow2af1_mat3DVec__[13] = 421.000061;
                                                   if(_loc1_)
                                                   {
                                                      this.____motion_shadow2af1_mat3DVec__[14] = 42.200012;
                                                      this.____motion_shadow2af1_mat3DVec__[15] = 1;
                                                      §§push(this.____motion_shadow2af1_matArray__);
                                                      if(_loc1_ || Boolean(this))
                                                      {
                                                         §§pop().push(new Matrix3D(this.____motion_shadow2af1_mat3DVec__));
                                                         this.__motion_shadow2af1.addPropertyArray("matrix3D",this.____motion_shadow2af1_matArray__);
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                         }
                                                         addr817:
                                                         this.____motion_bread2af1_mat3DVec__[9] = 1;
                                                         this.____motion_bread2af1_mat3DVec__[10] = 0;
                                                      }
                                                      §§goto(addr1246);
                                                   }
                                                   addr1021:
                                                   addr1019:
                                                   §§push(this.__motion_bread1af1);
                                                   §§push(0);
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      §§pop().addFilterPropertyArray(§§pop(),"blurX",[2],0,1);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         this.__motion_bread1af1.addFilterPropertyArray(0,"blurY",[2],0,1);
                                                         addr1184:
                                                         if(!_loc2_)
                                                         {
                                                            §§push(this.__motion_bread1af1);
                                                            §§push(0);
                                                            if(_loc1_ || Boolean(this))
                                                            {
                                                               §§pop().addFilterPropertyArray(§§pop(),"inner",[false],0,1);
                                                               §§push(this.__motion_bread1af1);
                                                               §§push(0);
                                                            }
                                                         }
                                                         this.____motion_bread1af1_mat3DVec__[8] = 0;
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            this.____motion_bread1af1_mat3DVec__[9] = 1;
                                                            if(_loc1_)
                                                            {
                                                               this.____motion_bread1af1_mat3DVec__[10] = 0;
                                                            }
                                                            addr1208:
                                                            this.____motion_bread1af1_mat3DVec__[11] = 0;
                                                            this.____motion_bread1af1_mat3DVec__[12] = -141.949997;
                                                            if(_loc1_)
                                                            {
                                                               §§goto(addr1220);
                                                            }
                                                            §§goto(addr1266);
                                                         }
                                                         §§goto(addr1278);
                                                      }
                                                      addr1115:
                                                      this.____motion_bread1af1_matArray__ = new Array();
                                                      addr1119:
                                                      this.____motion_bread1af1_mat3DVec__ = new Vector.<Number>(16);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         this.____motion_bread1af1_mat3DVec__[0] = 1;
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                         }
                                                         addr1169:
                                                         this.____motion_bread1af1_mat3DVec__[5] = 0;
                                                         this.____motion_bread1af1_mat3DVec__[6] = -1;
                                                         this.____motion_bread1af1_mat3DVec__[7] = 0;
                                                         §§goto(addr1184);
                                                      }
                                                      this.____motion_bread1af1_mat3DVec__[1] = 0;
                                                      if(!_loc2_)
                                                      {
                                                         this.____motion_bread1af1_mat3DVec__[2] = 0;
                                                      }
                                                      §§goto(addr1208);
                                                   }
                                                   §§pop().addFilterPropertyArray(§§pop(),"color",[5126173],0,1);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      addr1085:
                                                      §§push(this.__motion_bread1af1);
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         §§pop().addFilterPropertyArray(0,"quality",[1],0,1);
                                                         if(_loc1_)
                                                         {
                                                            §§push(this.__motion_bread1af1);
                                                            if(_loc1_)
                                                            {
                                                            }
                                                            addr1260:
                                                            this.__motion_bread1af1.addPropertyArray("matrix3D",this.____motion_bread1af1_matArray__);
                                                            if(_loc1_)
                                                            {
                                                               addr1266:
                                                               §§push(this.__animArray_bread1af1);
                                                            }
                                                            §§goto(addr1309);
                                                         }
                                                         §§goto(addr1208);
                                                      }
                                                      §§pop().is3D = true;
                                                      addr1111:
                                                      this.__motion_bread1af1.motion_internal::spanStart = 0;
                                                      §§goto(addr1115);
                                                   }
                                                   §§goto(addr1184);
                                                }
                                             }
                                             this.____motion_bread2af1_mat3DVec__[11] = 0;
                                             this.____motion_bread2af1_mat3DVec__[12] = 685;
                                             addr837:
                                             this.____motion_bread2af1_mat3DVec__[13] = 421.000061;
                                             this.____motion_bread2af1_mat3DVec__[14] = 42.200012;
                                          }
                                          addr558:
                                          this.__animArray_bread2af1 = new Array();
                                          this.__motion_bread2af1 = new MotionBase();
                                       }
                                       addr919:
                                       §§push(this.__animFactory_bread1af1);
                                       if(_loc1_)
                                       {
                                          if(§§pop() == null)
                                          {
                                             addr925:
                                             this.__animArray_bread1af1 = new Array();
                                             addr929:
                                             this.__motion_bread1af1 = new MotionBase();
                                             if(_loc1_ || Boolean(this))
                                             {
                                                addr940:
                                                §§push(this.__motion_bread1af1);
                                                §§push(1);
                                                if(_loc1_ || _loc2_)
                                                {
                                                   §§pop().duration = §§pop();
                                                   if(_loc1_)
                                                   {
                                                      addr953:
                                                      §§push(this.__motion_bread1af1);
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().overrideTargetTransform();
                                                         addr958:
                                                         §§push(this.__motion_bread1af1);
                                                         if(_loc1_)
                                                         {
                                                            §§pop().addPropertyArray("cacheAsBitmap",[false]);
                                                            this.__motion_bread1af1.addPropertyArray("blendMode",["normal"]);
                                                         }
                                                         §§goto(addr1021);
                                                      }
                                                      §§goto(addr1111);
                                                   }
                                                   addr1164:
                                                   this.____motion_bread1af1_mat3DVec__[4] = 0;
                                                   §§goto(addr1169);
                                                }
                                                §§goto(addr1021);
                                             }
                                             this.__motion_bread1af1.initFilters(["flash.filters.GlowFilter"],[0],0,1);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                this.__motion_bread1af1.addFilterPropertyArray(0,"alpha",[1],0,1);
                                             }
                                             §§goto(addr1232);
                                          }
                                          addr1309:
                                          if(!_loc2_)
                                          {
                                             addr1291:
                                             §§push(this.__animFactory_bread1af1);
                                          }
                                          return;
                                       }
                                       §§goto(addr1287);
                                    }
                                    this.____motion_bread1af1_mat3DVec__[3] = 0;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr1164);
                                    }
                                    §§goto(addr1237);
                                 }
                                 §§push(this.__animArray_shadow2af1);
                                 if(!_loc2_)
                                 {
                                    §§pop().push(this.__motion_shadow2af1);
                                    this.__animFactory_shadow2af1 = new AnimatorFactory3D(null,this.__animArray_shadow2af1);
                                    §§push(this.__animFactory_shadow2af1);
                                    if(_loc1_)
                                    {
                                    }
                                    addr277:
                                    §§pop().addTargetInfo(this,"shadow2",0,true,0,true,null,-1);
                                    if(_loc2_)
                                    {
                                    }
                                    §§goto(addr1232);
                                 }
                                 addr868:
                                 §§pop().push(new Matrix3D(this.____motion_bread2af1_mat3DVec__));
                                 addr875:
                                 this.__motion_bread2af1.addPropertyArray("matrix3D",this.____motion_bread2af1_matArray__);
                                 addr873:
                                 if(_loc1_)
                                 {
                                    addr883:
                                    this.__animArray_bread2af1.push(this.__motion_bread2af1);
                                    addr886:
                                    this.__animFactory_bread2af1 = new AnimatorFactory3D(null,this.__animArray_bread2af1);
                                    §§push(this.__animFactory_bread2af1);
                                    if(!_loc2_)
                                    {
                                       §§pop().sceneName = "minigameBlastMC";
                                       if(_loc1_ || Boolean(this))
                                       {
                                          addr906:
                                          §§push(this.__animFactory_bread2af1);
                                       }
                                       §§goto(addr958);
                                    }
                                    §§pop().addTargetInfo(this,"bread2",0,true,0,true,null,-1);
                                    if(_loc1_)
                                    {
                                       §§goto(addr919);
                                    }
                                    §§goto(addr1169);
                                    addr881:
                                 }
                                 §§goto(addr1266);
                              }
                              addr608:
                              this.__motion_bread2af1.addFilterPropertyArray(0,"alpha",[1],0,1);
                              if(_loc1_)
                              {
                                 addr619:
                                 §§push(this.__motion_bread2af1);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr628:
                                    §§pop().addFilterPropertyArray(0,"knockout",[false],0,1);
                                    addr635:
                                    this.__motion_bread2af1.addFilterPropertyArray(0,"strength",[4],0,1);
                                    this.__motion_bread2af1.addFilterPropertyArray(0,"blurX",[2],0,1);
                                    addr646:
                                    §§push(this.__motion_bread2af1);
                                    §§push(0);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§pop().addFilterPropertyArray(§§pop(),"blurY",[2],0,1);
                                       if(!_loc2_)
                                       {
                                          §§push(this.__motion_bread2af1);
                                          if(!_loc2_)
                                          {
                                             §§push(0);
                                             if(_loc1_)
                                             {
                                             }
                                             addr710:
                                             §§pop().addFilterPropertyArray(§§pop(),"color",[5126173],0,1);
                                             if(!_loc2_)
                                             {
                                                §§push(this.__motion_bread2af1);
                                             }
                                             this.__motion_bread2af1.is3D = true;
                                             §§push(this.__motion_bread2af1);
                                             if(!_loc2_)
                                             {
                                                §§pop().motion_internal::spanStart = 0;
                                                if(_loc1_ || _loc2_)
                                                {
                                                   this.____motion_bread2af1_matArray__ = new Array();
                                                   this.____motion_bread2af1_mat3DVec__ = new Vector.<Number>(16);
                                                }
                                                §§goto(addr873);
                                             }
                                             §§goto(addr875);
                                          }
                                       }
                                       §§goto(addr929);
                                    }
                                    §§pop().addFilterPropertyArray(§§pop(),"inner",[false],0,1);
                                    if(!_loc2_)
                                    {
                                       §§push(this.__motion_bread2af1);
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(0);
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§goto(addr710);
                                          }
                                          addr721:
                                          §§pop().addFilterPropertyArray(§§pop(),"quality",[1],0,1);
                                       }
                                       §§goto(addr710);
                                    }
                                    §§goto(addr906);
                                 }
                                 §§goto(addr721);
                                 §§push(0);
                              }
                              this.____motion_bread2af1_mat3DVec__[0] = 1;
                              if(!_loc2_)
                              {
                                 this.____motion_bread2af1_mat3DVec__[1] = 0;
                                 if(_loc1_)
                                 {
                                    this.____motion_bread2af1_mat3DVec__[2] = 0;
                                    if(_loc1_)
                                    {
                                       this.____motion_bread2af1_mat3DVec__[3] = 0;
                                       addr783:
                                       this.____motion_bread2af1_mat3DVec__[4] = 0;
                                       if(_loc1_ || _loc2_)
                                       {
                                          this.____motion_bread2af1_mat3DVec__[5] = 0;
                                          this.____motion_bread2af1_mat3DVec__[6] = -1;
                                          addr805:
                                          this.____motion_bread2af1_mat3DVec__[7] = 0;
                                          this.____motion_bread2af1_mat3DVec__[8] = 0;
                                          if(_loc1_)
                                          {
                                             §§goto(addr817);
                                          }
                                          §§goto(addr875);
                                       }
                                       §§goto(addr1115);
                                    }
                                    §§goto(addr886);
                                 }
                                 §§goto(addr1164);
                              }
                              §§goto(addr1085);
                           }
                           §§push(this.__motion_bread1af1);
                           §§push(0);
                           if(_loc1_)
                           {
                              §§pop().addFilterPropertyArray(§§pop(),"knockout",[false],0,1);
                              addr1008:
                              this.__motion_bread1af1.addFilterPropertyArray(0,"strength",[4],0,1);
                              if(_loc1_)
                              {
                                 §§goto(addr1019);
                              }
                              §§goto(addr1085);
                           }
                           §§goto(addr1021);
                        }
                        addr519:
                        §§push(this.__animFactory_shadow1af1);
                        if(!_loc2_)
                        {
                           §§pop().sceneName = "minigameBlastMC";
                           if(_loc1_)
                           {
                              §§push(this.__animFactory_shadow1af1);
                           }
                           §§goto(addr558);
                        }
                        §§pop().addTargetInfo(this,"shadow1",0,true,0,true,null,-1);
                        if(_loc1_ || _loc1_)
                        {
                           addr545:
                           §§push(this.__animFactory_bread2af1);
                           if(_loc1_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr558);
                                 }
                                 §§goto(addr940);
                              }
                              §§goto(addr919);
                           }
                           §§goto(addr886);
                        }
                        §§goto(addr1291);
                     }
                     this.____motion_bread2af1_mat3DVec__[15] = 1;
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.____motion_bread2af1_matArray__);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr868);
                        }
                        §§goto(addr883);
                     }
                     §§goto(addr1008);
                  }
                  addr566:
                  §§push(this.__motion_bread2af1);
                  if(_loc1_ || Boolean(this))
                  {
                     §§pop().duration = 1;
                     this.__motion_bread2af1.overrideTargetTransform();
                     §§push(this.__motion_bread2af1);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop().addPropertyArray("cacheAsBitmap",[false]);
                        this.__motion_bread2af1.addPropertyArray("blendMode",["normal"]);
                        this.__motion_bread2af1.initFilters(["flash.filters.GlowFilter"],[0],0,1);
                        §§goto(addr608);
                     }
                     §§goto(addr646);
                  }
                  §§goto(addr628);
               }
               this.____motion_shadow1af1_mat3DVec__[10] = 0;
               if(_loc1_)
               {
                  this.____motion_shadow1af1_mat3DVec__[11] = 0;
                  this.____motion_shadow1af1_mat3DVec__[12] = -142.949997;
                  this.____motion_shadow1af1_mat3DVec__[13] = 421.000061;
                  if(!(_loc2_ && _loc1_))
                  {
                     this.____motion_shadow1af1_mat3DVec__[14] = 42.200012;
                     if(_loc1_)
                     {
                        this.____motion_shadow1af1_mat3DVec__[15] = 1;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(this.____motion_shadow1af1_matArray__);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§pop().push(new Matrix3D(this.____motion_shadow1af1_mat3DVec__));
                              if(_loc1_ || _loc2_)
                              {
                                 addr489:
                                 this.__motion_shadow1af1.addPropertyArray("matrix3D",this.____motion_shadow1af1_matArray__);
                                 this.__animArray_shadow1af1.push(this.__motion_shadow1af1);
                                 if(_loc2_ && Boolean(this))
                                 {
                                 }
                                 §§goto(addr635);
                              }
                              §§goto(addr837);
                           }
                           §§goto(addr883);
                        }
                        §§goto(addr925);
                     }
                     this.__animFactory_shadow1af1 = new AnimatorFactory3D(null,this.__animArray_shadow1af1);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr519);
                     }
                     §§goto(addr953);
                  }
                  §§goto(addr805);
               }
               §§goto(addr1119);
            }
            §§push(this.__animFactory_shadow1af1);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  this.__animArray_shadow1af1 = new Array();
                  if(!_loc2_)
                  {
                     this.__motion_shadow1af1 = new MotionBase();
                     this.__motion_shadow1af1.duration = 1;
                     this.__motion_shadow1af1.overrideTargetTransform();
                     this.__motion_shadow1af1.addPropertyArray("cacheAsBitmap",[false]);
                     if(_loc1_)
                     {
                        §§push(this.__motion_shadow1af1);
                        if(_loc1_ || _loc1_)
                        {
                           §§pop().addPropertyArray("blendMode",["normal"]);
                           if(!_loc2_)
                           {
                              this.__motion_shadow1af1.is3D = true;
                              §§push(this.__motion_shadow1af1);
                              if(_loc2_)
                              {
                              }
                              §§goto(addr489);
                           }
                           §§goto(addr881);
                        }
                        §§pop().motion_internal::spanStart = 0;
                        this.____motion_shadow1af1_matArray__ = new Array();
                        this.____motion_shadow1af1_mat3DVec__ = new Vector.<Number>(16);
                        if(_loc1_)
                        {
                           this.____motion_shadow1af1_mat3DVec__[0] = 1;
                           if(_loc1_)
                           {
                              this.____motion_shadow1af1_mat3DVec__[1] = 0;
                              this.____motion_shadow1af1_mat3DVec__[2] = 0;
                              this.____motion_shadow1af1_mat3DVec__[3] = 0;
                              this.____motion_shadow1af1_mat3DVec__[4] = 0;
                              §§goto(addr391);
                           }
                           §§goto(addr489);
                        }
                        §§goto(addr619);
                     }
                     §§goto(addr783);
                  }
                  §§goto(addr566);
               }
               §§goto(addr545);
            }
            §§goto(addr519);
         }
         §§pop().sceneName = "minigameBlastMC";
         if(_loc1_)
         {
            §§goto(addr277);
            §§push(this.__animFactory_shadow2af1);
         }
         §§goto(addr1208);
      }
   }
}

