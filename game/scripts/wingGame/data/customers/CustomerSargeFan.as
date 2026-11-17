package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerSargeFan extends CustomerDataFile
   {
      public function CustomerSargeFan()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Sarge Fan!";
         this.customerClipName = "SargeFan";
         if(_loc1_)
         {
            this.thumbColor = "purple";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_WILDONION,6);
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,3,FoodData.DISTRO_LEFT);
            if(_loc1_ || _loc2_)
            {
            }
            §§goto(addr84);
         }
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WILDONION,3,FoodData.DISTRO_RIGHT);
         if(!(_loc2_ && _loc2_))
         {
            §§goto(addr84);
         }
         addr84:
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

