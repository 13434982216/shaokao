package mochi.as3
{
   public class MochiEvents
   {
      public static const ALIGN_TOP:String = "ALIGN_T";
      
      public static const ALIGN_TOP_RIGHT:String = "ALIGN_TR";
      
      public static const ALIGN_LEFT:String = "ALIGN_L";
      
      public static const ALIGN_CENTER:String = "ALIGN_C";
      
      public static const ALIGN_RIGHT:String = "ALIGN_R";
      
      public static const ALIGN_BOTTOM_LEFT:String = "ALIGN_BL";
      
      public static const ALIGN_BOTTOM:String = "ALIGN_B";
      
      public static const ALIGN_BOTTOM_RIGHT:String = "ALIGN_BR";
      
      public static const FORMAT_SHORT:String = "ShortForm";
      
      public static const FORMAT_LONG:String = "LongForm";
      
      private static var gameStart:Number;
      
      private static var levelStart:Number;
      
      private static var _dispatcher:MochiEventDispatcher;
      
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = true;
      
      public static const ACHIEVEMENTS_OWNED:String = "AchievementOwned";
      
      public static const ACHIEVEMENT_NEW:String = "AchievementReceived";
      
      public static const GAME_ACHIEVEMENTS:String = "GameAchievements";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IOError";
      
      public static const IO_PENDING:String = "IOPending";
      
      public static const ALIGN_TOP_LEFT:String = "ALIGN_TL";
      
      if(!_loc1_)
      {
         ALIGN_TOP = "ALIGN_T";
         ALIGN_TOP_RIGHT = "ALIGN_TR";
         ALIGN_LEFT = "ALIGN_L";
         ALIGN_CENTER = "ALIGN_C";
         if(_loc2_ || MochiEvents)
         {
            ALIGN_RIGHT = "ALIGN_R";
            if(_loc2_)
            {
               ALIGN_BOTTOM_LEFT = "ALIGN_BL";
               ALIGN_BOTTOM = "ALIGN_B";
               ALIGN_BOTTOM_RIGHT = "ALIGN_BR";
            }
            addr87:
            FORMAT_LONG = "LongForm";
         }
         FORMAT_SHORT = "ShortForm";
         if(_loc2_ || _loc1_)
         {
            §§goto(addr87);
         }
      }
      
      public static const FORMAT_NONE:String = "NoForm";
      
      if(_loc2_)
      {
         _dispatcher = new MochiEventDispatcher();
      }
      
      public function MochiEvents()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function getVersion() : String
      {
         return MochiServices.getVersion();
      }
      
      public static function getAchievements(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            MochiServices.send("events_getAchievements",param1);
         }
      }
      
      public static function unlockAchievement(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            MochiServices.send("events_unlockAchievement",param1);
         }
      }
      
      public static function startSession(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            MochiServices.send("events_beginSession",{"achievementID":param1},null,null);
         }
      }
      
      public static function setNotifications(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            MochiServices.setContainer();
            if(_loc2_ || _loc2_)
            {
            }
            §§goto(addr42);
         }
         MochiServices.bringToTop();
         if(_loc2_)
         {
            §§goto(addr42);
         }
         addr42:
         MochiServices.send("events_setNotifications",param1,null,null);
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param2))
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function triggerEvent(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && MochiEvents))
         {
            _dispatcher.triggerEvent(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
      
      public static function startPlay(param1:String = "gameplay") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            MochiServices.send("events_setRoundID",{"tag":String(param1)},null,null);
         }
      }
      
      public static function endPlay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            MochiServices.send("events_clearRoundID",null,null,null);
         }
      }
      
      public static function trackEvent(param1:String, param2:* = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            MochiServices.send("events_trackEvent",{
               "tag":param1,
               "value":param2
            },null,null);
         }
      }
   }
}

