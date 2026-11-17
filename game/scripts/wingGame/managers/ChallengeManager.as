package wingGame.managers
{
   import §_-1d§.§_-BY§;
   import §_-C2§.§_-5i§;
   import §_-C2§.§_-9m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mochi.as3.*;
   import wingGame.data.Challenge;
   import wingGame.data.FoodData;
   import wingGame.data.UserData;
   
   public class ChallengeManager
   {
      public var gameObj:§_-BY§;
      
      public var badges:Array;
      
      public var badgeDropdown:MovieClip = null;
      
      public var badgeQueue:Array;
      
      public var dropdownX:Number = 158;
      
      public var dropdownStartY:Number = 0;
      
      public var dropdownHeight:Number = 48;
      
      public var dropdownSpeed:Number = 4;
      
      public var dropdownOnScreenWait:Number = 120;
      
      public var dropdownOnScreenTimer:Number = 0;
      
      public function ChallengeManager(param1:§_-BY§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.badges = [new Challenge(Challenge.RANK,{
               "targetAmount":5,
               "title":"Work up the Ranks",
               "description":"Reach Rank 5",
               "rewardMoney":3000,
               "tickets":1
            }),new Challenge(Challenge.RANK,{
               "targetAmount":10,
               "title":"Regular Worker",
               "description":"Reach Rank 10",
               "rewardMoney":5000,
               "tickets":2
            }),new Challenge(Challenge.RANK,{
               "targetAmount":20,
               "title":"Full-Time Employee",
               "description":"Reach Rank 20",
               "rewardMoney":7000,
               "tickets":3
            }),new Challenge(Challenge.RANK,{
               "targetAmount":30,
               "title":"Long Haul",
               "description":"Reach Rank 30",
               "rewardMoney":9000,
               "tickets":4
            }),new Challenge(Challenge.RANK,{
               "targetAmount":40,
               "title":"Longer Haul",
               "description":"Reach Rank 40",
               "rewardMoney":12000,
               "tickets":5
            }),new Challenge(Challenge.RANK,{
               "targetAmount":50,
               "title":"Employee of the Year",
               "description":"Reach Rank 50",
               "rewardMoney":15000,
               "tickets":6
            }),new Challenge(Challenge.RANK,{
               "targetAmount":59,
               "title":"Better Than Papa!",
               "description":"Reach Rank 59",
               "rewardMoney":25000,
               "tickets":10
            }),new Challenge(Challenge.MINIGAME,{
               "targetAmount":7,
               "title":"Game Show Contestant",
               "description":"Play all of Foodini\'s Mini-Games",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.PRIZE,{
               "targetAmount":1,
               "title":"Winner!",
               "description":"Earn a Prize in one of Foodini\'s Mini-Games",
               "rewardMoney":1500,
               "showTally":true
            }),new Challenge(Challenge.PRIZE,{
               "targetAmount":20,
               "title":"Big Winner",
               "description":"Earn 20 Prizes in Foodini\'s Mini-Games",
               "rewardMoney":3000,
               "showTally":true
            }),new Challenge(Challenge.MULTIPRIZE,{
               "targetAmount":7,
               "title":"Skillful Contestant",
               "description":"Earn a Prize in each of Foodini\'s Mini-Games",
               "rewardMoney":2000,
               "showTally":true
            }),new Challenge(Challenge.MULTIPRIZE,{
               "targetAmount":35,
               "title":"Grand Prize Winner",
               "description":"Earn 5 Prizes or more in each of Foodini\'s Mini-Games",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.TAGGED,{
               "targetAmount":20,
               "tagName":"chilifeather",
               "title":"Sharpshooter",
               "description":"Shoot 20 flying Chilifeathers in Hot Shot",
               "rewardMoney":3500,
               "showTally":true
            }),new Challenge(Challenge.TAGGED,{
               "targetAmount":4,
               "tagName":"burgerzilla",
               "title":"Burger Buddy",
               "description":"Beat 4 levels of Burgerzilla without missing any toppings",
               "rewardMoney":4000,
               "showTally":true
            }),new Challenge(Challenge.TAGGED,{
               "targetAmount":9,
               "tagName":"putt",
               "title":"Front Nine",
               "description":"Get Par or better on 9 courses in Freeze-Putt",
               "rewardMoney":4000,
               "showTally":true
            }),new Challenge(Challenge.PURCHASES,{
               "targetAmount":50,
               "upgrades":"any",
               "title":"One-Stop Shopping",
               "description":"Buy any 50 items from the Shop",
               "rewardMoney":5000,
               "tickets":10,
               "showTally":true
            }),new Challenge(Challenge.PURCHASES,{
               "targetAmount":8,
               "upgrades":"poster",
               "title":"Advertiser",
               "description":"Buy any 8 Posters from the Shop",
               "rewardMoney":1500,
               "tickets":3,
               "showTally":true
            }),new Challenge(Challenge.PURCHASES,{
               "targetAmount":8,
               "upgrades":"furni",
               "title":"Interior Decorator",
               "description":"Buy any 8 Furniture items from the Shop",
               "rewardMoney":1500,
               "showTally":true
            }),new Challenge(Challenge.PURCHASES,{
               "targetAmount":8,
               "upgrades":"clothing",
               "title":"Updated Wardrobe",
               "description":"Buy any 8 Clothing items from the Shop",
               "rewardMoney":1500,
               "showTally":true
            }),new Challenge(Challenge.PURCHASES,{
               "targetAmount":4,
               "upgrades":"wallfloor",
               "title":"New Coat of Paint",
               "description":"Buy any 4 Flooring or Wallpaper from the Shop",
               "rewardMoney":1500,
               "showTally":true
            }),new Challenge(Challenge.UPGRADES,{
               "targetAmount":8,
               "upgrades":["alarm1","alarm2","alarm3","alarm4","booster1","booster2","booster3","booster4"],
               "title":"Fryer Upgrades",
               "description":"Buy all of the Fryer Upgrades",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.UPGRADES,{
               "targetAmount":2,
               "upgrades":["napkinholder","napkin"],
               "title":"Clean your Plates",
               "description":"Buy the Napkin Holder and an extra pack of Napkins",
               "rewardMoney":2000,
               "showTally":true
            }),new Challenge(Challenge.TAGGED,{
               "targetAmount":1,
               "tagName":"changeclothes",
               "title":"New Threads",
               "description":"Change your worker\'s shirt, pants, jacket, and shoes.",
               "rewardMoney":2000,
               "showTally":false
            }),new Challenge(Challenge.SEALS,{
               "targetAmount":5,
               "sealType":"bronze",
               "title":"Bronze Beginning",
               "description":"Earn 5 Bronze Customer Awards",
               "rewardMoney":3000,
               "showTally":true
            }),new Challenge(Challenge.SEALS,{
               "targetAmount":15,
               "sealType":"bronze",
               "title":"Repeat Customers",
               "description":"Earn 15 Bronze Customer Awards",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.SEALS,{
               "targetAmount":10,
               "sealType":"silver",
               "title":"Silver Medal",
               "description":"Earn 10 Silver Customer Awards",
               "rewardMoney":7000,
               "showTally":true
            }),new Challenge(Challenge.SEALS,{
               "targetAmount":15,
               "sealType":"gold",
               "title":"Restaurant Regulars",
               "description":"Earn 15 Gold Customer Awards",
               "rewardMoney":10000,
               "showTally":true
            }),new Challenge(Challenge.SEALS,{
               "targetAmount":35,
               "sealType":"gold",
               "title":"Halfway There",
               "description":"Earn 35 Gold Customer Awards",
               "rewardMoney":25000,
               "showTally":true
            }),new Challenge(Challenge.SEALS,{
               "targetAmount":70,
               "sealType":"gold",
               "title":"Go For the Gold",
               "description":"Earn Gold Customer Awards on all customers!",
               "rewardMoney":50000,
               "tickets":3,
               "showTally":true
            }),new Challenge(Challenge.SCORE,{
               "targetAmount":20,
               "customer":"any",
               "score":100,
               "scoreType":"Waiting",
               "title":"Order Expert",
               "description":"Get a 100% Waiting Score on 20 orders",
               "rewardMoney":7000,
               "showTally":true
            }),new Challenge(Challenge.SCORE,{
               "targetAmount":20,
               "customer":"any",
               "score":100,
               "scoreType":"Grilling",
               "title":"Fry Expert",
               "description":"Get a 100% Frying Score on 20 orders",
               "rewardMoney":7000,
               "showTally":true
            }),new Challenge(Challenge.SCORE,{
               "targetAmount":20,
               "customer":"any",
               "score":100,
               "scoreType":"Saucing",
               "title":"Sauce Expert",
               "description":"Get a 100% Saucing Score on 20 orders",
               "rewardMoney":7000,
               "showTally":true
            }),new Challenge(Challenge.SCORE,{
               "targetAmount":20,
               "customer":"any",
               "score":100,
               "scoreType":"Building",
               "title":"Build Expert",
               "description":"Get a 100% Building Score on 20 orders",
               "rewardMoney":7000,
               "showTally":true
            }),new Challenge(Challenge.SCORE,{
               "targetAmount":30,
               "customer":"any",
               "score":100,
               "scoreType":"Overall",
               "title":"Perfect!",
               "description":"Get a Perfect Score on 30 orders",
               "rewardMoney":10000,
               "tickets":3,
               "showTally":true
            }),new Challenge(Challenge.RIBBON,{
               "targetAmount":1,
               "title":"Critically Acclaimed",
               "description":"Get a Blue Ribbon from Jojo the Food Critic",
               "rewardMoney":4000
            }),new Challenge(Challenge.RIBBON,{
               "targetAmount":5,
               "title":"Award Winning Wings",
               "description":"Get 5 Blue Ribbons from Jojo the Food Critic",
               "rewardMoney":10000,
               "showTally":true
            }),new Challenge(Challenge.SERVICEQUALITY,{
               "targetAmount":5,
               "percentQuality":90,
               "title":"Quality Assurance",
               "description":"Get 90% Service Quality or higher on five different days",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.SERVICEQUALITY,{
               "targetAmount":20,
               "percentQuality":95,
               "title":"High Quality",
               "description":"Get 95% Service Quality or higher on 20 different days",
               "rewardMoney":10000,
               "showTally":true
            }),new Challenge(Challenge.PAYDAY,{
               "targetAmount":1,
               "title":"First Paycheck",
               "description":"Get your first paycheck on Pay Day",
               "rewardMoney":1000
            }),new Challenge(Challenge.PAYDAY,{
               "targetAmount":4,
               "title":"Month\'s Pay",
               "description":"Receive your wages on four Pay Days",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.SERVECUSTOMERS,{
               "targetAmount":4,
               "customers":["Bruna Romano","Gino Romano","Carlo Romano","Little Edoardo"],
               "title":"Romano Family",
               "description":"Serve everyone in the Romano Family Quartet",
               "rewardMoney":15000,
               "showTally":true
            }),new Challenge(Challenge.SERVECUSTOMERS,{
               "targetAmount":7,
               "customers":["Xolo","Boomer","Johnny","Quinn","ProfessorFitz","Ninjoy","Jojo"],
               "title":"Wingeria Closers",
               "description":"Serve all of the Closers",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.SERVECUSTOMERS,{
               "targetAmount":5,
               "customers":["Xolo","Boomer","ProfessorFitz","Skyler","Scooter"],
               "title":"Starlight City Locals",
               "description":"Serve all of the new local customers",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.SERVECUSTOMERS,{
               "targetAmount":9,
               "customers":["Roy","Marty","Rita","Mitch","Maggie","Penny","Alberto","Cooper","Prudence"],
               "title":"Worker Reunion",
               "description":"Serve all of the workers from Papa\'s other restaurants",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.SERVECUSTOMERS,{
               "targetAmount":70,
               "customers":"all",
               "title":"The Gang\'s All Here",
               "description":"Serve all of the customers!",
               "rewardMoney":30000,
               "tickets":5,
               "showTally":true
            }),new Challenge(Challenge.UNLOCKTOPPING,{
               "targetAmount":4,
               "toppings":[FoodData.MEAT_WING,FoodData.MEAT_BONELESS,FoodData.MEAT_SHRIMP,FoodData.MEAT_STRIPS],
               "title":"Meat Master",
               "description":"Unlock all of the Meats",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.UNLOCKTOPPING,{
               "targetAmount":6,
               "toppings":[FoodData.SIDE_CARROT,FoodData.SIDE_CELERY,FoodData.SIDE_CHEESECUBES,FoodData.SIDE_FRY,FoodData.SIDE_GREENPEPPER,FoodData.SIDE_REDPEPPER],
               "title":"Side Sampler",
               "description":"Unlock all of the Sides",
               "rewardMoney":3000,
               "showTally":true
            }),new Challenge(Challenge.UNLOCKTOPPING,{
               "targetAmount":6,
               "toppings":[FoodData.DIP_AWESOMESAUCE,FoodData.DIP_BLUECHEESE,FoodData.DIP_KUNGPAO,FoodData.DIP_MANGOCHILI,FoodData.DIP_RANCH,FoodData.DIP_ZESTYPESTO],
               "title":"Big Dipper",
               "description":"Unlock all of the Dips",
               "rewardMoney":3000,
               "showTally":true
            }),new Challenge(Challenge.UNLOCKTOPPING,{
               "targetAmount":11,
               "toppings":[FoodData.SAUCE_ATOMIC,FoodData.SAUCE_BBQ,FoodData.SAUCE_BUFFALO,FoodData.SAUCE_CALYPSO,FoodData.SAUCE_HONEYMUSTARD,FoodData.SAUCE_MEDIUM,FoodData.SAUCE_PARMESAN,FoodData.SAUCE_SPICYGARLIC,FoodData.SAUCE_TERIYAKI,FoodData.SAUCE_WASABI,FoodData.SAUCE_WILDONION],
               "title":"Stocking the Sauces",
               "description":"Unlock all of the Sauces",
               "rewardMoney":5000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":5,
               "topping":FoodData.MEAT_WING,
               "title":"Wing Warmup",
               "description":"Serve 5 orders with Wings",
               "rewardMoney":1000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.MEAT_WING,
               "title":"Wing Slinger",
               "description":"Serve 30 orders with Wings",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":20,
               "topping":FoodData.MEAT_BONELESS,
               "title":"Go Boneless",
               "description":"Serve 20 orders with Boneless Wings",
               "rewardMoney":2000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":50,
               "topping":FoodData.MEAT_BONELESS,
               "title":"No Bones About It",
               "description":"Serve 50 orders with Boneless Wings",
               "rewardMoney":4000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":20,
               "topping":FoodData.MEAT_STRIPS,
               "title":"Serving Strips",
               "description":"Serve 20 orders with Chicken Strips",
               "rewardMoney":2000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":50,
               "topping":FoodData.MEAT_STRIPS,
               "title":"Premium Chicken",
               "description":"Serve 50 orders with Chicken Strips",
               "rewardMoney":4000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":20,
               "topping":FoodData.MEAT_SHRIMP,
               "title":"Seafood Server",
               "description":"Serve 20 orders with Shrimp",
               "rewardMoney":2000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":50,
               "topping":FoodData.MEAT_SHRIMP,
               "title":"Saucy Shrimp",
               "description":"Serve 50 orders with Shrimp",
               "rewardMoney":4000,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SIDE_CELERY,
               "title":"Crunchy",
               "description":"Serve 30 orders with Celery",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SIDE_CARROT,
               "title":"Beta Carotene",
               "description":"Serve 30 orders with Carrots",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SIDE_REDPEPPER,
               "title":"Peppery",
               "description":"Serve 30 orders with Red Peppers",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SIDE_GREENPEPPER,
               "title":"Green Garnish",
               "description":"Serve 30 orders with Green Peppers",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SIDE_FRY,
               "title":"Crinkle Cut",
               "description":"Serve 30 orders with Fries",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SIDE_CHEESECUBES,
               "title":"Skewered Sides",
               "description":"Serve 30 orders with Cheese Cubes",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.DIP_RANCH,
               "title":"Classic Dip",
               "description":"Serve 30 orders with Ranch Dip",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.DIP_BLUECHEESE,
               "title":"Dip with a Kick",
               "description":"Serve 30 orders with Blue Cheese Dip",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.DIP_MANGOCHILI,
               "title":"Hot and Tangy",
               "description":"Serve 30 orders with Mango Chili Dip",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.DIP_AWESOMESAUCE,
               "title":"Awesomesauce!",
               "description":"Serve 30 orders with Awesome Sauce Dip",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.DIP_KUNGPAO,
               "title":"Kung POW!",
               "description":"Serve 30 orders with Kung Pao Dip",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.DIP_ZESTYPESTO,
               "title":"Zesty",
               "description":"Serve 30 orders with Zesty Pesto Dip",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_BBQ,
               "title":"Classic \'Que",
               "description":"Serve 30 orders with BBQ Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_BUFFALO,
               "title":"Getting Hot",
               "description":"Serve 30 orders with Buffalo Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_SPICYGARLIC,
               "title":"Garlicious",
               "description":"Serve 30 orders with Spicy Garlic Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_CALYPSO,
               "title":"Island Flavor",
               "description":"Serve 30 orders with Calypso Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_ATOMIC,
               "title":"Bombs Away",
               "description":"Serve 30 orders with Atomic Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_HONEYMUSTARD,
               "title":"Bee\'s Knees",
               "description":"Serve 30 orders with Honey Mustard Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_TERIYAKI,
               "title":"Sweet Soy",
               "description":"Serve 30 orders with Teriyaki Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_MEDIUM,
               "title":"Just Right",
               "description":"Serve 30 orders with Medium Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_PARMESAN,
               "title":"Creamy Parmesan",
               "description":"Serve 30 orders with Parmesan Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_WILDONION,
               "title":"Wild Side",
               "description":"Serve 30 orders with Wild Onion Sauce",
               "rewardMoney":2500,
               "showTally":true
            }),new Challenge(Challenge.USETOPPING,{
               "targetAmount":30,
               "topping":FoodData.SAUCE_WASABI,
               "title":"Strong Flavor",
               "description":"Serve 30 orders with Wasabi Sauce",
               "rewardMoney":2500,
               "showTally":true
            })];
            if(!_loc3_)
            {
               this.badgeQueue = [];
               if(_loc3_ && Boolean(this))
               {
               }
               §§goto(addr1522);
            }
         }
         super();
         if(_loc2_)
         {
            §§goto(addr1522);
         }
         addr1522:
         this.gameObj = param1;
      }
      
      public function destroy() : void
      {
      }
      
      public function getChallengeTitle(param1:Number = -1) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = "";
         if(_loc6_ || Boolean(_loc2_))
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§goto(addr73);
            }
            if(§§pop() < _loc2_.badges.length)
            {
            }
            §§goto(addr73);
         }
         _loc5_ = _loc2_.badges[param1];
         §§push(_loc5_.title);
         if(_loc6_ || Boolean(_loc3_))
         {
            §§push(§§pop());
         }
         _loc3_ = §§pop();
         addr73:
         if(§§pop() > -1)
         {
            if(!_loc7_)
            {
               §§push(param1);
            }
         }
         return _loc3_;
      }
      
      public function getChallengeDescription(param1:Number = -1) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = "";
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc7_ && Boolean(param1)))
            {
               §§goto(addr78);
            }
            if(§§pop() < _loc2_.badges.length)
            {
            }
            §§goto(addr78);
         }
         _loc5_ = _loc2_.badges[param1];
         §§push(_loc5_.description);
         if(_loc6_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         _loc3_ = §§pop();
         addr78:
         if(§§pop() > -1)
         {
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(param1);
            }
         }
         return _loc3_;
      }
      
      public function getChallengeRewardAmount(param1:Number = -1) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = 0;
         if(_loc7_ || Boolean(this))
         {
            §§push(param1);
            if(_loc7_ || Boolean(param1))
            {
               if(§§pop() > -1)
               {
                  if(_loc7_)
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        if(§§pop() < _loc2_.badges.length)
                        {
                        }
                     }
                  }
               }
               addr82:
               §§push(_loc3_);
            }
            return §§pop();
         }
         _loc5_ = _loc2_.badges[param1];
         §§push(_loc5_.rewardMoney);
         if(_loc7_ || Boolean(_loc3_))
         {
            §§push(§§pop());
         }
         _loc3_ = §§pop();
         §§goto(addr82);
      }
      
      public function getChallengeTicketAmount(param1:Number = -1) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = 0;
         if(_loc7_ || Boolean(this))
         {
            §§push(param1);
            if(_loc7_ || Boolean(_loc2_))
            {
               if(§§pop() > -1)
               {
                  if(_loc6_)
                  {
                  }
                  addr63:
                  _loc5_ = _loc2_.badges[param1];
                  §§push(_loc5_.tickets);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
               }
               addr83:
               return _loc3_;
               addr82:
            }
            addr59:
            if(§§pop() < _loc2_.badges.length)
            {
               §§goto(addr63);
            }
            §§goto(addr82);
         }
         §§push(param1);
         if(!(_loc6_ && Boolean(this)))
         {
            §§goto(addr59);
         }
         §§goto(addr83);
      }
      
      public function getBadgeTallyString(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = "";
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            if(param1 < _loc2_.badges.length)
            {
            }
            §§goto(addr109);
         }
         _loc4_ = _loc2_.badges[param1];
         if(_loc4_.showTally)
         {
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               if(_loc4_.tally < _loc4_.targetAmount)
               {
                  if(_loc5_ && Boolean(param1))
                  {
                  }
               }
            }
            §§push("(" + _loc4_.tally);
            if(_loc6_ || Boolean(this))
            {
               §§push(§§pop() + "/");
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(§§pop() + _loc4_.targetAmount);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§push(§§pop() + ")");
                  }
               }
            }
            _loc3_ = §§pop();
         }
         addr109:
         return _loc3_;
      }
      
      public function getChallengeMochiEarned(param1:Number = -1) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = false;
         if(_loc7_)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§goto(addr64);
            }
            if(§§pop() < _loc2_.badges.length)
            {
            }
            §§goto(addr64);
         }
         _loc5_ = _loc2_.badges[param1];
         §§push(_loc5_.hasEarnedMochiAchievement);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         _loc3_ = §§pop();
         addr64:
         if(§§pop() > -1)
         {
            if(!_loc6_)
            {
               §§push(param1);
            }
         }
         return _loc3_;
      }
      
      public function setChallengeMochiEarned(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.badges.length)
         {
            _loc4_ = _loc2_.badges[_loc3_];
            if(_loc4_.mochiAchievementID == param1)
            {
               if(_loc6_ || Boolean(this))
               {
                  _loc4_.hasEarnedMochiAchievement = true;
                  if(!(_loc6_ || Boolean(_loc3_)))
                  {
                     continue;
                  }
               }
            }
            _loc3_++;
         }
      }
      
      public function getChallengeIsMochi(param1:Number = -1) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:Boolean = false;
         if(_loc6_ || Boolean(_loc2_))
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() > -1)
               {
                  if(_loc7_ && _loc3_)
                  {
                  }
                  addr47:
                  _loc5_ = _loc2_.badges[param1];
                  §§push(_loc5_.mochiAchievementID);
                  if(_loc6_)
                  {
                     §§push(§§pop() == null);
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        §§push(!§§pop());
                        if(_loc7_ && _loc3_)
                        {
                        }
                        addr102:
                        if(§§pop())
                        {
                           if(_loc6_ || _loc3_)
                           {
                              addr118:
                              _loc3_ = true;
                              addr117:
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§pop();
                           if(_loc6_ || Boolean(this))
                           {
                              §§push(_loc5_.mochiAchievementID);
                           }
                           §§goto(addr117);
                        }
                        addr99:
                        §§push(!§§pop());
                        if(_loc6_)
                        {
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr102);
                  }
                  §§push(§§pop() == "");
                  if(!_loc7_)
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr118);
               }
               §§goto(addr119);
            }
            §§goto(addr43);
         }
         addr43:
         if(§§pop() < _loc2_.badges.length)
         {
            §§goto(addr47);
         }
         addr119:
         param1;
         return _loc3_;
      }
      
      public function getChallengeMochiID(param1:Number = -1) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = "";
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§goto(addr113);
            }
            if(§§pop() < _loc2_.badges.length)
            {
            }
            §§goto(addr113);
         }
         _loc5_ = _loc2_.badges[param1];
         §§push(_loc5_.mochiAchievementID);
         if(_loc6_ || Boolean(this))
         {
            §§push(§§pop() == null);
            if(_loc6_)
            {
               §§push(!§§pop());
               if(_loc7_)
               {
               }
               addr75:
               §§pop();
               if(!_loc7_)
               {
                  §§push(_loc5_.mochiAchievementID);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§goto(addr97);
                  }
               }
               §§push(_loc5_.mochiAchievementID);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
            }
            if(§§pop())
            {
               if(!_loc7_)
               {
                  §§goto(addr75);
               }
            }
            addr97:
            §§push(§§pop() == "");
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc7_)
               {
               }
            }
            §§goto(addr113);
         }
         _loc3_ = §§pop();
         addr113:
         if(§§pop() > -1)
         {
            if(!_loc7_)
            {
               §§push(param1);
            }
         }
         return _loc3_;
      }
      
      public function getChallengeMochiPointsAmount(param1:Number = -1) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = 0;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc7_)
            {
               if(§§pop() > -1)
               {
                  if(_loc7_ || Boolean(this))
                  {
                     §§push(param1);
                     if(_loc7_ || Boolean(param1))
                     {
                        if(§§pop() < _loc2_.badges.length)
                        {
                        }
                     }
                  }
               }
               addr130:
               §§push(_loc3_);
            }
            return §§pop();
         }
         _loc5_ = _loc2_.badges[param1];
         §§push(_loc5_.mochiAchievementID);
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            §§push(§§pop() == null);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(_loc7_ || Boolean(_loc2_))
               {
               }
               addr109:
               if(!§§pop())
               {
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     addr124:
                     §§push(_loc5_.mochiAchievementPoints);
                     if(_loc7_)
                     {
                        §§push(§§pop());
                     }
                     _loc3_ = §§pop();
                  }
               }
               §§goto(addr130);
            }
            if(§§pop())
            {
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  §§pop();
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     §§push(_loc5_.mochiAchievementID);
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr109);
         }
         §§push(§§pop() == "");
         if(_loc6_)
         {
         }
         §§goto(addr109);
      }
      
      public function getBadgeTally(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:* = 0;
         if(_loc6_ || Boolean(this))
         {
            §§push(param1);
            if(_loc6_ || Boolean(this))
            {
               if(§§pop() < _loc2_.badges.length)
               {
               }
               addr73:
               §§push(_loc3_);
            }
            return §§pop();
         }
         _loc4_ = _loc2_.badges[param1];
         §§push(_loc4_.tally);
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         _loc3_ = §§pop();
         §§goto(addr73);
      }
      
      public function getNumberOfBadges() : Number
      {
         var _loc1_:ChallengeManager = this;
         return _loc1_.badges.length;
      }
      
      public function recordRank(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            _loc5_ = _loc2_.badges[_loc4_];
            if(_loc5_.challengeType == Challenge.RANK)
            {
               §§push(_loc5_.targetAmount <= param1);
               if(_loc6_ || Boolean(_loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                     }
                  }
                  addr78:
                  if(§§pop())
                  {
                     _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                     _loc3_.saveAfterBadge();
                     if(_loc7_)
                     {
                        continue;
                     }
                     _loc2_.showEarningBadge(_loc4_);
                     if(!(_loc6_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                  }
               }
               §§pop();
               §§push(_loc3_.hasBadge(_loc4_));
               if(_loc6_ || Boolean(this))
               {
                  §§push(!§§pop());
               }
               §§goto(addr78);
            }
            _loc4_++;
         }
      }
      
      public function recordUnlockTopping() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc5_:Challenge = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc4_:int = 0;
         loop0:
         for(; _loc4_ < _loc1_.badges.length; _loc4_++)
         {
            _loc5_ = _loc1_.badges[_loc4_];
            if(_loc5_.challengeType != Challenge.UNLOCKTOPPING)
            {
               continue;
            }
            §§push(0);
            if(_loc8_ || Boolean(_loc1_))
            {
               §§push(§§pop());
               if(_loc8_)
               {
                  _loc6_ = §§pop();
                  §§push(0);
                  if(_loc8_)
                  {
                     _loc7_ = §§pop();
                     if(_loc5_.toppings == "all")
                     {
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§push(_loc2_.toppingIndexes.length);
                           if(!_loc9_)
                           {
                              _loc6_ = §§pop();
                              §§push(0);
                              if(!(_loc8_ || Boolean(_loc1_)))
                              {
                                 addr143:
                                 §§push(§§pop());
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                    }
                                    addr187:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= _loc5_.toppings.length)
                                    {
                                       if(_loc9_ && Boolean(_loc3_))
                                       {
                                       }
                                       addr249:
                                       _loc1_.showEarningBadge(_loc4_);
                                       continue loop0;
                                    }
                                    §§push(_loc2_.hasTopping(_loc5_.toppings[_loc3_]));
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       §§push(_loc7_);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!(_loc8_ || Boolean(_loc2_)))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop());
                                       }
                                       _loc7_ = §§pop();
                                    }
                                    §§push(_loc3_);
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§push(§§pop());
                                 }
                              }
                              addr212:
                              if(§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    §§push(_loc2_.hasBadge(_loc4_));
                                    if(_loc8_)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 continue;
                              }
                              _loc2_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                              if(_loc9_ && Boolean(_loc2_))
                              {
                                 continue;
                              }
                              _loc2_.saveAfterBadge();
                              §§goto(addr249);
                           }
                           addr91:
                           _loc3_ = §§pop();
                           while(true)
                           {
                              if(_loc3_ < _loc2_.toppingIndexes.length)
                              {
                                 §§push(_loc2_.hasTopping(_loc2_.toppingIndexes[_loc3_]));
                                 if(_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc7_++;
                                       if(_loc9_)
                                       {
                                          addr202:
                                          §§push(_loc7_);
                                       }
                                    }
                                    §§push(_loc3_);
                                 }
                                 break;
                              }
                              addr203:
                              if(_loc8_ || Boolean(this))
                              {
                              }
                              §§goto(addr249);
                              §§push(§§pop() >= _loc6_);
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 §§goto(addr212);
                              }
                              break;
                              _loc3_ = §§pop();
                           }
                           §§goto(addr212);
                           addr115:
                        }
                        _loc5_.setTally(_loc7_);
                        §§goto(addr202);
                     }
                     else
                     {
                        §§push(Number(_loc5_.toppings.length));
                        if(_loc8_)
                        {
                           _loc6_ = §§pop();
                           §§goto(addr143);
                           §§push(0);
                        }
                     }
                     while(true)
                     {
                        _loc3_ = §§pop();
                        §§goto(addr187);
                     }
                  }
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(_loc8_)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr115);
                  }
                  break;
               }
               §§goto(addr203);
            }
            §§push(§§pop());
            if(!_loc9_)
            {
               §§goto(addr91);
            }
            §§goto(addr203);
         }
      }
      
      public function recordPlayingMinigame() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Challenge = null;
         var _loc7_:* = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               if(§§pop() < _loc2_.minigamesPlayed.length)
               {
                  if(_loc2_.minigamesPlayed[_loc4_] > 0)
                  {
                     if(_loc8_)
                     {
                        §§push(_loc3_);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc8_ || Boolean(_loc1_))
                           {
                           }
                           addr53:
                           _loc3_ = §§pop();
                           if(_loc9_ && Boolean(_loc3_))
                           {
                           }
                        }
                        §§goto(addr53);
                        §§push(§§pop());
                     }
                  }
                  _loc4_++;
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               §§push(0);
            }
            break;
         }
         var _loc5_:* = §§pop();
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            while(_loc5_ < _loc1_.badges.length)
            {
               _loc6_ = _loc1_.badges[_loc5_];
               if(_loc6_.challengeType == Challenge.MINIGAME)
               {
                  if(_loc9_ && Boolean(_loc1_))
                  {
                     continue;
                  }
                  §§push(_loc6_.setTally(_loc3_));
                  if(!(_loc9_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop());
                     §§push(§§pop());
                     if(_loc8_ || Boolean(this))
                     {
                        _loc7_ = §§pop();
                        if(_loc8_)
                        {
                        }
                        addr136:
                        §§pop();
                        if(!_loc9_)
                        {
                           addr143:
                           if(!_loc2_.hasBadge(_loc5_))
                           {
                              if(_loc8_)
                              {
                                 _loc2_.earnBadge(_loc5_,_loc6_.title,_loc6_.rewardMoney,_loc6_.tickets);
                              }
                           }
                        }
                        _loc2_.saveAfterBadge();
                        if(!_loc9_)
                        {
                           _loc1_.showEarningBadge(_loc5_);
                        }
                     }
                     addr133:
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr143);
                  }
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     §§goto(addr133);
                     §§push(§§pop());
                  }
                  §§goto(addr143);
               }
               _loc5_++;
            }
         }
      }
      
      public function recordEarningPrize() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:Challenge = null;
         var _loc5_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            _loc4_ = _loc1_.badges[_loc3_];
            §§push(_loc4_.challengeType);
            if(_loc11_)
            {
               §§push(Challenge.PRIZE);
               if(!_loc10_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(_loc4_.addToTally());
                     §§push(_loc4_.addToTally());
                     if(!_loc10_)
                     {
                        _loc5_ = §§pop();
                        §§push(§§pop());
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc11_ || Boolean(_loc1_))
                           {
                           }
                           addr204:
                           _loc9_ = §§pop();
                        }
                        addr207:
                        §§push(§§pop());
                        if(§§pop())
                        {
                           §§pop();
                           if(!(_loc11_ || Boolean(_loc3_)))
                           {
                              continue;
                           }
                           addr216:
                           §§push(_loc2_.hasBadge(_loc3_));
                           if(_loc11_ || Boolean(_loc3_))
                           {
                              §§push(!§§pop());
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc10_ && Boolean(this)))
                           {
                              _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                              _loc2_.saveAfterBadge();
                           }
                           addr246:
                           _loc1_.showEarningBadge(_loc3_);
                           if(_loc10_ && Boolean(this))
                           {
                              continue;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           §§push(!_loc2_.hasBadge(_loc3_));
                        }
                        loop1:
                        while(true)
                        {
                           _loc8_++;
                           if(!_loc10_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc8_);
                                 addr181:
                                 while(true)
                                 {
                                    if(§§pop() >= _loc2_.minigamePrizes.length)
                                    {
                                       if(!(_loc10_ && Boolean(this)))
                                       {
                                          break loop2;
                                       }
                                       break loop1;
                                    }
                                    §§push(_loc7_);
                                    if(_loc11_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + Math.min(_loc6_,_loc2_.minigamePrizes[_loc8_]));
                                       }
                                       addr165:
                                    }
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc11_)
                                       {
                                          break loop2;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§push(_loc4_.setTally(_loc7_));
                              §§push(_loc4_.setTally(_loc7_));
                              if(!(_loc10_ && Boolean(this)))
                              {
                                 §§goto(addr204);
                              }
                              §§goto(addr207);
                              addr180:
                           }
                           break;
                        }
                        addr177:
                     }
                     if(§§pop())
                     {
                        _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                        if(!_loc10_)
                        {
                           _loc2_.saveAfterBadge();
                           if(_loc11_)
                           {
                              _loc1_.showEarningBadge(_loc3_);
                           }
                           else
                           {
                              addr112:
                              §§push(Math.round(_loc4_.targetAmount / _loc2_.numberOfMinigames));
                              if(_loc11_)
                              {
                                 _loc6_ = §§pop();
                                 §§push(0);
                                 if(_loc11_ || Boolean(this))
                                 {
                                    §§push(§§pop());
                                    if(_loc11_)
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc10_ && Boolean(this))
                                       {
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 addr152:
                                 _loc8_ = §§pop();
                                 if(_loc11_ || Boolean(this))
                                 {
                                    §§goto(addr180);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr165);
                           }
                        }
                        §§push(0);
                        if(!_loc10_)
                        {
                           §§goto(addr152);
                        }
                        §§goto(addr181);
                     }
                  }
                  else
                  {
                     §§push(_loc4_.challengeType);
                  }
                  addr263:
                  _loc3_++;
                  continue;
               }
               addr104:
               if(§§pop() == §§pop())
               {
                  if(!(_loc10_ && Boolean(this)))
                  {
                     §§goto(addr112);
                  }
                  §§goto(addr246);
               }
               §§goto(addr263);
            }
            §§goto(addr104);
            §§push(Challenge.MULTIPRIZE);
         }
      }
      
      public function recordUpgrade(param1:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Challenge = null;
         var _loc6_:* = false;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            _loc5_ = _loc2_.badges[_loc4_];
            if(_loc5_.challengeType == Challenge.UPGRADES)
            {
               §§push(_loc5_.upgrades == "any");
               §§push(_loc5_.upgrades == "any");
               if(_loc8_ || Boolean(param1))
               {
                  if(!§§pop())
                  {
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§pop();
                        §§push(_loc5_.upgrades.indexOf(param1) > -1);
                        if(_loc7_ && Boolean(_loc2_))
                        {
                        }
                        addr102:
                        addr100:
                        §§push(§§pop());
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              §§pop();
                              addr118:
                              if(_loc8_ || Boolean(_loc3_))
                              {
                                 addr116:
                                 §§push(!_loc3_.hasBadge(_loc4_));
                              }
                              _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                              _loc3_.saveAfterBadge();
                              _loc2_.showEarningBadge(_loc4_);
                           }
                        }
                        if(§§pop())
                        {
                           §§goto(addr118);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        continue;
                     }
                     §§push(_loc5_.addToTally());
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop());
                        §§push(§§pop());
                        if(_loc7_)
                        {
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr116);
                  }
               }
               _loc6_ = §§pop();
               §§goto(addr100);
            }
            _loc4_++;
         }
      }
      
      public function recordTagged(param1:String, param2:Number = 1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Challenge = null;
         var _loc7_:* = false;
         var _loc3_:ChallengeManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.badges.length)
         {
            _loc6_ = _loc3_.badges[_loc5_];
            §§push(_loc6_.challengeType);
            if(!_loc9_)
            {
               §§push(Challenge.TAGGED);
               if(_loc8_ || Boolean(param2))
               {
                  addr131:
                  if(§§pop() == §§pop())
                  {
                     §§push(_loc6_.tagName);
                  }
                  _loc5_++;
                  continue;
               }
               addr53:
               if(§§pop() == §§pop())
               {
                  §§push(_loc6_.addToTally(param2));
                  if(_loc8_ || Boolean(param1))
                  {
                     §§push(§§pop());
                     §§push(§§pop());
                     if(!_loc9_)
                     {
                        _loc7_ = §§pop();
                        if(_loc8_ || Boolean(param2))
                        {
                        }
                        addr102:
                        if(§§pop())
                        {
                           _loc4_.earnBadge(_loc5_,_loc6_.title,_loc6_.rewardMoney,_loc6_.tickets);
                           if(_loc9_ && Boolean(param2))
                           {
                              continue;
                           }
                           _loc4_.saveAfterBadge();
                           addr128:
                           _loc3_.showEarningBadge(_loc5_);
                        }
                     }
                     addr87:
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           addr90:
                           §§pop();
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              §§push(!_loc4_.hasBadge(_loc5_));
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     §§goto(addr87);
                     §§push(§§pop());
                  }
                  §§goto(addr90);
               }
               §§goto(addr131);
            }
            §§goto(addr53);
            §§push(param1);
         }
      }
      
      public function recordPurchase(param1:String = "furniture") : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Challenge = null;
         var _loc6_:* = false;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            _loc5_ = _loc2_.badges[_loc4_];
            if(_loc5_.challengeType == Challenge.PURCHASES)
            {
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§push(_loc5_.upgrades == "any");
                  if(_loc8_ || Boolean(this))
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && Boolean(this)))
                     {
                        addr88:
                        if(!§§pop())
                        {
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              §§pop();
                           }
                           addr105:
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           §§push(_loc5_.addToTally());
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                 }
                                 addr127:
                                 if(§§pop())
                                 {
                                    addr128:
                                    _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                                    _loc3_.saveAfterBadge();
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       _loc2_.showEarningBadge(_loc4_);
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr105);
                        }
                     }
                     addr107:
                     if(§§pop())
                     {
                        §§pop();
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§push(_loc3_.hasBadge(_loc4_));
                           if(_loc8_ || Boolean(param1))
                           {
                              §§push(!§§pop());
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr107);
                  §§push(§§pop());
               }
               §§goto(addr88);
               §§push(_loc5_.upgrades == param1);
            }
            _loc4_++;
         }
      }
      
      public function recordFurniture(param1:String, param2:String = "furniture", param3:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:Challenge = null;
         var _loc8_:* = false;
         var _loc4_:ChallengeManager = this;
         var _loc5_:UserData = _loc4_.gameObj.userData;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.badges.length)
         {
            _loc7_ = _loc4_.badges[_loc6_];
            §§push(_loc7_.challengeType);
            if(_loc10_)
            {
               §§push(Challenge.FURNITURE);
               if(_loc10_)
               {
                  §§push(§§pop() == §§pop());
                  if(§§pop() == §§pop())
                  {
                     addr166:
                     if(_loc10_)
                     {
                        §§pop();
                        addr97:
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           §§push(param3 == false);
                        }
                        §§push(_loc7_.challengeType);
                     }
                     §§push(§§pop());
                     if(_loc10_ || Boolean(this))
                     {
                        addr174:
                        _loc8_ = §§pop();
                        addr196:
                        addr197:
                        §§push(§§pop());
                        if(_loc10_ || param3)
                        {
                           §§push(§§pop());
                        }
                        if(!§§pop())
                        {
                           if(!_loc9_)
                           {
                              _loc5_.earnBadge(_loc6_,_loc7_.title,_loc7_.rewardMoney,_loc7_.tickets);
                              if(!(_loc10_ || Boolean(param1)))
                              {
                                 continue;
                              }
                              _loc5_.saveAfterBadge();
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 addr225:
                                 _loc4_.showEarningBadge(_loc6_);
                                 if(_loc9_ && param3)
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        _loc6_++;
                        continue;
                     }
                     if(§§pop())
                     {
                        addr185:
                        §§pop();
                        §§push(_loc5_.hasBadge(_loc6_));
                        if(_loc10_ || Boolean(param1))
                        {
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr197);
                  }
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(_loc7_.challengeType);
                     if(!_loc9_)
                     {
                        §§push(Challenge.REWARDFURNI);
                        if(_loc9_ && Boolean(this))
                        {
                        }
                        addr101:
                        §§push(§§pop() == §§pop());
                        if(!(_loc9_ && Boolean(this)))
                        {
                           addr109:
                           §§push(§§pop());
                           if(!_loc9_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(param3 == true);
                                    if(_loc9_)
                                    {
                                    }
                                    §§goto(addr166);
                                 }
                                 addr161:
                                 §§push(_loc7_.addToTally());
                                 if(_loc10_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§goto(addr166);
                              }
                           }
                        }
                        §§goto(addr174);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        addr151:
                        if(_loc7_.upgrades == "any" || _loc7_.upgrades == param2)
                        {
                           if(_loc10_)
                           {
                              §§goto(addr161);
                           }
                           §§goto(addr225);
                        }
                     }
                     §§push(_loc7_.upgrades.indexOf(param1) > -1);
                     if(_loc9_)
                     {
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr174);
               }
               §§push(§§pop() == §§pop());
               if(_loc10_ || Boolean(param1))
               {
                  §§push(§§pop());
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(_loc10_)
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr174);
               }
               §§goto(addr185);
            }
            §§goto(addr101);
            §§push(Challenge.REWARDANY);
         }
      }
      
      public function recordClothing(param1:String, param2:String = "furniture", param3:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:Challenge = null;
         var _loc8_:* = false;
         var _loc4_:ChallengeManager = this;
         var _loc5_:UserData = _loc4_.gameObj.userData;
         var _loc6_:int = 0;
         for(; _loc6_ < _loc4_.badges.length; _loc6_++)
         {
            _loc7_ = _loc4_.badges[_loc6_];
            §§push(_loc7_.challengeType);
            if(_loc9_)
            {
               §§push(Challenge.CLOTHING);
               if(!(_loc10_ && Boolean(param1)))
               {
                  §§push(§§pop() == §§pop());
                  if(§§pop() == §§pop())
                  {
                     if(_loc9_ || Boolean(this))
                     {
                        §§pop();
                        addr75:
                        if(_loc9_ || Boolean(this))
                        {
                           §§push(param3 == false);
                        }
                        §§push(_loc7_.challengeType);
                        if(!(_loc10_ && param3))
                        {
                           §§push(Challenge.REWARDCLOTHING);
                           if(_loc10_)
                           {
                           }
                           addr97:
                           addr96:
                           §§push(§§pop() == §§pop());
                           §§push(§§pop() == §§pop());
                           if(!_loc10_)
                           {
                              if(!§§pop())
                              {
                              }
                              addr128:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 §§push(_loc7_.upgrades == "any");
                                 if(!_loc10_)
                                 {
                                    addr155:
                                    if(!(§§pop() || _loc7_.upgrades.indexOf(param1) > -1))
                                    {
                                       continue;
                                    }
                                    §§push(_loc7_.addToTally());
                                    if(_loc9_ || Boolean(this))
                                    {
                                       §§push(§§pop());
                                       §§push(§§pop());
                                       if(!_loc10_)
                                       {
                                          _loc8_ = §§pop();
                                          addr170:
                                          §§push(§§pop());
                                       }
                                    }
                                 }
                                 §§push(§§pop());
                              }
                              §§push(_loc7_.upgrades == param2);
                              if(_loc9_)
                              {
                                 §§goto(addr155);
                              }
                              §§goto(addr170);
                           }
                           addr172:
                           if(§§pop())
                           {
                              if(_loc9_ || param3)
                              {
                                 §§pop();
                                 if(!(_loc9_ || Boolean(param2)))
                                 {
                                    continue;
                                 }
                                 §§push(_loc5_.hasBadge(_loc6_));
                              }
                              addr191:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              _loc5_.earnBadge(_loc6_,_loc7_.title,_loc7_.rewardMoney,_loc7_.tickets);
                              _loc5_.saveAfterBadge();
                              addr211:
                              _loc4_.showEarningBadge(_loc6_);
                           }
                           continue;
                        }
                     }
                     §§pop();
                     if(_loc9_)
                     {
                        §§push(param3);
                        if(_loc9_ || Boolean(this))
                        {
                           §§push(true);
                           if(!(_loc10_ && Boolean(param1)))
                           {
                              §§goto(addr128);
                              §§push(§§pop() == §§pop());
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr211);
                  }
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        §§goto(addr75);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr128);
               }
               §§goto(addr97);
               §§push(§§pop() == §§pop() || _loc7_.challengeType);
            }
            §§goto(addr96);
            §§push(Challenge.REWARDANY);
         }
      }
      
      public function recordCustomerSeal(param1:Number = 0, param2:String = "") : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:Challenge = null;
         var _loc8_:* = false;
         var _loc3_:ChallengeManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:* = "";
         if(!_loc9_)
         {
            §§push(param1);
            if(_loc10_ || Boolean(this))
            {
               §§push(1);
               if(_loc10_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc9_)
                     {
                        _loc5_ = "bronze";
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc9_)
                     {
                        §§push(2);
                        if(_loc10_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 _loc5_ = "silver";
                              }
                           }
                           else
                           {
                              §§push(param1);
                           }
                        }
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr67);
            }
            addr67:
            if(§§pop() == §§pop())
            {
               if(_loc9_)
               {
               }
            }
            else
            {
               §§push(param2);
               if(_loc10_ || Boolean(param2))
               {
                  §§push(§§pop());
               }
               _loc5_ = §§pop();
            }
            addr83:
            var _loc6_:int = 0;
            for(; _loc6_ < _loc3_.badges.length; _loc6_++)
            {
               _loc7_ = _loc3_.badges[_loc6_];
               §§push(_loc7_.challengeType);
               if(!_loc9_)
               {
                  §§push(§§pop() == Challenge.SEALS);
                  §§push(§§pop() == Challenge.SEALS);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        addr156:
                        if(_loc10_ || Boolean(param2))
                        {
                           §§push(_loc7_.sealType);
                        }
                        _loc4_.earnBadge(_loc6_,_loc7_.title,_loc7_.rewardMoney,_loc7_.tickets);
                        _loc4_.saveAfterBadge();
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           _loc3_.showEarningBadge(_loc6_);
                        }
                        continue;
                     }
                     addr125:
                     if(!§§pop())
                     {
                        continue;
                     }
                     §§push(_loc7_.addToTally());
                     §§push(_loc7_.addToTally());
                     if(_loc10_)
                     {
                     }
                     addr142:
                     if(§§pop())
                     {
                        §§pop();
                        if(_loc10_ || Boolean(param2))
                        {
                           §§push(!_loc4_.hasBadge(_loc6_));
                        }
                        §§goto(addr156);
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     §§goto(addr156);
                  }
                  _loc8_ = §§pop();
                  if(!(_loc9_ && Boolean(this)))
                  {
                     addr140:
                     §§goto(addr142);
                     §§push(§§pop());
                     §§push(§§pop());
                  }
                  §§goto(addr142);
               }
               §§push(§§pop() == _loc5_);
               if(_loc10_)
               {
                  §§goto(addr125);
               }
               §§goto(addr140);
            }
            return;
            §§push(3);
         }
         _loc5_ = "gold";
         §§goto(addr83);
      }
      
      public function recordRibbon() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Challenge = null;
         var _loc5_:* = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            _loc4_ = _loc1_.badges[_loc3_];
            if(_loc4_.challengeType == Challenge.RIBBON)
            {
               §§push(_loc4_.addToTally());
               if(_loc7_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
               }
               §§push(§§pop());
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  _loc5_ = §§pop();
                  §§push(§§pop());
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  §§pop();
                  addr79:
                  if(!_loc6_)
                  {
                     §§push(!_loc2_.hasBadge(_loc3_));
                  }
                  _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                  _loc2_.saveAfterBadge();
                  _loc1_.showEarningBadge(_loc3_);
                  if(_loc6_ && Boolean(_loc1_))
                  {
                     continue;
                  }
               }
               if(§§pop())
               {
                  §§goto(addr79);
               }
            }
            _loc3_++;
         }
      }
      
      public function recordPayDay() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Challenge = null;
         var _loc5_:* = false;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            _loc4_ = _loc1_.badges[_loc3_];
            if(_loc4_.challengeType == Challenge.PAYDAY)
            {
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(_loc4_.addToTally());
                  §§push(_loc4_.addToTally());
                  if(!(_loc7_ && Boolean(_loc1_)))
                  {
                     _loc5_ = §§pop();
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(§§pop());
                        if(_loc6_ || Boolean(this))
                        {
                        }
                        addr95:
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              _loc2_.earnBadge(_loc3_,_loc4_.title,_loc4_.rewardMoney,_loc4_.tickets);
                              _loc2_.saveAfterBadge();
                           }
                        }
                     }
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        §§pop();
                        §§goto(addr95);
                        §§push(_loc2_.hasBadge(_loc3_));
                     }
                  }
                  §§goto(addr95);
               }
               _loc1_.showEarningBadge(_loc3_);
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc3_++;
         }
      }
      
      public function recordMeterAward(param1:String, param2:String) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Challenge = null;
         var _loc7_:* = false;
         var _loc3_:ChallengeManager = this;
         var _loc4_:UserData = _loc3_.gameObj.userData;
         var _loc5_:int = 0;
         for(; _loc5_ < _loc3_.badges.length; _loc5_++)
         {
            _loc6_ = _loc3_.badges[_loc5_];
            §§push(_loc6_.challengeType);
            if(!_loc9_)
            {
               §§push(Challenge.METER);
               if(!(_loc9_ && Boolean(param2)))
               {
                  if(§§pop() != §§pop())
                  {
                     continue;
                  }
                  §§push(_loc6_.scoreType);
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     addr121:
                     §§push("any");
                     if(!_loc9_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc8_ || Boolean(param2))
                        {
                           §§push(§§pop());
                           if(_loc8_ || Boolean(this))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    §§push(_loc6_.scoreType);
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       §§push(param2);
                                       if(_loc8_)
                                       {
                                       }
                                       addr144:
                                       §§push(§§pop() == §§pop());
                                       if(!_loc9_)
                                       {
                                          addr147:
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          addr148:
                                          §§push(_loc6_.addToTally());
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             §§push(§§pop());
                                             if(_loc8_ || Boolean(param2))
                                             {
                                                addr166:
                                                _loc7_ = §§pop();
                                             }
                                             addr176:
                                             if(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr179:
                                                   §§pop();
                                                   addr192:
                                                   if(!(_loc9_ && Boolean(param2)))
                                                   {
                                                      §§push(_loc4_.hasBadge(_loc5_));
                                                   }
                                                   _loc4_.earnBadge(_loc5_,_loc6_.title,_loc6_.rewardMoney,_loc6_.tickets);
                                                   _loc4_.saveAfterBadge();
                                                   _loc3_.showEarningBadge(_loc5_);
                                                   continue;
                                                }
                                             }
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             §§goto(addr192);
                                          }
                                          addr175:
                                          §§goto(addr176);
                                          §§push(§§pop());
                                       }
                                       §§push(§§pop());
                                       if(_loc8_ || Boolean(param1))
                                       {
                                          §§goto(addr175);
                                       }
                                       §§goto(addr179);
                                    }
                                 }
                                 addr122:
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                    addr125:
                                    if(!§§pop())
                                    {
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          §§pop();
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             §§push(_loc6_.machine);
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr166);
                              }
                              addr99:
                              §§push(§§pop());
                              if(_loc9_ && Boolean(param1))
                              {
                              }
                              §§goto(addr125);
                           }
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc6_.machine);
                              if(_loc8_)
                              {
                              }
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr176);
                        §§push(!§§pop());
                     }
                     §§goto(addr122);
                     §§push(§§pop() == §§pop());
                  }
                  §§goto(addr144);
                  §§push(param1);
               }
               §§push(§§pop().indexOf(§§pop()) > -1);
               if(_loc8_)
               {
                  §§goto(addr99);
               }
               §§goto(addr122);
            }
            §§goto(addr121);
            §§push("any");
         }
      }
      
      public function recordServiceQuality(param1:Number = 100) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Challenge = null;
         var _loc6_:* = false;
         var _loc2_:ChallengeManager = this;
         var _loc3_:UserData = _loc2_.gameObj.userData;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.badges.length)
         {
            _loc5_ = _loc2_.badges[_loc4_];
            §§push(_loc5_.challengeType == Challenge.SERVICEQUALITY);
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(§§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc5_.percentQuality <= param1);
                     if(_loc7_ && Boolean(param1))
                     {
                     }
                     addr83:
                     §§push(§§pop());
                     if(_loc8_ || Boolean(param1))
                     {
                        _loc6_ = §§pop();
                        if(_loc8_)
                        {
                           §§push(§§pop());
                           §§push(§§pop());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§push(_loc5_.addToTally());
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop());
                     }
                     §§goto(addr83);
                  }
                  addr138:
                  _loc4_++;
                  continue;
               }
               if(!§§pop())
               {
               }
               addr109:
               if(§§pop())
               {
                  _loc3_.earnBadge(_loc4_,_loc5_.title,_loc5_.rewardMoney,_loc5_.tickets);
                  _loc3_.saveAfterBadge();
                  _loc2_.showEarningBadge(_loc4_);
                  if(!(_loc8_ || Boolean(_loc2_)))
                  {
                     continue;
                  }
               }
               §§goto(addr138);
            }
            §§pop();
            §§push(_loc3_.hasBadge(_loc4_));
            if(_loc8_ || Boolean(param1))
            {
               §§push(!§§pop());
            }
            §§goto(addr109);
         }
      }
      
      public function recordServeOrder(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Array, param8:String) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc15_:Challenge = null;
         var _loc16_:* = false;
         var _loc17_:* = false;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Array = null;
         var _loc21_:Number = NaN;
         var _loc9_:ChallengeManager = this;
         var _loc10_:UserData = _loc9_.gameObj.userData;
         var _loc11_:Number = Math.floor((param2 + param3 + param4 + param5) / 4);
         var _loc12_:Array = param7.concat();
         var _loc13_:* = false;
         var _loc14_:int = 0;
         while(_loc14_ < _loc9_.badges.length)
         {
            _loc15_ = _loc9_.badges[_loc14_];
            §§push(false);
            if(_loc22_)
            {
               _loc16_ = §§pop();
               if(_loc12_.indexOf(_loc15_.topping) > -1)
               {
                  §§push(true);
                  if(_loc22_)
                  {
                     _loc16_ = §§pop();
                  }
                  addr197:
                  if(§§pop())
                  {
                     if(_loc22_ || Boolean(param1))
                     {
                        §§pop();
                        if(_loc22_)
                        {
                           addr209:
                           §§push(_loc10_.hasBadge(_loc14_));
                           if(!(_loc23_ && Boolean(param2)))
                           {
                              §§push(!§§pop());
                              if(_loc23_ && Boolean(param1))
                              {
                              }
                           }
                           addr674:
                           addr675:
                           if(!§§pop())
                           {
                              if(!(_loc23_ && Boolean(param1)))
                              {
                                 §§pop();
                                 if(!_loc23_)
                                 {
                                    addr689:
                                    addr688:
                                    §§push(_loc15_.customer == param1);
                                    if(_loc23_ && Boolean(param1))
                                    {
                                    }
                                    addr728:
                                    if(§§pop())
                                    {
                                       _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                                       if(!(_loc23_ && Boolean(this)))
                                       {
                                          addr745:
                                          _loc10_.saveAfterBadge();
                                       }
                                       addr747:
                                       _loc9_.showEarningBadge(_loc14_);
                                    }
                                    _loc14_++;
                                    addr750:
                                 }
                                 continue;
                              }
                              addr719:
                              §§pop();
                              if(_loc22_)
                              {
                                 §§push(_loc10_.hasBadge(_loc14_));
                                 if(_loc22_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr728);
                              }
                              §§goto(addr745);
                           }
                           addr697:
                           if(§§pop())
                           {
                              addr699:
                              _loc17_ = true;
                              if(_loc22_)
                              {
                              }
                              §§goto(addr747);
                           }
                           if(_loc17_)
                           {
                              addr706:
                              §§push(_loc15_.addToTally());
                              if(_loc23_ && Boolean(param2))
                              {
                              }
                              addr717:
                              if(§§pop())
                              {
                                 §§goto(addr719);
                              }
                              §§goto(addr728);
                           }
                           §§goto(addr750);
                        }
                        addr251:
                        §§goto(addr728);
                     }
                     addr715:
                     §§goto(addr717);
                     _loc13_ = §§pop();
                     §§push(_loc13_);
                  }
                  if(§§pop())
                  {
                     _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                     if(_loc22_)
                     {
                        _loc10_.saveAfterBadge();
                        if(_loc22_ || Boolean(param2))
                        {
                           _loc9_.showEarningBadge(_loc14_);
                        }
                        else
                        {
                           addr770:
                           _loc20_ = [];
                           if(!_loc23_)
                           {
                              §§push(0);
                              if(_loc22_ || Boolean(this))
                              {
                                 _loc21_ = §§pop();
                                 if(!_loc23_)
                                 {
                                    if(_loc15_.customers == "all")
                                    {
                                       §§push(1);
                                       if(_loc22_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc22_ || Boolean(param2))
                                       {
                                          §§push(§§pop());
                                          if(_loc22_ || Boolean(this))
                                          {
                                             _loc18_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc18_);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop() < _loc15_.customers.length)
                                             {
                                                _loc20_.push(_loc9_.gameObj.customerData.getCustomerIndex(_loc15_.customers[_loc18_]));
                                                if(_loc23_ && Boolean(param3))
                                                {
                                                   break;
                                                }
                                                §§push(_loc18_);
                                                if(!(_loc23_ && Boolean(param2)))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc18_ = §§pop();
                                                continue;
                                             }
                                             §§push(0);
                                          }
                                          addr923:
                                          if(_loc20_.indexOf(_loc19_) > -1)
                                          {
                                             _loc15_.setTally(_loc21_);
                                             addr932:
                                             §§push(_loc21_ >= _loc20_.length);
                                             if(!_loc23_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc22_)
                                                   {
                                                      §§pop();
                                                      if(_loc22_ || Boolean(param1))
                                                      {
                                                         §§push(_loc10_.hasBadge(_loc14_));
                                                         if(_loc22_ || Boolean(param2))
                                                         {
                                                         }
                                                      }
                                                      addr974:
                                                      _loc10_.saveAfterBadge();
                                                      if(!_loc23_)
                                                      {
                                                         addr985:
                                                         _loc9_.showEarningBadge(_loc14_);
                                                      }
                                                   }
                                                }
                                                addr960:
                                                if(§§pop())
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                                                      if(_loc23_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr974);
                                                }
                                             }
                                             §§goto(addr960);
                                             §§push(!§§pop());
                                          }
                                       }
                                    }
                                    §§push(§§pop());
                                    if(_loc22_)
                                    {
                                       addr882:
                                       _loc18_ = §§pop();
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       _loc21_ = §§pop() + 1;
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc18_ + 1);
                                          if(!(_loc23_ && Boolean(param2)))
                                          {
                                             _loc18_ = §§pop();
                                             if(_loc22_)
                                             {
                                                addr912:
                                                while(true)
                                                {
                                                   §§push(_loc18_);
                                                   if(_loc23_ && Boolean(this))
                                                   {
                                                   }
                                                   break;
                                                }
                                                §§goto(addr932);
                                                addr912:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(§§pop() < _loc20_.length)
                                             {
                                                if(_loc10_.customerVisits[_loc20_[_loc18_]] > 0)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr923);
                                          }
                                       }
                                       §§goto(addr985);
                                    }
                                 }
                                 §§goto(addr912);
                              }
                              _loc18_ = §§pop();
                           }
                           while(true)
                           {
                              if(_loc18_ <= _loc9_.gameObj.customerData.getCustomerTotal())
                              {
                                 _loc20_.push(_loc18_);
                                 if(!(_loc23_ && Boolean(param2)))
                                 {
                                    §§push(_loc18_ + 1);
                                    if(!(_loc23_ && Boolean(param2)))
                                    {
                                       continue;
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr878);
                              §§goto(addr882);
                              _loc18_ = §§pop();
                           }
                           §§goto(addr912);
                        }
                     }
                     else
                     {
                        addr544:
                        §§push(true);
                        if(_loc22_ || Boolean(param2))
                        {
                           addr552:
                           _loc17_ = §§pop();
                        }
                        else
                        {
                           addr656:
                           §§pop();
                           addr660:
                           §§push(param6 >= _loc15_.score);
                           if(param6 >= _loc15_.score)
                           {
                              if(_loc22_)
                              {
                                 §§pop();
                                 if(_loc22_)
                                 {
                                    addr671:
                                    §§push(_loc15_.customer == "any");
                                    if(_loc22_)
                                    {
                                    }
                                    §§goto(addr706);
                                 }
                                 else
                                 {
                                    addr756:
                                    §§push(_loc9_.gameObj.customerData.getCustomerIndex(param1));
                                    if(!(_loc23_ && Boolean(param2)))
                                    {
                                       §§push(§§pop());
                                    }
                                    _loc19_ = §§pop();
                                    §§goto(addr770);
                                 }
                              }
                              §§goto(addr674);
                           }
                           §§goto(addr697);
                        }
                        §§goto(addr674);
                     }
                     §§goto(addr728);
                  }
                  §§goto(addr251);
               }
               §§push(_loc15_.challengeType == Challenge.USETOPPING);
               §§push(_loc15_.challengeType == Challenge.USETOPPING);
               if(_loc22_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc16_);
                  }
                  if(§§pop())
                  {
                     §§push(_loc15_.addToTally());
                     if(_loc22_)
                     {
                        §§push(§§pop());
                        if(_loc22_ || Boolean(param2))
                        {
                        }
                        §§goto(addr715);
                     }
                     addr483:
                     if(§§pop())
                     {
                        if(_loc22_ || Boolean(param2))
                        {
                           §§pop();
                           §§push(param5);
                           §§push(_loc15_.score);
                           if(!_loc23_)
                           {
                              §§push(§§pop() >= §§pop());
                              if(_loc23_ && Boolean(param3))
                              {
                              }
                              §§goto(addr552);
                           }
                           §§goto(addr660);
                        }
                        addr654:
                        if(§§pop())
                        {
                        }
                        §§goto(addr656);
                     }
                     addr514:
                     if(§§pop())
                     {
                        addr515:
                        §§pop();
                        addr516:
                        §§push(_loc15_.customer);
                        §§push("any");
                        if(!(_loc23_ && Boolean(param3)))
                        {
                           §§push(§§pop() == §§pop());
                           if(!(§§pop() == §§pop()))
                           {
                              if(!(_loc23_ && Boolean(param1)))
                              {
                                 §§pop();
                                 §§push(_loc15_.customer);
                                 §§push(param1);
                                 if(_loc22_)
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§goto(addr689);
                              }
                              §§goto(addr674);
                           }
                        }
                        addr610:
                        addr612:
                        §§push(§§pop() == §§pop());
                        if(!(§§pop() == §§pop()))
                        {
                           if(_loc22_ || Boolean(param1))
                           {
                              addr620:
                              §§pop();
                              §§push(_loc15_.customer == param1);
                           }
                           §§goto(addr656);
                        }
                        if(§§pop())
                        {
                           addr626:
                           §§push(true);
                           if(!(_loc23_ && Boolean(param1)))
                           {
                              _loc17_ = §§pop();
                              if(!(_loc23_ && Boolean(param3)))
                              {
                                 §§goto(addr674);
                              }
                              else
                              {
                                 §§goto(addr756);
                              }
                           }
                           else
                           {
                              §§goto(addr699);
                           }
                           §§goto(addr747);
                        }
                        else
                        {
                           §§push(_loc15_.scoreType);
                           if(_loc22_ || Boolean(this))
                           {
                              addr652:
                              §§goto(addr654);
                              §§push(§§pop() == "Points");
                           }
                           §§goto(addr688);
                        }
                     }
                     if(§§pop())
                     {
                        §§goto(addr544);
                     }
                     else
                     {
                        §§push(_loc15_.scoreType == "Overall");
                        §§push(_loc15_.scoreType == "Overall");
                        if(!_loc23_)
                        {
                           addr561:
                           if(§§pop())
                           {
                              if(_loc22_ || Boolean(param3))
                              {
                                 §§pop();
                                 if(_loc22_)
                                 {
                                    §§push(_loc11_);
                                    §§push(_loc15_.score);
                                    if(_loc22_ || Boolean(this))
                                    {
                                       addr582:
                                       §§push(§§pop() >= §§pop());
                                    }
                                    §§goto(addr656);
                                 }
                                 §§goto(addr626);
                              }
                              §§goto(addr715);
                           }
                           addr583:
                           if(§§pop())
                           {
                              addr585:
                              §§pop();
                              if(!(_loc23_ && Boolean(this)))
                              {
                                 §§push(_loc15_.customer);
                                 if(_loc22_ || Boolean(param1))
                                 {
                                    §§push("any");
                                    if(_loc22_ || Boolean(param3))
                                    {
                                       §§goto(addr610);
                                    }
                                    §§goto(addr671);
                                 }
                              }
                              §§goto(addr699);
                           }
                           §§goto(addr610);
                        }
                        §§goto(addr612);
                     }
                  }
                  else
                  {
                     §§push(_loc15_.challengeType == Challenge.HAT);
                     §§push(_loc15_.challengeType == Challenge.HAT);
                     if(_loc22_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(!(_loc23_ && Boolean(param2)))
                           {
                              §§push(_loc15_.hat == param8);
                           }
                           §§goto(addr756);
                        }
                        if(§§pop())
                        {
                           if(_loc22_)
                           {
                              §§push(_loc15_.addToTally());
                              if(_loc22_)
                              {
                                 §§push(§§pop());
                                 if(!_loc23_)
                                 {
                                    _loc13_ = §§pop();
                                    §§goto(addr197);
                                    §§push(§§pop());
                                 }
                                 else
                                 {
                                    addr358:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(_loc15_.customer);
                                       §§push("any");
                                       if(_loc22_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc22_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc23_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc15_.customer);
                                                      if(_loc22_)
                                                      {
                                                         §§push(param1);
                                                         if(_loc22_ || Boolean(param2))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                         }
                                                         §§goto(addr689);
                                                      }
                                                   }
                                                   §§goto(addr654);
                                                }
                                             }
                                             addr420:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                addr422:
                                                §§push(param4);
                                                §§push(_loc15_.score);
                                                if(_loc22_)
                                                {
                                                   addr427:
                                                   §§push(§§pop() >= §§pop());
                                                }
                                                §§goto(addr582);
                                             }
                                             §§push(§§pop());
                                             if(_loc22_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§push(_loc15_.customer);
                                                   if(_loc22_ || Boolean(param3))
                                                   {
                                                      §§push("any");
                                                      if(_loc23_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr671);
                                                }
                                                addr473:
                                                if(§§pop())
                                                {
                                                   §§push(true);
                                                   if(!_loc23_)
                                                   {
                                                      _loc17_ = §§pop();
                                                      §§goto(addr674);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr483);
                                                   §§push(_loc15_.scoreType == "Saucing");
                                                }
                                                §§goto(addr689);
                                             }
                                          }
                                          §§goto(addr552);
                                       }
                                       addr445:
                                       §§push(§§pop() == §§pop());
                                       if(!_loc23_)
                                       {
                                          addr448:
                                          §§push(§§pop());
                                          if(!(_loc23_ && Boolean(param1)))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc23_)
                                                {
                                                   §§pop();
                                                   if(_loc22_)
                                                   {
                                                      addr464:
                                                      §§push(_loc15_.customer == param1);
                                                      if(_loc23_ && Boolean(param1))
                                                      {
                                                      }
                                                      §§goto(addr583);
                                                   }
                                                   §§goto(addr674);
                                                }
                                                §§goto(addr656);
                                             }
                                             §§goto(addr473);
                                          }
                                          §§goto(addr715);
                                       }
                                       §§goto(addr585);
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc22_ || Boolean(this))
                                       {
                                          §§push(true);
                                          if(!(_loc23_ && Boolean(param1)))
                                          {
                                             _loc17_ = §§pop();
                                             if(_loc22_ || Boolean(param3))
                                             {
                                                §§goto(addr674);
                                             }
                                             else
                                             {
                                                §§goto(addr422);
                                             }
                                          }
                                          §§goto(addr448);
                                       }
                                       §§goto(addr516);
                                    }
                                    else
                                    {
                                       §§push(_loc15_.scoreType);
                                       if(_loc22_)
                                       {
                                          §§goto(addr420);
                                          §§push(§§pop() == "Building");
                                          §§push(§§pop() == "Building");
                                       }
                                    }
                                    §§goto(addr464);
                                 }
                                 §§goto(addr689);
                              }
                              §§goto(addr706);
                           }
                           §§goto(addr209);
                        }
                        else if(_loc15_.challengeType == Challenge.SCORE)
                        {
                           _loc17_ = false;
                           §§push(_loc15_.scoreType == "Waiting");
                           if(!_loc23_)
                           {
                              §§push(§§pop());
                              if(!(_loc23_ && Boolean(param3)))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(param2);
                                    §§push(_loc15_.score);
                                    if(_loc22_)
                                    {
                                       §§push(§§pop() >= §§pop());
                                    }
                                    §§goto(addr582);
                                 }
                                 §§push(§§pop());
                                 if(!_loc23_)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(_loc15_.customer);
                                       if(!_loc23_)
                                       {
                                          §§push("any");
                                          if(!(_loc23_ && Boolean(param2)))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc23_ && Boolean(param2)))
                                             {
                                                if(§§pop())
                                                {
                                                }
                                             }
                                             §§pop();
                                             §§push(_loc15_.customer);
                                             if(!_loc23_)
                                             {
                                                §§push(§§pop() == param1);
                                                if(_loc23_ && Boolean(param3))
                                                {
                                                }
                                                §§goto(addr515);
                                             }
                                             §§goto(addr652);
                                          }
                                          §§goto(addr445);
                                       }
                                       §§goto(addr689);
                                    }
                                 }
                                 §§goto(addr514);
                              }
                              §§goto(addr420);
                           }
                           §§goto(addr209);
                        }
                        else
                        {
                           §§push(_loc15_.challengeType);
                           §§push(Challenge.SERVECUSTOMERS);
                        }
                        if(§§pop() == §§pop())
                        {
                           §§goto(addr756);
                        }
                        §§goto(addr689);
                     }
                  }
                  §§goto(addr706);
               }
               _loc13_ = §§pop();
               if(!_loc23_)
               {
                  §§push(§§pop());
                  if(!(_loc23_ && Boolean(param2)))
                  {
                     §§push(§§pop());
                     if(_loc22_ || Boolean(param1))
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(!_loc10_.hasBadge(_loc14_));
                        }
                        if(§§pop())
                        {
                           if(!_loc23_)
                           {
                              _loc10_.earnBadge(_loc14_,_loc15_.title,_loc15_.rewardMoney,_loc15_.tickets);
                              _loc10_.saveAfterBadge();
                              if(!(_loc23_ && Boolean(this)))
                              {
                                 _loc9_.showEarningBadge(_loc14_);
                                 if(!_loc22_)
                                 {
                                    §§goto(addr770);
                                 }
                              }
                              else
                              {
                                 §§goto(addr422);
                              }
                              §§goto(addr689);
                           }
                        }
                        §§goto(addr689);
                     }
                     §§goto(addr561);
                  }
                  §§goto(addr620);
               }
               else
               {
                  addr324:
                  _loc17_ = §§pop();
               }
               §§goto(addr209);
            }
            if(§§pop())
            {
               §§goto(addr324);
               §§push(true);
            }
            else
            {
               §§push(_loc15_.scoreType == "Grilling");
               if(_loc22_ || Boolean(param1))
               {
                  §§push(§§pop());
                  if(_loc22_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(param3);
                        if(!(_loc23_ && Boolean(param3)))
                        {
                           §§push(_loc15_.score);
                           if(!_loc23_)
                           {
                              §§push(§§pop() >= §§pop());
                           }
                           §§goto(addr427);
                        }
                        §§goto(addr756);
                     }
                  }
                  §§goto(addr675);
               }
               §§push(§§pop());
               if(!_loc23_)
               {
                  §§goto(addr358);
               }
               §§goto(addr515);
            }
            §§goto(addr689);
         }
      }
      
      public function getMedalProgressArray() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Challenge = null;
         var _loc1_:ChallengeManager = this;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.badges.length)
         {
            _loc4_ = _loc1_.badges[_loc3_];
            if(_loc6_ || Boolean(this))
            {
               _loc2_[_loc3_] = _loc4_.tally;
               if(_loc5_ && Boolean(_loc2_))
               {
                  continue;
               }
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function populateMedalProgress(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Challenge = null;
         var _loc2_:ChallengeManager = this;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < param1.length)
            {
               §§push(0);
               if(_loc7_)
               {
                  continue;
               }
               §§push(§§pop());
               if(!_loc7_)
               {
                  _loc4_ = §§pop();
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     §§push(param1);
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           if(§§pop()[§§pop()])
                           {
                              if(!(_loc6_ || Boolean(_loc3_)))
                              {
                                 continue loop0;
                              }
                              §§push(param1);
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§push(_loc3_);
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                 }
                                 addr109:
                                 _loc5_ = §§pop()[§§pop()];
                                 _loc5_.setTally(_loc4_);
                                 addr115:
                                 _loc3_++;
                                 if(!(_loc6_ || Boolean(_loc2_)))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           addr87:
                           §§push(_loc2_.badges);
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              if(§§pop().length > _loc3_)
                              {
                                 if(!(_loc6_ || Boolean(_loc2_)))
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc2_.badges);
                              }
                              §§goto(addr115);
                           }
                        }
                        §§push(Number(§§pop()[§§pop()]));
                     }
                     §§goto(addr109);
                     §§push(_loc3_);
                  }
                  break;
               }
               _loc4_ = §§pop();
               if(_loc7_ && Boolean(param1))
               {
                  continue loop0;
               }
               §§goto(addr87);
            }
            return;
         }
      }
      
      public function syncMochiAchievements() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc1_:ChallengeManager = this;
         var _loc2_:UserData = _loc1_.gameObj.userData;
         if(_loc4_ || Boolean(_loc1_))
         {
            if(_loc1_.gameObj.§_-4P§.§true§)
            {
               if(_loc4_ || Boolean(_loc1_))
               {
                  §_-5i§.§_-CE§("Sync Mochi Achievements to Player\'s Badges");
                  if(!_loc5_)
                  {
                     _loc3_ = 0;
                  }
               }
            }
            §§goto(addr176);
         }
         while(_loc3_ < _loc1_.badges.length)
         {
            §§push(_loc2_.hasBadge(_loc3_));
            if(_loc4_ || Boolean(_loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     addr102:
                     §§push(_loc1_.getChallengeIsMochi(_loc3_));
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                              }
                              addr101:
                              §§push(!§§pop());
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§push(§_-5i§);
                        §§push("Should Sync Mochi Badge: (#" + _loc3_);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr155:
                           §§push(§§pop() + ", ");
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(_loc1_.getChallengeTitle(_loc3_));
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_)
                                 {
                                 }
                                 addr142:
                                 §§push(_loc1_.getChallengeMochiID(_loc3_));
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || Boolean(this))
                              {
                                 §§push(§§pop() + ")");
                              }
                           }
                           §§pop().§_-CE§(§§pop());
                           MochiEvents.unlockAchievement({"id":_loc1_.getChallengeMochiID(_loc3_)});
                        }
                        §§push(§§pop() + ", id=");
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§goto(addr142);
                        }
                        §§goto(addr155);
                     }
                  }
                  addr96:
                  §§push(_loc1_.getChallengeMochiEarned(_loc3_));
                  if(!_loc5_)
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr102);
               }
               _loc3_++;
               continue;
            }
            §§pop();
            if(!_loc5_)
            {
               §§goto(addr96);
            }
            §§goto(addr155);
         }
         addr176:
      }
      
      public function resetAllTallies() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Challenge = null;
         var _loc1_:ChallengeManager = this;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            _loc2_ = 0;
         }
         while(_loc2_ < _loc1_.badges.length)
         {
            _loc3_ = _loc1_.badges[_loc2_];
            if(!_loc5_)
            {
               _loc3_.clearTally(true);
               if(!(_loc4_ || Boolean(_loc3_)))
               {
                  continue;
               }
            }
            §§push(_loc2_);
            if(_loc4_ || Boolean(_loc1_))
            {
               §§push(§§pop() + 1);
               if(_loc5_)
               {
               }
               addr77:
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr77);
            §§push(§§pop());
         }
      }
      
      public function showEarningBadge(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ChallengeManager = this;
         if(_loc4_)
         {
            §§push(§_-5i§);
            §§push("EARN BADGE #" + param1);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(§§pop() + ". ADD TO QUEUE!");
            }
            §§pop().§_-CE§(§§pop());
            if(_loc4_)
            {
               _loc2_.badgeQueue.push(param1);
               if(_loc3_)
               {
               }
            }
            §§goto(addr57);
         }
         _loc2_.checkForDisplayingBadges();
         addr57:
      }
      
      public function checkForDisplayingBadges() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:ChallengeManager = this;
         §§push(_loc1_.badgeDropdown == null);
         if(!_loc5_)
         {
            if(§§pop())
            {
               if(_loc4_ || _loc3_)
               {
               }
            }
            §§goto(addr41);
         }
         §§pop();
         §§push(_loc1_.badgeQueue);
         if(_loc4_)
         {
            addr41:
            if(§§pop())
            {
               if(_loc4_)
               {
                  addr46:
                  §§push(Number(_loc1_.badgeQueue[0]));
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_ = §§pop();
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        _loc1_.badgeDropdown = new badgeDropdownMC();
                        if(_loc4_)
                        {
                           _loc1_.badgeDropdown.buttonMode = true;
                        }
                        _loc1_.badgeDropdown.mouseEnabled = true;
                        if(_loc4_)
                        {
                        }
                     }
                     _loc1_.badgeDropdown.mouseChildren = false;
                     if(!_loc5_)
                     {
                        _loc1_.badgeDropdown.tabEnabled = false;
                        _loc1_.badgeDropdown.x = _loc1_.dropdownX;
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           _loc1_.badgeDropdown.panel.title_txt.text = _loc1_.getChallengeTitle(_loc2_);
                           _loc1_.badgeDropdown.panel.description_txt.text = _loc1_.getChallengeDescription(_loc2_);
                           _loc1_.badgeDropdown.panel.reward_txt.text = "+ $" + §_-9m§.§_-3E§(_loc1_.getChallengeRewardAmount(_loc2_) / 100);
                           addr146:
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              §§push(_loc1_.getChallengeTicketAmount(_loc2_));
                           }
                           _loc1_.badgeDropdown.panel.tickets_txt.text = String(_loc1_.getChallengeTicketAmount(_loc2_));
                           _loc1_.badgeDropdown.panel.ticketicon.visible = true;
                           if(_loc5_ && _loc3_)
                           {
                           }
                           try
                           {
                              addr216:
                              _loc1_.badgeDropdown.panel.mochipanel.visible = false;
                           }
                           catch(err:Error)
                           {
                              var _loc3_:* = err;
                           }
                           _loc1_.dropdownOnScreenTimer = 0;
                           if(!_loc5_)
                           {
                              _loc1_.dropdownStartY = 0 - _loc1_.dropdownHeight;
                              if(_loc4_)
                              {
                              }
                              addr343:
                              §§push(_loc1_.getChallengeIsMochi(_loc2_));
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                 }
                                 addr367:
                                 if(§§pop())
                                 {
                                    addr368:
                                    §§push(§_-5i§);
                                    §§push("Should Earn Mochi Badge! (" + _loc1_.getChallengeTitle(_loc2_));
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§pop() + ", id=");
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + _loc1_.getChallengeMochiID(_loc2_));
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       §§push(§§pop() + ")");
                                    }
                                    §§pop().§_-CE§(§§pop());
                                    if(_loc4_ || Boolean(_loc1_))
                                    {
                                       MochiEvents.unlockAchievement({"id":_loc1_.getChallengeMochiID(_loc2_)});
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§pop();
                                    §§push(_loc1_.getChallengeMochiEarned(_loc2_));
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 §§push(!§§pop());
                              }
                              §§goto(addr367);
                           }
                           §§push(_loc1_.gameObj);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              §§push(§§pop().§_-4P§);
                              if(_loc4_ || Boolean(this))
                              {
                                 if(§§pop().api.§_-4E§.length == 0)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc1_.badgeDropdown.y = this.dropdownStartY;
                                       if(_loc4_)
                                       {
                                          §§push(_loc1_.gameObj);
                                          if(_loc4_)
                                          {
                                             §§pop().addChild(_loc1_.badgeDropdown);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr317:
                                                _loc1_.badgeDropdown.addEventListener(Event.ENTER_FRAME,_loc1_.animateBadgeDropdown);
                                             }
                                             _loc1_.badgeDropdown.addEventListener(MouseEvent.CLICK,_loc1_.clickBadgeDropdown);
                                          }
                                          else
                                          {
                                             addr307:
                                             §§pop().addChild(_loc1_.badgeDropdown);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr317);
                                             }
                                          }
                                          §§goto(addr368);
                                       }
                                       §§goto(addr343);
                                    }
                                    §§push(_loc1_.gameObj);
                                 }
                                 else
                                 {
                                    _loc1_.badgeDropdown.y = this.dropdownStartY;
                                    §§push(_loc1_.gameObj);
                                    if(_loc4_)
                                    {
                                       §§goto(addr307);
                                    }
                                 }
                              }
                              addr334:
                              §§push(§§pop().§true§);
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr343);
                                 }
                              }
                              §§goto(addr367);
                           }
                           §§goto(addr334);
                           §§push(§§pop().§_-4P§);
                        }
                     }
                  }
                  if(§§pop() > 0)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr146);
                     }
                  }
                  else
                  {
                     _loc1_.badgeDropdown.panel.tickets_txt.text = "";
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        _loc1_.badgeDropdown.panel.ticketicon.visible = false;
                     }
                  }
               }
               _loc1_.badgeDropdown.panel.thumb.gotoAndStop(_loc2_ + 1);
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc1_.gameObj.soundManager.playSound("getstar.wav");
               }
               §§goto(addr216);
            }
            return;
            §§push(§§pop().length > 0);
         }
         §§goto(addr46);
      }
      
      public function clickBadgeDropdown(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ChallengeManager = this;
         if(_loc4_ || Boolean(this))
         {
            §§push(_loc2_);
            §§push(_loc2_.dropdownOnScreenWait);
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
            }
            §§pop().dropdownOnScreenTimer = §§pop();
         }
      }
      
      public function animateBadgeDropdown(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:ChallengeManager = this;
         if(_loc2_.badgeDropdown != null)
         {
            if(_loc7_ || Boolean(param1))
            {
               addr250:
               §§push(_loc2_.dropdownOnScreenTimer);
               §§push(0);
               if(_loc7_ || Boolean(this))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_.badgeDropdown.y < _loc2_.dropdownStartY + _loc2_.dropdownHeight)
                     {
                        §§push(_loc2_.dropdownStartY);
                        §§push(_loc2_.dropdownHeight);
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push(§§pop() + §§pop() - _loc2_.badgeDropdown.y);
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    _loc2_.badgeDropdown.y += _loc3_ / _loc2_.dropdownSpeed;
                                    if(!_loc6_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc7_)
                                       {
                                          §§push(-1);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc6_ && Boolean(_loc2_)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§pop();
                                                         if(_loc6_ && Boolean(_loc2_))
                                                         {
                                                         }
                                                         addr302:
                                                         _loc2_.badgeDropdown = null;
                                                         addr305:
                                                         _loc2_.badgeQueue.shift();
                                                         if(_loc7_ || Boolean(_loc2_))
                                                         {
                                                            addr315:
                                                            _loc2_.checkForDisplayingBadges();
                                                            if(_loc7_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr137:
                                                   if(!§§pop())
                                                   {
                                                   }
                                                }
                                                addr254:
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                                addr268:
                                                if(§§pop())
                                                {
                                                   if(_loc7_ || Boolean(_loc3_))
                                                   {
                                                      _loc2_.badgeDropdown.removeEventListener(Event.ENTER_FRAME,_loc2_.animateBadgeDropdown);
                                                      if(!_loc6_)
                                                      {
                                                         _loc2_.badgeDropdown.removeEventListener(MouseEvent.CLICK,_loc2_.clickBadgeDropdown);
                                                         if(!_loc6_)
                                                         {
                                                            _loc2_.badgeDropdown.parent.removeChild(_loc2_.badgeDropdown);
                                                            if(_loc6_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr302);
                                             }
                                             addr257:
                                             §§pop();
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                §§push(_loc3_);
                                                §§push(1);
                                             }
                                             §§goto(addr315);
                                          }
                                          addr267:
                                          §§goto(addr268);
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                    §§push(_loc3_);
                                    §§push(1);
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop() <= §§pop());
                                       if(_loc7_)
                                       {
                                          §§goto(addr137);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr267);
                                 }
                                 _loc2_.badgeDropdown.y = _loc2_.dropdownStartY + _loc2_.dropdownHeight;
                                 var _loc4_:* = _loc2_;
                                 §§push(_loc4_.dropdownOnScreenTimer);
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc6_)
                                 {
                                    _loc4_.dropdownOnScreenTimer = _loc5_;
                                 }
                                 if(!(_loc7_ || Boolean(param1)))
                                 {
                                    addr200:
                                    if(_loc2_.badgeDropdown.y > _loc2_.dropdownStartY)
                                    {
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          §§push(_loc2_.dropdownStartY);
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() - _loc2_.badgeDropdown.y);
                                          }
                                       }
                                    }
                                    §§goto(addr302);
                                 }
                              }
                              addr227:
                              _loc3_ = §§pop();
                              _loc2_.badgeDropdown.y += _loc3_ / _loc2_.dropdownSpeed;
                              if(_loc6_ && Boolean(_loc3_))
                              {
                              }
                              §§goto(addr315);
                           }
                           else
                           {
                              addr190:
                              §§push(_loc2_.dropdownOnScreenWait);
                           }
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              §§goto(addr200);
                           }
                           §§goto(addr302);
                        }
                        else
                        {
                           _loc4_ = _loc2_;
                           §§push(_loc4_.dropdownOnScreenTimer);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc5_ = §§pop();
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              _loc4_.dropdownOnScreenTimer = _loc5_;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc2_.dropdownOnScreenTimer);
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§goto(addr190);
                     }
                  }
                  §§goto(addr227);
                  §§push(§§pop());
               }
               §§push(§§pop() >= §§pop());
               if(_loc7_)
               {
                  §§goto(addr254);
                  §§push(§§pop());
               }
               §§goto(addr257);
            }
            §§push(_loc3_);
            §§push(-1);
            if(!_loc6_)
            {
               §§goto(addr250);
            }
            §§goto(addr267);
         }
      }
   }
}

