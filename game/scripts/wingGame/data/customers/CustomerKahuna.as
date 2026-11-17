package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerKahuna extends CustomerDataFile
   {
      public function CustomerKahuna()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Kahuna";
         if(!_loc2_)
         {
            this.customerClipName = "Kahuna";
            this.customerFirstGame = "Papa\'s Freezeria";
            if(_loc1_)
            {
               this.thumbColor = "yelloworange";
               if(_loc2_ && _loc1_)
               {
               }
               addr79:
               this.customerOrder.addDip(FoodData.DIP_RANCH);
            }
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_ATOMIC,6,FoodData.DISTRO_LEFT);
            this.customerOrder.addSide(FoodData.SIDE_CARROT,6,FoodData.DISTRO_RIGHT);
            if(_loc1_ || Boolean(this))
            {
               §§goto(addr79);
            }
         }
      }
   }
}

