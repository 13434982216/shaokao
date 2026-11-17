package wingGame.data
{
   import §_-1d§.§_-BY§;
   import §_-5m§.*;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-9m§;
   import §_-C2§.§_-Am§;
   import flash.net.SharedObject;
   
   public class UserData
   {
      public var gameObj:§_-BY§;
      
      public var saveSlotPrefix:String = "papaswingeria_";
      
      public var saveSlotVersion:String = "1.0";
      
      public var papaReturnsOnDay:Number = 100;
      
      public var playedALevel:Boolean = false;
      
      public var myRank:Number = 1;
      
      public var myName:String = "Anonymous";
      
      public var whichCharacter:String = "marty";
      
      public var lastRibbon:Number = 0;
      
      public var ribbonDaysActive:Number = 3;
      
      public var totalMoneyEarned:Number = 0;
      
      public var totalTicketsEarned:Number = 0;
      
      public var totalScore:Number = 0;
      
      public var totalTips:Number = 0;
      
      public var totalTickets:Number = 0;
      
      public var currentDay:Number = 1;
      
      public var todayScore:Number = 0;
      
      public var todayTickets:Number = 0;
      
      public var todayTips:Number = 0;
      
      public var todayWaitScore:Number = 0;
      
      public var todayGrillScore:Number = 0;
      
      public var todaySauceScore:Number = 0;
      
      public var todayBuildScore:Number = 0;
      
      public var todayCustomers:Number = 0;
      
      public var todayMeterTopping:Number = 0;
      
      public var customersUnlocked:Array;
      
      public var customerStars:Array;
      
      public var customerSeals:Array;
      
      public var customerVisits:Array;
      
      public var customerFirstVisit:Array;
      
      public var didShowParade:Boolean = false;
      
      public var seenFloatsInParade:Number = 0;
      
      public var didClickTwitter:Boolean = false;
      
      public var didClickFacebook:Boolean = false;
      
      public var hasTrainedBoost:Boolean = false;
      
      public var hasTrainedCloser:Boolean = false;
      
      public var hasTrainedCritic:Boolean = false;
      
      public var hasTrainedRibbon:Boolean = false;
      
      public var hasTrainedMinigame:Boolean = false;
      
      public var hasTrainedDecorate:Boolean = false;
      
      public var hasTrainedInventory:Boolean = false;
      
      public var hasTrainedPoster:Boolean = false;
      
      public var hasTrainedFurni:Boolean = false;
      
      public var hasContinuedGame:Boolean = false;
      
      public var hasVisitedUpgradeShop:Boolean = false;
      
      public var hasVisitedLobbyEditor:Boolean = false;
      
      public var hasPlacedFurniture:Boolean = false;
      
      public var hasVisitedBadgesScreen:Boolean = false;
      
      public var hasTrainedPattern2:Boolean = false;
      
      public var hasTrainedPattern3:Boolean = false;
      
      public var hasTrainedPattern4:Boolean = false;
      
      public var hasTrainedPattern5:Boolean = false;
      
      public var hasTrainedPattern6:Boolean = false;
      
      public var hasTrainedPattern7:Boolean = false;
      
      public var hasTrainedPattern8:Boolean = false;
      
      public var initialCustomers:Number = 6;
      
      public var fillerCustomers:Number = 5;
      
      public var spacedCustomers:Number = 4;
      
      public var closerCustomers:Number = 7;
      
      public var toppingsUnlocked:Array;
      
      public var toppingsRevealed:Array;
      
      public var toppingIndexes:Array;
      
      public var toppingNames:Array;
      
      public var initialToppings:Number = 7;
      
      public var totalBonuses:Number = 13;
      
      public var bonusUpgrades:Array;
      
      public var numNapkins:Number = 0;
      
      public var furniInventory:Array;
      
      public var lobbyPlacement:Array;
      
      public var lobbyWallpaper:Number = 1;
      
      public var lobbyFlooring:Number = 1;
      
      public var clothingInventory:Array;
      
      public var hasNewClothing:Boolean = false;
      
      public var hasNewFurni:Boolean = false;
      
      public var rankTitles:Array;
      
      public var rankPlateauLimit:Number = 20;
      
      public var rankMultiplier:Number = 150;
      
      public var lastRankLimit:Number = 0;
      
      public var baseWeeklyWage:Number = 10000;
      
      public var wageIncreasePerRank:Number = 500;
      
      public var whichSlot:Number = 1;
      
      public var medalsEarned:Array;
      
      public var medalProgress:Array;
      
      public var numberOfMinigames:Number = 7;
      
      public var minigamesPlayed:Array;
      
      public var minigamePrizes:Array;
      
      public function UserData(param1:§_-BY§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.customersUnlocked = [];
            if(!_loc3_)
            {
               this.customerStars = [];
            }
            §§goto(addr53);
         }
         this.customerSeals = [];
         this.customerVisits = [];
         this.customerFirstVisit = [];
         if(_loc4_)
         {
            this.toppingsUnlocked = [];
            this.toppingsRevealed = [];
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               addr53:
               this.toppingIndexes = ["wing","bbq","buffalo","carrot","celery","bluecheese","ranch","spicygarlic","calypso","redpepper","boneless","mangochili","atomic","greenpepper","honeymustard","awesomesauce","strips","teriyaki","fry","kungpao","medium","shrimp","parmesan","cheesecubes","wildonion","zestypesto","wasabi"];
               §§goto(addr83);
            }
            §§goto(addr200);
         }
         addr83:
         this.toppingNames = ["Wings","BBQ Sauce","Buffalo Sauce","Carrots","Celery","Blue Cheese Dip","Ranch Dip","Spicy Garlic Sauce","Calypso Sauce","Red Peppers","Boneless Wings","Mango Chili Dip","Atomic Sauce","Green Peppers","Honey Mustard Sauce","Awesome Sauce Dip","Chicken Strips","Teriyaki Sauce","French Fries","Kung Pao Dip","Medium Sauce","Shrimp","Parmesan Sauce","Cheese Cubes","Wild Onion Sauce","Zesty Pesto Dip","Wasabi Sauce"];
         this.bonusUpgrades = [];
         this.furniInventory = [];
         this.lobbyPlacement = [];
         this.clothingInventory = [];
         if(_loc4_)
         {
            this.rankTitles = ["!","Newbie","Trainee","Tray Cleaner","Cashier","Boneless Buddy","Chili Champ","Atomic Saucer","Pepper Pro","Mustard Master","Awesomesauce","Strip Server","Teriyaki Pro","Fry Fan","Kung Pao Pro","Medium Master","Shrimp Server","Parmesan Pro","Cheese Cuber","Onion Wrangler","Pesto Zester","Wasabi Warrior","Wing Wrangler","Celery Server","Carrot Champ","BBQ Master","Buffalo Pro","Blue Cheese Buddy","Ranch Master","Deep Fryer","Sauce Tosser","Wing Hero","Chicken Champ","Platter Pro","Side Specialist","Dip Fanatic","Wing Arranger","Presentation Pro","Chicken Chef","Fryer Fanatic","Fry Basket Buddy","Chicken Breader","Sauce Squirter","Veggie Fan","Pattern Pro","Wing Tosser","Shrimp Saucer","Chicken Strip Pro","Chicken Nuggeteer","Wing Warrior","Employee of the Year","Order Expert","Fryer Expert","Sauce Expert","Build Expert","Restaurant Manager","Starlight Star","Wingeria Master","King of Wings","Better Than Papa!"];
            this.medalsEarned = [];
            addr200:
            this.medalProgress = [];
            if(!_loc3_)
            {
               this.minigamesPlayed = [0,0,0,0,0,0,0];
            }
            this.minigamePrizes = [0,0,0,0,0,0,0];
            if(_loc4_ || _loc3_)
            {
            }
            §§goto(addr234);
         }
         super();
         addr234:
         var _loc2_:UserData = this;
         if(_loc4_ || Boolean(param1))
         {
            _loc2_.gameObj = param1;
         }
      }
      
      public function loadData(param1:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2760
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function createNewSlot(param1:Number, param2:String, param3:String = "marty") : void
      {
         var whichSlot:Number;
         var playerName:String;
         var character:String;
         var ob:UserData;
         var b:Number;
         var so:SharedObject;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         §§push(param1);
         if(!(_loc6_ && Boolean(param1)))
         {
            §§pop().§§slot[1] = §§pop();
            §§push(§§newactivation());
            §§push(param2);
            if(!(_loc6_ && Boolean(this)))
            {
               §§pop().§§slot[2] = §§pop();
               addr297:
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(§§newactivation());
                  §§push(param3);
               }
               §§push(ob);
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(false);
                  if(_loc7_ || Boolean(param2))
                  {
                     addr314:
                     §§pop().hasContinuedGame = §§pop();
                     §§push(ob);
                     if(_loc7_)
                     {
                        §§push(false);
                        if(_loc7_ || Boolean(param2))
                        {
                           §§pop().hasVisitedUpgradeShop = §§pop();
                           addr465:
                           if(_loc7_ || Boolean(param3))
                           {
                              §§push(ob);
                              §§push(false);
                           }
                           §§push(§§newactivation());
                           if(_loc7_ || Boolean(param3))
                           {
                              addr475:
                              §§pop().§§slot[4].lobbyWallpaper = 1;
                              addr476:
                              §§push(§§newactivation());
                              if(!_loc6_)
                              {
                                 addr559:
                                 §§push(§§pop().§§slot[4]);
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    §§pop().lobbyFlooring = 1;
                                    addr489:
                                    §§push(§§newactivation());
                                 }
                                 §§push(0);
                                 §§push(0);
                                 if(_loc7_)
                                 {
                                    addr560:
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       addr561:
                                       §§push(0);
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          addr562:
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             §§push(§§pop());
                                             if(_loc7_ || Boolean(param3))
                                             {
                                                addr564:
                                                §§push(0);
                                                if(_loc7_)
                                                {
                                                   addr552:
                                                   §§pop().minigamesPlayed = null;
                                                   §§push(§§newactivation());
                                                   if(_loc7_)
                                                   {
                                                   }
                                                   addr569:
                                                   §§push(0);
                                                }
                                                §§pop().minigamePrizes = null;
                                                if(_loc7_)
                                                {
                                                   §§goto(addr569);
                                                   §§push(§§newactivation());
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(b);
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop().§§slot[4].totalBonuses)
                                                         {
                                                            §§push(character);
                                                            if(!(_loc6_ && Boolean(param2)))
                                                            {
                                                               if(§§pop() == "marty")
                                                               {
                                                                  if(_loc7_ || Boolean(param3))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop().§§slot[4].gameObj);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop().workerData);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().setupPremadeMale();
                                                                              §§push(§§newactivation());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr848:
                                                                                 §§push(§§pop().§§slot[4]);
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().§§slot[4]);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop().gameObj);
                                                                                       if(!(_loc6_ && Boolean(this)))
                                                                                       {
                                                                                          addr813:
                                                                                          §§push(§§pop().§_-1B§);
                                                                                          if(_loc7_ || Boolean(param3))
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc6_ && Boolean(param2)))
                                                                                             {
                                                                                                §§push(§§pop().§§slot[3]);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(WorkerData.GENDER_MALE);
                                                                                                   if(!(_loc6_ && Boolean(param1)))
                                                                                                   {
                                                                                                      addr814:
                                                                                                      §§push(§§pop().getSKUsForInventory(§§pop(),§§pop()));
                                                                                                      if(_loc7_ || Boolean(param2))
                                                                                                      {
                                                                                                         §§pop().clothingInventory = §§pop();
                                                                                                         if(_loc6_ && Boolean(param3))
                                                                                                         {
                                                                                                         }
                                                                                                         addr1414:
                                                                                                         §§push(ob);
                                                                                                         §§push(false);
                                                                                                         if(_loc7_ || Boolean(this))
                                                                                                         {
                                                                                                            §§pop().hasTrainedFurni = §§pop();
                                                                                                            addr1627:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§pop().§§slot[4].hasTrainedPoster = false;
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr1434:
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc7_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§push(false);
                                                                                                                     if(_loc7_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§pop().hasTrainedInventory = §§pop();
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr1454:
                                                                                                                           §§push(ob);
                                                                                                                           §§push(false);
                                                                                                                           if(!(_loc6_ && Boolean(param1)))
                                                                                                                           {
                                                                                                                              §§pop().hasTrainedMinigame = §§pop();
                                                                                                                              if(!(_loc6_ && Boolean(param3)))
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!(_loc6_ && Boolean(param1)))
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[4].hasTrainedPattern2 = false;
                                                                                                                                    addr1483:
                                                                                                                                    ob.hasTrainedPattern3 = false;
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(ob);
                                                                                                                                       if(_loc7_ || Boolean(param1))
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr1539:
                                                                                                                                       §§pop().hasTrainedPattern8 = false;
                                                                                                                                       addr1538:
                                                                                                                                       if(_loc7_ || Boolean(param2))
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr1605:
                                                                                                                                       so.data.trainpattern7 = ob.hasTrainedPattern7;
                                                                                                                                    }
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§pop().§§slot[6].data.trainpattern2 = ob.hasTrainedPattern2;
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!(_loc6_ && Boolean(param3)))
                                                                                                                                 {
                                                                                                                                    addr1564:
                                                                                                                                    §§pop().§§slot[6].data.trainpattern3 = ob.hasTrainedPattern3;
                                                                                                                                    if(_loc6_ && Boolean(param3))
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr1662:
                                                                                                                                    ob.clearScoresForToday();
                                                                                                                                    return;
                                                                                                                                    addr1629:
                                                                                                                                    addr1660:
                                                                                                                                    addr1661:
                                                                                                                                 }
                                                                                                                                 addr1578:
                                                                                                                                 §§pop().§§slot[6].data.trainpattern4 = ob.hasTrainedPattern4;
                                                                                                                                 if(!(_loc6_ && Boolean(param1)))
                                                                                                                                 {
                                                                                                                                    addr1592:
                                                                                                                                    so.data.trainpattern5 = ob.hasTrainedPattern5;
                                                                                                                                    so.data.trainpattern6 = ob.hasTrainedPattern6;
                                                                                                                                    §§goto(addr1605);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1629);
                                                                                                                              }
                                                                                                                              addr1612:
                                                                                                                              so.data.trainpattern8 = ob.hasTrainedPattern8;
                                                                                                                              try
                                                                                                                              {
                                                                                                                                 addr1619:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc7_ || Boolean(param2))
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              catch(err:Error)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && Boolean(param2)))
                                                                                                                                 {
                                                                                                                                    §_-5i§.error("Error saving new slot.");
                                                                                                                                 }
                                                                                                                                 §§goto(addr1660);
                                                                                                                              }
                                                                                                                              §§goto(addr1661);
                                                                                                                           }
                                                                                                                           addr1498:
                                                                                                                           §§pop().hasTrainedPattern4 = §§pop();
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              addr1502:
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              §§push(false);
                                                                                                                           }
                                                                                                                           §§push(§§pop().§§slot[4]);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§goto(addr1538);
                                                                                                                           }
                                                                                                                           §§goto(addr1662);
                                                                                                                        }
                                                                                                                        addr1577:
                                                                                                                        §§goto(addr1578);
                                                                                                                        §§push(§§newactivation());
                                                                                                                     }
                                                                                                                     §§pop().hasTrainedPattern5 = §§pop();
                                                                                                                     §§push(ob);
                                                                                                                     if(_loc7_ || Boolean(param3))
                                                                                                                     {
                                                                                                                        §§push(false);
                                                                                                                        if(!(_loc6_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           addr1522:
                                                                                                                           §§pop().hasTrainedPattern6 = §§pop();
                                                                                                                           addr1523:
                                                                                                                           §§push(§§newactivation());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1539);
                                                                                                                  }
                                                                                                                  §§goto(addr1498);
                                                                                                                  §§push(false);
                                                                                                               }
                                                                                                            }
                                                                                                            §§pop().§§slot[6].flush();
                                                                                                            §§goto(addr1662);
                                                                                                         }
                                                                                                         addr1533:
                                                                                                         §§pop().hasTrainedPattern7 = §§pop();
                                                                                                         addr1534:
                                                                                                         §§goto(addr1498);
                                                                                                         §§push(§§newactivation());
                                                                                                      }
                                                                                                      §§push(ob);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§pop().setupDefaultCustomerData();
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            ob.setupDefaultToppingData();
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc7_ || Boolean(param3))
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(_loc7_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               §§goto(addr1539);
                                                                                                            }
                                                                                                            addr1177:
                                                                                                            §§pop().§§slot[6].data.inventory = §_-Am§.§_-39§(ob.furniInventory);
                                                                                                            so.data.lobby = §_-Am§.§_-39§(ob.lobbyPlacement);
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc6_ && Boolean(param3)))
                                                                                                            {
                                                                                                               §§pop().§§slot[6].data.wallpaper = ob.lobbyWallpaper;
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  so.data.flooring = ob.lobbyFlooring;
                                                                                                                  addr1351:
                                                                                                                  if(!(_loc6_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§pop().§§slot[6].data.clothinginventory = ob.clothingInventory.concat();
                                                                                                                        if(_loc7_ || Boolean(this))
                                                                                                                        {
                                                                                                                           so.data.medalsEarned = [];
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§pop().§§slot[6].data.medalProgress = [];
                                                                                                                              if(_loc7_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc7_ || Boolean(param1))
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[6].data.minigamesPlayed = ob.minigamesPlayed.concat();
                                                                                                                                    so.data.minigamePrizes = ob.minigamePrizes.concat();
                                                                                                                                    addr1283:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       addr1286:
                                                                                                                                       §§pop().§§slot[6].data.trainboost = false;
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§pop().§§slot[6].data.traincloser = false;
                                                                                                                                          so.data.traincritic = false;
                                                                                                                                          so.data.trainribbon = false;
                                                                                                                                          if(_loc7_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                §§pop().§§slot[6].data.traindecorate = false;
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr1534);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1502);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§§slot[4]);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc6_ && Boolean(this))
                                                                                                                              {
                                                                                                                              }
                                                                                                                              §§goto(addr1498);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr1523);
                                                                                                                     }
                                                                                                                     addr1393:
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§pop().§§slot[6].data.trainminigame = false;
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr1627);
                                                                                                                  }
                                                                                                                  §§goto(addr1434);
                                                                                                               }
                                                                                                               §§goto(addr1498);
                                                                                                            }
                                                                                                            §§goto(addr1483);
                                                                                                         }
                                                                                                         addr963:
                                                                                                         so.data.visitedshop = false;
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            so.data.visitedbadges = false;
                                                                                                            if(_loc7_ || Boolean(param1))
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc7_ || Boolean(param2))
                                                                                                               {
                                                                                                                  §§pop().§§slot[6].data.shownparade = false;
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§pop().§§slot[6].data.floatsparade = 0;
                                                                                                                     so.data.clicktwitter = false;
                                                                                                                     so.data.clickfacebook = false;
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc6_ && Boolean(param2)))
                                                                                                                     {
                                                                                                                        §§pop().§§slot[6].data.hasnewclothing = true;
                                                                                                                        if(_loc7_ || Boolean(param3))
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc7_ || Boolean(param2))
                                                                                                                           {
                                                                                                                              §§pop().§§slot[6].data.hasnewfurni = false;
                                                                                                                              if(!(_loc6_ && Boolean(param3)))
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[6].data.numnapkins = ob.numNapkins;
                                                                                                                                    so.data.workerdata = ob.gameObj.workerData.getDataToSave();
                                                                                                                                    so.data.unlocked = ob.customersUnlocked.concat();
                                                                                                                                    addr1377:
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                    }
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc6_ && Boolean(this))
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr1564);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().§§slot[4]);
                                                                                                                                 §§push(false);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr1389:
                                                                                                                                    §§pop().hasTrainedCritic = §§pop();
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr1498);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1522);
                                                                                                                              }
                                                                                                                              §§goto(addr1498);
                                                                                                                           }
                                                                                                                           addr1133:
                                                                                                                           §§pop().§§slot[6].data.toppingsrevealed = ob.toppingsRevealed.concat();
                                                                                                                           if(_loc7_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc7_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 §§pop().§§slot[6].data.bonuses = ob.bonusUpgrades.concat();
                                                                                                                                 if(_loc7_ || Boolean(param3))
                                                                                                                                 {
                                                                                                                                    so.data.ribbon = ob.lastRibbon;
                                                                                                                                    §§goto(addr1177);
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                 }
                                                                                                                                 §§goto(addr1619);
                                                                                                                              }
                                                                                                                              §§goto(addr1177);
                                                                                                                           }
                                                                                                                           §§goto(addr1498);
                                                                                                                        }
                                                                                                                        §§goto(addr1564);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1454);
                                                                                                               }
                                                                                                               §§goto(addr1393);
                                                                                                            }
                                                                                                            §§goto(addr1283);
                                                                                                         }
                                                                                                         addr1132:
                                                                                                         §§goto(addr1133);
                                                                                                         §§push(§§newactivation());
                                                                                                      }
                                                                                                      §§push(false);
                                                                                                      if(_loc7_ || Boolean(param3))
                                                                                                      {
                                                                                                         §§pop().hasTrainedDecorate = §§pop();
                                                                                                         §§goto(addr1414);
                                                                                                      }
                                                                                                      §§goto(addr1522);
                                                                                                   }
                                                                                                }
                                                                                                addr777:
                                                                                                §§push(§§pop().getSKUsForInventory(§§pop(),§§pop()));
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§pop().clothingInventory = §§pop();
                                                                                                   if(_loc7_ || Boolean(this))
                                                                                                   {
                                                                                                   }
                                                                                                   addr1403:
                                                                                                   §§goto(addr1283);
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§goto(addr814);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr774:
                                                                                                §§push(§§pop().§§slot[3]);
                                                                                             }
                                                                                             §§goto(addr777);
                                                                                             §§push(WorkerData.GENDER_FEMALE);
                                                                                          }
                                                                                          §§pop().clothingInventory = §§pop();
                                                                                          §§goto(addr814);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr765:
                                                                                          §§push(§§pop().§_-1B§);
                                                                                          if(!(_loc6_ && Boolean(param2)))
                                                                                          {
                                                                                             §§goto(addr774);
                                                                                             §§push(§§newactivation());
                                                                                          }
                                                                                          §§goto(addr813);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr805:
                                                                                       §§push(§§pop().gameObj.§_-1B§);
                                                                                    }
                                                                                    addr806:
                                                                                    §§goto(addr813);
                                                                                    §§push(§§pop().getSKUsForInventory("custom",ob.gameObj.workerData.gender));
                                                                                 }
                                                                                 §§pop().checkForCheats(§§pop().§§slot[2]);
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc7_ || Boolean(param2))
                                                                                 {
                                                                                    §§pop().§§slot[6] = SharedObject.getLocal(this.saveSlotPrefix + whichSlot,"/");
                                                                                    so.data.playername = ob.myName;
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc7_ || Boolean(param1))
                                                                                       {
                                                                                          §§pop().§§slot[6].data.rank = ob.myRank;
                                                                                          if(_loc7_ || Boolean(param2))
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§pop().§§slot[6].data.day = ob.currentDay;
                                                                                                so.data.score = ob.totalScore;
                                                                                                so.data.tips = ob.totalTips;
                                                                                                so.data.tickets = ob.totalTickets;
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc7_ || Boolean(param3))
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr1454);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1414);
                                                                                       }
                                                                                       §§goto(addr1133);
                                                                                    }
                                                                                    §§goto(addr1483);
                                                                                 }
                                                                              }
                                                                              §§pop().§§slot[6].data.stars = ob.customerStars.concat();
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().§§slot[6].data.seals = ob.customerSeals.concat();
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§pop().§§slot[6].data.visits = ob.customerVisits.concat();
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          so.data.first = ob.customerFirstVisit.concat();
                                                                                          if(!(_loc6_ && Boolean(param2)))
                                                                                          {
                                                                                             so.data.toppings = ob.toppingsUnlocked.concat();
                                                                                             §§goto(addr1132);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1483);
                                                                                    }
                                                                                    addr1347:
                                                                                    §§pop().§§slot[6].data.trainfurni = false;
                                                                                    §§goto(addr1351);
                                                                                 }
                                                                                 §§goto(addr1286);
                                                                              }
                                                                              §§goto(addr1522);
                                                                           }
                                                                           addr1524:
                                                                           §§push(§§pop().§§slot[4]);
                                                                           if(!(_loc6_ && Boolean(param3)))
                                                                           {
                                                                              §§goto(addr1533);
                                                                              §§push(false);
                                                                           }
                                                                           §§goto(addr1539);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr735:
                                                                           §§push(§§pop().workerData);
                                                                        }
                                                                        §§pop().setupPremadeFemale();
                                                                        §§push(§§newactivation());
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop().§§slot[4]);
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc6_ && Boolean(param3)))
                                                                           {
                                                                              §§push(§§pop().§§slot[4]);
                                                                              if(_loc7_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§pop().gameObj);
                                                                                 if(_loc7_ || Boolean(param1))
                                                                                 {
                                                                                    §§goto(addr765);
                                                                                 }
                                                                                 §§goto(addr806);
                                                                              }
                                                                              §§goto(addr805);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr803:
                                                                              §§push(§§pop().§§slot[4]);
                                                                           }
                                                                           §§goto(addr805);
                                                                        }
                                                                        §§goto(addr1524);
                                                                     }
                                                                     §§pop().§§slot[6].data.allmoney = ob.totalMoneyEarned;
                                                                     if(!_loc6_)
                                                                     {
                                                                        so.data.alltickets = ob.totalTicketsEarned;
                                                                        so.data.character = ob.whichCharacter;
                                                                        so.data.continuedgame = false;
                                                                        §§goto(addr963);
                                                                     }
                                                                     §§goto(addr1612);
                                                                  }
                                                                  addr1371:
                                                                  §§push(ob);
                                                                  §§push(false);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop().hasTrainedBoost = §§pop();
                                                                     §§goto(addr1377);
                                                                  }
                                                                  §§goto(addr1522);
                                                               }
                                                               else
                                                               {
                                                                  §§push(character);
                                                               }
                                                               addr1331:
                                                               §§pop().§§slot[6].data.traininv = false;
                                                               if(!_loc6_)
                                                               {
                                                                  so.data.trainposter = false;
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr1347);
                                                                     }
                                                                     §§goto(addr1592);
                                                                  }
                                                                  §§goto(addr1612);
                                                               }
                                                               §§goto(addr1577);
                                                            }
                                                            if(§§pop() == "rita")
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc7_ || Boolean(param3))
                                                               {
                                                                  §§goto(addr735);
                                                                  §§push(§§pop().§§slot[4].gameObj);
                                                               }
                                                               §§goto(addr1592);
                                                            }
                                                            else
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop().§§slot[4]);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc6_ && Boolean(param1)))
                                                                     {
                                                                        §§goto(addr803);
                                                                     }
                                                                     §§goto(addr848);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1331);
                                                         }
                                                         else
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc7_ || Boolean(param1)))
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().§§slot[4]);
                                                            if(_loc7_ || Boolean(param1))
                                                            {
                                                               §§pop().bonusUpgrades.push(0);
                                                               §§push(b);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc6_ && Boolean(this))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               §§push(§§pop());
                                                               if(!(_loc6_ && Boolean(param1)))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc7_ || Boolean(this))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§pop().hasTrainedRibbon = false;
                                                         if(!(_loc6_ && Boolean(param2)))
                                                         {
                                                            §§goto(addr1403);
                                                         }
                                                         §§goto(addr1564);
                                                      }
                                                      §§push(§§pop().§§slot[4]);
                                                      §§push(false);
                                                      if(_loc7_ || Boolean(param3))
                                                      {
                                                         §§pop().hasTrainedCloser = §§pop();
                                                         §§goto(addr1371);
                                                      }
                                                      §§goto(addr1389);
                                                   }
                                                   §§pop().§§slot[5] = §§pop();
                                                }
                                             }
                                             addr563:
                                             §§goto(addr564);
                                             §§push(0);
                                          }
                                          §§goto(addr563);
                                          §§push(§§pop());
                                       }
                                       §§goto(addr562);
                                       §§push(§§pop());
                                    }
                                    §§goto(addr561);
                                    §§push(0);
                                 }
                                 §§goto(addr560);
                                 §§push(§§pop());
                              }
                              §§goto(addr559);
                              §§push(§§pop().§§slot[4]);
                              §§push(0);
                              §§push(0);
                              addr474:
                           }
                           §§push(§§pop().§§slot[4]);
                           if(!(_loc6_ && Boolean(param2)))
                           {
                              addr498:
                              §§push([]);
                              if(!(_loc6_ && Boolean(param3)))
                              {
                                 §§pop().medalsEarned = §§pop();
                                 if(!(_loc6_ && Boolean(param2)))
                                 {
                                    addr514:
                                    §§push(ob);
                                    §§push([]);
                                    if(_loc7_)
                                    {
                                    }
                                    §§goto(addr552);
                                 }
                                 addr520:
                                 §§push(ob);
                              }
                              §§pop().medalProgress = §§pop();
                              §§goto(addr520);
                           }
                           §§goto(addr559);
                        }
                        §§pop().hasVisitedLobbyEditor = §§pop();
                        §§push(§§newactivation());
                        if(_loc7_)
                        {
                           §§push(§§pop().§§slot[4]);
                           if(_loc7_)
                           {
                              addr345:
                              §§pop().hasPlacedFurniture = false;
                              if(!_loc6_)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc6_)
                                 {
                                    addr406:
                                    §§push(§§pop().§§slot[4]);
                                    if(_loc7_)
                                    {
                                       addr355:
                                       §§push(false);
                                    }
                                    §§pop().numNapkins = 0;
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       addr415:
                                       §§push(§§newactivation());
                                       if(_loc7_ || Boolean(param2))
                                       {
                                          addr423:
                                          §§push(§§pop().§§slot[4]);
                                       }
                                       §§goto(addr520);
                                    }
                                    §§goto(addr476);
                                 }
                                 §§goto(addr552);
                              }
                              §§goto(addr520);
                           }
                           §§goto(addr498);
                        }
                        addr381:
                        §§pop().§§slot[4].didClickFacebook = false;
                        addr380:
                        if(!_loc6_)
                        {
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              §§pop().§§slot[4].didClickTwitter = false;
                              addr445:
                              if(!_loc6_)
                              {
                                 addr396:
                                 ob.lastRibbon = 0;
                                 §§push(§§newactivation());
                              }
                              §§push(§§newactivation());
                              if(!(_loc6_ && Boolean(param3)))
                              {
                                 §§push(§§pop().§§slot[4]);
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    §§push([]);
                                    if(!_loc6_)
                                    {
                                       §§pop().lobbyPlacement = §§pop();
                                       §§goto(addr465);
                                    }
                                    §§goto(addr564);
                                 }
                                 §§goto(addr498);
                              }
                              §§goto(addr552);
                           }
                           §§push(§§pop().§§slot[4]);
                           if(_loc7_ || Boolean(param3))
                           {
                              §§goto(addr406);
                           }
                           §§goto(addr476);
                        }
                        §§goto(addr489);
                     }
                  }
                  §§pop().didShowParade = §§pop();
                  if(_loc7_)
                  {
                     addr361:
                     §§push(ob);
                     §§push(0);
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        §§pop().seenFloatsInParade = §§pop();
                        if(_loc7_ || Boolean(param1))
                        {
                           addr377:
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              §§goto(addr380);
                           }
                           §§goto(addr465);
                        }
                     }
                     §§goto(addr406);
                  }
                  §§goto(addr415);
               }
               §§push([]);
               if(!_loc6_)
               {
                  §§pop().bonusUpgrades = §§pop();
                  addr428:
                  ob.furniInventory = [];
                  §§push(ob);
                  §§push([]);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§pop().clothingInventory = §§pop();
                     if(_loc7_)
                     {
                        §§goto(addr445);
                     }
                     §§goto(addr564);
                  }
               }
               §§goto(addr498);
            }
            §§pop().§§slot[3] = §§pop();
            ob = this;
            ob.gameObj.challengeManager.resetAllTallies();
            §§push(§§newactivation());
            if(!(_loc6_ && Boolean(param3)))
            {
               §§push(§§pop().§§slot[2]);
               if(_loc7_ || Boolean(param3))
               {
                  §§push(§§pop() == "");
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        if(!§§pop())
                        {
                           if(_loc7_)
                           {
                           }
                           addr130:
                           if(§§pop())
                           {
                              addr171:
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§push(character);
                              }
                              §§push(ob);
                              §§push(1);
                              if(!_loc6_)
                              {
                                 §§pop().myRank = §§pop();
                                 ob.totalScore = 0;
                                 §§push(§§newactivation());
                                 if(_loc7_)
                                 {
                                    §§push(§§pop().§§slot[4]);
                                    if(!_loc6_)
                                    {
                                       §§push(0);
                                       if(_loc7_)
                                       {
                                          §§pop().totalTips = §§pop();
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop().§§slot[4]);
                                                if(!(_loc6_ && Boolean(param3)))
                                                {
                                                   §§pop().totalTickets = 0;
                                                   if(_loc7_)
                                                   {
                                                      §§push(ob);
                                                      if(_loc7_ || Boolean(param1))
                                                      {
                                                         §§pop().totalMoneyEarned = 0;
                                                         §§push(ob);
                                                         §§push(0);
                                                         if(!(_loc6_ && Boolean(param1)))
                                                         {
                                                            §§pop().totalTicketsEarned = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop().§§slot[4]);
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                            §§goto(addr514);
                                                         }
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr428);
                                                }
                                                §§pop().lastRankLimit = 0;
                                                §§push(ob);
                                                if(_loc7_)
                                                {
                                                   §§pop().currentDay = 1;
                                                   §§push(ob);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc6_)
                                                      {
                                                         addr256:
                                                         §§push(§§pop().§§slot[2]);
                                                         if(!_loc6_)
                                                         {
                                                            §§pop().myName = §§pop();
                                                            §§push(ob);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§newactivation());
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                         addr266:
                                                         §§pop().whichCharacter = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop().§§slot[4]);
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  §§pop().hasNewClothing = true;
                                                               }
                                                               §§goto(addr474);
                                                            }
                                                            addr285:
                                                            §§push(§§pop().§§slot[4]);
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               §§push(false);
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop().hasNewFurni = §§pop();
                                                                  §§goto(addr297);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr559);
                                                         }
                                                         §§push(§§newactivation());
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr559);
                                                      }
                                                      §§goto(addr266);
                                                      §§push(§§pop().§§slot[3]);
                                                   }
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr345);
                                             }
                                             §§goto(addr423);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr475);
                                    }
                                    §§goto(addr355);
                                 }
                                 §§goto(addr406);
                              }
                              §§goto(addr396);
                           }
                           §§push(ob);
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              §§pop().whichSlot = §§pop().§§slot[1];
                              if(!(_loc6_ && Boolean(param2)))
                              {
                                 §_-5i§.§_-CE§("Create New Slot: " + whichSlot);
                                 §§goto(addr171);
                              }
                              §§goto(addr396);
                           }
                           §§goto(addr256);
                        }
                        addr107:
                        §§push(§§pop());
                     }
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(!(_loc6_ && Boolean(param2)))
                           {
                              §§push(playerName);
                              if(!(_loc6_ && Boolean(param2)))
                              {
                                 §§push(§§pop() == "  ");
                              }
                           }
                           §§goto(addr361);
                        }
                     }
                     §§goto(addr130);
                  }
                  §§pop();
                  §§push(playerName);
                  if(_loc7_ || Boolean(param1))
                  {
                     §§push(§§pop() == " ");
                     if(_loc7_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr130);
                  }
               }
               if(§§pop() == "marty")
               {
                  playerName = "Chuck";
                  §§goto(addr130);
               }
               else
               {
                  playerName = "Mandi";
                  if(!_loc6_)
                  {
                     §§goto(addr130);
                  }
               }
            }
            §§goto(addr428);
         }
         §§pop().§§slot[5] = §§pop();
         §§goto(addr564);
      }
      
      private function cheatLevelUp(param1:Number, param2:Number = 0) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         var _loc3_:UserData = this;
         if(_loc9_)
         {
            _loc3_.myRank = 1;
            if(_loc9_ || Boolean(param1))
            {
            }
            addr63:
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc10_)
               {
                  break;
               }
               §§push(param1);
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     _loc3_.myRank = _loc4_;
                     if(!(_loc9_ || Boolean(param1)))
                     {
                        break;
                     }
                     _loc3_.currentDay = _loc4_;
                     _loc3_.lastRankLimit = _loc3_.getLastRankLimit();
                     §§push(_loc3_);
                     §§push(_loc3_.lastRankLimit);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop().totalScore = §§pop();
                     if(_loc10_ && Boolean(this))
                     {
                        break;
                     }
                     §§push(false);
                     if(_loc9_)
                     {
                        _loc6_ = §§pop();
                        if(_loc10_)
                        {
                           return;
                        }
                        §§push(_loc4_);
                        if(!_loc9_)
                        {
                           break loop0;
                        }
                        §§push(param1);
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           addr128:
                           if(§§pop() < §§pop())
                           {
                              if(_loc9_)
                              {
                                 §§push(true);
                              }
                           }
                           _loc3_.unlockCustomerAndTopping(true,_loc6_);
                           _loc4_++;
                           break;
                        }
                        continue;
                        addr192:
                     }
                     _loc6_ = §§pop();
                     if(_loc10_)
                     {
                        break;
                     }
                     §§goto(addr128);
                  }
                  §§push(0);
                  if(!_loc10_)
                  {
                     _loc5_ = §§pop();
                     if(_loc10_ && Boolean(this))
                     {
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                        break loop0;
                     }
                  }
                  break loop0;
               }
            }
            while(§§pop() < 20)
            {
               var _loc7_:* = _loc3_;
               §§push(_loc7_.currentDay);
               if(!_loc10_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc8_:* = §§pop();
               if(_loc9_)
               {
                  _loc7_.currentDay = _loc8_;
               }
               if(!(_loc9_ || Boolean(param2)))
               {
                  break;
               }
               _loc3_.unlockCustomerAndTopping(false,true);
               if(_loc10_)
               {
                  break;
               }
               _loc5_++;
               if(!_loc9_)
               {
                  break;
               }
            }
            §§goto(addr192);
         }
         _loc3_.totalScore = 0;
         if(_loc9_)
         {
            _loc3_.lastRankLimit = 0;
            if(_loc9_)
            {
               _loc3_.currentDay = 1;
               if(_loc9_ || Boolean(param2))
               {
                  _loc3_.unlockCustomerAndTopping(false,true);
                  if(param1 > 1)
                  {
                     _loc4_ = 2;
                  }
                  §§goto(addr192);
               }
            }
         }
         §§goto(addr63);
      }
      
      public function checkForCheats(param1:String) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:UserData = this;
      }
      
      public function eraseSlot(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:UserData = this;
         var _loc3_:SharedObject = SharedObject.getLocal(this.saveSlotPrefix + param1,"/");
         if(_loc4_)
         {
            _loc3_.clear();
         }
      }
      
      public function setupDefaultCustomerData() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:CustomerData = _loc1_.gameObj.customerData;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc1_.customersUnlocked = [0];
            if(!(_loc5_ && _loc3_))
            {
               _loc1_.customerSeals = [0];
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc1_.customerStars = [0];
                  if(_loc4_ || Boolean(_loc2_))
                  {
                  }
               }
               addr71:
               var _loc3_:int = 1;
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.getCustomerTotal());
                     while(§§pop() <= §§pop())
                     {
                        §§push(_loc3_);
                        if(_loc5_ && Boolean(_loc1_))
                        {
                           continue loop1;
                        }
                        §§push(_loc1_.initialCustomers);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + _loc1_.closerCustomers);
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(_loc1_.customersUnlocked);
                              §§push(1);
                              if(_loc4_ || Boolean(_loc3_))
                              {
                                 §§pop().push(§§pop());
                                 _loc1_.customerFirstVisit.push(1);
                              }
                              addr160:
                              §§pop().push(§§pop());
                              _loc3_++;
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr137:
                           §§push(_loc1_.customerStars);
                           if(!_loc5_)
                           {
                              addr141:
                              §§pop().push(0);
                              if(!(_loc5_ && Boolean(_loc1_)))
                              {
                                 §§push(_loc1_.customerVisits);
                              }
                              break;
                           }
                           §§goto(addr160);
                           §§push(0);
                        }
                        else
                        {
                           _loc1_.customersUnlocked.push(0);
                           _loc1_.customerFirstVisit.push(0);
                        }
                        §§push(_loc1_.customerSeals);
                        if(!_loc5_)
                        {
                           §§pop().push(0);
                           §§goto(addr137);
                        }
                        §§goto(addr141);
                     }
                     return;
                  }
               }
            }
         }
         _loc1_.customerVisits = [0];
         if(_loc4_)
         {
            _loc1_.customerFirstVisit = [0];
         }
         §§goto(addr71);
      }
      
      public function setupDefaultToppingData() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:UserData = this;
         if(!_loc3_)
         {
            _loc1_.toppingsUnlocked = [];
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc1_.toppingsRevealed = [];
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < _loc1_.toppingIndexes.length)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  continue;
               }
               if(§§pop() < _loc1_.initialToppings)
               {
                  §§push(_loc1_.toppingsUnlocked);
                  if(!_loc3_)
                  {
                     §§push(1);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§pop().push(§§pop());
                        if(_loc3_ && Boolean(_loc2_))
                        {
                           continue loop0;
                        }
                        §§push(_loc1_.toppingsRevealed);
                        if(_loc3_)
                        {
                        }
                     }
                     addr76:
                     §§pop().push(§§pop());
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr102:
                        _loc2_++;
                     }
                     continue loop0;
                  }
                  §§push(1);
                  if(!_loc3_)
                  {
                     §§goto(addr76);
                  }
                  else
                  {
                     addr97:
                     §§pop().push(§§pop());
                     §§push(_loc1_.toppingsRevealed);
                  }
                  §§goto(addr102);
               }
               else
               {
                  §§push(_loc1_.toppingsUnlocked);
                  if(_loc4_)
                  {
                     §§push(0);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr97);
                     }
                     addr101:
                     §§pop().push(§§pop());
                     §§goto(addr102);
                  }
               }
               §§goto(addr101);
               §§push(0);
            }
            _loc1_.gameObj.challengeManager.recordUnlockTopping();
            return;
         }
      }
      
      public function getRank() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.myRank;
      }
      
      public function getRankTitle(param1:Number = -1) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UserData = this;
         var _loc3_:* = "???";
         §§push(_loc2_.myRank);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && Boolean(param1)))
            {
               if(§§pop() > -1)
               {
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     §§push(param1);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                     }
                  }
               }
            }
            _loc4_ = §§pop();
            if(_loc6_)
            {
            }
            addr70:
            §§push(_loc2_.rankTitles);
            if(_loc6_)
            {
               addr74:
               §§push(_loc4_);
               if(_loc6_)
               {
                  §§push(§§pop()[§§pop()]);
                  if(!_loc5_)
                  {
                     _loc3_ = §§pop();
                     if(_loc6_ || Boolean(param1))
                     {
                     }
                  }
                  §§goto(addr106);
               }
               §§goto(addr105);
            }
            else
            {
               addr99:
               §§push(_loc2_.rankTitles.length - 1);
            }
            addr105:
            _loc3_ = §§pop();
            addr106:
            return _loc3_;
            §§push(§§pop()[§§pop()]);
         }
         §§push(_loc2_.rankTitles);
         if(_loc6_ || Boolean(_loc3_))
         {
            if(§§pop().length > _loc4_)
            {
               §§goto(addr70);
            }
            else
            {
               §§push(_loc2_.rankTitles);
            }
            §§goto(addr99);
         }
         §§goto(addr74);
      }
      
      public function getMeterAward(param1:String, param2:Boolean = false) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = null;
         var _loc9_:String = null;
         var _loc3_:UserData = this;
         var _loc5_:* = 0;
         if(param1 == "awesome")
         {
            §§push(100);
            if(_loc10_ || Boolean(param1))
            {
               §§push(§§pop());
               if(_loc10_ || Boolean(_loc3_))
               {
                  _loc5_ = §§pop();
               }
               §§goto(addr146);
            }
            else
            {
               addr87:
               §§push(§§pop());
            }
            _loc5_ = §§pop();
            if(_loc11_ && Boolean(_loc3_))
            {
            }
            §§goto(addr146);
         }
         else if(param1 == "great")
         {
            if(_loc10_ || Boolean(param1))
            {
               §§push(50);
               if(!(_loc11_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(!(_loc11_ && param2))
                  {
                     _loc5_ = §§pop();
                  }
                  addr118:
                  _loc6_ = §§pop();
               }
               else
               {
                  §§goto(addr87);
               }
               §§goto(addr146);
            }
            §§goto(addr119);
         }
         else if(param1 == "good")
         {
            addr112:
            if(_loc10_)
            {
               §§goto(addr87);
               §§push(25);
            }
            §§goto(addr118);
            §§push(Math.floor(_loc5_ / 100));
         }
         if(param2)
         {
            if(_loc10_ || Boolean(param1))
            {
               §§goto(addr112);
            }
            addr119:
            §§push(_loc5_);
            §§push(_loc6_);
            if(_loc10_)
            {
               §§push(§§pop() * 100);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc11_ && param2))
            {
               _loc7_ = §§pop();
               _loc8_ = String(_loc7_);
               if(_loc8_.length < 2)
               {
                  if(_loc10_)
                  {
                     §§goto(addr146);
                  }
               }
               §§goto(addr160);
            }
            else
            {
               addr197:
               _loc4_ = §§pop();
            }
            addr146:
            §§push("0" + _loc8_);
            if(!_loc11_)
            {
               §§push(§§pop());
               if(!(_loc11_ && Boolean(_loc3_)))
               {
                  _loc8_ = §§pop();
                  addr160:
                  §§push(§_-9m§.§_-3E§(_loc6_));
               }
               _loc9_ = §§pop();
               §§push("$" + _loc9_);
               if(!(_loc11_ && param2))
               {
                  §§push(§§pop() + ".");
                  if(_loc11_ && Boolean(_loc3_))
                  {
                  }
               }
               §§push(§§pop() + _loc8_);
            }
            return §§pop();
         }
         §§push(_loc5_);
         §§goto(addr197);
      }
      
      public function getWeeklyWage(param1:Boolean = false) : *
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = undefined;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:UserData = this;
         §§push(_loc2_.baseWeeklyWage);
         if(!_loc9_)
         {
            §§push(_loc2_.wageIncreasePerRank);
            if(_loc10_)
            {
               §§push(_loc2_.myRank);
               if(_loc10_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc9_ && Boolean(this))
            {
            }
            §§goto(addr58);
         }
         addr58:
         var _loc4_:* = §§pop();
         if(param1)
         {
            if(!(_loc9_ && _loc3_))
            {
               §§push(Math.floor(_loc4_ / 100));
               if(_loc10_ || Boolean(this))
               {
                  _loc5_ = §§pop();
                  §§push(_loc4_);
                  if(_loc10_ || Boolean(_loc2_))
                  {
                  }
               }
               §§push(_loc5_);
               if(!(_loc9_ && param1))
               {
                  §§push(§§pop() * 100);
               }
               §§push(§§pop() - §§pop());
               if(!(_loc9_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc10_ || Boolean(this))
                  {
                     _loc6_ = §§pop();
                     §§push(String(_loc6_));
                     if(_loc10_ || param1)
                     {
                        addr162:
                        _loc7_ = §§pop();
                        §§push(_loc7_);
                        if(!_loc9_)
                        {
                           addr170:
                           if(§§pop().length < 2)
                           {
                              if(_loc10_)
                              {
                              }
                              addr177:
                              §§push("$" + _loc8_);
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 §§push(§§pop() + ".");
                                 if(_loc10_ || param1)
                                 {
                                 }
                                 addr205:
                                 _loc3_ = §§pop();
                              }
                              §§goto(addr205);
                              §§push(§§pop() + _loc7_);
                           }
                           §§push(§_-9m§.§_-3E§(_loc5_));
                           if(!_loc9_)
                           {
                              addr175:
                              §§push(§§pop());
                           }
                        }
                        _loc7_ = §§pop();
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§goto(addr170);
                        }
                        §§goto(addr177);
                     }
                     _loc8_ = §§pop();
                     §§goto(addr177);
                  }
                  §§goto(addr211);
               }
            }
            §§push("0" + _loc7_);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop());
               if(_loc10_ || param1)
               {
                  §§goto(addr162);
               }
               §§goto(addr175);
            }
            §§goto(addr205);
         }
         else
         {
            §§push(_loc4_);
         }
         _loc3_ = §§pop();
         addr211:
         §§pop();
         return _loc3_;
      }
      
      public function getPaydayMessage(param1:Boolean = false) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UserData = this;
         var _loc3_:* = "";
         §§push(7);
         §§push(_loc2_.currentDay);
         if(_loc5_ || Boolean(_loc3_))
         {
            §§push(§§pop() % 7);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(0);
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(§§pop() == §§pop());
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              §§push(7);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc5_ || Boolean(this))
                                 {
                                 }
                              }
                           }
                        }
                        addr114:
                        §§push("Payday! " + _loc2_.getWeeklyWage(true));
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              _loc3_ = §§pop();
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 addr137:
                              }
                           }
                           §§goto(addr170);
                        }
                        else
                        {
                           addr168:
                           _loc3_ = §§pop();
                        }
                        addr169:
                        addr170:
                        return §§pop();
                        §§push(_loc3_);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(param1);
                     }
                     else
                     {
                        addr146:
                        _loc3_ = "Payday in 1 Day!";
                     }
                     §§goto(addr169);
                  }
                  else
                  {
                     §§push(_loc4_);
                  }
                  §§goto(addr168);
               }
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§goto(addr114);
                  }
                  §§goto(addr137);
               }
               else
               {
                  _loc3_ = "Payday Today!";
               }
               §§goto(addr137);
            }
            addr143:
            if(§§pop() == §§pop())
            {
               if(!_loc6_)
               {
                  §§goto(addr146);
               }
            }
            else
            {
               §§push("Payday in " + _loc4_);
               if(_loc5_ || Boolean(this))
               {
                  §§push(§§pop() + " Days!");
               }
               §§goto(addr168);
            }
            §§goto(addr114);
         }
         §§goto(addr143);
         §§push(1);
      }
      
      public function isPayday() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:UserData = this;
         §§push(_loc1_.currentDay);
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(§§pop() % 7);
            if(_loc4_ && Boolean(this))
            {
            }
            addr42:
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               if(_loc2_ == 0)
               {
                  if(_loc4_)
                  {
                  }
                  §§goto(addr67);
               }
               addr67:
               return §§pop();
               §§push(false);
            }
            §§push(true);
            if(!(_loc4_ && _loc3_))
            {
               return §§pop();
            }
            §§goto(addr67);
         }
         §§goto(addr42);
         §§push(§§pop());
      }
      
      public function alreadyEarnedCustomer(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UserData = this;
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_.customersUnlocked);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop().length > param1);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           addr114:
                           §§push(_loc2_.customersUnlocked);
                           if(_loc4_)
                           {
                              §§push(param1);
                              if(_loc4_ || Boolean(param1))
                              {
                                 §§push(§§pop()[§§pop()] == 1);
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr78);
                              }
                              addr122:
                              §§push(§§pop()[§§pop()] > 0);
                           }
                           §§goto(addr122);
                           §§push(param1);
                        }
                        §§push(_loc2_.customerFirstVisit);
                        if(_loc4_ || Boolean(this))
                        {
                        }
                        §§goto(addr114);
                     }
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr78);
                        }
                        addr100:
                        §§push(§§pop());
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc4_ || Boolean(param1))
                        {
                           §§goto(addr114);
                           §§push(_loc2_.customerFirstVisit);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr131);
                  }
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr78);
                  }
               }
            }
            §§push(§§pop().length > param1);
            if(_loc4_)
            {
               §§goto(addr100);
            }
            addr78:
            §§pop();
            if(_loc3_ && _loc3_)
            {
            }
            return true;
         }
         addr131:
         false;
         return §§pop();
      }
      
      public function getCustomerStars(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UserData = this;
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_.customerStars);
            if(!_loc4_)
            {
               if(§§pop().length > param1)
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(_loc2_.customerStars);
                  }
               }
            }
            return §§pop()[param1];
         }
         return 0;
      }
      
      public function getCustomerSeal(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UserData = this;
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(_loc2_.customerSeals);
            if(!_loc4_)
            {
               if(§§pop().length > param1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc2_.customerSeals);
                  }
               }
            }
            return §§pop()[param1];
         }
         return 0;
      }
      
      public function getCustomerFirstDay(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UserData = this;
         if(_loc4_ || Boolean(_loc2_))
         {
            §§push(_loc2_.customerFirstVisit);
            if(_loc4_)
            {
               if(§§pop().length > param1)
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§push(_loc2_.customerFirstVisit);
                  }
               }
            }
            return §§pop()[param1];
         }
         return 0;
      }
      
      public function getCustomerTotalOrders(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UserData = this;
         if(!_loc4_)
         {
            §§push(_loc2_.customerVisits);
            if(!_loc4_)
            {
               if(§§pop().length > param1)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(_loc2_.customerVisits);
                  }
               }
            }
            return §§pop()[param1];
         }
         return 0;
      }
      
      public function earnCustomerStar(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:UserData = this;
         if(_loc5_ || Boolean(this))
         {
            _loc3_.customerStars[param1] = param2;
         }
      }
      
      public function earnCustomerSeal(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:UserData = this;
         if(!(_loc5_ && Boolean(this)))
         {
            _loc3_.customerSeals[param1] = param2;
            if(_loc4_ || Boolean(param2))
            {
            }
            §§goto(addr54);
         }
         _loc3_.gameObj.challengeManager.recordCustomerSeal(param2);
         addr54:
      }
      
      public function earnBlueRibbon() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:UserData = this;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.lastRibbon = _loc1_.currentDay;
            if(_loc3_)
            {
               _loc1_.gameObj.challengeManager.recordRibbon();
            }
         }
      }
      
      public function hasRibbon() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:UserData = this;
         var _loc2_:* = false;
         if(!_loc3_)
         {
            §§push(_loc1_.lastRibbon);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() > 0);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        §§goto(addr85);
                     }
                  }
               }
               addr82:
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr85);
                  }
               }
            }
            §§push(_loc1_.lastRibbon);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + _loc1_.ribbonDaysActive);
            }
            §§push(§§pop() <= §§pop());
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr82);
            }
            §§goto(addr85);
         }
         addr85:
         if(_loc4_ || _loc3_)
         {
            §§push(_loc1_.currentDay);
         }
         §§push(true);
         if(!_loc3_)
         {
            _loc2_ = §§pop();
         }
         _loc2_;
         return §§pop();
      }
      
      public function clearScoresForToday() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:UserData = this;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.todayBuildScore = 0;
            if(!_loc2_)
            {
               _loc1_.todaySauceScore = 0;
               if(_loc2_)
               {
               }
               §§goto(addr67);
            }
            _loc1_.todayGrillScore = 0;
            if(_loc3_)
            {
               _loc1_.todayWaitScore = 0;
               if(!_loc2_)
               {
                  _loc1_.todayScore = 0;
                  _loc1_.todayTips = 0;
               }
            }
            §§goto(addr67);
         }
         _loc1_.todayTickets = 0;
         addr67:
         _loc1_.todayCustomers = 0;
         _loc1_.todayMeterTopping = 0;
      }
      
      public function addToCustomersToday(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UserData = this;
         var _loc3_:* = _loc2_;
         §§push(_loc3_.todayCustomers);
         if(_loc6_ || Boolean(_loc3_))
         {
            §§push(§§pop() + 1);
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            _loc3_.todayCustomers = _loc4_;
         }
         if(_loc6_ || Boolean(this))
         {
            §§push(_loc2_.customersUnlocked);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               §§push(param1);
               if(!_loc5_)
               {
                  if(§§pop()[§§pop()] == 0)
                  {
                     §§goto(addr135);
                  }
               }
               addr99:
               §§push(§§pop()[§§pop()] == 0);
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§pop();
                        §§push(_loc2_.customerVisits);
                        if(!_loc5_)
                        {
                           addr118:
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§push(§§pop()[§§pop()] == 0);
                           }
                           addr135:
                           §§goto(addr134);
                        }
                        addr134:
                        §§push(_loc2_.customersUnlocked);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§pop()[§§pop()] = 1;
                              if(_loc5_)
                              {
                              }
                              addr132:
                              §§push(_loc2_.customerFirstVisit);
                           }
                        }
                        §§pop()[param1] = _loc2_.currentDay;
                        return;
                     }
                  }
               }
               if(§§pop())
               {
                  §§goto(addr132);
               }
               §§goto(addr135);
            }
            addr91:
            §§push(param1);
            if(_loc6_ || Boolean(_loc2_))
            {
               §§goto(addr99);
            }
            §§goto(addr135);
         }
         §§push(_loc2_.customerFirstVisit);
         if(_loc6_ || Boolean(param1))
         {
            §§goto(addr91);
         }
         §§goto(addr118);
      }
      
      public function recordCustomerVisit(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:UserData = this;
         if(_loc6_)
         {
            var _loc3_:* = _loc2_.customerVisits;
            var _loc4_:*;
            var _loc5_:* = _loc3_[_loc4_ = param1] + 1;
            if(_loc6_ || Boolean(param1))
            {
               _loc3_[_loc4_] = _loc5_;
            }
         }
      }
      
      public function addToDailyScore(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number = 0) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:UserData = this;
         §§push(_loc8_);
         §§push(_loc8_.todayWaitScore);
         if(!(_loc10_ && Boolean(param3)))
         {
            §§push(§§pop() + param1);
         }
         §§pop().todayWaitScore = §§pop();
         if(_loc9_)
         {
            §§push(_loc8_);
            §§push(_loc8_.todayGrillScore);
            if(_loc9_)
            {
               §§push(§§pop() + param2);
            }
            §§pop().todayGrillScore = §§pop();
            §§push(_loc8_);
            §§push(_loc8_.todayBuildScore);
            if(_loc9_)
            {
               §§push(§§pop() + param3);
            }
            §§pop().todayBuildScore = §§pop();
            if(!(_loc10_ && Boolean(param2)))
            {
               §§push(_loc8_);
               §§push(_loc8_.todaySauceScore);
               if(!_loc10_)
               {
                  §§push(§§pop() + param4);
               }
               §§pop().todaySauceScore = §§pop();
               if(_loc10_)
               {
               }
            }
            §§push(_loc8_);
            §§push(_loc8_.todayScore);
            if(_loc9_ || Boolean(param3))
            {
               §§push(§§pop() + param5);
            }
            §§pop().todayScore = §§pop();
            if(_loc9_ || Boolean(param2))
            {
               §§push(_loc8_);
               §§push(_loc8_.todayTips);
               if(_loc9_)
               {
                  §§push(§§pop() + param6);
               }
               §§pop().todayTips = §§pop();
               §§push(_loc8_);
               §§push(_loc8_.todayTickets);
               if(!_loc10_)
               {
                  §§push(§§pop() + param7);
               }
               §§pop().todayTickets = §§pop();
            }
         }
      }
      
      public function earnExtraDailyTicket(param1:Number = 1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UserData = this;
         if(_loc3_)
         {
            §§push(_loc2_);
            §§push(_loc2_.todayTickets);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().todayTickets = §§pop();
         }
      }
      
      public function getTodayWaitingAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todayWaitScore / _loc1_.todayCustomers);
      }
      
      public function getTodayGrillAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todayGrillScore / _loc1_.todayCustomers);
      }
      
      public function getTodayBuildAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todayBuildScore / _loc1_.todayCustomers);
      }
      
      public function getTodaySauceAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.floor(_loc1_.todaySauceScore / _loc1_.todayCustomers);
      }
      
      public function getTodayTotalAverage() : Number
      {
         var _loc1_:UserData = this;
         return Math.round((_loc1_.getTodayWaitingAverage() + _loc1_.getTodayBuildAverage() + _loc1_.getTodayGrillAverage() + _loc1_.getTodaySauceAverage()) / 4);
      }
      
      public function getCurrentPercentQuality(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:UserData = this;
         §§push(_loc2_.todayWaitScore);
         if(_loc9_)
         {
            §§push(§§pop() / param1);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_.todayGrillScore);
         if(!_loc8_)
         {
            §§push(§§pop() / param1);
            if(_loc8_ && Boolean(param1))
            {
            }
            addr41:
            var _loc4_:* = §§pop();
            §§push(_loc2_.todayBuildScore);
            if(_loc9_ || Boolean(this))
            {
               §§push(§§pop() / param1);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc2_.todaySauceScore);
            if(_loc9_)
            {
               §§push(§§pop() / param1);
               if(_loc9_ || Boolean(_loc2_))
               {
               }
               §§goto(addr78);
            }
            addr78:
            var _loc6_:* = §§pop();
            return Math.round((_loc3_ + _loc5_ + _loc4_ + _loc6_) / 4);
            §§push(§§pop());
         }
         §§goto(addr41);
         §§push(§§pop());
      }
      
      public function getTodayTotalScore() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.todayScore;
      }
      
      public function getTotalPoints(param1:Boolean = false) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:UserData = this;
         §§push(_loc2_.totalScore);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(param1)
            {
               if(_loc5_)
               {
               }
            }
            addr55:
            return _loc3_;
            addr54:
         }
         §§push(_loc3_);
         if(_loc4_)
         {
            §§push(§§pop() + _loc2_.todayScore);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
               }
            }
            _loc3_ = §§pop();
            §§goto(addr54);
         }
         §§goto(addr55);
      }
      
      public function getTipsToday(param1:Boolean = false) : *
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc2_:UserData = this;
         if(param1)
         {
            if(_loc9_ || param1)
            {
               _loc4_ = _loc2_.todayTips;
               if(!_loc10_)
               {
                  §§push(Math.floor(_loc4_ / 100));
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     _loc5_ = §§pop();
                  }
               }
               addr90:
               §§push(String(_loc6_));
               if(_loc9_ || param1)
               {
                  _loc7_ = §§pop();
                  §§push(_loc7_);
                  if(_loc9_)
                  {
                  }
                  addr130:
                  _loc8_ = §§pop();
                  addr131:
                  §§push("$" + _loc8_);
                  if(!_loc10_)
                  {
                     addr136:
                     §§push(§§pop() + ".");
                     if(_loc9_)
                     {
                     }
                     §§goto(addr149);
                  }
                  addr149:
                  return §§pop();
                  §§push(§§pop() + _loc7_);
                  addr129:
               }
               if(§§pop().length < 2)
               {
                  §§push("0" + _loc7_);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
                     {
                        _loc7_ = §§pop();
                        if(_loc10_)
                        {
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr136);
               }
               §§push(§_-9m§.§_-3E§(_loc5_));
               if(!(_loc10_ && _loc3_))
               {
                  §§goto(addr131);
               }
               §§goto(addr130);
            }
            §§push(_loc4_);
            §§push(_loc5_);
            if(_loc9_)
            {
               §§push(§§pop() * 100);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc10_ && param1))
            {
               §§push(§§pop());
               if(_loc9_ || Boolean(this))
               {
                  _loc6_ = §§pop();
                  §§goto(addr90);
               }
               §§goto(addr136);
            }
         }
         else
         {
            §§push(_loc2_.todayTips);
         }
         _loc3_ = §§pop();
         §§goto(addr136);
      }
      
      public function getTipsTotal(param1:Boolean = false, param2:Boolean = false) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc3_:UserData = this;
         §§push(param1);
         if(_loc10_ || Boolean(_loc3_))
         {
            addr172:
            _loc4_ = !!§§pop() ? (_loc5_ = _loc3_.totalTips, param2) : _loc3_.totalTips;
            if(!(_loc11_ && param1))
            {
               if(param2)
               {
               }
               §§goto(addr196);
            }
            _loc4_ += _loc3_.todayTips;
            §§goto(addr196);
         }
         if(§§pop())
         {
            if(!(_loc11_ && Boolean(this)))
            {
               §§push(_loc5_);
               §§push(_loc3_.todayTips);
               if(_loc10_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc11_ && param2))
                  {
                     _loc5_ = §§pop();
                  }
                  §§goto(addr106);
               }
               addr88:
               §§push(§§pop() - §§pop() * 100);
               if(!(_loc11_ && param2))
               {
                  §§push(§§pop());
               }
               §§goto(addr106);
            }
            addr125:
            §§push("0" + _loc8_);
            if(_loc10_ || param1)
            {
               §§push(§§pop());
               if(!(_loc11_ && Boolean(this)))
               {
                  addr106:
                  _loc7_ = §§pop();
                  §§push(String(_loc7_));
                  if(!(_loc11_ && Boolean(_loc3_)))
                  {
                     _loc8_ = §§pop();
                     §§push(_loc8_);
                     if(_loc10_)
                     {
                        if(§§pop().length < 2)
                        {
                        }
                        §§goto(addr144);
                     }
                  }
                  _loc8_ = §§pop();
                  §§goto(addr144);
               }
               §§goto(addr149);
            }
            addr144:
            §§push(§_-9m§.§_-3E§(_loc6_));
            if(!_loc11_)
            {
               addr149:
               §§push(§§pop());
            }
            _loc9_ = §§pop();
            §§push("$" + _loc9_);
            if(_loc10_ || param1)
            {
               §§push(§§pop() + ".");
               if(!_loc11_)
               {
                  §§push(§§pop() + _loc8_);
               }
            }
            _loc4_ = §§pop();
            §§goto(addr196);
         }
         _loc6_ = Math.floor(_loc5_ / 100);
         if(!(_loc11_ && Boolean(_loc3_)))
         {
            §§push(_loc5_);
            if(!_loc11_)
            {
               §§push(_loc6_);
               if(_loc10_)
               {
               }
               §§goto(addr88);
            }
            else
            {
               §§goto(addr172);
            }
         }
         §§goto(addr125);
      }
      
      public function getTicketsTotal(param1:Boolean = false) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:UserData = this;
         §§push(_loc2_.totalTickets);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            if(param1)
            {
               if(_loc4_)
               {
               }
               addr95:
               return _loc3_;
               addr94:
            }
            addr65:
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               addr73:
               if(§§pop() < 0)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        addr93:
                        _loc3_ = §§pop();
                     }
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr95);
         }
         §§push(_loc3_);
         if(!_loc4_)
         {
            §§push(§§pop() + _loc2_.todayTickets);
            if(_loc5_ || param1)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  _loc3_ = §§pop();
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr73);
      }
      
      public function useTicket(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UserData = this;
         if(!_loc3_)
         {
            §§push(_loc2_);
            §§push(_loc2_.totalTickets);
            if(_loc4_ || Boolean(param1))
            {
               §§push(§§pop() - param1);
            }
            §§pop().totalTickets = §§pop();
            if(_loc4_ || Boolean(this))
            {
               if(_loc2_.totalTickets < 0)
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     _loc2_.totalTickets = 0;
                  }
               }
            }
         }
      }
      
      public function saveScores() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:UserData = this;
         if(_loc6_ || Boolean(this))
         {
            §§push(_loc1_);
            §§push(_loc1_.totalScore);
            if(!_loc5_)
            {
               §§push(§§pop() + _loc1_.todayScore);
            }
            §§pop().totalScore = §§pop();
            if(_loc6_)
            {
               §§push(_loc1_);
               §§push(_loc1_.totalTips);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() + _loc1_.todayTips);
               }
               §§pop().totalTips = §§pop();
               if(_loc6_ || _loc3_)
               {
               }
               §§goto(addr104);
            }
            §§push(_loc1_);
            §§push(_loc1_.totalMoneyEarned);
            if(_loc6_)
            {
               §§push(§§pop() + _loc1_.todayTips);
            }
            §§pop().totalMoneyEarned = §§pop();
            if(_loc5_ && Boolean(this))
            {
            }
            §§goto(addr83);
         }
         §§push(_loc1_);
         §§push(_loc1_.totalTickets);
         if(!_loc5_)
         {
            §§push(§§pop() + _loc1_.todayTickets);
         }
         §§pop().totalTickets = §§pop();
         if(_loc6_)
         {
            addr83:
            §§push(_loc1_);
            §§push(_loc1_.totalTicketsEarned);
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(§§pop() + _loc1_.todayTickets);
            }
            §§pop().totalTicketsEarned = §§pop();
            §§goto(addr104);
         }
         addr104:
         §§push(_loc1_.getNextRankLimit());
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.totalScore);
         if(_loc6_)
         {
            if(§§pop() >= _loc2_)
            {
               var _loc3_:* = _loc1_;
               §§push(_loc3_.myRank);
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc6_ || Boolean(_loc1_))
               {
                  _loc3_.myRank = _loc4_;
               }
               _loc1_.lastRankLimit = _loc2_;
               _loc1_.gameObj.challengeManager.recordRank(_loc1_.myRank);
               _loc1_.unlockCustomerAndTopping(true);
            }
            else
            {
               _loc1_.unlockCustomerAndTopping(false);
            }
            _loc3_ = _loc1_;
            §§push(_loc3_.currentDay);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            _loc4_ = §§pop();
            if(_loc6_ || Boolean(_loc3_))
            {
               _loc3_.currentDay = _loc4_;
            }
            if(_loc6_)
            {
               _loc1_.clearScoresForToday();
            }
            _loc1_.saveData();
            §§push(_loc1_.myRank);
         }
         return §§pop();
      }
      
      private function unlockCustomerAndTopping(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc3_:UserData = this;
         if(_loc3_.currentDay == 1)
         {
            _loc3_.toppingsUnlocked[_loc3_.initialToppings] = 1;
            §§push(_loc3_.customersUnlocked);
            §§push(_loc3_.closerCustomers);
            if(!_loc6_)
            {
               §§push(_loc3_.initialCustomers);
               if(_loc7_)
               {
                  §§push(§§pop() + §§pop() + _loc3_.fillerCustomers + 1);
                  if(_loc7_)
                  {
                     §§push(1);
                     if(_loc7_)
                     {
                        §§pop()[§§pop()] = §§pop();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push(§_-5i§);
                           §§push(">> Unlock Customer ");
                           §§push(_loc3_.closerCustomers);
                           if(_loc7_ || Boolean(this))
                           {
                              addr80:
                              §§push(_loc3_.initialCustomers);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                 }
                                 addr85:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + " and Spicy Garlic!");
                                 }
                                 §§pop().debug(§§pop());
                                 if(param2)
                                 {
                                    _loc3_.toppingsRevealed[_loc3_.initialToppings] = 1;
                                    §§push(_loc3_.customerFirstVisit);
                                    §§push(_loc3_.closerCustomers);
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + _loc3_.initialCustomers + _loc3_.fillerCustomers);
                                       §§push(1);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§pop()[§§pop() + §§pop()] = _loc3_.currentDay;
                                          §§push(_loc3_.customerVisits);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc3_.closerCustomers);
                                             if(_loc7_ || param1)
                                             {
                                                §§push(_loc3_.initialCustomers);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc3_.fillerCustomers);
                                                      if(_loc7_)
                                                      {
                                                         addr1724:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(1);
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc6_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(1);
                                                               if(_loc7_)
                                                               {
                                                                  §§pop()[§§pop()] = §§pop();
                                                               }
                                                               addr1028:
                                                               §§pop()[§§pop() + §§pop()] = 1;
                                                               addr1027:
                                                               if(param2)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc3_.customerFirstVisit);
                                                                     §§push(_loc3_.closerCustomers);
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        §§push(§§pop() + _loc3_.initialCustomers);
                                                                        §§push(_loc3_.fillerCustomers);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr1052:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              §§push(7);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr1066:
                                                                                 §§pop()[§§pop() + §§pop()] = _loc3_.currentDay;
                                                                              }
                                                                              addr1814:
                                                                              addr1815:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(1);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop()[§§pop()] = §§pop();
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(_loc7_ || Boolean(this))
                                                                                    {
                                                                                       addr1829:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(_loc3_.customerFirstVisit);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(_loc3_.closerCustomers);
                                                                                                if(_loc7_ || param2)
                                                                                                {
                                                                                                   addr1848:
                                                                                                   addr1847:
                                                                                                   addr1850:
                                                                                                   addr1851:
                                                                                                   §§push(§§pop() + _loc3_.initialCustomers + _loc3_.fillerCustomers);
                                                                                                   §§push(12);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr1872:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push(_loc3_.currentDay);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr1859:
                                                                                                         §§pop()[§§pop()] = §§pop();
                                                                                                         addr2266:
                                                                                                         §§push(_loc3_.customerVisits);
                                                                                                         §§push(_loc3_.closerCustomers);
                                                                                                         §§push(_loc3_.initialCustomers);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr1868:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            §§push(_loc3_.fillerCustomers);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr1977:
                                                                                                            §§push(§§pop() + §§pop() + 13);
                                                                                                            if(!(_loc6_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§pop()[§§pop()] = 1;
                                                                                                               addr2191:
                                                                                                               if(param2)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr2058:
                                                                                                                     §§push(_loc3_.customerFirstVisit);
                                                                                                                     §§push(_loc3_.closerCustomers);
                                                                                                                     §§push(_loc3_.initialCustomers);
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        addr2004:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.fillerCustomers);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr2155:
                                                                                                                           §§push(_loc3_.currentDay);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr2263:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§push(1);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     §§push(13);
                                                                                                                     if(!(_loc6_ && param2))
                                                                                                                     {
                                                                                                                        addr2261:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc3_.currentDay);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§pop()[§§pop()] = §§pop();
                                                                                                                              §§goto(addr2292);
                                                                                                                           }
                                                                                                                           addr2049:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr2263);
                                                                                                                        §§push(_loc3_.myRank);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc7_ || param2)
                                                                                                                     {
                                                                                                                        §§pop()[§§pop()] = 1;
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr2170:
                                                                                                                        §§push(1);
                                                                                                                        if(_loc7_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr2178:
                                                                                                                           §§pop()[§§pop()] = §§pop();
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr2209:
                                                                                                                  §§push(§_-5i§);
                                                                                                                  §§push(">> Unlock Topping ");
                                                                                                                  §§push(_loc3_.initialToppings);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc3_.myRank);
                                                                                                                     if(_loc6_ && param2)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr2226:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc7_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + "!");
                                                                                                                     }
                                                                                                                     §§pop().debug(§§pop());
                                                                                                                     addr2237:
                                                                                                                     §§push(_loc3_.toppingsUnlocked);
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.initialToppings + _loc3_.myRank);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr2263);
                                                                                                                     }
                                                                                                                     §§goto(addr2261);
                                                                                                                     §§push(_loc3_.initialToppings);
                                                                                                                  }
                                                                                                                  §§goto(addr2226);
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               §§push(_loc3_.myRank >= 2);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr2263);
                                                                                                         §§push(§§pop() - 1);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push(12);
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         addr1880:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         §§push(1);
                                                                                                         if(_loc7_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr1889:
                                                                                                            §§pop()[§§pop()] = §§pop();
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr2261);
                                                                                                         }
                                                                                                         §§goto(addr2261);
                                                                                                      }
                                                                                                      §§goto(addr2058);
                                                                                                   }
                                                                                                   addr2268:
                                                                                                   §§pop()[§§pop()] = §§pop();
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr2292);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr2271:
                                                                                                   }
                                                                                                   §§goto(addr2292);
                                                                                                }
                                                                                                addr2248:
                                                                                                §§push(§§pop() - 1);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr2251:
                                                                                                   §§push(1);
                                                                                                }
                                                                                                §§goto(addr2263);
                                                                                             }
                                                                                             addr2042:
                                                                                             §§push(_loc3_.closerCustomers);
                                                                                             §§push(_loc3_.initialCustomers);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr2046:
                                                                                                §§goto(addr2049);
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push(_loc3_.fillerCustomers);
                                                                                             }
                                                                                             §§goto(addr2209);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr2142:
                                                                                             if(param2)
                                                                                             {
                                                                                                §§push(_loc3_.customerFirstVisit);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(!(_loc6_ && Boolean(this)))
                                                                                                   {
                                                                                                      §§goto(addr2155);
                                                                                                   }
                                                                                                   §§goto(addr2248);
                                                                                                }
                                                                                                §§goto(addr2226);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr2191);
                                                                                    }
                                                                                    addr2195:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr2197:
                                                                                       §§pop();
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr2203:
                                                                                          §§push(_loc3_.myRank <= 20);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                          }
                                                                                          addr2254:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr2257:
                                                                                                §§goto(addr2226);
                                                                                                §§push(_loc3_.toppingsRevealed);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr2278:
                                                                                             }
                                                                                             §§goto(addr2292);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr2271);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr2209);
                                                                                       }
                                                                                       §§goto(addr2292);
                                                                                    }
                                                                                    §§goto(addr2271);
                                                                                 }
                                                                                 §§goto(addr2191);
                                                                              }
                                                                              addr2252:
                                                                              §§pop()[§§pop()] = §§pop();
                                                                              §§goto(addr2254);
                                                                              §§push(param2);
                                                                           }
                                                                        }
                                                                        §§pop()[§§pop()] = §§pop();
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr2169:
                                                                           §§goto(addr2170);
                                                                           §§push(_loc3_.customerVisits);
                                                                           §§push(_loc4_);
                                                                        }
                                                                        §§goto(addr2209);
                                                                     }
                                                                     addr2050:
                                                                     §§push(13);
                                                                     if(!(_loc6_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§goto(addr2058);
                                                                     }
                                                                     §§goto(addr2178);
                                                                  }
                                                                  §§push(_loc3_.customerVisits);
                                                                  §§push(_loc3_.closerCustomers);
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(_loc3_.initialCustomers);
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() + _loc3_.fillerCustomers);
                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(7);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr1104:
                                                                                 §§pop()[§§pop() + §§pop()] = 1;
                                                                                 addr1103:
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr1274:
                                                                                    §§push(§_-5i§);
                                                                                    §§push(">> Unlock Customer ");
                                                                                    §§push(_loc3_.closerCustomers);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(_loc3_.initialCustomers);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr1294:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(_loc3_.fillerCustomers);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() + "!");
                                                                                          }
                                                                                          §§pop().debug(§§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(_loc3_.customersUnlocked);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(_loc3_.closerCustomers);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr1318:
                                                                                                   §§push(§§pop() + _loc3_.initialCustomers);
                                                                                                   §§push(_loc3_.fillerCustomers);
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      addr1328:
                                                                                                      §§push(§§pop() + §§pop() + 9);
                                                                                                      §§push(1);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§pop()[§§pop()] = §§pop();
                                                                                                         if(_loc7_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr1341:
                                                                                                            §§push(param2);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr1518:
                                                                                                                  §§push(_loc3_.customerFirstVisit);
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     addr1356:
                                                                                                                     addr1354:
                                                                                                                     §§push(_loc3_.closerCustomers);
                                                                                                                     §§push(_loc3_.initialCustomers);
                                                                                                                     if(_loc7_ || param2)
                                                                                                                     {
                                                                                                                        addr1365:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc3_.fillerCustomers);
                                                                                                                           §§push(9);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§pop()[§§pop() + §§pop()] = _loc3_.currentDay;
                                                                                                                              §§push(_loc3_.customerVisits);
                                                                                                                              if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 addr1387:
                                                                                                                                 §§push(_loc3_.closerCustomers);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr1394:
                                                                                                                                    §§push(§§pop() + _loc3_.initialCustomers);
                                                                                                                                    §§push(_loc3_.fillerCustomers);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2263);
                                                                                                                              }
                                                                                                                              §§goto(addr2169);
                                                                                                                           }
                                                                                                                           addr1566:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                              {
                                                                                                                                 addr1577:
                                                                                                                                 §§pop()[§§pop()] = §§pop();
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr1580:
                                                                                                                                    §§goto(addr2191);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2257);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1977);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr2263);
                                                                                                                        }
                                                                                                                        addr1711:
                                                                                                                        §§push(_loc3_.initialCustomers);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr1859);
                                                                                                                     }
                                                                                                                     addr1653:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     §§push(11);
                                                                                                                  }
                                                                                                                  §§push(_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr1528:
                                                                                                                     §§push(10);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr1531:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr1534:
                                                                                                                           §§pop()[§§pop()] = _loc3_.currentDay;
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.customerVisits);
                                                                                                                              §§push(_loc3_.closerCustomers);
                                                                                                                              §§push(_loc3_.initialCustomers);
                                                                                                                              if(_loc7_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 §§push(_loc3_.fillerCustomers);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    §§push(10);
                                                                                                                                    if(_loc7_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr1566);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr1958:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.fillerCustomers);
                                                                                                                                       if(_loc7_ || param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1977);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2004);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr2004);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1653);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1872);
                                                                                                                     }
                                                                                                                     §§goto(addr2268);
                                                                                                                  }
                                                                                                                  §§goto(addr1848);
                                                                                                               }
                                                                                                               addr1415:
                                                                                                               §§goto(addr2191);
                                                                                                            }
                                                                                                            §§goto(addr2142);
                                                                                                         }
                                                                                                         §§goto(addr2237);
                                                                                                      }
                                                                                                      §§goto(addr2252);
                                                                                                   }
                                                                                                   addr1649:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   §§push(_loc3_.fillerCustomers);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr1653);
                                                                                                   }
                                                                                                   §§goto(addr1847);
                                                                                                }
                                                                                                addr1496:
                                                                                                §§pop()[§§pop()] = 1;
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr1500:
                                                                                                   §§push(param2);
                                                                                                   if(!(_loc6_ && Boolean(this)))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            §§goto(addr1518);
                                                                                                            §§push(_loc3_.customerFirstVisit);
                                                                                                         }
                                                                                                         §§goto(addr2226);
                                                                                                      }
                                                                                                      §§goto(addr1580);
                                                                                                   }
                                                                                                   §§goto(addr1829);
                                                                                                }
                                                                                                §§goto(addr2191);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1952:
                                                                                                §§push(_loc3_.closerCustomers);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr1956:
                                                                                                   §§goto(addr1958);
                                                                                                   §§push(_loc3_.initialCustomers);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr2042);
                                                                                          }
                                                                                          §§push(§_-5i§);
                                                                                          §§push(">> Unlock Customer ");
                                                                                          §§push(_loc3_.closerCustomers);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(_loc3_.initialCustomers);
                                                                                             if(_loc7_ || Boolean(this))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   §§push(_loc3_.fillerCustomers);
                                                                                                }
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() + 11);
                                                                                             }
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() + "!");
                                                                                          }
                                                                                          §§pop().debug(§§pop());
                                                                                          if(_loc6_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1294);
                                                                                    §§push(§§pop() + 9);
                                                                                 }
                                                                                 §§goto(addr2278);
                                                                              }
                                                                              §§goto(addr1889);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1806:
                                                                           §§push(12);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§goto(addr1814);
                                                                           }
                                                                        }
                                                                        §§goto(addr1872);
                                                                     }
                                                                     addr1397:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(9);
                                                                     if(!(_loc6_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr1413:
                                                                           §§pop()[§§pop()] = 1;
                                                                           §§goto(addr1415);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1649);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr1488:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc6_ && Boolean(this)))
                                                                        {
                                                                           §§goto(addr1496);
                                                                        }
                                                                     }
                                                                     addr1695:
                                                                     §§push(§§pop() + 11);
                                                                     if(_loc7_ || Boolean(_loc3_))
                                                                     {
                                                                        addr1706:
                                                                        §§pop()[§§pop()] = _loc3_.currentDay;
                                                                        addr1704:
                                                                        §§goto(addr1711);
                                                                        §§push(_loc3_.customerVisits);
                                                                        §§push(_loc3_.closerCustomers);
                                                                     }
                                                                     §§goto(addr1859);
                                                                  }
                                                                  §§goto(addr2261);
                                                               }
                                                               §§goto(addr2191);
                                                            }
                                                            addr1026:
                                                            §§goto(addr1027);
                                                            §§push(7);
                                                         }
                                                         §§pop()[§§pop()] = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr1727:
                                                            §§goto(addr2191);
                                                         }
                                                         else
                                                         {
                                                            addr2113:
                                                            §§push(§_-5i§);
                                                            §§push(">> Unlock Customer " + _loc4_);
                                                            if(!(_loc6_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop() + "!");
                                                            }
                                                            §§pop().debug(§§pop());
                                                            §§push(_loc3_.customersUnlocked);
                                                            §§push(_loc4_);
                                                            §§push(1);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§pop()[§§pop()] = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr2142);
                                                               }
                                                               §§goto(addr2292);
                                                            }
                                                         }
                                                         §§goto(addr1814);
                                                      }
                                                   }
                                                   addr536:
                                                   §§push(_loc3_.fillerCustomers);
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr1664:
                                                         §§push(4);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop()[§§pop()] = §§pop();
                                                         §§push(param2);
                                                         if(_loc7_ || param2)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr1674:
                                                               §§push(_loc3_.customerFirstVisit);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc3_.closerCustomers);
                                                                  §§push(_loc3_.initialCustomers);
                                                                  if(_loc7_ || Boolean(_loc3_))
                                                                  {
                                                                     addr1689:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr1695);
                                                                        §§push(§§pop() + _loc3_.fillerCustomers);
                                                                     }
                                                                     §§goto(addr2155);
                                                                  }
                                                                  §§goto(addr1868);
                                                               }
                                                               §§goto(addr2169);
                                                            }
                                                            §§goto(addr1727);
                                                         }
                                                         §§goto(addr2195);
                                                      }
                                                      §§goto(addr1318);
                                                   }
                                                   addr777:
                                                   §§pop()[§§pop()] = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc3_.customerVisits);
                                                      §§push(_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers);
                                                      §§push(5);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(1);
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§pop()[§§pop()] = §§pop();
                                                               if(_loc6_ && Boolean(this))
                                                               {
                                                                  §§goto(addr1727);
                                                               }
                                                               else
                                                               {
                                                                  addr812:
                                                               }
                                                               §§goto(addr2191);
                                                            }
                                                            else
                                                            {
                                                               addr1217:
                                                               §§pop()[§§pop() + §§pop()] = _loc3_.currentDay;
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§push(_loc3_.customerVisits);
                                                                  §§push(_loc3_.closerCustomers);
                                                                  §§push(_loc3_.initialCustomers);
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr1236:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(_loc3_.fillerCustomers);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + §§pop() + 8);
                                                                           if(_loc7_ || Boolean(_loc3_))
                                                                           {
                                                                              §§push(1);
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§pop()[§§pop()] = §§pop();
                                                                                 addr1262:
                                                                                 §§goto(addr2191);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1723:
                                                                              §§goto(addr1724);
                                                                              §§push(1);
                                                                           }
                                                                           §§goto(addr1814);
                                                                        }
                                                                        §§goto(addr2170);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1859);
                                                                     }
                                                                  }
                                                                  §§goto(addr2046);
                                                               }
                                                            }
                                                            §§goto(addr2278);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1518);
                                                         }
                                                      }
                                                      §§goto(addr1880);
                                                   }
                                                   else
                                                   {
                                                      addr1422:
                                                      §§push(§_-5i§);
                                                      §§push(">> Unlock Customer ");
                                                      §§push(_loc3_.closerCustomers);
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc3_.initialCustomers);
                                                         if(_loc7_ || Boolean(_loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_ && Boolean(_loc3_))
                                                            {
                                                            }
                                                            addr1455:
                                                            §§push(§§pop() + (§§pop() + 10));
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§push(§§pop() + "!");
                                                            }
                                                            §§pop().debug(§§pop());
                                                            §§push(_loc3_.customersUnlocked);
                                                            §§push(_loc3_.closerCustomers);
                                                            §§push(_loc3_.initialCustomers);
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               §§push(_loc3_.fillerCustomers);
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr1488);
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(10);
                                                               }
                                                               §§goto(addr2004);
                                                            }
                                                         }
                                                         addr1447:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc7_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr1455);
                                                      }
                                                      §§goto(addr1447);
                                                      §§push(_loc3_.fillerCustomers);
                                                   }
                                                   §§goto(addr1850);
                                                }
                                                addr717:
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc3_.fillerCustomers);
                                                if(_loc7_ || Boolean(_loc3_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_)
                                                   {
                                                      §§pop()[§§pop() + 5] = 1;
                                                      §§push(param2);
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(_loc3_.customerFirstVisit);
                                                               §§push(_loc3_.closerCustomers);
                                                               §§push(_loc3_.initialCustomers);
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr767:
                                                                  §§push(§§pop() + §§pop() + _loc3_.fillerCustomers);
                                                                  §§push(5);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(_loc3_.currentDay);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr777);
                                                                        }
                                                                        §§goto(addr1689);
                                                                     }
                                                                     §§goto(addr1528);
                                                                  }
                                                                  §§goto(addr1577);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1052);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr812);
                                                      }
                                                      §§goto(addr2197);
                                                   }
                                                   §§goto(addr2004);
                                                }
                                                §§goto(addr1066);
                                             }
                                             §§push(1);
                                             if(!_loc6_)
                                             {
                                                addr560:
                                                §§pop()[§§pop()] = §§pop();
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   if(param2)
                                                   {
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(_loc3_.customerFirstVisit);
                                                         §§push(_loc3_.closerCustomers);
                                                         §§push(_loc3_.initialCustomers);
                                                         if(_loc7_ || Boolean(_loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr598:
                                                               §§push(§§pop() + _loc3_.fillerCustomers);
                                                               if(_loc6_)
                                                               {
                                                               }
                                                               §§goto(addr1413);
                                                            }
                                                            §§push(4);
                                                            if(_loc7_)
                                                            {
                                                               addr606:
                                                               §§push(§§pop() + §§pop());
                                                               §§push(_loc3_.currentDay);
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  §§pop()[§§pop()] = §§pop();
                                                                  §§push(_loc3_.customerVisits);
                                                                  §§push(_loc3_.closerCustomers);
                                                                  §§push(_loc3_.initialCustomers);
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop() + _loc3_.fillerCustomers);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(4);
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§pop()[§§pop() + §§pop()] = 1;
                                                                              if(!(_loc7_ || param1))
                                                                              {
                                                                                 addr668:
                                                                                 §§push(§_-5i§);
                                                                                 §§push(">> Unlock Customer ");
                                                                                 §§push(_loc3_.closerCustomers);
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    §§push(_loc3_.initialCustomers);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                       }
                                                                                       addr696:
                                                                                       §§push(§§pop() + (§§pop() + 5));
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() + "!");
                                                                                       }
                                                                                       §§pop().debug(§§pop());
                                                                                       §§push(_loc3_.customersUnlocked);
                                                                                       §§push(_loc3_.closerCustomers);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr717);
                                                                                          §§push(_loc3_.initialCustomers);
                                                                                       }
                                                                                       §§goto(addr1394);
                                                                                    }
                                                                                    addr688:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc7_ || Boolean(this))
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr696);
                                                                                 }
                                                                                 §§goto(addr688);
                                                                                 §§push(_loc3_.fillerCustomers);
                                                                              }
                                                                              §§goto(addr1859);
                                                                           }
                                                                           §§goto(addr1488);
                                                                        }
                                                                        §§goto(addr1704);
                                                                     }
                                                                     §§goto(addr1956);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1203:
                                                                     §§push(§§pop() + §§pop() + _loc3_.fillerCustomers);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr1217);
                                                                        §§push(8);
                                                                     }
                                                                  }
                                                                  §§goto(addr1977);
                                                               }
                                                               else
                                                               {
                                                                  addr1176:
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr1534);
                                                            }
                                                         }
                                                         §§goto(addr1236);
                                                      }
                                                      else
                                                      {
                                                         addr894:
                                                         §§push(_loc3_.customerFirstVisit);
                                                         if(_loc7_ || Boolean(this))
                                                         {
                                                            §§push(_loc3_.closerCustomers);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() + _loc3_.initialCustomers + _loc3_.fillerCustomers);
                                                               if(_loc7_ || Boolean(_loc3_))
                                                               {
                                                                  §§pop()[§§pop() + 6] = _loc3_.currentDay;
                                                                  §§push(_loc3_.customerVisits);
                                                                  §§push(_loc3_.closerCustomers + _loc3_.initialCustomers);
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     addr939:
                                                                     §§push(§§pop() + _loc3_.fillerCustomers);
                                                                     §§push(6);
                                                                     if(_loc7_ || Boolean(_loc3_))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(1);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§pop()[§§pop()] = §§pop();
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr957:
                                                                              §§goto(addr2191);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr964:
                                                                              §§push(§_-5i§);
                                                                              §§push(">> Unlock Customer ");
                                                                              §§push(_loc3_.closerCustomers);
                                                                              if(!(_loc6_ && Boolean(this)))
                                                                              {
                                                                                 §§push(_loc3_.initialCustomers);
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    addr997:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(_loc3_.fillerCustomers);
                                                                                    }
                                                                                    §§push(§§pop() + 7);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§goto(addr997);
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop() + "!");
                                                                              }
                                                                              §§pop().debug(§§pop());
                                                                              addr1005:
                                                                              §§push(_loc3_.customersUnlocked);
                                                                              §§push(_loc3_.closerCustomers);
                                                                              if(!(_loc6_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(_loc3_.initialCustomers);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§goto(addr1026);
                                                                                       §§push(§§pop() + _loc3_.fillerCustomers);
                                                                                    }
                                                                                    §§goto(addr1534);
                                                                                 }
                                                                                 §§goto(addr1872);
                                                                              }
                                                                              §§goto(addr1328);
                                                                           }
                                                                        }
                                                                        §§goto(addr1103);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1217);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1201:
                                                                     §§goto(addr1203);
                                                                     §§push(_loc3_.initialCustomers);
                                                                  }
                                                                  §§goto(addr1977);
                                                               }
                                                               §§goto(addr1496);
                                                            }
                                                            §§goto(addr1397);
                                                         }
                                                      }
                                                      §§goto(addr1387);
                                                   }
                                                   §§goto(addr2191);
                                                }
                                                §§goto(addr1674);
                                             }
                                          }
                                          addr1787:
                                          §§push(_loc3_.closerCustomers);
                                          if(_loc7_ || param1)
                                          {
                                             §§push(§§pop() + _loc3_.initialCustomers);
                                             if(_loc7_)
                                             {
                                                addr1803:
                                                §§push(§§pop() + _loc3_.fillerCustomers);
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr1806);
                                                }
                                                §§goto(addr1859);
                                             }
                                             §§goto(addr2251);
                                          }
                                          §§goto(addr2058);
                                       }
                                       addr1184:
                                       §§pop()[§§pop() + §§pop()] = 1;
                                       addr1186:
                                       §§push(param2);
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§goto(addr1201);
                                                §§push(_loc3_.customerFirstVisit);
                                                §§push(_loc3_.closerCustomers);
                                             }
                                             else
                                             {
                                                §§goto(addr1500);
                                             }
                                             §§goto(addr1829);
                                          }
                                          §§goto(addr1262);
                                       }
                                       §§goto(addr2191);
                                       addr1183:
                                    }
                                    addr1721:
                                    §§goto(addr1723);
                                    §§push(§§pop() + 11);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr80);
                           §§push(_loc3_.fillerCustomers);
                        }
                        §§push(_loc3_.customersUnlocked);
                        §§push(_loc3_.closerCustomers);
                        §§push(_loc3_.initialCustomers);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           §§goto(addr1318);
                        }
                        §§goto(addr1706);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc6_ && param2))
                     {
                        §§goto(addr1664);
                        §§push(1);
                     }
                     else
                     {
                        §§goto(addr1815);
                     }
                     §§goto(addr1814);
                  }
                  addr400:
                  §§push(§§pop() + _loc3_.fillerCustomers);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 3);
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§pop()[§§pop()] = _loc3_.currentDay;
                        if(_loc7_)
                        {
                           §§push(_loc3_.customerVisits);
                           if(!_loc6_)
                           {
                              §§push(_loc3_.closerCustomers);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(_loc3_.initialCustomers);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(§§pop() + §§pop() + _loc3_.fillerCustomers);
                                    if(_loc7_)
                                    {
                                       §§pop()[§§pop() + 3] = 1;
                                       if(!(_loc7_ || Boolean(this)))
                                       {
                                          §§goto(addr2142);
                                       }
                                       else
                                       {
                                          addr458:
                                       }
                                    }
                                    §§goto(addr2251);
                                 }
                                 else
                                 {
                                    §§goto(addr2004);
                                 }
                              }
                              else
                              {
                                 §§goto(addr1028);
                              }
                              §§goto(addr2191);
                           }
                           §§goto(addr1706);
                        }
                        else
                        {
                           §§goto(addr1186);
                        }
                     }
                     else
                     {
                        §§goto(addr939);
                     }
                     §§goto(addr1217);
                  }
                  §§goto(addr1806);
               }
               §§push(§§pop() + §§pop() + _loc3_.fillerCustomers);
               if(_loc7_)
               {
                  §§goto(addr1721);
               }
               else
               {
                  §§goto(addr1851);
               }
            }
            §§push(§§pop() + _loc3_.fillerCustomers);
            if(!_loc6_)
            {
               §§goto(addr1183);
               §§push(8);
            }
            §§goto(addr1534);
         }
         if(param1)
         {
            if(_loc3_.myRank == 2)
            {
               §§push(§_-5i§);
               §§push(">> Unlock Customer ");
               §§push(_loc3_.closerCustomers);
               if(!_loc6_)
               {
                  §§push(_loc3_.initialCustomers);
                  if(!_loc6_)
                  {
                     addr202:
                     §§push(§§pop() + §§pop());
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        §§push(_loc3_.fillerCustomers);
                     }
                     §§push(§§pop() + 2);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc6_)
                  {
                     §§goto(addr202);
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc7_)
               {
                  §§push(§§pop() + "!");
               }
               §§pop().debug(§§pop());
               §§push(_loc3_.customersUnlocked);
               §§push(_loc3_.closerCustomers + _loc3_.initialCustomers + _loc3_.fillerCustomers);
               if(!_loc6_)
               {
                  §§push(§§pop() + 2);
                  if(_loc7_)
                  {
                     §§push(1);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§pop()[§§pop()] = §§pop();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           if(param2)
                           {
                              if(_loc7_)
                              {
                                 §§push(_loc3_.customerFirstVisit);
                                 §§push(_loc3_.closerCustomers);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(_loc3_.initialCustomers);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop() + §§pop() + _loc3_.fillerCustomers);
                                       if(!_loc6_)
                                       {
                                          §§push(2);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                §§pop()[§§pop()] = _loc3_.currentDay;
                                                if(_loc7_)
                                                {
                                                   §§push(_loc3_.customerVisits);
                                                   §§push(_loc3_.closerCustomers);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§§pop() + _loc3_.initialCustomers);
                                                      §§push(_loc3_.fillerCustomers);
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         §§push(2);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc6_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(1);
                                                               if(_loc7_ || Boolean(this))
                                                               {
                                                                  §§pop()[§§pop()] = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr1422);
                                                                  }
                                                                  §§goto(addr1848);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr560);
                                                               }
                                                            }
                                                            §§goto(addr1397);
                                                         }
                                                         §§goto(addr2191);
                                                      }
                                                      §§goto(addr1176);
                                                   }
                                                   §§goto(addr1356);
                                                }
                                                §§goto(addr668);
                                             }
                                             else
                                             {
                                                addr379:
                                                §§push(§§pop() + _loc3_.initialCustomers + _loc3_.fillerCustomers + 3);
                                                §§push(1);
                                             }
                                             §§pop()[§§pop()] = §§pop();
                                             if(param2)
                                             {
                                                §§push(_loc3_.customerFirstVisit);
                                                §§push(_loc3_.closerCustomers);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr767);
                                                }
                                                §§goto(addr1577);
                                             }
                                             §§goto(addr458);
                                          }
                                          §§goto(addr1721);
                                       }
                                       §§goto(addr400);
                                       §§push(§§pop() + _loc3_.initialCustomers);
                                    }
                                    else
                                    {
                                       §§goto(addr1803);
                                    }
                                    §§goto(addr1859);
                                 }
                                 §§goto(addr1104);
                              }
                              §§goto(addr1341);
                           }
                           §§goto(addr2191);
                        }
                        §§goto(addr1829);
                     }
                     §§goto(addr606);
                  }
                  §§goto(addr598);
               }
               §§goto(addr1397);
            }
            else if(_loc3_.myRank == 4)
            {
               §§push(§_-5i§);
               §§push(">> Unlock Customer ");
               §§push(_loc3_.closerCustomers);
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(_loc3_.initialCustomers);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§push(_loc3_.fillerCustomers);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() + 3);
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc6_)
               {
                  §§push(§§pop() + "!");
               }
               §§pop().debug(§§pop());
               §§goto(addr379);
               §§push(_loc3_.customersUnlocked);
               §§push(_loc3_.closerCustomers);
            }
            else
            {
               §§push(_loc3_.myRank);
               if(_loc7_ || param2)
               {
                  if(§§pop() == 6)
                  {
                     if(_loc7_)
                     {
                        §§push(§_-5i§);
                        §§push(">> Unlock Customer ");
                        §§push(_loc3_.closerCustomers);
                        if(_loc7_ || param2)
                        {
                           §§push(_loc3_.initialCustomers);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(_loc3_.fillerCustomers);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              §§push(§§pop() + 4);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || Boolean(this))
                        {
                           §§push(§§pop() + "!");
                        }
                        §§pop().debug(§§pop());
                        §§push(_loc3_.customersUnlocked);
                        if(_loc7_)
                        {
                           §§push(_loc3_.closerCustomers);
                           §§push(_loc3_.initialCustomers);
                           if(_loc7_ || Boolean(this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_ || param1)
                              {
                                 §§goto(addr536);
                              }
                              §§goto(addr2155);
                           }
                           §§goto(addr1365);
                        }
                        §§goto(addr1354);
                     }
                     §§goto(addr1005);
                  }
                  else if(_loc3_.myRank == 8)
                  {
                     if(!(_loc6_ && param2))
                     {
                        §§goto(addr668);
                     }
                  }
                  else
                  {
                     §§push(_loc3_.myRank);
                     §§push(10);
                     if(_loc7_)
                     {
                        if(§§pop() == §§pop())
                        {
                           §§push(§_-5i§);
                           §§push(">> Unlock Customer ");
                           §§push(_loc3_.closerCustomers);
                           if(_loc7_)
                           {
                              §§push(_loc3_.initialCustomers);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                 }
                                 addr847:
                                 §§push(§§pop() + (§§pop() + 6));
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() + "!");
                                 }
                                 §§pop().debug(§§pop());
                                 §§push(_loc3_.customersUnlocked);
                                 if(_loc7_)
                                 {
                                    §§push(_loc3_.closerCustomers);
                                    §§push(_loc3_.initialCustomers);
                                    if(_loc7_ || param2)
                                    {
                                       §§push(§§pop() + §§pop() + _loc3_.fillerCustomers + 6);
                                       if(_loc7_)
                                       {
                                          §§push(1);
                                          if(_loc7_ || Boolean(this))
                                          {
                                             §§pop()[§§pop()] = §§pop();
                                             if(param2)
                                             {
                                                §§goto(addr894);
                                             }
                                             §§goto(addr957);
                                          }
                                          §§goto(addr1531);
                                       }
                                       else
                                       {
                                          §§goto(addr1184);
                                       }
                                    }
                                    §§goto(addr1203);
                                 }
                                 §§goto(addr2226);
                              }
                              addr844:
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                              }
                              §§goto(addr847);
                           }
                           §§goto(addr844);
                           §§push(_loc3_.fillerCustomers);
                        }
                        else
                        {
                           §§push(_loc3_.myRank);
                           §§push(11);
                           if(_loc7_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr964);
                              }
                              else if(_loc3_.myRank == 12)
                              {
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§push(§_-5i§);
                                    §§push(">> Unlock Customer ");
                                    §§push(_loc3_.closerCustomers);
                                    if(_loc7_)
                                    {
                                       §§push(_loc3_.initialCustomers);
                                       if(_loc7_)
                                       {
                                          addr1150:
                                          §§push(§§pop() + §§pop());
                                          if(_loc7_ || Boolean(_loc3_))
                                          {
                                             §§push(_loc3_.fillerCustomers);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§pop() + "!");
                                          }
                                          §§pop().debug(§§pop());
                                          if(_loc7_)
                                          {
                                             §§push(_loc3_.customersUnlocked);
                                             §§push(_loc3_.closerCustomers);
                                             if(_loc7_ || param2)
                                             {
                                                §§goto(addr1176);
                                                §§push(_loc3_.initialCustomers);
                                             }
                                             §§goto(addr1365);
                                          }
                                          §§goto(addr2209);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_ || param1)
                                       {
                                       }
                                    }
                                    §§goto(addr1150);
                                    §§push(§§pop() + 8);
                                 }
                                 else
                                 {
                                    addr1785:
                                    §§goto(addr1787);
                                    §§push(_loc3_.customersUnlocked);
                                 }
                                 §§goto(addr2058);
                              }
                              else
                              {
                                 §§push(_loc3_.myRank);
                                 if(!(_loc6_ && param1))
                                 {
                                    if(§§pop() == 14)
                                    {
                                       §§goto(addr1274);
                                    }
                                    else if(_loc3_.myRank == 15)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr1422);
                                       }
                                       §§goto(addr1829);
                                    }
                                    else
                                    {
                                       §§push(_loc3_.myRank);
                                    }
                                 }
                                 addr1893:
                                 §§push(19);
                                 if(_loc7_ || param1)
                                 {
                                 }
                                 addr2081:
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                       §§push(12);
                                       if(_loc7_ || Boolean(this))
                                       {
                                          §§push(§§pop() + _loc3_.myRank);
                                          if(_loc7_)
                                          {
                                             addr2103:
                                             §§push(§§pop());
                                             if(!_loc6_)
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   if(§§pop() < _loc3_.customersUnlocked.length)
                                                   {
                                                      §§goto(addr2113);
                                                   }
                                                   else
                                                   {
                                                      §§push(§_-5i§);
                                                      §§push(">> Ran out of customers, there is no Customer " + _loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + " to unlock here.");
                                                      }
                                                      §§pop().debug(§§pop());
                                                      if(_loc6_)
                                                      {
                                                      }
                                                   }
                                                }
                                                §§goto(addr2191);
                                             }
                                             else
                                             {
                                                addr2285:
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                }
                                                §§push(§§pop());
                                             }
                                          }
                                          else
                                          {
                                             addr2276:
                                             if(§§pop() != 1)
                                             {
                                                §§push(_loc3_.closerCustomers);
                                                if(_loc7_)
                                                {
                                                   §§goto(addr2285);
                                                   §§push(_loc3_.initialCustomers);
                                                }
                                             }
                                             §§goto(addr2292);
                                          }
                                          §§goto(addr2278);
                                       }
                                       _loc5_ = §§pop();
                                    }
                                    §§goto(addr2257);
                                 }
                              }
                              §§goto(addr2191);
                           }
                           if(§§pop() == §§pop())
                           {
                              §§push(§_-5i§);
                              §§push(">> Unlock Customer ");
                              §§push(_loc3_.closerCustomers);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 §§push(_loc3_.initialCustomers);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_ && param2)
                                    {
                                    }
                                    addr1932:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(§§pop() + "!");
                                    }
                                    §§pop().debug(§§pop());
                                    §§push(_loc3_.customersUnlocked);
                                    if(_loc7_ || param2)
                                    {
                                       §§goto(addr1952);
                                    }
                                    §§goto(addr2226);
                                 }
                                 addr1927:
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + 13);
                                 }
                                 §§goto(addr1932);
                              }
                              §§goto(addr1927);
                              §§push(_loc3_.fillerCustomers);
                           }
                           else
                           {
                              §§push(_loc3_.myRank);
                              if(!_loc6_)
                              {
                                 §§push(20);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§goto(addr2081);
                                 }
                              }
                              §§goto(addr2103);
                           }
                        }
                        addr2292:
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc3_.customerVisits);
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(_loc3_.closerCustomers);
                           if(!_loc6_)
                           {
                              §§push(_loc3_.initialCustomers);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_ || param2)
                                 {
                                    §§push(_loc3_.fillerCustomers);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                           }
                           if(§§pop() <= §§pop())
                           {
                              §§push(_loc3_.customersUnlocked);
                              if(_loc7_ || param2)
                              {
                                 §§push(_loc5_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop()[§§pop()] != 0)
                                    {
                                       _loc5_++;
                                       continue;
                                    }
                                    if(!_loc6_)
                                    {
                                       §§push(§_-5i§);
                                       §§push(">> Filler Customer ");
                                       §§push(_loc5_ - _loc3_.initialCustomers);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() - _loc3_.closerCustomers);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + " -- Unlock Customer ");
                                          if(_loc7_)
                                          {
                                          }
                                          addr2340:
                                          §§pop().debug(§§pop() + "!");
                                          addr2338:
                                       }
                                       §§push(§§pop() + _loc5_);
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr2338);
                                       }
                                       §§goto(addr2340);
                                    }
                                    §§push(_loc3_.customersUnlocked);
                                    if(_loc6_ && param1)
                                    {
                                    }
                                    addr2392:
                                    §§pop()[_loc5_] = 1;
                                    addr2390:
                                    break;
                                    addr2390:
                                    addr2391:
                                 }
                                 addr2378:
                                 §§pop()[§§pop()] = _loc3_.currentDay;
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr2390);
                                 §§push(_loc3_.customerVisits);
                              }
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    if(param2)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(_loc3_.customerFirstVisit);
                                          if(_loc7_ || Boolean(this))
                                          {
                                             §§push(_loc5_);
                                             if(_loc6_ && Boolean(this))
                                             {
                                             }
                                             §§goto(addr2391);
                                          }
                                          §§goto(addr2390);
                                       }
                                    }
                                    §§goto(addr2390);
                                 }
                                 §§goto(addr2392);
                              }
                              §§goto(addr2378);
                           }
                           break;
                        }
                        return;
                     }
                     addr1586:
                     if(§§pop() != §§pop())
                     {
                        if(_loc3_.myRank == 18)
                        {
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§push(§_-5i§);
                              §§push(">> Unlock Customer ");
                              §§push(_loc3_.closerCustomers);
                              if(_loc7_ || param2)
                              {
                                 §§push(_loc3_.initialCustomers);
                                 if(_loc7_ || Boolean(this))
                                 {
                                    addr1774:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(_loc3_.fillerCustomers);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc7_ || Boolean(this))
                                    {
                                       §§push(§§pop() + "!");
                                    }
                                    §§pop().debug(§§pop());
                                    §§goto(addr1785);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                 }
                              }
                              §§goto(addr1774);
                              §§push(§§pop() + 12);
                           }
                           §§goto(addr2191);
                        }
                        else
                        {
                           §§goto(addr1893);
                           §§push(_loc3_.myRank);
                        }
                     }
                     §§goto(addr2191);
                  }
                  §§goto(addr1294);
               }
               §§push(16);
               if(_loc7_)
               {
                  §§goto(addr1586);
               }
            }
            §§goto(addr2203);
         }
         else
         {
            §§push(_loc3_.myRank);
            if(_loc7_)
            {
               §§goto(addr2276);
            }
         }
         §§goto(addr2285);
         §§push(§§pop() + 1);
      }
      
      public function saveCharacterData() : void
      {
         var ob:UserData;
         var so:SharedObject;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_ || _loc3_)
         {
            §§pop().§§slot[1] = this;
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc2_)
               {
                  §§pop().§§slot[2] = SharedObject.getLocal(this.saveSlotPrefix + ob.whichSlot,"/");
                  if(_loc3_ || _loc2_)
                  {
                  }
                  try
                  {
                     addr109:
                     so.flush();
                  }
                  catch(err:Error)
                  {
                     if(!_loc4_)
                     {
                        §_-5i§.error("Error Saving Data.");
                     }
                  }
                  return;
               }
               addr89:
               §§pop().§§slot[2].data.playername = ob.myName;
               if(!(_loc4_ && Boolean(this)))
               {
                  addr103:
                  so.data.hasnewclothing = ob.hasNewClothing;
               }
               §§goto(addr109);
            }
            §§push(§§newactivation());
            if(_loc4_ && _loc1_)
            {
            }
            §§goto(addr89);
         }
         §§pop().§§slot[2].data.workerdata = ob.gameObj.workerData.getDataToSave();
         if(_loc3_ || _loc2_)
         {
            §§push(§§newactivation());
            if(!_loc4_)
            {
               §§goto(addr89);
            }
         }
         §§goto(addr103);
      }
      
      public function saveData() : void
      {
         var ob:UserData;
         var so:SharedObject;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         ob = this;
         if(!(_loc3_ && _loc1_))
         {
            so = SharedObject.getLocal(this.saveSlotPrefix + ob.whichSlot,"/");
            so.data.day = ob.currentDay;
            if(!_loc3_)
            {
               so.data.rank = ob.myRank;
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     §§pop().§§slot[2].data.tips = ob.totalTips;
                     if(!_loc3_)
                     {
                        so.data.tickets = ob.totalTickets;
                        if(_loc4_ || _loc3_)
                        {
                           so.data.score = ob.totalScore;
                           so.data.allmoney = ob.totalMoneyEarned;
                           if(_loc4_ || _loc1_)
                           {
                              so.data.alltickets = ob.totalTicketsEarned;
                              so.data.workerdata = ob.gameObj.workerData.getDataToSave();
                              if(!_loc3_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§pop().§§slot[2].data.unlocked = ob.customersUnlocked.concat();
                                    so.data.stars = ob.customerStars.concat();
                                    so.data.seals = ob.customerSeals.concat();
                                    §§push(§§newactivation());
                                    if(_loc3_)
                                    {
                                    }
                                    addr461:
                                    §§pop().§§slot[2].data.placedfurni = ob.hasPlacedFurniture;
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr475:
                                       so.data.shownparade = ob.didShowParade;
                                       so.data.floatsparade = ob.seenFloatsInParade;
                                       if(!_loc3_)
                                       {
                                          so.data.clicktwitter = ob.didClickTwitter;
                                          if(_loc4_)
                                          {
                                             addr499:
                                             §§push(§§newactivation());
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§pop().§§slot[2].data.clickfacebook = ob.didClickFacebook;
                                                addr513:
                                                so.data.trainboost = ob.hasTrainedBoost;
                                                if(!_loc3_)
                                                {
                                                   addr522:
                                                   so.data.traincloser = ob.hasTrainedCloser;
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   addr630:
                                                   so.data.trainpattern5 = ob.hasTrainedPattern5;
                                                }
                                             }
                                             addr574:
                                             §§pop().§§slot[2].data.traininv = ob.hasTrainedInventory;
                                             so.data.trainposter = ob.hasTrainedPoster;
                                          }
                                          try
                                          {
                                             addr669:
                                             §§push(§§newactivation());
                                             if(!_loc3_)
                                             {
                                                §§pop().§§slot[2].flush();
                                                if(_loc4_)
                                                {
                                                   addr707:
                                                   §§push(§§newactivation());
                                                }
                                             }
                                             §§pop().§§slot[1].gameObj.§_-4P§.§_-C3§();
                                          }
                                          catch(err:Error)
                                          {
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §_-5i§.error("Error Saving Data.");
                                             }
                                             §§goto(addr707);
                                          }
                                          return;
                                       }
                                       so.data.traincritic = ob.hasTrainedCritic;
                                    }
                                 }
                                 §§pop().§§slot[2].data.visits = ob.customerVisits.concat();
                              }
                              addr409:
                              so.data.continuedgame = ob.hasContinuedGame;
                              addr566:
                              if(_loc4_ || _loc1_)
                              {
                                 so.data.visitedshop = ob.hasVisitedUpgradeShop;
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr438:
                                    so.data.visitedbadges = ob.hasVisitedBadgesScreen;
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr669);
                                 }
                                 addr460:
                                 §§goto(addr461);
                                 §§push(§§newactivation());
                              }
                              §§push(§§newactivation());
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr574);
                              }
                              §§pop().§§slot[2].data.trainpattern4 = ob.hasTrainedPattern4;
                              §§goto(addr630);
                           }
                           addr538:
                           §§push(§§newactivation());
                           if(_loc4_ || _loc2_)
                           {
                              addr546:
                              §§pop().§§slot[2].data.trainribbon = ob.hasTrainedRibbon;
                              if(_loc4_ || _loc1_)
                              {
                                 addr559:
                                 so.data.traindecorate = ob.hasTrainedDecorate;
                                 §§goto(addr566);
                              }
                              §§goto(addr630);
                           }
                           §§goto(addr574);
                        }
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§pop().§§slot[2].data.trainfurni = ob.hasTrainedFurni;
                           so.data.trainminigame = ob.hasTrainedMinigame;
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              §§pop().§§slot[2].data.trainpattern2 = ob.hasTrainedPattern2;
                              if(_loc4_)
                              {
                                 addr615:
                                 so.data.trainpattern3 = ob.hasTrainedPattern3;
                              }
                              §§push(§§newactivation());
                              if(_loc3_)
                              {
                              }
                              addr649:
                              §§pop().§§slot[2].data.trainpattern7 = ob.hasTrainedPattern7;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr663:
                                 so.data.trainpattern8 = ob.hasTrainedPattern8;
                              }
                              §§goto(addr669);
                           }
                           addr640:
                           §§pop().§§slot[2].data.trainpattern6 = ob.hasTrainedPattern6;
                           if(_loc4_)
                           {
                              §§goto(addr649);
                              §§push(§§newactivation());
                           }
                           §§goto(addr669);
                        }
                        §§goto(addr566);
                     }
                     addr447:
                     so.data.visitedlobby = ob.hasVisitedLobbyEditor;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr460);
                     }
                     §§goto(addr499);
                  }
                  addr230:
                  §§pop().§§slot[2].data.inventory = §_-Am§.§_-39§(ob.furniInventory);
               }
               §§push(§§newactivation());
               if(_loc4_ || _loc3_)
               {
                  §§pop().§§slot[2].data.first = ob.customerFirstVisit.concat();
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§pop().§§slot[2].data.bonuses = ob.bonusUpgrades.concat();
                     if(!(_loc3_ && _loc3_))
                     {
                        so.data.ribbon = ob.lastRibbon;
                        so.data.numnapkins = ob.numNapkins;
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || Boolean(this))
                           {
                              §§goto(addr230);
                           }
                           §§goto(addr475);
                        }
                        §§goto(addr522);
                     }
                     §§goto(addr559);
                  }
                  §§goto(addr447);
               }
               §§goto(addr546);
            }
            so.data.lobby = §_-Am§.§_-39§(ob.lobbyPlacement);
            §§push(§§newactivation());
            if(!(_loc3_ && _loc1_))
            {
               §§pop().§§slot[2].data.wallpaper = ob.lobbyWallpaper;
               if(_loc4_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§pop().§§slot[2].data.flooring = ob.lobbyFlooring;
                     if(_loc4_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§pop().§§slot[2].data.clothinginventory = ob.clothingInventory.concat();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              so.data.hasnewclothing = ob.hasNewClothing;
                              if(!_loc3_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    §§pop().§§slot[2].data.hasnewfurni = ob.hasNewFurni;
                                    if(!_loc3_)
                                    {
                                       §§push(§§newactivation());
                                    }
                                 }
                                 §§pop().§§slot[2].data.toppings = ob.toppingsUnlocked.concat();
                              }
                              §§goto(addr538);
                           }
                           so.data.toppingsrevealed = ob.toppingsRevealed.concat();
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              if(!_loc3_)
                              {
                                 §§pop().§§slot[2].data.medalsEarned = ob.medalsEarned.concat();
                                 §§push(§§newactivation());
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§pop().§§slot[2].data.medalProgress = ob.gameObj.challengeManager.getMedalProgressArray();
                                 }
                              }
                           }
                           §§goto(addr513);
                        }
                        §§goto(addr566);
                     }
                     §§push(§§newactivation());
                     if(_loc4_)
                     {
                        §§pop().§§slot[2].data.minigamesPlayed = ob.minigamesPlayed.concat();
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           §§pop().§§slot[2].data.minigamePrizes = ob.minigamePrizes.concat();
                           so.data.version = ob.saveSlotVersion;
                           §§goto(addr409);
                        }
                        §§goto(addr499);
                     }
                     §§goto(addr615);
                  }
                  §§goto(addr438);
               }
               §§goto(addr499);
            }
            §§goto(addr546);
         }
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§goto(addr640);
         }
         §§goto(addr663);
      }
      
      public function saveAfterBadge() : void
      {
      }
      
      public function purchaseBonus(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:UserData = this;
         var _loc3_:GameData = _loc2_.gameObj.§_-Cf§;
         var _loc4_:Upgrade = _loc3_.getUpgradeFromTag(param1);
         §§push(_loc4_.price);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc2_.totalTips >= _loc5_)
         {
            §§push(_loc2_.bonusUpgrades);
            if(!(_loc6_ && Boolean(param1)))
            {
               §§push(param1);
               if(!_loc6_)
               {
                  addr58:
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     §§push(_loc2_.bonusUpgrades);
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.totalTips);
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() - _loc5_);
                  }
                  §§pop().totalTips = §§pop();
                  §§push(_loc2_.gameObj);
                  if(_loc7_)
                  {
                     addr122:
                     §§push(§§pop().challengeManager);
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        §§pop().recordUpgrade(_loc4_.tag);
                        §§push(_loc2_.gameObj);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop().challengeManager);
                        }
                     }
                     §§pop().recordPurchase("upgrade");
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§push(_loc2_.gameObj);
                     }
                     §§push(param1);
                     if(!_loc6_)
                     {
                        if(§§pop() == "napkin")
                        {
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.numNapkins);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 5);
                              }
                              §§pop().numNapkins = §§pop();
                           }
                           else
                           {
                              addr146:
                              §§push(_loc2_);
                              §§push(_loc2_.numNapkins);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + 10);
                              }
                              §§pop().numNapkins = §§pop();
                           }
                        }
                        else
                        {
                           §§push(param1);
                        }
                        addr154:
                        _loc2_.saveData();
                        §§push(true);
                        if(_loc7_ || Boolean(param1))
                        {
                           return §§pop();
                        }
                     }
                     if(§§pop() == "napkinholder")
                     {
                        §§goto(addr146);
                     }
                     §§goto(addr154);
                  }
                  §§pop().§_-4P§.api.§_-h§("Purchased " + _loc4_.title,"Purchases");
                  §§goto(addr122);
               }
               addr55:
               §§pop().push(§§pop());
               if(!_loc6_)
               {
                  §§goto(addr58);
               }
               §§goto(addr154);
            }
            §§goto(addr55);
            §§push(param1);
         }
         else
         {
            §§push(false);
         }
         return §§pop();
      }
      
      public function recordMinigamePlayed(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:UserData = this;
         if(_loc7_)
         {
            if(param1 > -1)
            {
               if(_loc6_ && _loc3_)
               {
               }
               addr69:
               _loc2_.gameObj.challengeManager.recordPlayingMinigame();
            }
            §§goto(addr73);
         }
         var _loc3_:* = _loc2_.minigamesPlayed;
         var _loc4_:*;
         var _loc5_:* = _loc3_[_loc4_ = param1] + 1;
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            _loc3_[_loc4_] = _loc5_;
         }
         if(_loc7_)
         {
            §§goto(addr69);
         }
         addr73:
      }
      
      public function earnMinigameFurniture(param1:String, param2:Number = -1) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:UserData = this;
         var _loc4_:GameData = _loc3_.gameObj.§_-Cf§;
         var _loc5_:FurniData = _loc4_.getFurniFromTag(param1);
         §§push(_loc3_.getExistingFurniIndex(_loc5_.tag));
         if(_loc10_ || Boolean(param2))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(_loc6_);
         if(_loc10_)
         {
            §§push(-1);
            if(_loc10_ || Boolean(_loc3_))
            {
               if(§§pop() > §§pop())
               {
                  if(_loc10_)
                  {
                     §§push(_loc3_.furniInventory);
                     if(_loc10_ || Boolean(param1))
                     {
                        §§pop()[_loc6_][1] = _loc3_.furniInventory[_loc6_][1] + 1;
                        addr94:
                        §§push(param2);
                     }
                     else
                     {
                        addr86:
                        §§pop().push([_loc5_.tag,1,0]);
                        if(_loc10_)
                        {
                           §§goto(addr94);
                        }
                     }
                     addr146:
                     _loc3_.hasNewFurni = true;
                     if(_loc11_ && Boolean(_loc3_))
                     {
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr163);
               }
               else
               {
                  §§push(_loc3_.furniInventory);
                  if(_loc10_)
                  {
                     §§goto(addr86);
                  }
               }
               addr99:
               var _loc7_:* = §§pop();
               var _loc8_:*;
               var _loc9_:* = _loc7_[_loc8_ = param2] + 1;
               if(_loc10_)
               {
                  _loc7_[_loc8_] = _loc9_;
               }
               if(!_loc11_)
               {
                  addr118:
                  §§push(_loc3_.gameObj);
                  if(!(_loc11_ && Boolean(this)))
                  {
                     §§pop().challengeManager.recordEarningPrize();
                     if(!(_loc11_ && Boolean(param2)))
                     {
                        §§push(_loc3_.gameObj);
                     }
                     addr163:
                     _loc3_.saveData();
                     addr165:
                     return;
                  }
                  §§pop().§_-4P§.api.§_-h§("Earned " + _loc5_.title,"Bonus Furni");
               }
               §§goto(addr146);
            }
            addr96:
            if(§§pop() > §§pop())
            {
               §§goto(addr99);
               §§push(_loc3_.minigamePrizes);
            }
            §§goto(addr118);
         }
         §§goto(addr96);
         §§push(-1);
      }
      
      public function earnMinigameClothing(param1:String, param2:Number = -1) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:UserData = this;
         var _loc4_:ClothingData = _loc3_.gameObj.§_-1B§;
         var _loc5_:ClothingItem = _loc4_.getItemFromSKU(param1);
         if(_loc9_)
         {
            §§push(_loc3_.clothingInventory);
            if(!_loc10_)
            {
               §§pop().push(param1);
               if(_loc9_)
               {
               }
               §§goto(addr110);
            }
            var _loc6_:* = §§pop();
            var _loc7_:*;
            var _loc8_:* = _loc6_[_loc7_ = param2] + 1;
            §§goto(addr43);
         }
         if(param2 > -1)
         {
            if(!_loc10_)
            {
               addr43:
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  _loc6_[_loc7_] = _loc8_;
               }
               §§push(_loc3_.gameObj);
               if(!(_loc10_ && Boolean(param2)))
               {
                  §§pop().challengeManager.recordEarningPrize();
                  addr83:
                  §§push(_loc3_.gameObj);
               }
               §§pop().§_-4P§.api.§_-h§("Earned " + _loc5_.title,"Bonus Clothing");
               if(_loc9_ || Boolean(param2))
               {
                  _loc3_.hasNewClothing = true;
                  §§goto(addr110);
               }
               addr110:
               _loc3_.saveData();
               return;
               §§push(_loc3_.minigamePrizes);
            }
            §§goto(addr83);
         }
         §§goto(addr43);
      }
      
      public function earnMinigameTips(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:UserData = this;
         if(!_loc3_)
         {
            §§push(_loc2_);
            §§push(_loc2_.totalTips);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().totalTips = §§pop();
            if(_loc3_ && Boolean(_loc2_))
            {
            }
            §§goto(addr55);
         }
         _loc2_.saveData();
         addr55:
      }
      
      public function earnMinigameTickets(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:UserData = this;
         if(!_loc4_)
         {
            §§push(_loc2_);
            §§push(_loc2_.totalTickets);
            if(_loc3_ || Boolean(param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().totalTickets = §§pop();
            if(_loc3_)
            {
            }
            §§goto(addr49);
         }
         _loc2_.saveData();
         addr49:
      }
      
      public function purchaseClothing(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:UserData = this;
         var _loc3_:ClothingData = _loc2_.gameObj.§_-1B§;
         var _loc4_:ClothingItem = _loc3_.getItemFromSKU(param1);
         §§push(_loc4_.price);
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            if(_loc2_.totalTips >= _loc5_)
            {
               _loc2_.clothingInventory.push(param1);
               §§push(_loc2_);
               §§push(_loc2_.totalTips);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§push(§§pop() - _loc5_);
               }
               §§pop().totalTips = §§pop();
               if(_loc6_)
               {
                  §§push(_loc2_.gameObj);
                  if(_loc6_ || Boolean(param1))
                  {
                     §§pop().challengeManager.recordPurchase("clothing");
                     addr105:
                     if(_loc6_ || Boolean(param1))
                     {
                        §§push(_loc2_.gameObj);
                     }
                     §§push(true);
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        return §§pop();
                     }
                     §§goto(addr122);
                  }
                  §§pop().§_-4P§.api.§_-h§("Purchased " + _loc4_.title,"Clothing Purchases");
                  if(_loc6_)
                  {
                  }
                  §§goto(addr122);
               }
            }
            addr122:
            return §§pop();
            §§push(false);
         }
         _loc2_.hasNewClothing = true;
         _loc2_.saveData();
         §§goto(addr105);
      }
      
      public function purchaseFurniture(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         var _loc2_:UserData = this;
         var _loc3_:GameData = _loc2_.gameObj.§_-Cf§;
         var _loc4_:FurniData = _loc3_.getFurniFromTag(param1);
         §§push(_loc4_.price);
         if(_loc8_ || Boolean(_loc3_))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(_loc2_.totalTips);
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            §§push(_loc5_);
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               if(§§pop() >= §§pop())
               {
                  §§push(_loc2_.getExistingFurniIndex(_loc4_.tag));
                  if(_loc8_)
                  {
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§push(false);
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§push(§§pop());
         if(!_loc9_)
         {
            addr70:
            _loc6_ = §§pop();
            addr71:
            if(§§pop() > -1)
            {
               §§push(_loc2_.furniInventory);
               if(_loc8_)
               {
                  §§pop()[_loc6_][1] = _loc2_.furniInventory[_loc6_][1] + 1;
               }
               §§goto(addr98);
            }
            else
            {
               §§push(_loc2_.furniInventory);
            }
            §§pop().push([_loc4_.tag,1,0]);
            addr98:
            §§push(_loc2_);
            §§push(_loc2_.totalTips);
            if(!(_loc9_ && Boolean(this)))
            {
               §§push(§§pop() - _loc5_);
            }
            §§pop().totalTips = §§pop();
            §§push(_loc4_.type);
            if(!_loc9_)
            {
               §§push(§§pop());
               if(_loc8_)
               {
               }
               addr141:
               §§push(FurniData.TYPE_FLOORING);
               if(_loc8_ || Boolean(this))
               {
                  §§goto(addr150);
               }
               §§push(§§pop() == §§pop());
               if(!(_loc9_ && Boolean(param1)))
               {
                  §§goto(addr176);
               }
            }
            §§push(§§pop());
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               _loc7_ = §§pop();
               if(_loc8_ || Boolean(this))
               {
                  §§goto(addr141);
               }
               §§goto(addr166);
            }
            addr150:
            §§push(§§pop() == §§pop());
            if(_loc8_)
            {
               if(!§§pop())
               {
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     §§pop();
                     addr177:
                     addr179:
                     if(_loc8_)
                     {
                        addr166:
                        §§push(_loc7_);
                        §§push(FurniData.TYPE_WALLPAPER);
                     }
                     _loc7_ = "wallfloor";
                     §§push(_loc2_.gameObj);
                     if(!_loc9_)
                     {
                        §§pop().challengeManager.recordPurchase(_loc7_);
                        addr224:
                        if(_loc8_)
                        {
                           §§push(_loc2_.gameObj);
                        }
                        §§push(true);
                        if(_loc9_)
                        {
                        }
                     }
                     §§pop().§_-4P§.api.§_-h§("Purchased " + _loc4_.title,"Furni Purchases");
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        _loc2_.hasNewFurni = true;
                        if(_loc8_ || Boolean(param1))
                        {
                        }
                        §§goto(addr224);
                     }
                     _loc2_.saveData();
                     §§goto(addr224);
                  }
               }
               addr176:
               if(§§pop())
               {
                  §§goto(addr177);
               }
               §§goto(addr179);
            }
            return §§pop();
            §§push(§§pop());
         }
         §§goto(addr71);
      }
      
      private function getExistingFurniIndex(param1:String) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UserData = this;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < _loc2_.furniInventory.length)
            {
               if(_loc2_.furniInventory[_loc4_][0] == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        _loc3_ = §§pop();
                        if(_loc6_)
                        {
                        }
                        break;
                     }
                     §§goto(addr72);
                  }
                  continue;
               }
               _loc4_++;
               if(_loc5_ && Boolean(param1))
               {
                  break;
               }
               continue loop0;
            }
            addr72:
            return §§pop();
         }
      }
      
      public function getFurniAmount(param1:String, param2:Boolean = false) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:UserData = this;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.furniInventory.length)
         {
            §§push(_loc3_.furniInventory);
            if(!_loc6_)
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  addr41:
                  §§push(Number(§§pop()[§§pop()][1]));
                  if(!(_loc6_ && param2))
                  {
                     _loc4_ = §§pop();
                     if(!(_loc7_ || param2))
                     {
                        continue;
                     }
                     if(param2 == true)
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + _loc3_.furniInventory[_loc5_][2]);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_)
                                 {
                                 }
                                 break;
                              }
                           }
                        }
                        break;
                     }
                     §§goto(addr93);
                  }
               }
               if(§§pop()[§§pop()][0] == param1)
               {
                  addr93:
                  if(!_loc6_)
                  {
                     §§push(_loc3_.furniInventory);
                  }
                  break;
               }
               _loc5_++;
               if(!(_loc7_ || Boolean(this)))
               {
                  break;
               }
               continue;
               §§goto(addr115);
            }
            §§goto(addr41);
            §§push(_loc5_);
         }
         addr115:
         _loc4_;
         return §§pop();
      }
      
      public function getFurniAvailable(param1:String = "any") : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:FurniData = null;
         var _loc2_:UserData = this;
         var _loc3_:Array = [];
         var _loc4_:* = int(_loc2_.furniInventory.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() >= 0)
            {
               if(_loc2_.furniInventory[_loc4_][1] > 0)
               {
                  if(!_loc7_)
                  {
                     if(param1 == "any")
                     {
                        if(!_loc7_)
                        {
                           _loc3_.push(_loc2_.furniInventory[_loc4_][0]);
                           if(_loc7_ && Boolean(this))
                           {
                           }
                           break;
                        }
                        continue loop0;
                     }
                     _loc5_ = _loc2_.gameObj.§_-Cf§.getFurniFromTag(_loc2_.furniInventory[_loc4_][0]);
                     §§push(_loc5_ == null);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§pop();
                                 addr117:
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    §§push(_loc5_.type == param1);
                                 }
                                 _loc3_.push(_loc2_.furniInventory[_loc4_][0]);
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§goto(addr117);
                        }
                     }
                  }
                  break;
               }
               §§push(_loc4_);
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§push(§§pop() - 1);
                  if(_loc7_ && Boolean(param1))
                  {
                     continue;
                  }
               }
               _loc4_ = §§pop();
               if(_loc7_ && Boolean(this))
               {
                  break;
               }
               continue loop0;
            }
            return _loc3_;
         }
      }
      
      public function isFurniInLobby(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:UserData = this;
         var _loc3_:* = false;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.lobbyPlacement.length)
         {
            §§push(_loc2_.lobbyPlacement[_loc5_][0]);
            if(!(_loc7_ && Boolean(this)))
            {
               _loc4_ = §§pop();
               if(!(_loc6_ || Boolean(this)))
               {
                  continue;
               }
               §§push(param1);
            }
            if(§§pop() == _loc4_)
            {
               if(_loc6_ || _loc3_)
               {
                  §§push(true);
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                     }
                     break;
                  }
                  §§goto(addr97);
               }
            }
            else
            {
               _loc5_++;
               if(!(_loc6_ || Boolean(_loc2_)))
               {
                  break;
               }
            }
         }
         addr97:
         _loc3_;
         return §§pop();
      }
      
      public function placeFurniInLobby(param1:String, param2:Number, param3:Number) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:UserData = this;
         var _loc5_:* = false;
         §§push(_loc4_.getExistingFurniIndex(param1));
         if(_loc8_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(_loc6_ > -1)
         {
            if(!(_loc7_ && Boolean(param1)))
            {
               §§push(_loc4_.furniInventory);
               if(!(_loc7_ && Boolean(param3)))
               {
                  §§push(_loc6_);
                  if(_loc8_ || Boolean(param3))
                  {
                     if(§§pop()[§§pop()][1] > 0)
                     {
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§push(_loc4_.furniInventory);
                           if(_loc7_ && Boolean(param3))
                           {
                           }
                           addr131:
                           §§pop().push([param1,param2,param3]);
                           if(_loc8_ || Boolean(param1))
                           {
                              §§goto(addr150);
                           }
                        }
                        addr106:
                        §§push(_loc4_.furniInventory);
                        if(_loc8_ || Boolean(this))
                        {
                           §§goto(addr116);
                        }
                        §§goto(addr131);
                     }
                  }
                  addr94:
                  §§pop()[§§pop()][1] = _loc4_.furniInventory[_loc6_][1] - 1;
                  if(!_loc7_)
                  {
                     §§goto(addr106);
                  }
               }
               §§push(_loc6_);
               if(!(_loc7_ && Boolean(this)))
               {
                  §§goto(addr94);
               }
               addr116:
               §§pop()[_loc6_][2] = _loc4_.furniInventory[_loc6_][2] + 1;
               if(!_loc7_)
               {
                  §§push(_loc4_.lobbyPlacement);
               }
               §§goto(addr150);
            }
         }
         addr150:
         §§push(true);
         if(!_loc7_)
         {
            _loc5_ = §§pop();
         }
         _loc5_;
         return §§pop();
      }
      
      public function removeFurniFromLobby(param1:String, param2:Number, param3:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = NaN;
         var _loc4_:UserData = this;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.lobbyPlacement.length)
         {
            §§push(_loc4_.lobbyPlacement);
            if(!(_loc8_ && Boolean(param3)))
            {
               §§push(_loc6_);
               if(_loc9_ || Boolean(param3))
               {
                  §§push(§§pop()[§§pop()][0] == param1);
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc9_ || Boolean(param3))
                     {
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              §§pop();
                              §§push(_loc4_.lobbyPlacement);
                              if(!_loc8_)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    §§push(§§pop()[§§pop()][1] == param2);
                                    if(_loc8_)
                                    {
                                    }
                                    addr187:
                                    _loc5_ = §§pop();
                                    _loc6_++;
                                    if(!(_loc9_ || Boolean(param2)))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                              }
                           }
                           addr82:
                           §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc4_.lobbyPlacement);
                              if(!_loc8_)
                              {
                                 §§push(_loc6_);
                                 if(!_loc8_)
                                 {
                                    addr97:
                                    if(§§pop()[§§pop()][2] == param3)
                                    {
                                       addr145:
                                       §§push(_loc4_.lobbyPlacement);
                                       if(!(_loc8_ && Boolean(param3)))
                                       {
                                          §§push(_loc6_);
                                       }
                                       §§push(_loc7_);
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          §§pop()[§§pop()][1] = _loc4_.furniInventory[_loc7_][1] + 1;
                                          if(_loc9_ || Boolean(this))
                                          {
                                             §§push(_loc4_.furniInventory);
                                          }
                                          break;
                                       }
                                       §§pop()[§§pop()][2] = _loc4_.furniInventory[_loc7_][2] - 1;
                                       if(_loc9_)
                                       {
                                          §§goto(addr187);
                                          §§push(true);
                                       }
                                       break;
                                    }
                                    §§goto(addr187);
                                 }
                              }
                           }
                           §§push(_loc4_.furniInventory);
                           if(_loc9_)
                           {
                              §§goto(addr145);
                           }
                        }
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        §§goto(addr82);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr209);
               }
               §§pop().splice(§§pop(),1);
               §§push(_loc4_.getExistingFurniIndex(param1));
               if(!(_loc8_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(_loc9_ || Boolean(param1))
                  {
                     _loc7_ = §§pop();
                     §§push(_loc7_);
                  }
               }
               if(§§pop() > -1)
               {
                  if(!_loc9_)
                  {
                     continue;
                  }
                  §§goto(addr82);
               }
               §§goto(addr187);
            }
            §§goto(addr145);
            §§push(_loc7_);
         }
         addr209:
         _loc5_;
         return §§pop();
      }
      
      public function getDay() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.currentDay;
      }
      
      public function getDaysUntilPapa() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:UserData = this;
         §§push(_loc1_.papaReturnsOnDay);
         if(_loc4_)
         {
            §§push(§§pop() - _loc1_.getDay());
            if(_loc4_ || Boolean(_loc1_))
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        _loc2_ = §§pop();
                     }
                  }
               }
            }
            §§goto(addr72);
         }
         addr72:
         _loc2_;
         return §§pop();
      }
      
      private function getLastRankLimit() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:UserData = this;
         var _loc2_:Number = 0;
         var _loc3_:* = 2;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               §§push(_loc1_.myRank);
               if(_loc5_)
               {
                  while(§§pop() <= §§pop())
                  {
                     §§push(_loc3_);
                     §§push(_loc1_.rankPlateauLimit);
                     if(_loc5_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§push(_loc2_);
                              §§push(_loc3_);
                              if(_loc4_ && Boolean(_loc3_))
                              {
                              }
                           }
                           break;
                        }
                        §§push(_loc2_);
                        §§push(_loc1_.rankPlateauLimit);
                        if(!_loc5_)
                        {
                           continue;
                        }
                        _loc2_ = §§pop() + §§pop();
                        if(!(_loc5_ || Boolean(this)))
                        {
                           continue loop0;
                        }
                        addr82:
                        §§push(_loc3_ + 1);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              addr94:
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(_loc1_.rankMultiplier);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(_loc4_ && Boolean(_loc2_))
                        {
                           continue loop0;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr94);
                  }
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§goto(addr82);
                  }
                  break;
               }
               §§push(§§pop() * §§pop());
            }
            break;
         }
         return §§pop();
      }
      
      private function getNextRankLimit() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         §§push(_loc1_.getLastRankLimit());
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            §§push(_loc1_.myRank + 1);
            §§push(_loc1_.rankPlateauLimit);
            if(_loc4_ || Boolean(this))
            {
               if(§§pop() < §§pop())
               {
                  if(_loc5_ && Boolean(this))
                  {
                  }
                  addr128:
                  §§push(_loc2_);
                  addr100:
               }
               else
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     addr104:
                     §§push(_loc1_.rankPlateauLimit);
                     if(_loc4_)
                     {
                     }
                     addr111:
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        _loc2_ = §§pop();
                        §§goto(addr128);
                     }
                  }
               }
               §§goto(addr129);
            }
            addr108:
            §§goto(addr111);
            §§push(§§pop() * _loc1_.rankMultiplier);
         }
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(_loc1_.myRank);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc4_)
               {
                  §§push(_loc1_.rankMultiplier);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           §§push(§§pop());
                        }
                        _loc2_ = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr128);
                     }
                     addr129:
                     return §§pop();
                  }
               }
            }
            else
            {
               §§goto(addr108);
            }
            §§goto(addr108);
         }
         else
         {
            §§goto(addr104);
         }
      }
      
      public function getPointsUntilNextRank(param1:Boolean = false) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UserData = this;
         §§push(_loc2_.getNextRankLimit());
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            §§push(§§pop() - _loc2_.totalScore);
            if(_loc5_ || Boolean(this))
            {
            }
            addr53:
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               if(param1)
               {
                  if(_loc5_)
                  {
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() - _loc2_.todayScore);
                        if(_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc5_ || _loc3_)
                           {
                           }
                        }
                        §§goto(addr85);
                     }
                     _loc4_ = §§pop();
                  }
               }
            }
            addr85:
            return §§pop();
            §§push(_loc4_);
         }
         §§goto(addr53);
         §§push(§§pop());
      }
      
      public function getCurrentPointPercentage() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:UserData = this;
         §§push(_loc1_.lastRankLimit);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.getNextRankLimit());
         if(_loc7_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.totalScore);
         if(_loc7_)
         {
            §§push(_loc1_.todayScore);
            if(!_loc6_)
            {
               §§push(§§pop() + §§pop());
               if(_loc7_)
               {
               }
               addr51:
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr95);
                  }
                  addr94:
                  addr95:
                  var _loc5_:* = §§pop();
                  if(_loc7_ || Boolean(this))
                  {
                     §§push(1);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc6_)
                           {
                              §§push(1);
                              if(_loc7_)
                              {
                                 addr157:
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr158:
                                       §§push(_loc5_);
                                    }
                                 }
                                 _loc5_ = §§pop();
                                 §§goto(addr158);
                              }
                              addr154:
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 §§goto(addr157);
                              }
                           }
                           addr153:
                           §§goto(addr154);
                           §§push(0);
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(0);
                           }
                        }
                     }
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr158);
                  }
                  return §§pop();
                  §§push(§§pop());
               }
               §§push(§§pop() - _loc2_);
               if(!_loc6_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc6_ && Boolean(_loc1_))
                  {
                  }
                  §§goto(addr94);
               }
               §§goto(addr95);
            }
            §§goto(addr94);
            §§push(§§pop());
         }
         §§goto(addr51);
         §§push(§§pop());
      }
      
      public function loadLabelsForSlot(param1:Number) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UserData = this;
         var _loc3_:Object = null;
         var _loc4_:SharedObject = SharedObject.getLocal(this.saveSlotPrefix + param1,"/");
         if(_loc4_.data.rank)
         {
            _loc3_ = {};
            if(_loc6_ || Boolean(_loc3_))
            {
               if(_loc4_.data.playername)
               {
                  if(!_loc5_)
                  {
                     _loc3_.name = _loc4_.data.playername;
                     if(_loc5_ && Boolean(_loc3_))
                     {
                     }
                  }
               }
               else
               {
                  _loc3_.name = "Anonymous";
               }
               _loc3_.score = _loc4_.data.score;
               if(_loc5_ && Boolean(_loc2_))
               {
               }
            }
            _loc3_.tips = _loc4_.data.tips;
            _loc3_.rank = _loc4_.data.rank;
            _loc3_.title = _loc2_.getRankTitle(Number(_loc4_.data.rank));
            _loc3_.day = _loc4_.data.day;
         }
         return _loc3_;
      }
      
      public function readyToShowPapa() : Boolean
      {
         var _loc1_:UserData = this;
         return false;
      }
      
      public function isEveryoneGold() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:* = true;
         var _loc3_:* = 1;
         if(_loc5_ || Boolean(_loc1_))
         {
            §§push(8);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  _loc3_ = §§pop();
               }
               addr48:
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc1_.customerSeals.length - 1)
            {
               if(_loc1_.customerSeals[_loc4_] < 3)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(false);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        _loc2_ = §§pop();
                        if(_loc6_)
                        {
                        }
                        break;
                     }
                     §§goto(addr94);
                  }
                  break;
               }
               _loc4_++;
               if(_loc6_)
               {
                  break;
               }
            }
            addr94:
            return §§pop();
            §§push(_loc2_);
         }
         §§goto(addr48);
         §§push(_loc3_);
      }
      
      public function hasBonus(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UserData = this;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.bonusUpgrades.length)
         {
            if(_loc2_.bonusUpgrades[_loc4_] == param1)
            {
               if(_loc5_)
               {
                  §§push(true);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                     }
                     break;
                  }
                  §§goto(addr65);
               }
               break;
            }
            _loc4_++;
            if(!_loc5_)
            {
               break;
            }
         }
         addr65:
         _loc3_;
         return §§pop();
      }
      
      public function hasTopping(param1:String = null, param2:Number = -1) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:UserData = this;
         var _loc4_:Boolean = false;
         var _loc5_:* = -1;
         if(_loc6_)
         {
            if(param1 != null)
            {
               §§push(_loc3_.toppingIndexes);
               if(!_loc7_)
               {
                  §§push(Number(§§pop().indexOf(param1)));
                  if(!_loc7_)
                  {
                     _loc5_ = §§pop();
                     if(_loc6_)
                     {
                     }
                     addr53:
                     §§push(_loc5_);
                  }
                  else
                  {
                     addr42:
                     §§push(§§pop());
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           §§goto(addr53);
                        }
                        addr122:
                        _loc4_ = true;
                        addr128:
                        return _loc4_;
                        addr124:
                     }
                  }
               }
               addr79:
               §§push(§§pop().length > _loc5_);
               if(_loc6_ || Boolean(param2))
               {
                  addr89:
                  addr90:
                  if(§§pop())
                  {
                     if(_loc7_ && Boolean(param1))
                     {
                     }
                     §§goto(addr128);
                  }
                  addr119:
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr122);
                     }
                     §§goto(addr124);
                  }
                  else
                  {
                     _loc4_ = false;
                  }
                  §§goto(addr122);
               }
               §§pop();
               §§push(_loc3_.toppingsUnlocked[_loc5_] == 1);
               if(_loc6_ || Boolean(this))
               {
                  §§goto(addr119);
               }
               §§goto(addr122);
            }
            else
            {
               §§push(param2);
               if(_loc6_)
               {
                  §§goto(addr42);
               }
            }
            §§push(§§pop() > -1);
            if(!_loc7_)
            {
               §§push(§§pop());
               if(!(_loc7_ && Boolean(param2)))
               {
                  if(§§pop())
                  {
                     §§pop();
                  }
                  §§goto(addr89);
               }
               §§goto(addr90);
            }
            §§goto(addr122);
         }
         §§push(_loc3_.toppingsUnlocked);
         if(_loc7_)
         {
         }
         §§goto(addr79);
      }
      
      public function getAvailableBonuses() : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:UserData = this;
         var _loc2_:Array = [];
         var _loc3_:int = 1;
         while(_loc3_ <= _loc1_.totalBonuses)
         {
            if(_loc1_.bonusUpgrades[_loc3_] == 0)
            {
               if(_loc5_ || Boolean(_loc1_))
               {
                  _loc2_.push(_loc3_);
                  if(_loc4_ && Boolean(this))
                  {
                     continue;
                  }
               }
            }
            _loc3_++;
            if(!_loc5_)
            {
               break;
            }
         }
         return _loc2_;
      }
      
      public function getTotalBonuses() : Number
      {
         var _loc1_:UserData = this;
         return _loc1_.totalBonuses;
      }
      
      public function getBonusWaitOffset() : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = null;
         var _loc1_:UserData = this;
         var _loc2_:GameData = _loc1_.gameObj.§_-Cf§;
         var _loc3_:* = 0;
         var _loc4_:String = "Get Bonus Wait Offset: ";
         if(_loc7_ || Boolean(_loc1_))
         {
            _loc5_ = 1;
         }
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc8_)
            {
               §§push(_loc1_.totalBonuses);
               if(_loc7_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc8_)
                     {
                        addr127:
                        _loc5_ = 0;
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           addr135:
                           while(true)
                           {
                              §§push(_loc5_);
                              addr185:
                              while(§§pop() < _loc1_.lobbyPlacement.length)
                              {
                                 §§push(_loc1_.lobbyPlacement);
                              }
                           }
                           addr184:
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              §§push(§§pop() + 1);
                              break loop0;
                           }
                           §§goto(addr185);
                        }
                        addr176:
                     }
                     addr195:
                     _loc4_ += _loc3_ + ". ";
                     §§goto(addr189);
                  }
                  §§push(_loc1_.bonusUpgrades);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     §§push(_loc5_);
                     if(!(_loc8_ && Boolean(_loc1_)))
                     {
                        if(§§pop()[§§pop()] == 1)
                        {
                           if(_loc7_)
                           {
                              §§push(_loc3_);
                              §§push(§§findproperty(Upgrade));
                              §§push(_loc2_.shopItems);
                              §§push(_loc5_);
                              if(_loc7_ || Boolean(this))
                              {
                                 §§push(§§pop() - 1);
                              }
                              §§push(§§pop().Upgrade(§§pop()[§§pop()]).waitingOffset);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc8_ && Boolean(_loc1_)))
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ || Boolean(this))
                                    {
                                       _loc3_ = §§pop();
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.getFurniFromTag(_loc6_).waitingOffset);
                                    }
                                    addr160:
                                 }
                                 addr108:
                                 §§push(§§pop() + 1);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr127);
                                 }
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       §§goto(addr184);
                                    }
                                    addr189:
                                    if(_loc7_ || Boolean(_loc2_))
                                    {
                                       §_-5i§.debug(_loc4_);
                                    }
                                    return _loc3_;
                                 }
                                 addr181:
                              }
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr108);
                        §§push(_loc5_);
                     }
                     while(true)
                     {
                        §§push(§§pop()[§§pop()][0]);
                        if(!(_loc8_ && Boolean(_loc1_)))
                        {
                           _loc6_ = §§pop();
                           if(!(_loc8_ && Boolean(this)))
                           {
                              §§goto(addr160);
                              §§push(_loc3_);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr195);
                     }
                     addr140:
                  }
                  while(true)
                  {
                     §§goto(addr140);
                  }
                  §§goto(addr195);
               }
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        §§goto(addr176);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr185);
               }
            }
            break;
            _loc5_ = §§pop();
         }
         while(true)
         {
            §§goto(addr181);
         }
      }
      
      public function hasBonusFurniture(param1:String, param2:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:FurniData = null;
         var _loc3_:UserData = this;
         var _loc4_:* = false;
         var _loc7_:int = 0;
         while(_loc7_ < _loc3_.lobbyPlacement.length)
         {
            _loc5_ = _loc3_.lobbyPlacement[_loc7_][0];
            if(!_loc8_)
            {
               _loc6_ = _loc3_.gameObj.§_-Cf§.getFurniFromTag(_loc5_);
               §§push(_loc6_.special);
               if(_loc9_)
               {
                  §§push(FurniData.SPECIAL_SCORE);
                  if(_loc9_)
                  {
                     §§push(§§pop() == §§pop());
                     §§push(§§pop() == §§pop());
                     if(!(_loc8_ && Boolean(param2)))
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc9_ || Boolean(param2))
                           {
                              §§push(_loc6_.special);
                              if(!(_loc8_ && Boolean(param1)))
                              {
                                 addr129:
                                 §§push(FurniData.SPECIAL_SCOREBUBBLEGUM);
                                 if(!(_loc8_ && Boolean(param2)))
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(!_loc8_)
                                 {
                                    addr133:
                                    if(§§pop())
                                    {
                                       addr134:
                                       §§pop();
                                       if(_loc8_ && Boolean(_loc3_))
                                       {
                                          continue;
                                       }
                                       addr142:
                                       §§push(_loc6_.toppingType);
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    _loc7_++;
                                    continue;
                                 }
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    §§push(true);
                                    if(!_loc8_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                              }
                              addr121:
                              §§push(param1);
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 §§goto(addr129);
                              }
                           }
                           break;
                        }
                        §§push(§§pop());
                        if(_loc9_)
                        {
                        }
                        §§goto(addr133);
                     }
                     if(§§pop())
                     {
                        if(_loc9_ || Boolean(param1))
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc6_.scoreType);
                              if(_loc9_ || Boolean(param2))
                              {
                                 §§goto(addr121);
                              }
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr133);
                  }
                  addr145:
                  §§goto(addr129);
                  §§push(§§pop() == §§pop());
               }
               §§goto(addr145);
               §§push(param2);
            }
         }
         addr175:
         _loc4_;
         return §§pop();
      }
      
      public function alreadyOwnsFurniture(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UserData = this;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.furniInventory.length)
         {
            if(_loc2_.furniInventory[_loc4_][0] == param1)
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(true);
                  if(_loc5_ || _loc3_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr77);
               }
               break;
            }
            _loc4_++;
            if(!(_loc5_ || _loc3_))
            {
               break;
            }
         }
         addr77:
         _loc3_;
         return §§pop();
      }
      
      public function alreadyOwnsClothing(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UserData = this;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.clothingInventory.length)
         {
            if(_loc2_.clothingInventory[_loc4_] == param1)
            {
               if(_loc5_)
               {
                  §§push(true);
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc3_ = §§pop();
                     if(_loc5_)
                     {
                     }
                     break;
                  }
                  §§goto(addr70);
               }
            }
            else
            {
               _loc4_++;
               if(!(_loc5_ || Boolean(this)))
               {
                  break;
               }
            }
         }
         addr70:
         _loc3_;
         return §§pop();
      }
      
      public function getCustomerPool(param1:Number, param2:Boolean = false) : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc7_:Array = null;
         var _loc8_:* = NaN;
         var _loc3_:UserData = this;
         var _loc4_:Array = [];
         if(!_loc10_)
         {
            §§push(1 + _loc3_.closerCustomers);
            if(!(_loc10_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            _loc5_ = §§pop();
         }
         for(; _loc5_ < _loc3_.customersUnlocked.length; _loc5_ = §§pop())
         {
            §§push(_loc3_.customersUnlocked);
            if(!_loc10_)
            {
               §§push(_loc5_);
               if(!(_loc10_ && Boolean(this)))
               {
                  if(§§pop()[§§pop()] == 1)
                  {
                     if(_loc3_.getCustomerSeal(_loc5_) < 3)
                     {
                        if(_loc9_)
                        {
                           §§push(param2);
                           if(_loc9_)
                           {
                              §§push(false);
                              if(_loc9_ || param2)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc9_ || Boolean(_loc3_))
                                 {
                                 }
                                 addr97:
                                 if(§§pop())
                                 {
                                    addr98:
                                    _loc4_.push(_loc5_);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              addr85:
                              if(!§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§pop();
                                    if(!_loc10_)
                                    {
                                       §§push(_loc3_.customerVisits);
                                    }
                                    §§goto(addr98);
                                 }
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr85);
                           §§push(§§pop());
                        }
                        break;
                     }
                  }
                  §§push(_loc5_);
                  if(_loc9_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc9_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                     §§push(§§pop());
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr147);
               }
               addr94:
               §§goto(addr97);
               §§push(§§pop()[§§pop()] > 0);
            }
            §§goto(addr94);
            §§push(_loc5_);
         }
         §§push(param1 - _loc4_.length);
         if(_loc9_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         addr147:
         var _loc6_:* = §§pop();
         if(_loc6_ > 0)
         {
            if(_loc9_)
            {
               §_-5i§.debug("Not Enough Non-Gold Customers! Grab from the full pool.");
               if(!_loc10_)
               {
                  _loc7_ = [];
                  if(!_loc10_)
                  {
                     §§push(1 + _loc3_.closerCustomers);
                     if(_loc9_ || Boolean(param1))
                     {
                        _loc5_ = §§pop();
                        loop1:
                        do
                        {
                           if(_loc5_ < _loc3_.customersUnlocked.length)
                           {
                              if(_loc3_.customersUnlocked[_loc5_] == 1)
                              {
                                 if(_loc9_)
                                 {
                                    if(_loc4_.indexOf(_loc5_) == -1)
                                    {
                                       if(_loc9_)
                                       {
                                          _loc7_.push(_loc5_);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(_loc4_.length >= param1)
                              {
                                 break loop1;
                              }
                              §§push(Math.floor(Math.random() * _loc7_.length));
                           }
                        }
                        while(§§push(_loc5_), if(!_loc10_)
                        {
                           §§push(§§pop() + 1);
                        }, _loc5_ = §§pop(), !_loc10_);
                        
                     }
                     while(true)
                     {
                        _loc8_ = §§pop();
                        _loc4_.unshift(_loc7_[_loc8_]);
                        _loc7_.splice(_loc8_,1);
                        §§goto(addr238);
                     }
                  }
               }
            }
            §§goto(addr246);
         }
         _loc4_.sort(Array.NUMERIC);
         addr246:
         return _loc4_;
      }
      
      public function getNewestCustomer() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         §§push(1);
         if(_loc6_ || Boolean(_loc2_))
         {
            §§push(int(§§pop() + _loc1_.closerCustomers));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(true)
            {
               if(§§pop() < _loc1_.customersUnlocked.length)
               {
                  §§push(_loc1_.customersUnlocked);
                  if(!_loc5_)
                  {
                     addr174:
                     §§push(_loc4_);
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop()[§§pop()] == 1);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    §§pop();
                                    §§push(_loc1_.customerFirstVisit);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§push(§§pop()[§§pop()] == 0);
                                          if(_loc5_ && Boolean(_loc1_))
                                          {
                                          }
                                          addr156:
                                          §§pop();
                                          §§push(_loc1_.customerFirstVisit);
                                          if(_loc6_ || Boolean(this))
                                          {
                                          }
                                          §§push(_loc4_);
                                          break;
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc6_ || Boolean(_loc1_))
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       addr201:
                                       _loc3_ = §§pop();
                                       _loc4_++;
                                       continue loop0;
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc5_ && Boolean(_loc1_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr187:
                                    §§push(_loc1_.customerFirstVisit);
                                 }
                              }
                              else
                              {
                                 §§push(_loc1_.customersUnlocked);
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§push(§§pop()[§§pop()] == 1);
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                              }
                              §§goto(addr156);
                           }
                           addr148:
                           if(§§pop())
                           {
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§goto(addr156);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 continue;
                              }
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr187);
                              }
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr148);
                        §§push(§§pop());
                     }
                     §§goto(addr148);
                     §§push(§§pop()[§§pop()] > _loc3_);
                  }
                  §§push(_loc4_);
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     §§goto(addr174);
                  }
                  break;
               }
               §§goto(addr209);
            }
            §§push(Number(§§pop()[§§pop()]));
            if(_loc6_)
            {
               §§goto(addr201);
            }
            else
            {
               addr209:
               return _loc2_;
            }
         }
      }
      
      public function getCloserCustomer() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:UserData = this;
         §§push(_loc1_.currentDay);
         if(!_loc3_)
         {
            §§push(§§pop() % _loc1_.closerCustomers);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == 0)
               {
                  if(_loc4_)
                  {
                  }
               }
               addr70:
               return _loc2_;
               addr69:
            }
            addr65:
            §§push(§§pop());
            if(_loc4_)
            {
               _loc2_ = §§pop();
               §§goto(addr69);
            }
            §§goto(addr70);
         }
         §§push(_loc1_.closerCustomers);
         if(_loc4_)
         {
            §§goto(addr65);
         }
         §§goto(addr70);
      }
      
      public function getToppingToReveal() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:UserData = this;
         var _loc2_:String = "none";
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.toppingsUnlocked.length)
         {
            §§push(_loc1_.toppingsUnlocked);
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(§§pop()[§§pop()] == 1);
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              continue;
                           }
                           §§push(_loc1_.toppingsRevealed);
                           if(_loc5_)
                           {
                              §§push(_loc3_);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(§§pop()[§§pop()] == 0);
                              }
                           }
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     _loc3_++;
                     if(_loc4_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     continue;
                  }
                  if(!(_loc5_ || Boolean(_loc2_)))
                  {
                     continue;
                  }
                  §§push(_loc1_.toppingIndexes);
               }
               addr90:
               _loc2_ = §§pop()[§§pop()];
               break;
            }
            §§goto(addr90);
            §§push(_loc3_);
         }
         return _loc2_;
      }
      
      public function rememberRevealedTopping(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:UserData = this;
         var _loc3_:Number = Number(_loc2_.toppingIndexes.indexOf(param1));
         if(!_loc4_)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop() > -1);
               if(_loc5_ || Boolean(param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§pop();
                        addr76:
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                        }
                        _loc2_.toppingsRevealed[_loc3_] = 1;
                     }
                  }
               }
               addr73:
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr76);
                  }
               }
            }
            §§goto(addr73);
            §§push(§§pop() < _loc2_.toppingsRevealed.length);
         }
      }
      
      public function hasBadge(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:UserData = this;
         var _loc3_:* = false;
         if(_loc5_ || Boolean(this))
         {
            §§push(_loc2_.medalsEarned);
            if(!_loc4_)
            {
               if(§§pop().length > param1)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc2_.medalsEarned);
                  }
               }
            }
            if(§§pop()[param1] == 1)
            {
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(true);
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                  }
                  §§goto(addr72);
               }
            }
         }
         addr72:
         _loc3_;
         return §§pop();
      }
      
      public function earnBadge(param1:Number, param2:String = "", param3:Number = 0, param4:Number = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:UserData = this;
         _loc5_.medalsEarned[param1] = 1;
         if(_loc6_ || Boolean(param3))
         {
            §§push(_loc5_);
            §§push(_loc5_.totalTips);
            if(!_loc7_)
            {
               §§push(§§pop() + param3);
            }
            §§pop().totalTips = §§pop();
            if(!_loc7_)
            {
               §§push(_loc5_);
               §§push(_loc5_.totalTickets);
               if(_loc6_)
               {
                  §§push(§§pop() + param4);
               }
               §§pop().totalTickets = §§pop();
               if(_loc6_)
               {
               }
            }
            §§goto(addr89);
         }
         §§push(_loc5_.gameObj.§_-4P§.api);
         §§push("Badge " + param1);
         if(_loc6_ || Boolean(this))
         {
            §§push(§§pop() + ": ");
            if(_loc6_ || Boolean(this))
            {
            }
            §§goto(addr87);
         }
         addr87:
         §§pop().§_-h§(§§pop(),"Badges");
         addr89:
         §§pop() + param2;
      }
      
      public function getTotalBadgesEarned() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.medalsEarned.length)
         {
            if(_loc1_.medalsEarned[_loc3_] == 1)
            {
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(_loc5_ && Boolean(this))
                        {
                        }
                     }
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr86);
               }
               continue;
            }
            _loc3_++;
            if(!(_loc4_ || Boolean(this)))
            {
               break;
            }
         }
         addr86:
         _loc2_;
         return §§pop();
      }
      
      public function getStatCustomersUnlocked() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customersUnlocked.length)
         {
            if(_loc1_.customersUnlocked[_loc3_] == 1)
            {
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                        if(_loc4_ || Boolean(this))
                        {
                           _loc2_ = §§pop();
                           if(_loc5_)
                           {
                           }
                           break;
                        }
                     }
                  }
                  §§goto(addr81);
               }
               continue;
            }
            _loc3_++;
            if(!(_loc4_ || Boolean(_loc2_)))
            {
               break;
            }
         }
         addr81:
         _loc2_;
         return §§pop();
      }
      
      public function getStatCustomersBronze() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customerSeals.length)
         {
            if(_loc1_.customerSeals[_loc3_] >= 1)
            {
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc5_ && Boolean(_loc1_))
                        {
                        }
                     }
                     _loc2_ = §§pop();
                     if(!(_loc4_ || Boolean(_loc2_)))
                     {
                        continue;
                     }
                  }
                  §§goto(addr81);
               }
               break;
            }
            _loc3_++;
            if(_loc5_ && Boolean(_loc3_))
            {
               break;
            }
         }
         addr81:
         _loc2_;
         return §§pop();
      }
      
      public function getStatCustomersSilver() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customerSeals.length)
         {
            if(_loc1_.customerSeals[_loc3_] >= 2)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§push(§§pop() + 1);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr86);
                  }
                  _loc2_ = §§pop();
                  if(_loc5_ && Boolean(_loc3_))
                  {
                     break;
                  }
               }
            }
            _loc3_++;
            if(_loc5_ && Boolean(_loc2_))
            {
               break;
            }
         }
         addr86:
         _loc2_;
         return §§pop();
      }
      
      public function getStatCustomersGold() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.customerSeals.length)
         {
            if(_loc1_.customerSeals[_loc3_] == 3)
            {
               if(_loc5_)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ && Boolean(_loc1_))
                     {
                     }
                     addr58:
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr82);
               }
               continue;
            }
            _loc3_++;
            if(!(_loc5_ || Boolean(_loc2_)))
            {
               break;
            }
         }
         addr82:
         _loc2_;
         return §§pop();
      }
      
      public function getStatUpgradesUnlocked() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:UserData = this;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc1_.bonusUpgrades.length)
            {
               break;
            }
            if(_loc1_.bonusUpgrades[_loc3_] == 1)
            {
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ || Boolean(_loc2_)))
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        §§goto(addr52);
                     }
                     return §§pop();
                  }
                  §§push(§§pop() + 1);
                  if(_loc4_)
                  {
                  }
                  addr52:
                  _loc2_ = §§pop();
                  if(_loc5_ && Boolean(_loc3_))
                  {
                     break;
                  }
                  continue;
                  §§goto(addr76);
               }
               break;
            }
         }
         while(_loc3_++, _loc4_);
         
         addr76:
         _loc2_;
      }
   }
}

