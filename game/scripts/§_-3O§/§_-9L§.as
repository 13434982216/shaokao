package §_-3O§
{
   import §_-5m§.§_-2w§;
   
   public class §_-9L§
   {
      private var api:§_-2w§;
      
      public var label:String;
      
      public var §_-3e§:String;
      
      public var §_-8V§:Boolean;
      
      public var §_-3M§:String;
      
      public var §_-C6§:Boolean;
      
      public var §_-9r§:String;
      
      public var §_-7G§:Boolean = false;
      
      public var §_-4Y§:String = "small";
      
      public var §_-1C§:String = "";
      
      public var §_-89§:String = "";
      
      public var §_-D5§:Boolean = false;
      
      public var §_-1I§:Boolean = false;
      
      public var §_-9q§:String = "small";
      
      public var §_-2d§:String = "";
      
      public var § var§:String = "";
      
      public var §_-7P§:Boolean = false;
      
      public var §_-BO§:Boolean = false;
      
      public var §_-2i§:String = "small";
      
      public var §_-7m§:String = "";
      
      public var §_-8t§:String = "";
      
      public var §_-0y§:Boolean = false;
      
      public var §_-p§:String = "";
      
      public var §_-0A§:Boolean = false;
      
      public var §_-2c§:String = "";
      
      public var §_-4R§:Boolean = false;
      
      public var §_-7J§:Boolean = false;
      
      public var set:Boolean = false;
      
      public var §_-b§:Boolean = false;
      
      public var §_-4u§:Array;
      
      public var §_-Bt§:§_-2b§ = null;
      
      public function §_-9L§(param1:§_-2w§, param2:String, param3:String, param4:Boolean = false, param5:String = "", param6:Boolean = true, param7:String = "top left", param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || Boolean(param3))
         {
            this.§_-4u§ = [];
            super();
            this.api = param1;
            if(!(_loc12_ && Boolean(param2)))
            {
               this.label = param2;
               this.§_-3e§ = param3;
               this.§_-8V§ = param4;
               if(!_loc12_)
               {
                  this.§_-3M§ = param5;
                  this.§_-C6§ = param6;
                  if(!(_loc12_ && Boolean(this)))
                  {
                     this.§_-9r§ = param7;
                     this.§_-4R§ = param8;
                     this.§_-7J§ = param9;
                     if(_loc13_ || Boolean(param1))
                     {
                     }
                  }
                  addr95:
                  this.§_-b§ = param11;
               }
            }
            this.set = param10;
            if(_loc13_)
            {
               §§goto(addr95);
            }
         }
      }
      
      public function §_-3R§(param1:Boolean = true, param2:String = "bottom left", param3:String = "http://www.flipline.com", param4:Boolean = false, param5:String = "small") : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && Boolean(param3)))
         {
            this.§_-7G§ = param1;
            if(!_loc7_)
            {
               this.§_-1C§ = param2;
               if(_loc6_)
               {
                  this.§_-89§ = param3;
                  if(!(_loc7_ && Boolean(param3)))
                  {
                     this.§_-4Y§ = param5;
                     if(_loc6_ || param1)
                     {
                     }
                  }
               }
            }
            §§goto(addr67);
         }
         this.§_-D5§ = param4;
         addr67:
      }
      
      public function §_-6E§(param1:Boolean, param2:String, param3:String, param4:Boolean, param5:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || Boolean(param3))
         {
            this.§_-1I§ = param1;
            if(_loc6_ || param1)
            {
               this.§_-2d§ = param2;
               if(_loc6_)
               {
               }
               §§goto(addr72);
            }
         }
         this.§ var§ = param3;
         if(!(_loc7_ && Boolean(param3)))
         {
            this.§_-7P§ = param4;
            if(!(_loc7_ && Boolean(param2)))
            {
               this.§_-9q§ = param5;
            }
         }
         addr72:
      }
      
      public function §_-40§(param1:Boolean, param2:String, param3:String, param4:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(param2)))
         {
            this.§_-BO§ = param1;
            if(!_loc6_)
            {
               this.§_-7m§ = param2;
               if(_loc6_ && Boolean(param3))
               {
               }
            }
            §§goto(addr54);
         }
         this.§_-8t§ = param3;
         if(_loc5_)
         {
            §§goto(addr54);
         }
         addr54:
         this.§_-2i§ = param4;
      }
      
      public function §_-V§(param1:Boolean, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param2))
         {
            this.§_-0y§ = param1;
            if(!(_loc4_ && param1))
            {
               this.§_-p§ = param2;
            }
         }
      }
      
      public function §_-B8§(param1:Boolean, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-0A§ = param1;
            if(_loc4_ || param1)
            {
               this.§_-2c§ = param2;
            }
         }
      }
      
      public function §_-8C§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:String, param6:String, param7:String, param8:*, param9:Boolean, param10:Boolean) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc11_:§_-7D§ = new §_-7D§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,this.api.§_-6f§);
         if(_loc13_ || param3)
         {
            this.§_-4u§.push(_loc11_);
         }
      }
      
      public function §_-D§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:Number = -1, param6:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§_-7D§ = new §_-7D§(param1,"large",false,param3,"button",param2,"",null,param4,false,this.api.§_-6f§,param5,param6);
         if(!(_loc9_ && Boolean(this)))
         {
            this.§_-4u§.push(_loc7_);
         }
      }
      
      public function §_-8h§(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-7D§ = new §_-7D§(param1,"small",param3,false,"button",param2,"",null,false,true,this.api.§_-6f§);
         if(_loc5_ || param3)
         {
            this.§_-4u§.push(_loc4_);
         }
      }
      
      public function §_-Er§(param1:String, param2:String, param3:Boolean = false, param4:Number = -1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-7D§ = new §_-7D§(param1,"small",false,false,"button",param2,"",null,param3,false,this.api.§_-6f§,param4);
         if(_loc6_)
         {
            this.§_-4u§.push(_loc5_);
         }
      }
      
      public function §_-9N§(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-7D§ = new §_-7D§(param1,"small",false,false,"link","",param2,null,param3,false,this.api.§_-6f§);
         if(!(_loc6_ && Boolean(this)))
         {
            this.§_-4u§.push(_loc4_);
         }
      }
      
      public function §_-8v§(param1:String, param2:*, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-7D§ = new §_-7D§(param1,"small",false,false,"custom","","",param2,param3,false,this.api.§_-6f§);
         if(!_loc5_)
         {
            this.§_-4u§.push(_loc4_);
         }
      }
      
      public function §_-1G§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-Bt§ = new §_-2b§(this.api,param1);
         }
      }
      
      public function §_-EZ§(param1:Boolean = true, param2:String = "", param3:Boolean = true, param4:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(this))
         {
            §§push(this.§_-Bt§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(this.§_-Bt§);
                  }
               }
            }
            §§pop().§_-3P§(param1,param2,param3,param4);
         }
      }
      
      public function §_-8j§(param1:String = "") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-Bt§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr34);
            }
            §§goto(addr32);
         }
         addr32:
         §§pop().§_-2y§(param1);
         addr34:
         this.§_-Bt§;
      }
   }
}

