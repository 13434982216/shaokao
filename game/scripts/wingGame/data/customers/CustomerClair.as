package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerClair extends CustomerDataFile
   {
      public function CustomerClair()
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
         this.customerName = "Clair";
         this.customerClipName = "Clair";
         this.thumbColor = "forest";
         this.customerOrder = new CustomerOrder();
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_BBQ,6);
         this.customerOrder.addSide(FoodData.SIDE_CELERY,6);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

