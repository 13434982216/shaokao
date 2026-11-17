package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerMary extends CustomerDataFile
   {
      public function CustomerMary()
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
            this.customerName = "Mary";
            if(_loc2_ || Boolean(this))
            {
               this.customerClipName = "Mary";
               if(_loc2_ || _loc1_)
               {
                  this.thumbColor = "seafoam";
                  this.customerFirstGame = "Papa Louie";
                  if(_loc2_)
                  {
                  }
                  addr91:
                  this.customerOrder.addSide(FoodData.SIDE_CELERY,4);
                  if(!(_loc1_ && _loc1_))
                  {
                     addr104:
                     this.customerOrder.addSide(FoodData.SIDE_REDPEPPER,8,FoodData.DISTRO_LEFT);
                     this.customerOrder.addDip(FoodData.DIP_ZESTYPESTO);
                     this.customerOrder.addDip(FoodData.DIP_MANGOCHILI);
                  }
               }
            }
            return;
         }
         this.customerOrder = new CustomerOrder();
         if(!(_loc1_ && _loc2_))
         {
            this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_HONEYMUSTARD,2,FoodData.DISTRO_RIGHT);
            if(!_loc1_)
            {
               this.customerOrder.addWings(FoodData.MEAT_BONELESS,FoodData.SAUCE_PARMESAN,2,FoodData.DISTRO_RIGHT);
               if(_loc2_)
               {
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr104);
      }
   }
}

