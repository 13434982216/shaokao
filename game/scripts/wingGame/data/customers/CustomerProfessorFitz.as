package wingGame.data.customers
{
   import wingGame.data.CustomerDataFile;
   import wingGame.data.CustomerOrder;
   import wingGame.data.FoodData;
   
   public class CustomerProfessorFitz extends CustomerDataFile
   {
      public function CustomerProfessorFitz()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.customerName = "Professor Fitz";
            this.customerClipName = "ProfessorFitz";
         }
         this.customerFirstGame = "Papa\'s Wingeria";
         this.thumbColor = "deepred";
         if(!_loc1_)
         {
            this.isCloser = true;
            this.customerOrder = new CustomerOrder();
            if(_loc2_)
            {
            }
            §§goto(addr75);
         }
         this.customerOrder.addWings(FoodData.MEAT_WING,FoodData.SAUCE_WASABI,3);
         this.customerOrder.addWings(FoodData.MEAT_SHRIMP,FoodData.SAUCE_PARMESAN,6);
         this.customerOrder.addSide(FoodData.SIDE_GREENPEPPER,3);
         addr75:
      }
   }
}

