package minigames_fla
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7011")]
   public dynamic class minigame_blast_flyingbread_60 extends MovieClip
   {
      public var top:MovieClip;
      
      public var bottom:MovieClip;
      
      public var __animFactory_topaf1:AnimatorFactory3D;
      
      public var __animArray_topaf1:Array;
      
      public var ____motion_topaf1_mat3DVec__:Vector.<Number>;
      
      public var ____motion_topaf1_matArray__:Array;
      
      public var __motion_topaf1:MotionBase;
      
      public function minigame_blast_flyingbread_60()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_)
            {
            }
            §§goto(addr211);
         }
         §§push(this.__animFactory_topaf1);
         if(_loc1_ || _loc1_)
         {
            if(§§pop() == null)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.__animArray_topaf1 = new Array();
                  if(!(_loc2_ && _loc2_))
                  {
                     this.__motion_topaf1 = new MotionBase();
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this.__motion_topaf1);
                        if(_loc1_)
                        {
                           §§pop().duration = 1;
                           if(_loc1_)
                           {
                              this.__motion_topaf1.overrideTargetTransform();
                              this.__motion_topaf1.addPropertyArray("cacheAsBitmap",[false]);
                              addr175:
                              if(!_loc2_)
                              {
                                 §§push(this.__motion_topaf1);
                              }
                              this.____motion_topaf1_mat3DVec__[9] = 0.087156;
                              if(!_loc2_)
                              {
                                 this.____motion_topaf1_mat3DVec__[10] = 0.996195;
                                 this.____motion_topaf1_mat3DVec__[11] = 0;
                                 if(_loc1_)
                                 {
                                    this.____motion_topaf1_mat3DVec__[12] = 0;
                                    if(_loc1_)
                                    {
                                       this.____motion_topaf1_mat3DVec__[13] = -0.228311;
                                       addr206:
                                       this.____motion_topaf1_mat3DVec__[14] = -5.229345;
                                       addr211:
                                       this.____motion_topaf1_mat3DVec__[15] = 1;
                                       §§goto(addr216);
                                    }
                                 }
                                 addr216:
                                 §§push(this.____motion_topaf1_matArray__);
                                 if(!_loc2_)
                                 {
                                    §§pop().push(new Matrix3D(this.____motion_topaf1_mat3DVec__));
                                    §§goto(addr271);
                                 }
                                 §§pop().push(this.__motion_topaf1);
                                 this.__animFactory_topaf1 = new AnimatorFactory3D(null,this.__animArray_topaf1);
                                 §§push(this.__animFactory_topaf1);
                                 if(_loc1_)
                                 {
                                    addr249:
                                    §§pop().sceneName = "minigame_blast_flyingbread";
                                    if(!_loc2_)
                                    {
                                       addr253:
                                       §§push(this.__animFactory_topaf1);
                                    }
                                    §§goto(addr271);
                                 }
                                 §§pop().addTargetInfo(this,"top",0,true,0,true,null,-1);
                                 §§goto(addr271);
                              }
                           }
                           addr106:
                           this.____motion_topaf1_matArray__ = new Array();
                           this.____motion_topaf1_mat3DVec__ = new Vector.<Number>(16);
                           if(_loc1_)
                           {
                           }
                        }
                        §§pop().addPropertyArray("blendMode",["normal"]);
                        if(!(_loc2_ && _loc2_))
                        {
                           this.__motion_topaf1.is3D = true;
                           this.__motion_topaf1.motion_internal::spanStart = 0;
                           §§goto(addr106);
                        }
                        addr158:
                        this.____motion_topaf1_mat3DVec__[6] = -0.087156;
                        this.____motion_topaf1_mat3DVec__[7] = 0;
                        this.____motion_topaf1_mat3DVec__[8] = 0;
                        if(!_loc2_)
                        {
                           §§goto(addr175);
                        }
                        §§goto(addr206);
                     }
                     addr141:
                     this.____motion_topaf1_mat3DVec__[3] = 0;
                     this.____motion_topaf1_mat3DVec__[4] = 0;
                     if(_loc1_)
                     {
                        this.____motion_topaf1_mat3DVec__[5] = 0.996195;
                     }
                     §§goto(addr158);
                  }
                  this.____motion_topaf1_mat3DVec__[0] = 1;
                  this.____motion_topaf1_mat3DVec__[1] = 0;
                  this.____motion_topaf1_mat3DVec__[2] = 0;
                  §§goto(addr141);
               }
               §§goto(addr253);
            }
            addr271:
            if(!_loc2_)
            {
               this.__motion_topaf1.addPropertyArray("matrix3D",this.____motion_topaf1_matArray__);
               §§push(this.__animArray_topaf1);
            }
            return;
         }
         §§goto(addr249);
      }
   }
}

