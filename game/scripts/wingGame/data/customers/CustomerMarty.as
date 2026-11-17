package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMarty extends CustomerDataFile
   {
      public function CustomerMarty()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerName = "Marty";
            if(_loc2_)
            {
               this.customerClipName = "Marty";
               if(!(_loc1_ && _loc1_))
               {
                  this.thumbColor = "midred";
                  if(_loc2_ || _loc2_)
                  {
                     this.customerFirstGame = "Papa Louie";
                  }
                  this.customerOrder = new CustomerOrder();
                  this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_ATOMIC,3);
                  if(_loc1_ && _loc1_)
                  {
                  }
                  §§goto(addr115);
               }
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_ATOMIC,3);
               if(_loc1_ && _loc2_)
               {
               }
               §§goto(addr115);
            }
         }
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,12);
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
         }
         addr115:
      }
   }
}

