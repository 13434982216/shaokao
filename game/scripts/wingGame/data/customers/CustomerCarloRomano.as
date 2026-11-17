package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCarloRomano extends CustomerDataFile
   {
      public function CustomerCarloRomano()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.customerName = "Carlo Romano";
            this.customerClipName = "CarloRomano";
            this.thumbColor = "deepred";
            this.customerOrder = new CustomerOrder();
            if(_loc1_)
            {
               this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,4);
               if(_loc1_ || _loc1_)
               {
                  this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_LEFT);
               }
            }
            this.customerOrder.addSide(FoodData.SIDE_CELERY,2,FoodData.DISTRO_LEFT);
         }
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,6,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}

