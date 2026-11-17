package Playtomic
{
   public final class PFQuery
   {
      public var ClassName:String;
      
      public var WhereData:Object;
      
      public var Order:String;
      
      public var Limit:int = 10;
      
      public function PFQuery()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.WhereData = {};
            if(_loc1_)
            {
            }
            §§goto(addr35);
         }
         super();
         addr35:
      }
   }
}

