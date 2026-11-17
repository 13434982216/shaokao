package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerVicky extends CustomerDataFile
   {
      public function CustomerVicky()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.customerName = "Vicky";
            this.customerClipName = "Vicky";
            this.customerFirstGame = "Papa\'s Burgeria";
            if(_loc1_ || _loc2_)
            {
               this.thumbColor = "skyblue";
               this.customerOrder = new CustomerOrder();
               if(_loc2_)
               {
               }
               §§goto(addr112);
            }
            §§goto(addr60);
         }
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,4);
         addr60:
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_CALYPSO,2,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_LEFT);
         if(_loc1_ || Boolean(this))
         {
            this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4,FoodData.DISTRO_RIGHT);
            if(!_loc2_)
            {
               this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
            }
         }
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         addr112:
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
      }
   }
}

