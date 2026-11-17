package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCaptainCori extends CustomerDataFile
   {
      public function CustomerCaptainCori()
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
         this.customerName = "Captain Cori";
         this.customerClipName = "CaptainCori";
         this.customerFirstGame = "Papa\'s Freezeria";
         this.thumbColor = "yelloworange";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_BUFFALO,4);
         if(!_loc2_)
         {
            this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,4);
         }
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_BBQ,4);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         if(_loc1_)
         {
            this.customerOrder.addDip(FoodData.DIP_RANCH);
            this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         }
      }
   }
}

