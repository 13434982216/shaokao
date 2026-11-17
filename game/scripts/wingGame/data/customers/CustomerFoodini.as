package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerFoodini extends CustomerDataFile
   {
      public function CustomerFoodini()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.customerName = "Foodini";
         if(_loc2_ || Boolean(this))
         {
            this.customerClipName = "Foodini";
            if(_loc2_)
            {
               this.thumbColor = "pink";
               this.customerFirstGame = "Papa\'s Pancakeria";
               if(!_loc1_)
               {
                  this.customerOrder = new CustomerOrder();
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,4,FoodData.DISTRO_LEFT);
                  if(_loc2_ || _loc2_)
                  {
                     this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_SPICYGARLIC,6,FoodData.DISTRO_RIGHT);
                     if(_loc1_)
                     {
                     }
                  }
                  this.customerOrder.addSide(FoodData.SIDE_CELERY,4,FoodData.DISTRO_LEFT);
                  if(_loc2_)
                  {
                  }
               }
               this.customerOrder.addDip(FoodData.DIP_AWESOMESAUCE);
               if(_loc2_)
               {
               }
               §§goto(addr118);
            }
            §§goto(addr113);
         }
         this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
         if(_loc2_ || _loc2_)
         {
            addr113:
            this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
            §§goto(addr118);
         }
         addr118:
      }
   }
}

