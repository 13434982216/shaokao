package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerBrunaRomano extends CustomerDataFile
   {
      public function CustomerBrunaRomano()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Bruna Romano";
         this.customerClipName = "BrunaRomano";
         this.thumbColor = "deepred";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BBQ,8);
         if(!_loc1_)
         {
            this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_LEFT);
            this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
         }
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}

