package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRico extends CustomerDataFile
   {
      public function CustomerRico()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.customerName = "Rico";
            this.customerClipName = "Rico";
            if(_loc2_)
            {
               this.customerFirstGame = "Papa\'s Taco Mia!";
               if(_loc2_)
               {
               }
               addr62:
               this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_ATOMIC,8);
               this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BUFFALO,8);
               addr70:
               if(_loc1_)
               {
               }
               §§goto(addr92);
            }
            this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
            addr92:
            return;
         }
         this.thumbColor = "yelloworange";
         if(_loc2_ || Boolean(this))
         {
            this.customerOrder = new CustomerOrder();
            if(_loc1_ && _loc2_)
            {
            }
            §§goto(addr70);
         }
         §§goto(addr62);
      }
   }
}

