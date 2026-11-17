package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerChuckOrMandi extends CustomerDataFile
   {
      public function CustomerChuckOrMandi()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.customerName = "ChuckOrMandi";
            if(!_loc1_)
            {
               this.customerClipName = "ChuckOrMandi";
               this.thumbColor = "yellow";
               if(_loc2_)
               {
                  this.customerFirstGame = "Papa Louie";
                  if(_loc2_ || Boolean(this))
                  {
                  }
                  addr57:
                  this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,4,FoodData.DISTRO_ALL);
               }
               addr67:
               this.customerOrder.addWings(FoodData.MEAT_STRIPS,FoodData.SAUCE_BBQ,8,FoodData.DISTRO_ALL);
               this.customerOrder.addSide(FoodData.SIDE_CARROT,4);
               if(!(_loc1_ && _loc1_))
               {
                  this.customerOrder.addDip(FoodData.DIP_BLUECHEESE);
               }
            }
            return;
         }
         this.customerOrder = new CustomerOrder();
         if(_loc2_ || _loc2_)
         {
            §§goto(addr57);
         }
         §§goto(addr67);
      }
   }
}

