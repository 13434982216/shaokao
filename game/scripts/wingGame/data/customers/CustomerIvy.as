package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerIvy extends CustomerDataFile
   {
      public function CustomerIvy()
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
         this.customerName = "Ivy";
         if(_loc1_)
         {
            this.customerClipName = "Ivy";
            this.customerFirstGame = "Papa\'s Freezeria";
            this.thumbColor = "yelloworange";
            this.customerOrder = new CustomerOrder();
            if(_loc2_ && _loc1_)
            {
            }
            §§goto(addr80);
         }
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_TERIYAKI,6);
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_MEDIUM,2);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,2);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,2);
         addr80:
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

