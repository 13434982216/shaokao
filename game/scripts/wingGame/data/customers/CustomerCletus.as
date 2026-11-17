package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCletus extends CustomerDataFile
   {
      public function CustomerCletus()
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
         this.customerName = "Cletus";
         if(_loc2_)
         {
            this.customerClipName = "Cletus";
            this.customerFirstGame = "Papa\'s Burgeria";
            this.thumbColor = "brown";
            if(!(_loc1_ && _loc2_))
            {
               this.customerOrder = new CustomerOrder();
               if(_loc2_ || _loc2_)
               {
               }
            }
            §§goto(addr89);
         }
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,8);
         this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_RIGHT);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         addr89:
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
      }
   }
}

