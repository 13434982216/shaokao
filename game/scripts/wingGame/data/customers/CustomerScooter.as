package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerScooter extends CustomerDataFile
   {
      public function CustomerScooter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Scooter";
         this.customerClipName = "Scooter";
         if(!(_loc2_ && _loc1_))
         {
            this.thumbColor = "bluepurple";
            if(_loc2_)
            {
            }
            this.customerOrder.addSide(FoodData.SIDE_CELERY,3,FoodData.DISTRO_LEFT);
            this.customerOrder.addSide(FoodData.SIDE_CARROT,6,FoodData.DISTRO_RIGHT);
            addr85:
            return;
            addr62:
         }
         this.customerFirstGame = "Papa\'s Wingeria";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_HONEYMUSTARD,3,FoodData.DISTRO_LEFT);
         if(!(_loc2_ && _loc1_))
         {
            §§goto(addr62);
         }
         §§goto(addr85);
      }
   }
}

