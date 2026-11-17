package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerCooper extends CustomerDataFile
   {
      public function CustomerCooper()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.customerName = "Cooper";
            this.customerClipName = "Cooper";
         }
         this.thumbColor = "bluepurple";
         this.customerFirstGame = "Papa Louie";
         if(_loc1_)
         {
            this.customerOrder = new CustomerOrder();
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,3,FoodData.DISTRO_LEFT);
            if(_loc1_ || _loc2_)
            {
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,3,FoodData.DISTRO_RIGHT);
               this.customerOrder.addSide(FoodData.SIDE_CELERY,6);
               if(_loc1_)
               {
               }
            }
            §§goto(addr92);
         }
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         addr92:
      }
   }
}

