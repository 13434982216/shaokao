package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPapaLouie extends CustomerDataFile
   {
      public function CustomerPapaLouie()
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
            this.customerName = "Papa Louie";
            this.customerClipName = "PapaLouie";
            this.thumbColor = "midblue";
            if(!_loc1_)
            {
               this.customerFirstGame = "Papa Louie";
            }
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_CALYPSO,4);
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,4,FoodData.DISTRO_LEFT);
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,4,FoodData.DISTRO_RIGHT);
         }
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4);
      }
   }
}

