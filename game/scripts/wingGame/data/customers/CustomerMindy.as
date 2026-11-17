package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMindy extends CustomerDataFile
   {
      public function CustomerMindy()
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
         this.customerName = "Mindy";
         this.customerClipName = "Mindy";
         if(_loc1_)
         {
            this.thumbColor = "seafoam";
            this.customerFirstGame = "Papa Louie";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,6);
            this.customerOrder.addSide(FoodData.SIDE_CARROT,6);
            if(!(_loc2_ && _loc2_))
            {
               this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
            }
         }
      }
   }
}

