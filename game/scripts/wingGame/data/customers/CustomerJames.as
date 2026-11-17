package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerJames extends CustomerDataFile
   {
      public function CustomerJames()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "James";
         this.customerClipName = "James";
         this.thumbColor = "midred";
         if(!(_loc1_ && _loc2_))
         {
            this.customerFirstGame = "Papa Louie";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,8,FoodData.DISTRO_ALL);
            if(!_loc1_)
            {
               this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4);
            }
         }
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

