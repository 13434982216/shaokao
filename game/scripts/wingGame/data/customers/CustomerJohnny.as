package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerJohnny extends CustomerDataFile
   {
      public function CustomerJohnny()
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
         if(_loc1_)
         {
            this.customerName = "Johnny";
            if(!(_loc2_ && _loc1_))
            {
               this.customerClipName = "Johnny";
               this.customerFirstGame = "Papa\'s Pancakeria";
               if(!_loc2_)
               {
                  this.thumbColor = "dustyblue";
                  this.isCloser = true;
               }
            }
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_CALYPSO,3);
            if(_loc1_ || _loc1_)
            {
               this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_BUFFALO,9);
            }
            §§goto(addr85);
         }
         this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         addr85:
      }
   }
}

