package Playtomic
{
   public final class PlayerScore
   {
      public var Name:String;
      
      public var FBUserId:String;
      
      public var Points:Number;
      
      public var Rank:int;
      
      public var Website:String;
      
      public var SDate:Date;
      
      public var RDate:String;
      
      public var CustomData:Object;
      
      public var SubmittedOrBest:Boolean = false;
      
      public function PlayerScore(param1:String = "", param2:int = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.CustomData = {};
            if(_loc3_)
            {
               super();
               if(!_loc4_)
               {
                  this.Name = param1;
                  if(_loc4_ && Boolean(param2))
                  {
                  }
                  §§goto(addr56);
               }
            }
         }
         this.Points = param2;
         addr56:
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Playtomic.PlayerScore:" + "\nRank: ");
         if(_loc2_)
         {
            §§goto(addr84);
         }
         §§push(this.Name);
         if(_loc2_)
         {
            §§push(§§pop() + §§pop());
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() + "\nPoints: ");
               if(!_loc1_)
               {
                  §§push(§§pop() + this.Points + "\nFBUserId: ");
                  if(_loc2_)
                  {
                     §§push(this.FBUserId);
                     if(!_loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc1_)
                        {
                        }
                        §§goto(addr84);
                     }
                  }
               }
               §§push(§§pop() + "\nRDate: ");
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr84);
               }
            }
            §§goto(addr84);
         }
         addr84:
         §§push(§§pop() + this.Rank);
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§pop() + "\nName: ");
         }
         return §§pop() + this.RDate;
      }
      
      public function toStringAll() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         §§push("Playtomic.PlayerScore:" + "\nRank: ");
         if(_loc5_)
         {
            §§push(§§pop() + this.Rank + "\nName: ");
            §§push(this.Name);
            if(!_loc6_)
            {
               §§push(§§pop() + §§pop() + "\nFBUserId: ");
               if(_loc5_)
               {
                  §§push(this.FBUserId);
                  if(_loc5_ || Boolean(this))
                  {
                  }
                  §§goto(addr98);
               }
               addr49:
               §§push(§§pop() + this.Points);
               if(_loc5_)
               {
                  §§goto(addr56);
               }
            }
            §§push(§§pop() + §§pop() + "\nPoints: ");
            if(!_loc6_)
            {
               §§goto(addr49);
            }
            addr56:
            §§push(§§pop() + "\nWebsite: ");
            §§push(this.Website);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               §§push(§§pop() + §§pop());
               if(!(_loc6_ && _loc1_))
               {
                  §§push(§§pop() + "\nSDate: " + this.SDate);
                  if(_loc5_ || _loc1_)
                  {
                  }
               }
               §§push(§§pop() + "\nRDate: ");
               if(_loc5_)
               {
               }
               §§goto(addr106);
            }
            §§goto(addr98);
         }
         addr98:
         §§push(§§pop() + §§pop());
         if(_loc5_ || _loc1_)
         {
            addr106:
            §§push(§§pop() + "\nCustomData: ");
         }
         var _loc1_:* = §§pop();
         var _loc3_:int = 0;
         var _loc4_:* = this.CustomData;
         for each(_loc3_ in _loc4_)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(_loc2_))
            {
               _loc2_ = §§pop();
               if(_loc5_)
               {
                  §§push(_loc1_);
                  if(_loc6_)
                  {
                  }
                  addr167:
                  _loc1_ = §§pop();
               }
               continue;
            }
            §§push("\n  " + _loc2_);
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               §§push(§§pop() + ": ");
               if(!(_loc6_ && _loc1_))
               {
                  §§push(§§pop() + this.CustomData[_loc2_]);
               }
            }
            §§goto(addr167);
            §§push(§§pop() + §§pop());
         }
         this.RDate;
         return _loc1_;
      }
   }
}

