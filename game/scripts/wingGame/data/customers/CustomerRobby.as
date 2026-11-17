package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRobby extends CustomerDataFile
   {
      public function CustomerRobby()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Robby";
         this.customerClipName = "Robby";
         if(_loc1_)
         {
            this.thumbColor = "lightred";
            if(!(_loc2_ && _loc2_))
            {
               this.customerFirstGame = "Papa Louie";
               if(_loc1_)
               {
                  this.customerOrder = new CustomerOrder();
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,8);
                  this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,4,FoodData.DISTRO_LEFT);
               }
               §§goto(addr85);
            }
            this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_RIGHT);
            if(_loc2_)
            {
            }
            §§goto(addr85);
         }
         this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
         addr85:
      }
   }
}

