package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerXandra extends CustomerDataFile
   {
      public function CustomerXandra()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerName = "Xandra";
            this.customerClipName = "Xandra";
         }
         this.customerFirstGame = "Papa\'s Taco Mia!";
         if(_loc2_ || Boolean(this))
         {
            this.thumbColor = "pink";
            if(_loc2_ || _loc2_)
            {
               this.customerOrder = new CustomerOrder();
            }
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WILDONION,4,FoodData.DISTRO_LEFT);
            if(_loc2_ || _loc2_)
            {
               this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_WASABI,4,FoodData.DISTRO_RIGHT);
            }
         }
         this.customerOrder.addSide(FoodData.SIDE_FRY,8);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
      }
   }
}

