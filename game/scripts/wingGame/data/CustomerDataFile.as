package wingGame.data
{
   public class CustomerDataFile
   {
      public var customerName:String = "Placeholder";
      
      public var customerOrder:CustomerOrder;
      
      public var customerClipName:String = "Placeholder";
      
      public var customerFirstGame:String = "Papa\'s Pizzeria";
      
      public var thumbColor:String = "lime";
      
      public var isCloser:Boolean = false;
      
      public function CustomerDataFile()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.customerOrder = new CustomerOrder();
            if(!(_loc1_ && _loc2_))
            {
               super();
               if(_loc1_ && Boolean(this))
               {
               }
               §§goto(addr52);
            }
         }
         this.initCustomerData();
         addr52:
      }
      
      public function initCustomerData() : void
      {
      }
   }
}

