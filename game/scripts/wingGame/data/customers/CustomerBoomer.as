package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerBoomer extends CustomerDataFile
   {
      public function CustomerBoomer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.customerName = "Boomer";
            this.customerClipName = "Boomer";
            if(!(_loc1_ && _loc1_))
            {
               this.isCloser = true;
               if(_loc2_ || _loc2_)
               {
                  this.thumbColor = "lightred";
                  this.customerFirstGame = "Papa\'s Wingeria";
                  this.customerOrder = new CustomerOrder();
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BBQ,4);
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_SPICYGARLIC,4);
               }
               addr97:
               this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
            }
            §§goto(addr102);
         }
         this.customerOrder.addSide(FoodData.SIDE_CHEESECUBES,8);
         this.customerOrder.addDip(FoodData.DIP_RANCH);
         if(!(_loc1_ && _loc1_))
         {
            §§goto(addr97);
         }
         addr102:
      }
   }
}

