package wingGame.data
{
   public class ClothingItem
   {
      public static const GENDER_ALL:String = "all";
      
      public static const TYPE_SHIRT:String = "shirt";
      
      public static const TYPE_PANTS:String = "pants";
      
      public static const TYPE_JACKET:String = "jacket";
      
      public static const TYPE_SHOES:String = "shoes";
      
      public static const TYPE_HAIR:String = "hair";
      
      public static const TYPE_FACIALHAIR:String = "facialhair";
      
      public static const TYPE_ACC_BODY:String = "acca";
      
      public static const TYPE_ACC_BELT:String = "accb";
      
      public static const TYPE_ACC_ARMS:String = "accc";
      
      public static const TYPE_ACC_FACE:String = "accd";
      
      public static const OPTIONS_HIDE_SHIRTNECK:uint = 1;
      
      public static const OPTIONS_HIDE_SHIRTBICEP:uint = 2;
      
      public static const OPTIONS_HIDE_JACKETNECK:uint = 4;
      
      public static const OPTIONS_HAS_BICEP:uint = 8;
      
      public static const OPTIONS_HAS_FOREARM:uint = 16;
      
      public static const OPTIONS_HAS_NECK:uint = 32;
      
      public static const OPTIONS_HAS_FRONTBODY:uint = 64;
      
      public static const OPTIONS_HAS_BACKBODY:uint = 128;
      
      public static const OPTIONS_HAS_BACK_HAIR:uint = 256;
      
      public static const OPTIONS_HAS_MOUTH_FACIALHAIR:uint = 512;
      
      public static const OPTIONS_HAS_BASE_FACIALHAIR:uint = 1024;
      
      public static const OPTIONS_TRACKEYES:uint = 2048;
      
      public static const OPTIONS_ONLYONEARM:uint = 4096;
      
      public static const OPTIONS_HIDE_SHIRTFOREARM:uint = 8192;
      
      public static const OPTIONS_PREMADE:uint = 16384;
      
      public static const OPTIONS_BEHINDCOLLAR:uint = 32768;
      
      public static const OPTIONS_ACCSTAYSBACK:uint = 65536;
      
      public static const SHIRT_SHORT:uint = 8;
      
      public static const SHIRT_LONG:uint;
      
      public static const SHIRT_SLEEVELESS:uint = 0;
      
      public static const SHIRT_SHORT_COLLAR:uint;
      
      public static const SHIRT_LONG_COLLAR:uint;
      
      public static const FACIALHAIR_FULL:uint;
      
      public static const FACIALHAIR_JUSTMOUTH:uint = 512;
      
      public static const FACIALHAIR_JUSTBASE:uint = 1024;
      
      public static const BODYACC_FULL:uint;
      
      public static const BODYACC_FULL_NECK:uint;
      
      public static const BODYACC_FRONT:uint = 64;
      
      public static const BODYACC_BACK:uint = 128;
      
      public static const JACKET_COLLAR_COVERARMS:uint;
      
      public static const JACKET_COLLAR_COVERARMSANDNECK:uint;
      
      var _loc1_:Boolean = true;
      var _loc2_:Boolean = false;
      
      public static const GENDER_MALE:String = "male";
      
      public static const GENDER_FEMALE:String = "female";
      
      if(_loc1_)
      {
         GENDER_ALL = "all";
         if(!(_loc2_ && ClothingItem))
         {
            TYPE_SHIRT = "shirt";
            if(!(_loc2_ && _loc1_))
            {
               TYPE_PANTS = "pants";
               if(_loc1_ || _loc1_)
               {
                  TYPE_JACKET = "jacket";
                  if(!(_loc2_ && ClothingItem))
                  {
                     TYPE_SHOES = "shoes";
                     TYPE_HAIR = "hair";
                     TYPE_FACIALHAIR = "facialhair";
                     if(!(_loc2_ && _loc1_))
                     {
                        TYPE_ACC_BODY = "acca";
                        if(!(_loc2_ && ClothingItem))
                        {
                           TYPE_ACC_BELT = "accb";
                           TYPE_ACC_ARMS = "accc";
                           TYPE_ACC_FACE = "accd";
                           if(_loc2_ && _loc2_)
                           {
                           }
                           addr192:
                           OPTIONS_ACCSTAYSBACK = 65536;
                           if(!_loc2_)
                           {
                              SHIRT_SHORT = ClothingItem.OPTIONS_HAS_BICEP;
                              addr201:
                              SHIRT_LONG = ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM;
                              if(_loc1_)
                              {
                                 SHIRT_SLEEVELESS = 0;
                              }
                              §§goto(addr438);
                           }
                           addr293:
                           BODYACC_BACK = ClothingItem.OPTIONS_HAS_BACKBODY;
                           if(_loc1_)
                           {
                              addr299:
                              §§push(§§findproperty(JACKET_COLLAR_COVERARMS));
                              §§push(ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_BICEP);
                              if(_loc1_)
                              {
                                 §§push(ClothingItem.OPTIONS_HAS_FOREARM);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() | §§pop());
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§push(ClothingItem.OPTIONS_HIDE_SHIRTBICEP);
                                       if(_loc1_ || _loc2_)
                                       {
                                       }
                                       addr338:
                                       §§push(§§pop() | §§pop());
                                    }
                                 }
                                 §§push(§§pop() | §§pop());
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§goto(addr338);
                                    §§push(ClothingItem.OPTIONS_HIDE_SHIRTFOREARM);
                                 }
                              }
                              §§pop().JACKET_COLLAR_COVERARMS = §§pop();
                              if(_loc1_ || _loc1_)
                              {
                              }
                              §§goto(addr438);
                           }
                           §§push(§§findproperty(JACKET_COLLAR_COVERARMSANDNECK));
                           §§push(ClothingItem.OPTIONS_HAS_NECK | ClothingItem.OPTIONS_HAS_BICEP);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(ClothingItem.OPTIONS_HAS_FOREARM);
                              if(_loc1_ || ClothingItem)
                              {
                                 §§push(§§pop() | §§pop());
                                 if(_loc2_ && _loc2_)
                                 {
                                 }
                                 addr384:
                                 §§push(ClothingItem.OPTIONS_HIDE_SHIRTFOREARM);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr394);
                                 }
                              }
                              addr393:
                              addr394:
                              §§push(§§pop() | §§pop());
                              if(_loc1_)
                              {
                                 §§push(ClothingItem.OPTIONS_HIDE_SHIRTNECK);
                              }
                              §§pop().JACKET_COLLAR_COVERARMSANDNECK = §§pop();
                              if(_loc2_)
                              {
                              }
                              addr438:
                              return;
                              §§push(§§pop() | §§pop());
                           }
                           §§push(ClothingItem.OPTIONS_HIDE_SHIRTBICEP);
                           if(!_loc2_)
                           {
                              §§push(§§pop() | §§pop());
                              if(!_loc2_)
                              {
                                 §§goto(addr384);
                              }
                              §§goto(addr394);
                           }
                           §§goto(addr393);
                        }
                        SHIRT_SHORT_COLLAR = ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_NECK;
                        §§push(§§findproperty(SHIRT_LONG_COLLAR));
                        §§push(ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM);
                        if(!_loc2_)
                        {
                           §§push(§§pop() | ClothingItem.OPTIONS_HAS_NECK);
                        }
                        §§pop().SHIRT_LONG_COLLAR = §§pop();
                     }
                  }
                  addr171:
                  OPTIONS_ONLYONEARM = 4096;
                  if(_loc2_ && _loc1_)
                  {
                  }
                  FACIALHAIR_JUSTMOUTH = ClothingItem.OPTIONS_HAS_MOUTH_FACIALHAIR;
                  FACIALHAIR_JUSTBASE = ClothingItem.OPTIONS_HAS_BASE_FACIALHAIR;
                  if(_loc1_)
                  {
                     addr256:
                     BODYACC_FULL = ClothingItem.OPTIONS_HAS_BACKBODY | ClothingItem.OPTIONS_HAS_FRONTBODY;
                     if(_loc1_)
                     {
                        addr265:
                        §§push(§§findproperty(BODYACC_FULL_NECK));
                        §§push(ClothingItem.OPTIONS_HAS_BACKBODY | ClothingItem.OPTIONS_HAS_FRONTBODY);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§pop() | ClothingItem.OPTIONS_HAS_NECK);
                        }
                        §§pop().BODYACC_FULL_NECK = §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr289:
                           BODYACC_FRONT = ClothingItem.OPTIONS_HAS_FRONTBODY;
                        }
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr299);
               }
               OPTIONS_HIDE_SHIRTNECK = 1;
               OPTIONS_HIDE_SHIRTBICEP = 2;
               OPTIONS_HIDE_JACKETNECK = 4;
               OPTIONS_HAS_BICEP = 8;
               if(!(_loc2_ && _loc1_))
               {
                  OPTIONS_HAS_FOREARM = 16;
                  if(!(_loc2_ && _loc1_))
                  {
                     OPTIONS_HAS_NECK = 32;
                     if(_loc1_ || _loc1_)
                     {
                        OPTIONS_HAS_FRONTBODY = 64;
                        OPTIONS_HAS_BACKBODY = 128;
                        if(!_loc2_)
                        {
                           OPTIONS_HAS_BACK_HAIR = 256;
                           OPTIONS_HAS_MOUTH_FACIALHAIR = 512;
                           if(!(_loc2_ && _loc2_))
                           {
                              OPTIONS_HAS_BASE_FACIALHAIR = 1024;
                              if(_loc1_)
                              {
                              }
                              §§goto(addr256);
                           }
                           OPTIONS_TRACKEYES = 2048;
                           §§goto(addr171);
                        }
                     }
                     §§goto(addr265);
                  }
                  §§goto(addr289);
               }
               §§goto(addr201);
            }
            OPTIONS_HIDE_SHIRTFOREARM = 8192;
            if(!_loc2_)
            {
               OPTIONS_PREMADE = 16384;
               OPTIONS_BEHINDCOLLAR = 32768;
               §§goto(addr192);
            }
         }
         FACIALHAIR_FULL = ClothingItem.OPTIONS_HAS_BASE_FACIALHAIR | ClothingItem.OPTIONS_HAS_MOUTH_FACIALHAIR;
         §§goto(addr171);
      }
      §§push(§§findproperty(JACKET_COVERARMS));
      §§push(ClothingItem.OPTIONS_HAS_BICEP | ClothingItem.OPTIONS_HAS_FOREARM);
      if(!(_loc2_ && _loc2_))
      {
         §§push(ClothingItem.OPTIONS_HIDE_SHIRTBICEP);
         if(_loc1_ || ClothingItem)
         {
            §§push(§§pop() | §§pop());
            if(!(_loc2_ && _loc2_))
            {
               §§push(ClothingItem.OPTIONS_HIDE_SHIRTFOREARM);
            }
         }
         §§push(§§pop() | §§pop());
      }
      
      public static const JACKET_COVERARMS:uint = §§pop();
      
      §§goto(addr201);
      
      public var gender:String;
      
      public var type:String;
      
      public var tag:String;
      
      public var title:String;
      
      public var description:String;
      
      public var options:uint;
      
      public var price:Number = 0;
      
      public var inStore:Boolean = true;
      
      public var addToDefaultInventory:Boolean = false;
      
      public function ClothingItem(param1:String, param2:String, param3:String, param4:String, param5:Number = 0, param6:String = "all", param7:uint = 0, param8:Boolean = true, param9:Boolean = false)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         super();
         this.tag = param1;
         if(_loc10_ || Boolean(param3))
         {
            this.title = param2;
            this.description = param3;
            if(!_loc11_)
            {
               this.type = param4;
               this.price = param5;
               this.gender = param6;
               this.options = param7;
               if(_loc10_ || Boolean(param3))
               {
               }
            }
            §§goto(addr72);
         }
         this.inStore = param8;
         this.addToDefaultInventory = param9;
         addr72:
      }
      
      public function hasOption(param1:uint) : Boolean
      {
         return (this.options & param1) == param1;
      }
   }
}

