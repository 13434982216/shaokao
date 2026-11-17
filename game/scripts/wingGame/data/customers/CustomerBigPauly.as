package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerBigPauly extends CustomerDataFile
   {
      public function CustomerBigPauly()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.customerName = "Big Pauly";
            this.customerClipName = "BigPauly";
            this.thumbColor = "lightred";
            this.customerFirstGame = "Papa Louie";
            if(!(_loc2_ && Boolean(this)))
            {
               this.customerOrder = new CustomerOrder();
            }
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,8,FoodData.DISTRO_LEFT);
            this.customerOrder.addSide(FoodData.SIDE_FRY,8,FoodData.DISTRO_RIGHT);
            this.customerOrder.addDip(FoodData.DIP_RANCH);
            this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
            this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         }
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
      }
   }
}

