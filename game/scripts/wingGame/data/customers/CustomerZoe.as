package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerZoe extends CustomerDataFile
   {
      public function CustomerZoe()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.customerName = "Zoe";
            if(!(_loc1_ && Boolean(this)))
            {
               this.customerClipName = "Zoe";
               this.customerFirstGame = "Papa\'s Taco Mia!";
            }
            §§goto(addr99);
         }
         this.thumbColor = "yellow";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,4);
         if(!_loc1_)
         {
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,4,FoodData.DISTRO_RIGHT);
            this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_LEFT);
         }
         this.customerOrder.addSide(FoodData.SIDE_CELERY,2,FoodData.DISTRO_LEFT);
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         addr99:
      }
   }
}

