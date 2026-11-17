package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRita extends CustomerDataFile
   {
      public function CustomerRita()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Rita";
         this.customerClipName = "Rita";
         this.thumbColor = "lime";
         this.customerFirstGame = "Papa Louie";
         this.customerOrder = new CustomerOrder();
         if(_loc2_)
         {
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,3);
            if(!(_loc1_ && _loc2_))
            {
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,3);
               this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BBQ,3);
               if(!(_loc1_ && _loc2_))
               {
                  this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
               }
            }
            this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         }
      }
   }
}

