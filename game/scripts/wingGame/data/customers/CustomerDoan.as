package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerDoan extends CustomerDataFile
   {
      public function CustomerDoan()
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
         this.customerName = "Doan";
         this.customerClipName = "Doan";
         this.customerFirstGame = "Papa\'s Burgeria";
         this.thumbColor = "midblue";
         this.customerOrder = new CustomerOrder();
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,4,FoodData.DISTRO_LEFT);
            if(!_loc1_)
            {
               this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_CALYPSO,4,FoodData.DISTRO_RIGHT);
               this.customerOrder.addSide(FoodData.SIDE_CELERY,8,FoodData.DISTRO_ALL);
               this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
               this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
               this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
               if(_loc1_)
               {
               }
               §§goto(addr103);
            }
         }
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         addr103:
      }
   }
}

