package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCecilia extends CustomerDataFile
   {
      public function CustomerCecilia()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Cecilia";
         if(_loc2_ || Boolean(this))
         {
            this.customerClipName = "Cecilia";
         }
         this.thumbColor = "midred";
         this.customerOrder = new CustomerOrder();
         if(!_loc1_)
         {
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,4,FoodData.DISTRO_RIGHT);
         }
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,8);
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

