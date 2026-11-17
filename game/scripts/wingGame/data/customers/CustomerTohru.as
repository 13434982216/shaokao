package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerTohru extends CustomerDataFile
   {
      public function CustomerTohru()
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
         if(!_loc1_)
         {
            this.customerName = "Tohru";
            if(_loc2_)
            {
               this.customerClipName = "Tohru";
               this.thumbColor = "lime";
               this.customerOrder = new CustomerOrder();
               if(!(_loc1_ && _loc2_))
               {
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,2);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WILDONION,2);
                     if(_loc1_)
                     {
                     }
                  }
                  addr87:
                  this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,8);
               }
               this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_MEDIUM,4);
               if(_loc2_)
               {
                  §§goto(addr87);
               }
            }
         }
      }
   }
}

