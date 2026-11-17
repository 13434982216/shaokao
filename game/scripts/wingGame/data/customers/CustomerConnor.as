package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerConnor extends CustomerDataFile
   {
      public function CustomerConnor()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.customerName = "Connor";
            this.customerClipName = "Connor";
            if(_loc1_ || Boolean(this))
            {
               this.customerFirstGame = "Papa\'s Burgeria";
               if(_loc1_ || _loc1_)
               {
               }
               §§goto(addr102);
            }
            this.thumbColor = "skyblue";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,8);
            if(_loc1_ || _loc1_)
            {
               this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,4,FoodData.DISTRO_LEFT);
               this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_RIGHT);
               if(_loc1_ || _loc1_)
               {
                  this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
                  §§goto(addr102);
               }
               §§goto(addr114);
            }
         }
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         addr102:
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         if(!(_loc2_ && _loc1_))
         {
            addr114:
            this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
            if(_loc1_ || Boolean(this))
            {
            }
         }
      }
   }
}

