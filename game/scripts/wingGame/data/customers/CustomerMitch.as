package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMitch extends CustomerDataFile
   {
      public function CustomerMitch()
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
         if(!_loc2_)
         {
            this.customerName = "Mitch";
            this.customerClipName = "Mitch";
            this.thumbColor = "bluepurple";
            this.customerFirstGame = "Papa Louie";
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,8);
            if(_loc1_ || Boolean(this))
            {
            }
            §§goto(addr71);
         }
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,8);
         this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
         addr71:
      }
   }
}

