package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerWendy extends CustomerDataFile
   {
      public function CustomerWendy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            this.customerName = "Wendy";
            if(!_loc2_)
            {
               this.customerClipName = "Wendy";
               if(!(_loc2_ && Boolean(this)))
               {
                  this.customerFirstGame = "Papa\'s Pancakeria";
               }
               addr57:
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,4);
               this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,4,FoodData.DISTRO_LEFT);
               this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_RIGHT);
            }
            this.customerOrder.addDip(FoodData.DIP_RANCH);
            return;
         }
         this.thumbColor = "purple";
         this.customerOrder = new CustomerOrder();
         if(_loc1_)
         {
            this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_WASABI,4);
         }
         §§goto(addr57);
      }
   }
}

