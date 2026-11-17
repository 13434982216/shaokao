package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerJojo extends CustomerDataFile
   {
      public function CustomerJojo()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.customerName = "Jojo";
            this.customerClipName = "Jojo";
            this.isCloser = true;
            this.customerFirstGame = "Papa\'s Taco Mia!";
            if(_loc1_ || _loc1_)
            {
            }
            §§goto(addr48);
         }
         this.thumbColor = "emerald";
         this.customerOrder = new CustomerOrder();
         addr48:
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,6,FoodData.DISTRO_LEFT);
         if(!(_loc2_ && _loc2_))
         {
            this.customerOrder.addSide(FoodData.SIDE_CELERY,6,FoodData.DISTRO_RIGHT);
            this.customerOrder.addDip(FoodData.DIP_RANCH);
         }
      }
   }
}

