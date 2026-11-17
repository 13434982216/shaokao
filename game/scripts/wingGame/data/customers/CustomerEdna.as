package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerEdna extends CustomerDataFile
   {
      public function CustomerEdna()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Edna";
         if(!(_loc2_ && Boolean(this)))
         {
            this.customerClipName = "Edna";
            if(_loc1_)
            {
               this.customerFirstGame = "Papa\'s Burgeria";
               if(_loc1_ || _loc1_)
               {
                  this.thumbColor = "fire";
               }
               §§goto(addr87);
            }
            this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,6,FoodData.DISTRO_RIGHT);
            this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
            §§goto(addr67);
         }
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,4);
         if(_loc1_ || Boolean(this))
         {
            addr67:
            §§goto(addr87);
         }
         addr87:
      }
   }
}

