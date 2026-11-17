package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerGremmie extends CustomerDataFile
   {
      public function CustomerGremmie()
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
         if(!(_loc1_ && _loc1_))
         {
            this.customerName = "Gremmie";
            this.customerClipName = "Gremmie";
            this.customerFirstGame = "Papa\'s Freezeria";
            if(!(_loc1_ && _loc1_))
            {
               this.thumbColor = "yelloworange";
               this.customerOrder = new CustomerOrder();
               if(_loc2_)
               {
                  this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,6);
                  if(_loc1_ && Boolean(this))
                  {
                  }
               }
            }
            §§goto(addr98);
         }
         this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_CALYPSO,3);
         if(_loc2_ || _loc1_)
         {
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,3);
         }
         addr98:
      }
   }
}

