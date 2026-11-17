package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerRoy extends CustomerDataFile
   {
      public function CustomerRoy()
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
         if(!(_loc1_ && _loc1_))
         {
            this.customerName = "Roy";
            if(_loc2_ || Boolean(this))
            {
               this.customerClipName = "Roy";
               if(!(_loc1_ && _loc2_))
               {
                  this.thumbColor = "lightred";
                  this.customerFirstGame = "Papa Louie";
                  if(!(_loc1_ && _loc2_))
                  {
                     this.customerOrder = new CustomerOrder();
                     if(!_loc1_)
                     {
                        this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,3,FoodData.DISTRO_ALL);
                        if(_loc2_)
                        {
                        }
                        this.customerOrder.addDip(FoodData.DIP_RANCH);
                        this.customerOrder.addDip(FoodData.DIP_KUNGPAO);
                        addr104:
                     }
                     this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_TERIYAKI,6,FoodData.DISTRO_ALL);
                     if(_loc2_ || _loc1_)
                     {
                     }
                     §§goto(addr104);
                  }
               }
            }
            return;
         }
         this.customerOrder.addSide(FoodData.SIDE_CELERY,3,FoodData.DISTRO_ALL);
         §§goto(addr104);
      }
   }
}

