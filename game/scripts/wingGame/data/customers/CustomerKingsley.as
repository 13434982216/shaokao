package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerKingsley extends CustomerDataFile
   {
      public function CustomerKingsley()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.customerName = "Kingsley";
            if(!_loc1_)
            {
               this.customerClipName = "Kingsley";
               this.thumbColor = "skyblue";
               this.customerOrder = new CustomerOrder();
            }
         }
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,4);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,8);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         if(_loc2_ || _loc1_)
         {
            this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         }
      }
   }
}

