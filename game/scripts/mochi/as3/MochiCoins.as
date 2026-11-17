package mochi.as3
{
   public class MochiCoins
   {
      public static const STORE_SHOW:String = "StoreShow";
      
      public static const STORE_HIDE:String = "StoreHide";
      
      public static const ITEM_OWNED:String = "ItemOwned";
      
      public static const ITEM_NEW:String = "ItemNew";
      
      public static const STORE_ITEMS:String = "StoreItems";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IOError";
      
      public static const NO_USER:String = "NoUser";
      
      public static var _inventory:MochiInventory;
      
      private static var _dispatcher:MochiEventDispatcher;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      if(_loc1_ || MochiCoins)
      {
         STORE_SHOW = "StoreShow";
         if(!_loc2_)
         {
            STORE_HIDE = "StoreHide";
            if(_loc1_ || _loc1_)
            {
               ITEM_OWNED = "ItemOwned";
            }
            addr60:
            ERROR = "Error";
            addr63:
            IO_ERROR = "IOError";
            NO_USER = "NoUser";
            _dispatcher = new MochiEventDispatcher();
            if(!(_loc2_ && _loc2_))
            {
               addEventListener(MochiSocial.LOGGED_IN,function(param1:Object):void
               {
                  _inventory = new MochiInventory();
               });
            }
         }
         ITEM_NEW = "ItemNew";
         if(!_loc2_)
         {
            STORE_ITEMS = "StoreItems";
            if(_loc1_ || _loc1_)
            {
            }
            §§goto(addr63);
         }
         §§goto(addr60);
      }
      addEventListener(MochiSocial.LOGGED_OUT,function(param1:Object):void
      {
         _inventory = null;
      });
      
      public function MochiCoins()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function get inventory() : MochiInventory
      {
         return _inventory;
      }
      
      public static function getVersion() : String
      {
         return MochiServices.getVersion();
      }
      
      public static function showStore(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(param1)))
         {
            MochiServices.setContainer();
            if(_loc2_)
            {
               MochiServices.bringToTop();
               if(_loc3_ && Boolean(param1))
               {
               }
            }
            MochiServices.send("coins_showStore",{"options":param1},null,null);
         }
      }
      
      public static function showItem(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(!param1);
         if(!_loc2_)
         {
            if(!§§pop())
            {
               if(_loc3_)
               {
                  §§pop();
                  §§push(typeof param1.item == "string");
                  if(_loc2_ && _loc2_)
                  {
                  }
               }
            }
            §§goto(addr43);
         }
         addr43:
         if(§§pop())
         {
            if(_loc3_)
            {
               trace("ERROR: showItem call must pass an Object with an item key");
               if(_loc2_)
               {
               }
            }
            return;
         }
         MochiServices.setContainer();
         if(_loc3_)
         {
            MochiServices.bringToTop();
            if(_loc2_)
            {
            }
            §§goto(addr77);
         }
         MochiServices.send("coins_showItem",{"options":param1},null,null);
         addr77:
         !§§pop();
      }
      
      public static function showVideo(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(!param1);
         if(!_loc3_)
         {
            if(!§§pop())
            {
               if(!(_loc3_ && MochiCoins))
               {
                  §§pop();
                  if(!_loc3_)
                  {
                     §§push(typeof param1.item == "string");
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr64);
               }
            }
            addr44:
            if(§§pop())
            {
               trace("ERROR: showVideo call must pass an Object with an item key");
               return;
            }
            MochiServices.setContainer();
            MochiServices.bringToTop();
            if(!_loc3_)
            {
               §§goto(addr64);
            }
            addr64:
            MochiServices.send("coins_showVideo",{"options":param1},null,null);
            return;
         }
         §§goto(addr44);
         §§push(!§§pop());
      }
      
      public static function getStoreItems() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            MochiServices.send("coins_getStoreItems");
         }
      }
      
      public static function requestFunding(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            MochiServices.setContainer();
            if(_loc2_)
            {
            }
            §§goto(addr46);
         }
         MochiServices.bringToTop();
         if(!(_loc3_ && Boolean(param1)))
         {
            MochiServices.send("social_requestFunding",param1);
         }
         addr46:
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function triggerEvent(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            _dispatcher.triggerEvent(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
   }
}

