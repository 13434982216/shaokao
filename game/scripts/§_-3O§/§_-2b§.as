package §_-3O§
{
   import §_-5m§.§_-2w§;
   
   public class §_-2b§
   {
      private var api:§_-2w§;
      
      public var §_-Ek§:Boolean = false;
      
      public var §_-AQ§:Boolean = false;
      
      public var §_-7e§:Boolean = false;
      
      public var §_-0g§:String = "";
      
      public var §_-8O§:String = "";
      
      public var §_-BU§:Array;
      
      public function §_-2b§(param1:§_-2w§, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§_-BU§ = [];
            if(_loc3_)
            {
               super();
               if(_loc4_ && param2)
               {
               }
            }
            this.api = param1;
            if(_loc3_ || Boolean(param1))
            {
            }
            §§goto(addr56);
         }
         this.§_-Ek§ = param2;
         addr56:
      }
      
      public function §_-3P§(param1:Boolean = true, param2:String = "", param3:Boolean = true, param4:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§_-7e§ = param1;
            if(!(_loc5_ && param3))
            {
               this.§_-8O§ = param2;
               if(_loc6_)
               {
               }
            }
            §§goto(addr63);
         }
         this.§_-AQ§ = param3;
         if(!(_loc5_ && param3))
         {
            this.§_-0g§ = param4;
         }
         addr63:
      }
      
      public function §_-2y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-BU§.push(param1);
         }
      }
   }
}

