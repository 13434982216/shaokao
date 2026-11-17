package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerQuinn extends CustomerDataFile
   {
      public function CustomerQuinn()
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            this.customerName = "Quinn";
            this.customerClipName = "Quinn";
            this.isCloser = true;
            if(!(_loc2_ && _loc2_))
            {
               this.customerFirstGame = "Papa\'s Taco Mia!";
               this.thumbColor = "purple";
               if(_loc1_)
               {
               }
               addr55:
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_HONEYMUSTARD,3);
               this.customerOrder.addSide(FoodData.SIDE_CARROT,9);
            }
            this.customerOrder.addDip(FoodData.DIP_RANCH);
            if(_loc1_)
            {
               this.customerOrder.addDip(FoodData.DIP_RANCH);
               if(_loc1_ || Boolean(this))
               {
               }
               §§goto(addr100);
            }
            this.customerOrder.addDip(FoodData.DIP_RANCH);
            addr100:
            return;
         }
         this.customerOrder = new CustomerOrder();
         §§goto(addr55);
      }
   }
}

