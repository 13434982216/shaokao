package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerOlga extends CustomerDataFile
   {
      public function CustomerOlga()
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
            this.customerName = "Olga";
            this.customerClipName = "Olga";
            if(_loc2_)
            {
               this.thumbColor = "pink";
               this.customerOrder = new CustomerOrder();
               if(_loc2_ || _loc2_)
               {
                  this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_HONEYMUSTARD,6);
               }
               §§goto(addr91);
            }
            addr86:
            this.customerOrder.addDip(FoodData.DIP_RANCH);
            §§goto(addr91);
         }
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,6);
         if(!(_loc1_ && _loc2_))
         {
            this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,6);
            if(_loc2_)
            {
            }
            addr91:
            return;
         }
         §§goto(addr86);
      }
   }
}

