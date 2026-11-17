package Playtomic
{
   public class PrivateLeaderboard
   {
      public var TableId:String;
      
      public var Name:String;
      
      public var Bitly:String;
      
      public var Permalink:String;
      
      public var Highest:Boolean = true;
      
      public var RealName:String;
      
      public function PrivateLeaderboard(param1:String = null, param2:String = null, param3:String = null, param4:String = null, param5:Boolean = false, param6:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         this.TableId = param1;
         if(_loc8_)
         {
            this.Name = param2;
            if(!_loc7_)
            {
               this.Bitly = param3;
               this.Permalink = param4;
               if(_loc8_)
               {
                  this.Highest = param5;
                  this.RealName = param6;
               }
            }
         }
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Playtomic.PrivateLeaderboard:" + "\nTableId: ");
         §§push(this.TableId);
         if(!_loc1_)
         {
            §§push(§§pop() + §§pop() + "\nName: ");
            §§push(this.Name);
            if(_loc1_)
            {
            }
            §§goto(addr61);
         }
         §§push(§§pop() + §§pop() + "\nBitly: ");
         §§push(this.Bitly);
         if(_loc2_ || Boolean(this))
         {
            §§push(§§pop() + §§pop());
            if(!_loc1_)
            {
               §§push(§§pop() + "\nPermalink: ");
            }
            §§push(this.Permalink);
            if(_loc2_ || Boolean(this))
            {
               addr61:
               §§push(§§pop() + §§pop());
               if(_loc2_)
               {
                  §§push(§§pop() + "\nHighest: ");
                  if(_loc2_ || Boolean(this))
                  {
                     addr87:
                     §§push(§§pop() + this.Highest + "\nRealName: " + this.RealName);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr87);
      }
   }
}

