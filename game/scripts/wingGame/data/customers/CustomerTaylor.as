package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerTaylor extends CustomerDataFile
   {
      public function CustomerTaylor()
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
         this.customerName = "Taylor";
         if(!_loc1_)
         {
            this.customerClipName = "Taylor";
            this.thumbColor = "midred";
         }
         this.customerFirstGame = "Papa Louie";
         if(_loc2_)
         {
            this.customerOrder = new CustomerOrder();
            if(_loc2_ || _loc2_)
            {
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,4);
               if(_loc2_ || _loc1_)
               {
                  this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_MEDIUM,8);
                  if(_loc1_ && _loc2_)
                  {
                  }
               }
            }
            §§goto(addr90);
         }
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         addr90:
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

