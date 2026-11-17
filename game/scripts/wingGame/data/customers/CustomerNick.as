package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerNick extends CustomerDataFile
   {
      public function CustomerNick()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.customerName = "Nick";
            this.customerClipName = "Nick";
            this.customerFirstGame = "Papa\'s Taco Mia!";
            this.thumbColor = "lightred";
            this.customerOrder = new CustomerOrder();
            if(!(_loc1_ && _loc1_))
            {
               this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_SPICYGARLIC,3,FoodData.DISTRO_LEFT);
            }
            §§goto(addr90);
         }
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_MEDIUM,8,FoodData.DISTRO_RIGHT);
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
            this.customerOrder.addDip(FoodData.DIP_RANCH);
         }
         addr90:
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

