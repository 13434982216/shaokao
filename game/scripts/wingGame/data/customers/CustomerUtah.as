package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerUtah extends CustomerDataFile
   {
      public function CustomerUtah()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Utah";
         this.customerClipName = "Utah";
         if(_loc1_ || Boolean(this))
         {
            this.customerFirstGame = "Papa\'s Freezeria";
            this.thumbColor = "yelloworange";
            if(!_loc2_)
            {
               this.customerOrder = new CustomerOrder();
               if(_loc1_ || _loc1_)
               {
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,6);
               }
            }
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,6);
         }
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
      }
   }
}

