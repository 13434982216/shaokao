package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerPrudence extends CustomerDataFile
   {
      public function CustomerPrudence()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Prudence";
         this.customerClipName = "Prudence";
         this.thumbColor = "bluepurple";
         this.customerFirstGame = "Papa Louie";
         if(_loc1_)
         {
            this.customerOrder = new CustomerOrder();
            if(!(_loc2_ && _loc1_))
            {
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_PARMESAN,4);
            }
            this.customerOrder.addSide(FoodData.SIDE_CELERY,2,FoodData.DISTRO_RIGHT);
            §§goto(addr77);
         }
         this.customerOrder.addSide(FoodData.SIDE_CARROT,4,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,2,FoodData.DISTRO_LEFT);
         this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,4,FoodData.DISTRO_RIGHT);
         addr77:
         if(_loc1_)
         {
            this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
         }
      }
   }
}

