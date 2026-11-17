package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerLisa extends CustomerDataFile
   {
      public function CustomerLisa()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.customerName = "Lisa";
            if(_loc2_)
            {
            }
            §§goto(addr90);
         }
         this.customerClipName = "Lisa";
         this.customerFirstGame = "Papa\'s Burgeria";
         if(_loc2_)
         {
            this.thumbColor = "lime";
            this.customerOrder = new CustomerOrder();
            if(!(_loc1_ && Boolean(this)))
            {
               this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_MEDIUM,4);
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr90);
            }
            this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_BBQ,4,FoodData.DISTRO_RIGHT);
            this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,6,FoodData.DISTRO_LEFT);
            §§goto(addr90);
         }
         addr90:
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}

