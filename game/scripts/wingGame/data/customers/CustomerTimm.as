package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerTimm extends CustomerDataFile
   {
      public function CustomerTimm()
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
         this.customerName = "Timm";
         this.customerClipName = "Timm";
         if(_loc1_)
         {
            this.thumbColor = "fire";
            if(!(_loc2_ && _loc1_))
            {
               this.customerFirstGame = "Papa Louie";
               this.customerOrder = new CustomerOrder();
            }
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,4);
            if(_loc1_ || _loc2_)
            {
               this.customerOrder.addSide(FoodData.SIDE_CELERY,4);
               this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4);
               this.customerOrder.addDip(FoodData.DIP_RANCH);
            }
         }
      }
   }
}

