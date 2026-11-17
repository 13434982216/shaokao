package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerAlberto extends CustomerDataFile
   {
      public function CustomerAlberto()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Alberto";
         this.customerClipName = "Alberto";
         if(!_loc1_)
         {
            this.thumbColor = "lime";
            if(_loc2_ || Boolean(this))
            {
               this.customerFirstGame = "Papa\'s Burgeria";
               if(!_loc1_)
               {
                  this.customerOrder = new CustomerOrder();
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_CALYPSO,4);
               }
            }
            §§goto(addr74);
         }
         this.customerOrder.addSide(FoodData.SIDE_CELERY,8);
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         addr74:
      }
   }
}

