package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGeorgito extends CustomerDataFile
   {
      public function CustomerGeorgito()
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
         this.customerName = "Georgito";
         if(!(_loc2_ && Boolean(this)))
         {
            this.customerClipName = "Georgito";
            this.customerFirstGame = "Papa\'s Taco Mia!";
            this.thumbColor = "emerald";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WASABI,3);
         }
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_TERIYAKI,9);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}

