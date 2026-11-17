package wingGame.data
{
   public class FurniData
   {
      public static const TYPE_WALLPAPER:String = "wallpaper";
      
      public static const TYPE_FLOORING:String = "flooring";
      
      public static const SPECIAL_ARCADE:String = "arcade";
      
      public static const SPECIAL_COFFEE:String = "coffee";
      
      public static const SPECIAL_SODA:String = "soda";
      
      public static const SPECIAL_PUNCH:String = "punch";
      
      public static const SPECIAL_BUBBLEGUM:String = "bubblegum";
      
      public static const SPECIAL_NEWSPAPER:String = "newspaper";
      
      public static const SPECIAL_MUSIC:String = "music";
      
      public static const SPECIAL_SCORE:String = "score";
      
      public static const SPECIAL_SCOREBUBBLEGUM:String = "scorebubblegum";
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      
      public static const TYPE_FURNI:String = "furni";
      
      public static const TYPE_POSTER:String = "poster";
      
      if(_loc2_ || FurniData)
      {
         TYPE_WALLPAPER = "wallpaper";
         TYPE_FLOORING = "flooring";
         SPECIAL_ARCADE = "arcade";
         SPECIAL_COFFEE = "coffee";
         SPECIAL_SODA = "soda";
         SPECIAL_PUNCH = "punch";
         if(!(_loc1_ && _loc2_))
         {
            SPECIAL_BUBBLEGUM = "bubblegum";
            SPECIAL_NEWSPAPER = "newspaper";
         }
         §§goto(addr89);
      }
      
      public static const SPECIAL_BOOK:String = "book";
      
      public static const SPECIAL_COMICS:String = "comics";
      
      if(!_loc1_)
      {
         SPECIAL_MUSIC = "music";
         SPECIAL_SCORE = "score";
         SPECIAL_SCOREBUBBLEGUM = "scorebubblegum";
      }
      addr89:
      
      public var tag:String;
      
      public var title:String;
      
      public var price:Number;
      
      public var effect:String;
      
      public var description:String;
      
      public var waitingOffset:Number = 0;
      
      public var type:String;
      
      public var width:Number;
      
      public var depth:Number;
      
      public var special:String;
      
      public var scoreType:String;
      
      public var toppingType:String;
      
      public var inStore:Boolean = true;
      
      public function FurniData(param1:String, param2:String, param3:Number, param4:String, param5:String, param6:String, param7:Number = 1, param8:Number = 1, param9:Number = 0, param10:String = "none", param11:String = "none", param12:String = "none", param13:Boolean = true)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            super();
            if(_loc15_)
            {
               this.tag = param1;
               if(!(_loc14_ && Boolean(param3)))
               {
                  this.title = param2;
                  if(_loc15_)
                  {
                  }
                  §§goto(addr114);
               }
               §§goto(addr105);
            }
         }
         this.price = param3;
         this.effect = param4;
         if(_loc15_ || Boolean(this))
         {
            this.description = param5;
            if(_loc15_ || Boolean(param1))
            {
               this.waitingOffset = param9;
               if(!_loc14_)
               {
                  this.type = param6;
                  if(_loc14_ && Boolean(param3))
                  {
                  }
               }
               §§goto(addr105);
            }
            this.width = param7;
         }
         this.depth = param8;
         if(_loc15_ || Boolean(param3))
         {
            this.special = param10;
            if(!_loc14_)
            {
               §§goto(addr105);
            }
         }
         addr105:
         this.scoreType = param11;
         this.toppingType = param12;
         this.inStore = param13;
         addr114:
      }
   }
}

