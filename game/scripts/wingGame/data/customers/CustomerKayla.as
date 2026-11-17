package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerKayla extends CustomerDataFile
   {
      public function CustomerKayla()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Kayla";
         this.customerClipName = "Kayla";
         this.customerFirstGame = "Papa\'s Burgeria";
         if(!(_loc2_ && _loc2_))
         {
            this.thumbColor = "yelloworange";
            this.customerOrder = new CustomerOrder();
         }
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_PARMESAN,4,FoodData.DISTRO_LEFT);
         if(!(_loc2_ && _loc2_))
         {
            this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_TERIYAKI,4,FoodData.DISTRO_RIGHT);
            this.customerOrder.addSide(FoodData.SIDE_CARROT,4);
            this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
         }
      }
   }
}

