package Playtomic
{
   public class PFObject
   {
      public var ObjectId:String;
      
      public var ClassName:String;
      
      public var Data:Object;
      
      public var UpdatedAt:Date;
      
      public var CreatedAt:Date;
      
      public var Password:String;
      
      public function PFObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.Data = {};
            if(_loc1_)
            {
            }
            §§goto(addr23);
         }
         super();
         addr23:
      }
   }
}

