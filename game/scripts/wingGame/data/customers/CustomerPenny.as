package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPenny extends CustomerDataFile
   {
      public function CustomerPenny()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Penny";
         this.customerClipName = "Penny";
         if(!(_loc1_ && _loc2_))
         {
            this.thumbColor = "dustyblue";
            if(!_loc1_)
            {
               this.customerFirstGame = "Papa Louie";
            }
            §§goto(addr54);
         }
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_CALYPSO,6);
         addr54:
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,3,FoodData.DISTRO_RIGHT);
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerOrder.addSide(FoodData.SIDE_CELERY,6,FoodData.DISTRO_LEFT);
            if(_loc2_)
            {
            }
            §§goto(addr93);
         }
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
         addr93:
      }
   }
}

