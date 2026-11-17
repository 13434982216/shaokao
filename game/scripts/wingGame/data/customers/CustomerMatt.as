package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMatt extends CustomerDataFile
   {
      public function CustomerMatt()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Matt";
         this.customerClipName = "Matt";
         if(!(_loc2_ && _loc2_))
         {
            this.customerFirstGame = "Papa\'s Burgeria";
            this.thumbColor = "flipline";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_BUFFALO,4);
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,8);
            this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4);
         }
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}

