package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerYippy extends CustomerDataFile
   {
      public function CustomerYippy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
            this.customerName = "Yippy";
            this.customerClipName = "Yippy";
            if(!(_loc2_ && _loc1_))
            {
               this.thumbColor = "lime";
               this.customerFirstGame = "Papa\'s Pancakeria";
               if(_loc1_ || _loc2_)
               {
               }
            }
            this.customerOrder = new CustomerOrder();
            if(_loc1_)
            {
               this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,3);
            }
            this.customerOrder.addSide(FoodData.SIDE_FRY,6);
            addr95:
            this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
            return;
            addr82:
         }
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BBQ,3);
         if(!(_loc2_ && _loc1_))
         {
            §§goto(addr82);
         }
         §§goto(addr95);
      }
   }
}

