package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerAkari extends CustomerDataFile
   {
      public function CustomerAkari()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Akari";
         this.customerClipName = "Akari";
         if(_loc2_ || _loc1_)
         {
            this.customerFirstGame = "Papa\'s Burgeria";
            this.thumbColor = "yellow";
         }
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_MEDIUM,4);
         if(!_loc1_)
         {
            this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_LEFT);
         }
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}

