package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerWally extends CustomerDataFile
   {
      public function CustomerWally()
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
         if(_loc2_ || Boolean(this))
         {
            this.customerName = "Wally";
            this.customerClipName = "Wally";
            if(_loc2_ || _loc2_)
            {
               this.thumbColor = "brown";
            }
            this.customerOrder.addSide(FoodData.SIDE_CELERY,8);
            addr89:
            this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
            return;
            addr76:
         }
         this.customerFirstGame = "Papa Louie";
         if(_loc2_ || _loc2_)
         {
            this.customerOrder = new CustomerOrder();
            if(!_loc1_)
            {
               this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_TERIYAKI,4);
            }
            §§goto(addr89);
         }
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_CALYPSO,4);
         §§goto(addr76);
      }
   }
}

