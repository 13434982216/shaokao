package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerLittleEdoardo extends CustomerDataFile
   {
      public function CustomerLittleEdoardo()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Little Edoardo";
         if(_loc2_ || Boolean(this))
         {
            this.customerClipName = "LittleEdoardo";
            this.thumbColor = "deepred";
            this.customerOrder = new CustomerOrder();
            if(!(_loc1_ && Boolean(this)))
            {
               this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WASABI,4);
            }
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_PARMESAN,4);
            this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4);
            if(_loc2_ || _loc2_)
            {
               this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4);
            }
         }
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}

