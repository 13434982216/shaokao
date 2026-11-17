package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerHank extends CustomerDataFile
   {
      public function CustomerHank()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Hank";
         if(!(_loc2_ && _loc1_))
         {
            this.customerClipName = "Hank";
            this.customerFirstGame = "Papa\'s Pancakeria";
            this.thumbColor = "yelloworange";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,4,FoodData.DISTRO_ALL);
            this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_ALL);
            if(_loc1_)
            {
               this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_RIGHT);
               if(_loc2_)
               {
               }
            }
            this.customerOrder.addDip(FoodData.DIP_RANCH);
         }
      }
   }
}

