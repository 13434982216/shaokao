package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerTony extends CustomerDataFile
   {
      public function CustomerTony()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function initCustomerData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.customerName = "Tony";
         this.customerClipName = "Tony";
         this.customerFirstGame = "Papa\'s Burgeria";
         if(_loc1_ || Boolean(this))
         {
            this.thumbColor = "flipline";
            if(_loc1_)
            {
               this.customerOrder = new CustomerOrder();
               this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_BUFFALO,8,FoodData.DISTRO_RIGHT);
            }
            addr91:
            this.customerOrder.addDip(FoodData.DIP_RANCH);
            §§goto(addr96);
         }
         this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_TERIYAKI,4,FoodData.DISTRO_LEFT);
         if(_loc1_)
         {
            this.customerOrder.addSide(FoodData.SIDE_FRY,4,FoodData.DISTRO_LEFT);
            if(_loc1_)
            {
               this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
               if(_loc2_)
               {
               }
               addr96:
               return;
            }
         }
         §§goto(addr91);
      }
   }
}

