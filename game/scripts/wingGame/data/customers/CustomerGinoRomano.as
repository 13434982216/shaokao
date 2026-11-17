package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGinoRomano extends CustomerDataFile
   {
      public function CustomerGinoRomano()
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
         this.customerName = "Gino Romano";
         this.customerClipName = "GinoRomano";
         if(_loc2_ || _loc2_)
         {
            this.thumbColor = "deepred";
         }
         this.customerOrder = new CustomerOrder();
         if(_loc2_ || _loc2_)
         {
            this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_WASABI,4);
            if(_loc2_ || Boolean(this))
            {
               this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,4,FoodData.DISTRO_LEFT);
            }
            §§goto(addr90);
         }
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_TERIYAKI,2,FoodData.DISTRO_RIGHT);
         addr90:
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
      }
   }
}

