package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerClover extends CustomerDataFile
   {
      public function CustomerClover()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Clover";
         this.customerClipName = "Clover";
         this.thumbColor = "seafoam";
         if(!(_loc1_ && _loc2_))
         {
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,4,FoodData.DISTRO_ALL);
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_HONEYMUSTARD,4,FoodData.DISTRO_ALL);
            if(!_loc1_)
            {
               this.customerOrder.addDip(FoodData.DIP_RANCH);
            }
            this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
            this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         }
      }
   }
}

