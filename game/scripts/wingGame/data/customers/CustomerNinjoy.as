package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerNinjoy extends CustomerDataFile
   {
      public function CustomerNinjoy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
            this.customerName = "Ninjoy";
            this.customerClipName = "Ninjoy";
            this.isCloser = true;
            this.customerFirstGame = "Papa\'s Freezeria";
            if(!(_loc2_ && _loc1_))
            {
               this.thumbColor = "yelloworange";
               this.customerOrder = new CustomerOrder();
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,4);
            }
            this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_CALYPSO,2,FoodData.DISTRO_LEFT);
            this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_TERIYAKI,2,FoodData.DISTRO_RIGHT);
            this.customerOrder.addSide(FoodData.SIDE_CELERY,8);
         }
      }
   }
}

