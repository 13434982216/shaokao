package mochi.as3
{
   public class MochiSocial
   {
      public static const LOGIN_SHOWN:String = "LoginShown";
      
      public static const PROFILE_SHOW:String = "ProfileShow";
      
      public static const PROFILE_HIDE:String = "ProfileHide";
      
      public static const PROPERTIES_SAVED:String = "PropertySaved";
      
      public static const FRIEND_LIST:String = "FriendsList";
      
      public static const PROFILE_DATA:String = "ProfileData";
      
      public static const GAMEPLAY_DATA:String = "GameplayData";
      
      public static const ACTION_CANCELED:String = "onCancel";
      
      public static const ACTION_COMPLETE:String = "onComplete";
      
      public static const USER_INFO:String = "UserInfo";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IOError";
      
      public static const NO_USER:String = "NoUser";
      
      private static var _dispatcher:MochiEventDispatcher;
      
      public static var _user_info:Object = null;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      
      public static const LOGGED_IN:String = "LoggedIn";
      
      public static const LOGGED_OUT:String = "LoggedOut";
      
      public static const LOGIN_SHOW:String = "LoginShow";
      
      public static const LOGIN_HIDE:String = "LoginHide";
      
      if(!(_loc2_ && _loc1_))
      {
         LOGIN_SHOWN = "LoginShown";
         PROFILE_SHOW = "ProfileShow";
         PROFILE_HIDE = "ProfileHide";
         if(!_loc2_)
         {
            PROPERTIES_SAVED = "PropertySaved";
         }
         addr116:
         _dispatcher = new MochiEventDispatcher();
         if(_loc1_)
         {
            _user_info = null;
            if(_loc2_)
            {
            }
            §§goto(addr144);
         }
         MochiSocial.addEventListener(MochiSocial.LOGGED_IN,function(param1:Object):void
         {
            _user_info = param1;
         });
         MochiSocial.addEventListener(MochiSocial.LOGGED_OUT,function(param1:Object):void
         {
            _user_info = null;
         });
         §§goto(addr127);
      }
      
      public static const WIDGET_LOADED:String = "WidgetLoaded";
      
      if(_loc1_ || MochiSocial)
      {
         FRIEND_LIST = "FriendsList";
         PROFILE_DATA = "ProfileData";
         if(!(_loc2_ && MochiSocial))
         {
            GAMEPLAY_DATA = "GameplayData";
            if(!(_loc2_ && MochiSocial))
            {
               ACTION_CANCELED = "onCancel";
               ACTION_COMPLETE = "onComplete";
               USER_INFO = "UserInfo";
               ERROR = "Error";
               if(!(_loc2_ && _loc1_))
               {
                  IO_ERROR = "IOError";
                  if(_loc1_)
                  {
                     NO_USER = "NoUser";
                  }
                  addr127:
                  §§goto(addr144);
               }
            }
            §§goto(addr116);
         }
         addr144:
         return;
      }
      
      public static const PROPERTIES_SIZE:String = "PropertiesSize";
      
      §§goto(addr116);
      
      public function MochiSocial()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function getVersion() : String
      {
         return MochiServices.getVersion();
      }
      
      public static function getAPIURL() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!_user_info)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return null;
               }
            }
         }
         return _user_info.api_url;
      }
      
      public static function getAPIToken() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!_user_info)
            {
               if(_loc1_ && MochiSocial)
               {
               }
            }
            return _user_info.api_token;
         }
         return null;
      }
      
      public static function showLoginWidget(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            MochiServices.setContainer();
            if(!(_loc3_ && Boolean(param1)))
            {
               MochiServices.bringToTop();
               if(_loc2_ || MochiSocial)
               {
                  MochiServices.send("social_showLoginWidget",{"options":param1});
               }
            }
         }
      }
      
      public static function hideLoginWidget() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            MochiServices.send("social_hideLoginWidget");
         }
      }
      
      public static function requestLogin(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            MochiServices.setContainer();
            if(_loc3_)
            {
               MochiServices.bringToTop();
               if(_loc2_)
               {
               }
            }
            §§goto(addr35);
         }
         MochiServices.send("social_requestLogin",param1);
         addr35:
      }
      
      public static function showProfile(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            MochiServices.setContainer();
            if(_loc2_ && _loc2_)
            {
            }
            §§goto(addr52);
         }
         MochiServices.stayOnTop();
         if(_loc3_ || MochiSocial)
         {
            MochiServices.send("social_showProfile",param1);
         }
         addr52:
      }
      
      public static function saveUserProperties(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            MochiServices.send("social_saveUserProperties",param1);
         }
      }
      
      public static function getFriendsList(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            MochiServices.send("social_getFriendsList",param1);
         }
      }
      
      public static function postToStream(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            MochiServices.setContainer();
            if(_loc2_)
            {
               MochiServices.bringToTop();
               if(_loc2_ || MochiSocial)
               {
               }
            }
            §§goto(addr46);
         }
         MochiServices.send("social_postToStream",param1);
         addr46:
      }
      
      public static function inviteFriends(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            MochiServices.setContainer();
            if(_loc2_ || _loc3_)
            {
               MochiServices.bringToTop();
               if(_loc3_)
               {
               }
            }
            MochiServices.send("social_inviteFriends",param1);
         }
      }
      
      public static function requestFan(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            MochiServices.setContainer();
            if(!_loc3_)
            {
               MochiServices.bringToTop();
               if(_loc2_ || _loc2_)
               {
               }
            }
            MochiServices.send("social_requestFan",param1);
         }
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function get loggedIn() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(_user_info == null);
         if(_loc1_ || _loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function triggerEvent(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            _dispatcher.triggerEvent(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param1))
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
   }
}

