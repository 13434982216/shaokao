package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPeggy extends CustomerDataFile
   {
      public function CustomerPeggy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.customerName = "Peggy";
            if(_loc1_)
            {
            }
            addr71:
            this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_ATOMIC,4);
            this.customerOrder.addSide(FoodData.SIDE_CELERY,4);
            this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
            return;
            addr79:
         }
         this.customerClipName = "Peggy";
         if(!(_loc2_ && _loc2_))
         {
            this.thumbColor = "skyblue";
            if(_loc1_ || Boolean(this))
            {
            }
            §§goto(addr79);
         }
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,4);
         if(_loc2_ && Boolean(this))
         {
         }
         §§goto(addr71);
      }
   }
}

