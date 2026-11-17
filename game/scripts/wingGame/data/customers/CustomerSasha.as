package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerSasha extends CustomerDataFile
   {
      public function CustomerSasha()
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
         if(_loc2_)
         {
            this.customerName = "Sasha";
         }
         this.customerClipName = "Sasha";
         if(_loc2_ || _loc1_)
         {
            this.thumbColor = "yelloworange";
         }
         this.customerOrder = new CustomerOrder();
         if(_loc2_)
         {
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_MEDIUM,4);
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BUFFALO,8);
            if(_loc1_)
            {
            }
            §§goto(addr75);
         }
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
         addr75:
      }
   }
}

