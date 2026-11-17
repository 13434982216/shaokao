package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMaggie extends CustomerDataFile
   {
      public function CustomerMaggie()
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
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerName = "Maggie";
            if(!_loc1_)
            {
               this.customerClipName = "Maggie";
               this.thumbColor = "yelloworange";
               this.customerFirstGame = "Papa Louie";
               if(_loc1_)
               {
               }
            }
            this.customerOrder = new CustomerOrder();
         }
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_TERIYAKI,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_ALL);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}

