package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerAllan extends CustomerDataFile
   {
      public function CustomerAllan()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.customerName = "Allan";
            this.customerClipName = "Allan";
            if(_loc1_ || _loc2_)
            {
               this.thumbColor = "lime";
               this.customerFirstGame = "Papa Louie";
               if(_loc1_ || Boolean(this))
               {
               }
            }
            this.customerOrder = new CustomerOrder();
            if(_loc1_ || Boolean(this))
            {
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,3);
               this.customerOrder.addSide(FoodData.SIDE_CARROT,3);
               this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,6);
               if(!(_loc2_ && _loc2_))
               {
                  this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
               }
            }
         }
         this.customerOrder.addDip(FoodData.DIP_RANCH);
      }
   }
}

