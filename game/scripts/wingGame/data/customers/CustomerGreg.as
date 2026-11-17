package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGreg extends CustomerDataFile
   {
      public function CustomerGreg()
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
         this.customerName = "Greg";
         this.customerClipName = "Greg";
         this.customerFirstGame = "Papa Louie";
         if(_loc2_)
         {
            this.thumbColor = "lime";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,8);
            if(!_loc1_)
            {
               this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4);
            }
            this.customerOrder.addDip(FoodData.DIP_RANCH);
         }
      }
   }
}

