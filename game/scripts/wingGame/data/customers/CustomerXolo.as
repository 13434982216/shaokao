package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerXolo extends CustomerDataFile
   {
      public function CustomerXolo()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Xolo";
         if(_loc2_ || _loc2_)
         {
            this.customerClipName = "Xolo";
            this.customerFirstGame = "Papa\'s Wingeria";
            this.thumbColor = "pink";
            this.isCloser = true;
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,5);
            this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,5);
            this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
            this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         }
      }
   }
}

