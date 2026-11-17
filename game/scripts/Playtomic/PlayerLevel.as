package Playtomic
{
   import flash.display.Loader;
   
   public final class PlayerLevel
   {
      public var LevelId:String;
      
      public var PlayerSource:String = "";
      
      public var PlayerId:String = "";
      
      public var PlayerName:String = "";
      
      public var Permalink:String;
      
      public var Name:String;
      
      public var Data:String;
      
      public var Thumb:Loader;
      
      public var Votes:int;
      
      public var Starts:int;
      
      public var Quits:int;
      
      public var Retries:int;
      
      public var Flags:int;
      
      public var Wins:int;
      
      public var Rating:Number;
      
      public var Score:int;
      
      public var SDate:Date;
      
      public var RDate:String;
      
      public var CustomData:Object;
      
      public function PlayerLevel()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            this.CustomData = {};
            if(_loc2_ && _loc2_)
            {
            }
            §§goto(addr53);
         }
         super();
         if(_loc1_ || _loc2_)
         {
            §§goto(addr53);
         }
         addr53:
         this.SDate = new Date();
         if(_loc1_)
         {
            this.RDate = "Just now";
         }
      }
      
      internal function SetThumb(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || Boolean(param1))
            {
               §§push(§§pop() == null);
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr55);
               }
               §§pop();
               if(_loc3_ || _loc3_)
               {
                  §§push(param1);
               }
            }
            addr55:
            if(§§pop())
            {
               if(_loc2_ && _loc2_)
               {
               }
            }
            this.Thumb = new Loader();
            if(!(_loc2_ && Boolean(param1)))
            {
               this.Thumb.loadBytes(Encode.Base64Decode(param1));
            }
            return;
            §§push(§§pop() == "");
         }
      }
      
      public function Thumbnail() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("http://g" + Log.GUID);
         if(!_loc2_)
         {
            §§push(§§pop() + ".api.playtomic.com/playerlevels/thumb.aspx?swfid=");
            if(_loc1_)
            {
            }
            §§goto(addr59);
         }
         §§push(§§pop() + Log.SWFID);
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop() + "&levelid=");
            if(_loc1_ || _loc2_)
            {
            }
            §§goto(addr59);
         }
         addr59:
         return §§pop() + this.LevelId;
      }
   }
}

