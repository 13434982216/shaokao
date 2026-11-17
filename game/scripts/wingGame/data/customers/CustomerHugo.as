package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerHugo extends CustomerDataFile
   {
      public function CustomerHugo()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Hugo";
         this.customerClipName = "Hugo";
         if(!(_loc1_ && Boolean(this)))
         {
            this.thumbColor = "bluepurple";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,6);
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_ATOMIC,6);
         }
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}

