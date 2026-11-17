package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerFranco extends CustomerDataFile
   {
      public function CustomerFranco()
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
         if(_loc1_ || _loc2_)
         {
            this.customerName = "Franco";
            this.customerClipName = "Franco";
            this.thumbColor = "yelloworange";
            if(_loc1_)
            {
               this.customerOrder = new CustomerOrder();
               if(!_loc2_)
               {
                  this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_ATOMIC,6);
               }
               §§goto(addr75);
            }
            this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,6);
         }
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         addr75:
      }
   }
}

